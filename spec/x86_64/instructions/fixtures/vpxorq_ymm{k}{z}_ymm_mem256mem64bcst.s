.code64
.section .text
  vpxorq (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
