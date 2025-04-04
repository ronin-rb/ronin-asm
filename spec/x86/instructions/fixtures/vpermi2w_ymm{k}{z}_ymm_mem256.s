.code32
.section .text
  vpermi2w (%edx), %ymm1, %ymm0{%k1}{z}
