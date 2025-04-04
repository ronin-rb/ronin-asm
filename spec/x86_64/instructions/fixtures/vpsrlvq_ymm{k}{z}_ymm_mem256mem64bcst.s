.code64
.section .text
  vpsrlvq (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
