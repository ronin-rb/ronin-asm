.code32
.section .text
  vfnmadd132ph (%edx){1to32}, %zmm1, %zmm0{%k1}{z}
