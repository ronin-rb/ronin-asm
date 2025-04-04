.code32
.section .text
  vfmadd231pd (%edx){1to4}, %ymm1, %ymm0{%k1}{z}
