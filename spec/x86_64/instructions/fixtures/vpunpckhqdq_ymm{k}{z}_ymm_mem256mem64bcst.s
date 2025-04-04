.code64
.section .text
  vpunpckhqdq (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
