.code64
.section .text
  vfmsub213ps (%rdx){1to8}, %ymm1, %ymm0{%k1}{z}
