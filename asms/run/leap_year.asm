# Leap-Year For CPU
# No Syscalls, No mult / div
# Use Loop to replace multiply or division
# Instructions Included: add, addiu, subu, bltz, beq, bgez, j, jal, jr, sb, and, andi
.data
year: .word 0
flag400: .byte 0 # boolean
flag100: .byte 0 # boolean
flag4: .byte 0   # boolean
ans: .byte 0     # boolean
.text
j begin # start the program
div: # function div
    # use loop to div
    # a0: a, a1: b, v0: a % b
    # protect a0 and a1
    sw $a0 0($sp)
    addiu $sp $sp -4
    sw $a1 0($sp)
    addiu $sp $sp -4
    # while (a >= 0) a -= b
    minusloop:
        bltz $a0 endminusloop # if (a < 0) break;
        subu $a0 $a0 $a1 # a0 = a0 - a1
    	j minusloop
    endminusloop:
    # v0 = a0 + a1
    addu $v0 $a0 $a1
    # fetch a0 and a1
    addiu $sp $sp 4
    lw $a1 0($sp)
    addiu $sp $sp 4
    lw $a0 0($sp)
    jr $ra
begin:
# initialize sp and gp
li $sp 0x2ffc
li $gp 0x1800
# Read a Year to Memory
li $v0 2000 # year
sw $v0 year # store year

lw $a0 year # fetch year
# year % 400
li $a1 400
jal div
# if (v0 == 0) flag400 = 1
beq $v0 $0 set400
j end400
set400:
li $t5 1
sb $t5 flag400
end400:
# year % 100
lw $a0 year # fetch year
li $a1 100
jal div
# if (v0 != 0) flag100 = 1
bgez $v0 set100
j end100
set100:
li $t5 1
sb $t5 flag100
end100:
# year % 4
lw $a0 year
andi $v0 $a0 3
beq $v0 $0 set4
j end4
set4:
li $t5 1
sb $t5 flag4
end4:

# flag400 & flag100 & flag4
lb $t1 flag400
lb $t2 flag100
and $t1 $t1 $t2
lb $t2 flag4
and $t1 $t1 $t2
# result
sb $t2 ans

end:
li $v0 10
li $s0 0x1000
sw $v0 4($s0)
# syscall

