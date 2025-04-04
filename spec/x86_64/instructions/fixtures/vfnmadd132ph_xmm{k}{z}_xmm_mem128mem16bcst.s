.code64
.section .text
  vfnmadd132ph (%rdx){1to8}, %xmm1, %xmm0{%k1}{z}
