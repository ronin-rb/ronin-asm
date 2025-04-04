.code64
.section .text
  vfmadd231ph (%rdx){1to32}, %zmm1, %zmm0{%k1}{z}
