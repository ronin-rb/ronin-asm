.code64
.section .text
  vfmaddcph (%rdx){1to4}, %xmm1, %xmm0{%k1}{z}
