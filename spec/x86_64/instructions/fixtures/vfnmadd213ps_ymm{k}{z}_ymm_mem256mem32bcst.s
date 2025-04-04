.code64
.section .text
  vfnmadd213ps (%rdx){1to8}, %ymm1, %ymm0{%k1}{z}
