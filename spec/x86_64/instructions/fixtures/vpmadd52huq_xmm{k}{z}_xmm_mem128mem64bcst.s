.code64
.section .text
  vpmadd52huq (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
