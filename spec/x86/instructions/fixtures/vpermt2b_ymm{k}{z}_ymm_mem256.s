.code32
.section .text
  vpermt2b (%edx), %ymm1, %ymm0{%k1}{z}
