.code64
.section .text
  vfmadd231ph (%rdx){1to8}, %xmm1, %xmm0{%k1}{z}
