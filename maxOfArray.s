    .section .data
Numbers:
    .long 1
    .long 15
    .long 4
    .long 2
    .long 7
    .long 9
    .long 23
    .long 7
    .long 3
    .long 11

Array_length:
    .long 10

Max_value:
    .long 0  # Placeholder for the maximum value found

    .section .rodata
.LC0:
    .string "Max of array = %d\n"

    .text
    .globl main
    .type main, @function
main:
    pushl   %ebp
    movl    %esp, %ebp
    subl    $16, %esp            # reserve stack space

    movl    $1, -4(%ebp)         # i = 1
    movl    Numbers, %eax
    movl    %eax, -8(%ebp)       # max = Numbers[0]

    jmp     .L2                  # go to condition check

.L3:                              # loop body
    movl    -4(%ebp), %eax       # eax = i
    movl    Numbers(,%eax,4), %edx   # edx = Numbers[i]

    cmpl    -8(%ebp), %edx       # compare Numbers[i] with max
    jle     .L4                  # if Numbers[i] <= max, skip update
    movl    %edx, -8(%ebp)       # max = Numbers[i]

.L4:
    addl    $1, -4(%ebp)         # i++

.L2:                              # while condition
    movl    -4(%ebp), %eax       # eax = i
    movl    Array_length, %edx   # edx = Array_length
    cmpl    %edx, %eax
    jl      .L3                  # while (i < Array_length)

    pushl   -8(%ebp)             # push max
    pushl   $.LC0                # push format string
    call    printf
    addl    $8, %esp

    movl    $0, %eax
    leave
    ret

.section	.note.GNU-stack,"",@progbits
