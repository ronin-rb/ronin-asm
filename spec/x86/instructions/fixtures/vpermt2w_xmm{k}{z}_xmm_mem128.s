.code32
.section .text
  vpermt2w (%edx), %xmm1, %xmm0{%k1}{z}
