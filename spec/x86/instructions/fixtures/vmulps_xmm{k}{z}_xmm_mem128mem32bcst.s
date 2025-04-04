.code32
.section .text
  vmulps (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
