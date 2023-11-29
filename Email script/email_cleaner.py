import os
import pickle
import pytz
from datetime import datetime, timedelta
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from googleapiclient.discovery import build

# Set the redirect URI and scopes
REDIRECT_URI = 'https://localhost:5689/'
SCOPES = ('https://www.googleapis.com/auth/gmail.readonly', 'https://www.googleapis.com/auth/gmail.modify', 'https://mail.google.com/')

# Use the client to generate a refresh token
creds = None

#Look and see if file is already created. If it is created and empty delete it and create a new one with saved credentials. 
file_path = '/Users/matthewengler/Desktop/Email script/token.pickle'
if os.path.exists(file_path):
    with open(file_path, 'r', encoding='ISO-8859-1') as f:
        file_contnet = f.read()
        if not file_contnet:
            os.remove(file_path) 
            print('File not found...')
            print('Creating a new one...')      

if os.path.exists('token.pickle'):
    print('Loading Saved Data from File...')
    with open('token.pickle', 'rb') as f:
        creds = pickle.load(f)

if not creds or not creds.valid:
    if creds and creds.expired and creds.refresh_token:
        print('Refreshing Token...')
        creds.refresh(Request())
    else:
        print('Fetching New Tokens...')
        flow = InstalledAppFlow.from_client_secrets_file(
            '/Users/matthewengler/Desktop/Email script/credentials.json', SCOPES)

        # Use the redirect URI when running the local server
        flow.redirect_uri = REDIRECT_URI
        flow.run_local_server(port=5689, prompt='consent', authorization_prompt_message="")

        creds = flow.credentials

    # Save the credentials for the next run
    with open('token.pickle', 'wb') as f:
        print('Saving...')
        pickle.dump(creds, f)

# Create the service object
service = build('gmail', 'v1', credentials=creds)

# Get the list of all unread emails in the inbox
result = service.users().messages().list(userId='me', labelIds=['INBOX'], q='is:Unread').execute()

# Get the list of email IDs
email_ids = [email['id'] for email in result['messages']]

# Iterate through the list of email IDs
for email_id in email_ids:
    # Get the data of the email
    email_data = service.users().messages().get(userId='me', id=email_id).execute()

    # Extract the email header information
    headers = email_data['payload']['headers']
    
    sender = ""
    date_str= ""

    # Get the header that contains the sender name
    for header in headers:
        if header['name'] == 'From':
            sender = header['value']
            break

    # Get the header that contains the email date
    for header in headers:
        if header['name'] == 'Date':
            date_str = header['value']
            break

    # Convert the date string to a datetime object 
    try:
        date = datetime.strptime(date_str, '%a, %d %b %Y %H:%M:%S %z')
    except ValueError:
        date = datetime.strptime(date_str, '%d %b %Y %H:%M:%S %z')

    all_timezones = pytz.all_timezones
    timezone_name = all_timezones[1]
    tz = pytz.timezone(timezone_name)
    new_date = pytz.utc.normalize(datetime.now(pytz.utc))
    date = new_date.astimezone(tz)

    # Get the current UTC time
    now = datetime.now(pytz.utc)

    # Calculate the difference in days
    difference = now - date
    #difference_days = int(difference.total_seconds() / (24 * 3600))
    difference_days = int(difference.total_seconds())

    # Convert the difference into a date object
    d = datetime.now() - timedelta(days=difference_days)

    # Query the API for all unread emails
    query = "is:unread before:" #+ d.strftime("%Y/%m/%d")
    
    results = service.users().messages().list(userId='me', q=query).execute()

    # Check if the email is over a month old
    if 'messages' in results:
        messages = results['messages']
    for message in messages:
        service.users().messages().trash(userId='me', id=message['id']).execute()
        print(f'Deleted email from {sender} with ID: {email_id}')
        #sender = ''
    else:
        print(f"No emails for me to delete!")
