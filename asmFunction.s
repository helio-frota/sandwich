.type foo, @function
.globl foo
foo:
  pushq %rbp # Gets the extended base pointer o get the argument.
  movq %rsp, %rbp # Moves the extented stack pointer to %rbp.
  # movq 4(%rbp), %rax # Set the first parameter to %rax.
  movq -4(%rbp), %rax # not sure what it means , need to read more about.
  addq $1, %rax
  movq %rbp, %rsp
  popq %rbp
ret
