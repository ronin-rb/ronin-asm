.code64
.section .text
  vdbpsadbw $0x44, (%rdx), %xmm1, %xmm0{%k1}{z}
