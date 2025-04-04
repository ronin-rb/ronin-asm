.code64
.section .text
  vfmadd132pd (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
