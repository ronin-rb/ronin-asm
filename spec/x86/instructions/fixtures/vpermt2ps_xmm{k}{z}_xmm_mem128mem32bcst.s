.code32
.section .text
  vpermt2ps (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
