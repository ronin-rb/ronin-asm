.code64
.section .text
  vunpckhpd (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
