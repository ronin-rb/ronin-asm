.code64
.section .text
  vsubpd (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
