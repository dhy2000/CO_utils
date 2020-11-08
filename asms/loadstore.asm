
li $s0 0x00000010
li $s1 0x12345678

sw $s1 0($s0)
sw $s1 4($s0)
lh $t1 2($s0)
sh $t1 4($s0)
lb $t2 1($s0)
sb $t2 7($s0)

