.code32
.section .text
  vdivph (%edx){1to8}, %xmm1, %xmm0{%k1}{z}
