.code64
.section .text
  vpermi2q (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
