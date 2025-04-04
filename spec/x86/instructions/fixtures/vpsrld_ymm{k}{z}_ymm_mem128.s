.code32
.section .text
  vpsrld (%edx), %ymm1, %ymm0{%k1}{z}
