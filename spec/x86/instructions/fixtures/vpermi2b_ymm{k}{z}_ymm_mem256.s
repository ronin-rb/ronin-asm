.code32
.section .text
  vpermi2b (%edx), %ymm1, %ymm0{%k1}{z}
