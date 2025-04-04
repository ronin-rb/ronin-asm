.code64
.section .text
  vfmadd231pd (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
