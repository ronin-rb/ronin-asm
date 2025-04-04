.code32
.section .text
  vandps (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
