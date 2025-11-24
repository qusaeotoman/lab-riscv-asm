.data
array:   .word 1, 2, 3, 4
         .word 5, 6, 7, 8
         .word 9,10,11,12
         .word 13,14,15,16

.text
.globl main
main:
    la t0, array      # t0 = base address of array
    li t1, 0          # t1 = i (index على القطر)
    li t2, 0          # t2 = sum

loop:
    li t3, 4          # N = 4
    bge t1, t3, end   # if i >= 4 => end

    li a0, 4
    mul a1, t1, a0    # a1 = i*4
    add a1, a1, t1    # a1 = i*4 + i
    slli a1, a1, 2    # *4 (byte offset)
    add a2, t0, a1    # address of array[i][i]
    lw a3, 0(a2)      # a3 = array[i][i]
    add t2, t2, a3    # sum += array[i][i]

    addi t1, t1, 1
    j loop

end:
    # لا توجد ecalls هنا
    # النتيجة النهائية في t2
    nop
