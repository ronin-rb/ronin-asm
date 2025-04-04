.code64
.section .text
  vunpcklpd (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
