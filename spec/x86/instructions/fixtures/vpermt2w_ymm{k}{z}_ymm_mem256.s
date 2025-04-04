.code32
.section .text
  vpermt2w (%edx), %ymm1, %ymm0{%k1}{z}
