.code32
.section .text
  vfmadd132ps (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
