.code64
.section .text
  vpshuflw $0x33, (%rcx), %zmm0{%k1}{z}
