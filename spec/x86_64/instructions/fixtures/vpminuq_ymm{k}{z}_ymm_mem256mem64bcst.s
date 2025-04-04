.code64
.section .text
  vpminuq (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
