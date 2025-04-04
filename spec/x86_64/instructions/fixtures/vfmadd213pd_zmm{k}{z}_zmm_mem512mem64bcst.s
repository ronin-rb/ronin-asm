.code64
.section .text
  vfmadd213pd (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
