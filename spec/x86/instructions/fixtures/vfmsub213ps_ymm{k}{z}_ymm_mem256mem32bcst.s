.code32
.section .text
  vfmsub213ps (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
