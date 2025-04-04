.code32
.section .text
  vpaddq (%edx){1to4}, %ymm1, %ymm0{%k1}{z}
