.data
array:   .word 1, 2, 3, 4
         .word 5, 6, 7, 8
         .word 9,10,11,12
         .word 13,14,15,16

.text
.globl main
main:
    la t0, array      
    li t1, 0         
    li t2, 0          

loop:
    li t3, 4         
    bge t1, t3, end 

    li a0, 4
    mul a1, t1, a0    
    add a1, a1, t1    
    slli a1, a1, 2    
    add a2, t0, a1    
    lw a3, 0(a2)      
    add t2, t2, a3    

    addi t1, t1, 1
    j loop

end:
   mv a1, t2
   li a7, 1
    ecall
    
    nop
