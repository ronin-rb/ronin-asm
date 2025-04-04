.code64
.section .text
  vpminuq (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
