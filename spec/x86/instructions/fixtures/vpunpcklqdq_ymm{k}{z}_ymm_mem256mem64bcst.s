.code32
.section .text
  vpunpcklqdq (%edx){1to4}, %ymm1, %ymm0{%k1}{z}
