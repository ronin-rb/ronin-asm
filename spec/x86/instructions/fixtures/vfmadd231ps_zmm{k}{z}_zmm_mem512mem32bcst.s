.code32
.section .text
  vfmadd231ps (%edx){1to16}, %zmm1, %zmm0{%k1}{z}
