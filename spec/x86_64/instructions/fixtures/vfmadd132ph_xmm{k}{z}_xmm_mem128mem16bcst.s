.code64
.section .text
  vfmadd132ph (%rdx){1to8}, %xmm1, %xmm0{%k1}{z}
