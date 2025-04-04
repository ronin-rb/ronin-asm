.code32
.section .text
  vfmadd132pd (%edx){1to4}, %ymm1, %ymm0{%k1}{z}
