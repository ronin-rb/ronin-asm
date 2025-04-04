.code32
.section .text
  vfmadd231ph (%edx){1to16}, %ymm1, %ymm0{%k1}{z}
