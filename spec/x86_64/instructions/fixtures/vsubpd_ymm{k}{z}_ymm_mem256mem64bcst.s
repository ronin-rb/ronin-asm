.code64
.section .text
  vsubpd (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
