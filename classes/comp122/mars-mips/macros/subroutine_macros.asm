# Subroutine Associated Macros

# .macro precall
# .macro postcall
# 
# .macro cleanup
# .macro setup
# .macro return(%reg)


# .macro save_t_registers
# .macro save_s_registers
# .macro save_special_registers
# 
# .macro restore_t_registers
# .macro restore_s_registers
# .macro restore_special_registers


   
.macro save_t_registers
    subi $sp, $sp, 40
    sw $t0, 36($sp)
    sw $t1, 32($sp)
    sw $t2, 28($sp)
    sw $t3, 24($sp)
    sw $t4, 20($sp)
    sw $t5, 16($sp)
    sw $t6, 12($sp)
    sw $t7, 8($sp)
    sw $t8, 4($sp)
    sw $t9, 0($sp)
.end_macro

.macro save_s_registers
	subi $sp, $sp, 32
    sw $s0, 28($sp)
    sw $s1, 24($sp)
    sw $s2, 20($sp)
    sw $s3, 16($sp)
    sw $s4, 12($sp)
    sw $s5, 8($sp)
    sw $s6, 4($sp)
    sw $s7, 0($sp)
.end_macro

.macro save_special_registers
    subi $sp, $sp, 16
    sw $gp, 12($sp)
    sw $sp, 8($sp)
    sw $fp, 4($sp)
    sw $ra, 0($sp)
.end_macro


.macro restore_t_registers
    lw $t0, 36($sp)
    lw $t1, 32($sp)
    lw $t2, 28($sp)
    lw $t3, 24($sp)
    lw $t4, 20($sp)
    lw $t5, 16($sp)
    lw $t6, 12($sp)
    lw $t7, 8($sp)
    lw $t8, 4($sp)
    lw $t9, 0($sp)
    addi $sp, $sp, 40
.end_macro

.macro restore_s_registers
    lw $s0, 28($sp)
    lw $s1, 24($sp)
    lw $s2, 20($sp)
    lw $s3, 16($sp)
    lw $s4, 12($sp)
    lw $s5, 8($sp)
    lw $s6, 4($sp)
    lw $s7, 0($sp)
   	addi $sp, $sp, 32
.end_macro

.macro restore_special_registers
    lw $gp, 12($sp)
    lw $sp, 8($sp)
    lw $fp, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 16
.end_macro

.macro precall
 	save_t_registers
 	save_special_registers
.end_macro

.macro postcall
    restore_special_registers
    restore_t_register
 .end_macro

.macro setup
    save_s_registers
.end_macro

.macro cleanup
   restore_s_registers
.end_macro

.macro return(%reg)
   move $v0, %reg
.end_macro
   
