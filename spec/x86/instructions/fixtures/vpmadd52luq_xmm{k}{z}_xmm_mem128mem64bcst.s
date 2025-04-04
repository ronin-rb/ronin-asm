.code32
.section .text
  vpmadd52luq (%edx){1to2}, %xmm1, %xmm0{%k1}{z}
