.code64
.section .text
  vpxord (%rdx){1to4}, %xmm1, %xmm0{%k1}{z}
