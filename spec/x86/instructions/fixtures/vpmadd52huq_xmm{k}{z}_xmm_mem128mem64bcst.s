.code32
.section .text
  vpmadd52huq (%edx){1to2}, %xmm1, %xmm0{%k1}{z}
