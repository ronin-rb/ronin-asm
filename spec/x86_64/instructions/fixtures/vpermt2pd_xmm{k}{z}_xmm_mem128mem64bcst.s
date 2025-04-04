.code64
.section .text
  vpermt2pd (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
