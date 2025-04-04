.code32
.section .text
  vpermt2q (%edx){1to2}, %xmm1, %xmm0{%k1}{z}
