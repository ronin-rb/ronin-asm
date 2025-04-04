.code32
.section .text
  vfmadd132ph (%edx){1to16}, %ymm1, %ymm0{%k1}{z}
