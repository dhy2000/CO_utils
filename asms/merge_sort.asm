# Merge-Sort for CPU
# No Syscalls, No Mult/Div
# Function Call and Recursion Test
# Memory Read and Write Test

# define N 100
.data
n: .word 0
rev: .word 0
arr: .space 400
tmp: .space 400
.text
j main
merge:
    # protect $ra, $a0, $a1, $a2
    sw $ra 0($sp)
    addiu $sp $sp -4
    sw $a0 0($sp) # l
    addiu $sp $sp -4
    sw $a1 0($sp) # mid
    addiu $sp $sp -4
    sw $a2 0($sp) # r
    addiu $sp $sp -4
    move $t0 $a0 # i = l
    move $t1 $a1 # j = mid
    addiu $t1 $t1 1 # j = mid + 1
    move $t2 $a0 # k = l
    # while (i <= mid && j <= r)
    loopmerge0:
        slt $t3 $a1 $t0 # t3 = (mid > i)
        slt $t4 $a2 $t1 # t4 = (r > j)
        or $t3 $t3 $t4 # t3 = (mid > i) || (r > j)
        bgtz $t3 aftermerge0 # if (t3 != 0) break
        # if (tmp[i] <= tmp[j])
        sll $t3 $t0 2 # t3 = i << 2
        lw $t3 tmp($t3) # t3 = tmp[i]
        sll $t4 $t1 2 # t4 = j << 2
        lw $t4 tmp($t4) # t4 = tmp[j]
        bgt $t3 $t4 mergej # if (tmp[i] > tmp[j]) goto else
            # arr[k] = tmp[i]
            sll $t5 $t2 2
            sw $t3 arr($t5)
            # k++, i++
            addiu $t0 $t0 1
            addiu $t2 $t2 1
            j endmergeij
        mergej:
            # arr[k] = tmp[j]
            sll $t5 $t2 2
            sw $t4 arr($t5)
            # k++, j++
            addiu $t1 $t1 1
            addiu $t2 $t2 1
            # rev
            lw $t5 rev
            subu $t4 $a1 $t0 # t4 = mid - i
            addiu $t4 $t4 1 # t4 = mid - i + 1
            addu $t5 $t5 $t4 # rev += t4
            sw $t5 rev
        endmergeij:
        j loopmerge0
    aftermerge0:
    # while (i <= mid) arr[k++] = tmp[i++]
    loopmerge1:
        bgt $t0 $a1 aftermerge1 # if (i > mid) break
        sll $t3 $t2 2 # t3 = k << 2
        sll $t4 $t0 2 # t4 = i << 2
        lw $t4 tmp($t4) # t4 = tmp[i]
        sw $t4 arr($t3) # arr[k] = tmp[i]
        addiu $t2 $t2 1
        addiu $t0 $t0 1
        j loopmerge1
    aftermerge1:
    # while (j <= r) arr[k++] = tmp[j++]
    loopmerge2:
        bgt $t1 $a2 aftermerge2 # if (j > r) break
        sll $t3 $t2 2 # t3 = k << 2
        sll $t4 $t1 2 # t4 = j << 2
        lw $t4 tmp($t4) # t4 = tmp[j]
        sw $t4 arr($t3) # arr[k] = tmp[j]
        addiu $t2 $t2 1 # k++
        addiu $t1 $t1 1 # j++
        j loopmerge2
    aftermerge2:
    # restore $a2, $a1, $a0, $ra
    addiu $sp $sp 4
    lw $a2 0($sp)
    addiu $sp $sp 4
    lw $a1 0($sp)
    addiu $sp $sp 4
    lw $a0 0($sp)
    addiu $sp $sp 4
    lw $ra 0($sp)
    jr $ra
mergesort:
    # Entrance of function: protect $ra and $a0 and $a1
    sw $ra 0($sp)
    addiu $sp $sp -4
    sw $a0 0($sp)
    addiu $sp $sp -4
    sw $a1 0($sp)
    addiu $sp $sp -4
    # used $s0, so protect it
    sw $s0 0($sp)
    addiu $sp $sp -4
    # if (l >= r) return; 
    bge $a0 $a1 ret
    # test jalr
    la $t1 work  
    jalr $s0 $t1 # s0 <= PC+4; PC <= s1
    ret:
    addiu $sp $sp 4
    lw $s0 0($sp)
    addiu $sp $sp 4
    lw $a1 0($sp)
    addiu $sp $sp 4
    lw $a0 0($sp)
    addiu $sp $sp 4
    lw $ra 0($sp)
    jr $ra
work:
    # store ra
    sw $s0 0($sp) # [ret]
    addiu $sp $sp -4
    # mid
    move $t0 $a0 # t0 = l
    add $t1 $a0 $a1 # t1 = (l + r)
    srl $t1 $t1 1 # t1 >>= 1 --> t1 = mid
    move $t2 $a1 # t2 = r
    # protect $t0, $t1, $t2
    sw $t0 0($sp)
    addiu $sp $sp -4
    sw $t1 0($sp)
    addiu $sp $sp -4
    sw $t2 0($sp)
    addiu $sp $sp -4
    
    # mergesort(l, mid)
    move $a0 $t0
    move $a1 $t1
    jal mergesort
    
    # fetch $t1 and $t2
    lw $t2 4($sp)
    lw $t1 8($sp)
    addiu $t1 $t1 1
    move $a0 $t1
    move $a1 $t2
    jal mergesort
    
    addiu $sp $sp 4 # free t2
    lw $t2 0($sp)
    addiu $sp $sp 4 # free t1
    lw $t1 0($sp)
    addiu $sp $sp 4 # free t0
    lw $t0 0($sp)
    # copy memory
    # for mid = l; mid <= r; mid++
    move $s0 $t0 # i = l
    loopcopy:
        bgt $s0 $t2 endcopy # if (mid > r) break
        sll $t3 $s0 2
        lw $t4 arr($t3) # arr[i]
        sw $t4 tmp($t3)
        addiu $s0 $s0 1 # i = i + 1
        j loopcopy
    endcopy:
    # merge
    move $a0 $t0
    move $a1 $t1
    move $a2 $t2
    jal merge
    
    addiu $sp $sp 4
    lw $s0 0($sp)
    jr $s0 # back to ret
main:
    li $t0 20
    sw $t0 n
    la $s0 arr
    # 1
    li $t0 1
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 2
    li $t0 4
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 3
    li $t0 2
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 4
    li $t0 8
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 5
    li $t0 10
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 6
    li $t0 7
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 7
    li $t0 11
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 8
    li $t0 10
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 9
    li $t0 5
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 10
    li $t0 10
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 11
    li $t0 9
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 12
    li $t0 15
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 13
    li $t0 73
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 14
    li $t0 20
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 15
    li $t0 75
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 16
    li $t0 6
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 17
    li $t0 15
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 18
    li $t0 12
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 19
    li $t0 5
    sw $t0 0($s0)
    addiu $s0 $s0 4
    # 20
    li $t0 8
    sw $t0 0($s0)
    addiu $s0 $s0 4
    
    
    # ------- Merge Sort -------
    move $a0 $0    # a0 = 0
    lw $a1 n
    addiu $a1 $a1 -1 # a1 = n - 1
    jal mergesort # call mergesort(0, n - 1)
    
    j endprog
    sw $0 n   # never executed
endprog:
li $v0 10
# syscall
