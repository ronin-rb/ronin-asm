.code32
.section .text
  vaddps (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
