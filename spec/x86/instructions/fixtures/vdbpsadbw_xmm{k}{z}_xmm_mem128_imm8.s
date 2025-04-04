.code32
.section .text
  vdbpsadbw $0x44, (%edx), %xmm1, %xmm0{%k1}{z}
