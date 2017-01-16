.type foo, @function
.globl foo
message:
  .ascii  "This is an Assembly function.\n"
  len = . - message
foo:
  movq    $len,%rdx
  movq    $message,%rcx
  movq    $1,%rbx
  movq    $4,%rax
  int     $0x80
  movq    $0,%rbx
  movq    $1,%rax
  int     $0x80
  leave
ret
