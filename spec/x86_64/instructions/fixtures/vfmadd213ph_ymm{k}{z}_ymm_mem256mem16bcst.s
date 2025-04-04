.code64
.section .text
  vfmadd213ph (%rdx){1to16}, %ymm1, %ymm0{%k1}{z}
