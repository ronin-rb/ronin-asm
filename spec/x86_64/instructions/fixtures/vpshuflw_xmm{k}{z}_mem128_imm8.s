.code64
.section .text
  vpshuflw $0x33, (%rcx), %xmm0{%k1}{z}
