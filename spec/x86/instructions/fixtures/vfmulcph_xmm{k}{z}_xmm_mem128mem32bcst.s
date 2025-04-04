.code32
.section .text
  vfmulcph (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
