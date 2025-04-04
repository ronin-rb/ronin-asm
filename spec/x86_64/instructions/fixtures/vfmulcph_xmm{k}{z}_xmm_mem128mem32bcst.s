.code64
.section .text
  vfmulcph (%rdx){1to4}, %xmm1, %xmm0{%k1}{z}
