.code32
.section .text
  vinsertf32x4 $0x44, (%edx), %ymm1, %ymm0{%k1}{z}
