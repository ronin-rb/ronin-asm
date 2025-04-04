.code32
.section .text
  vpmulld (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
