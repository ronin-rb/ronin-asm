.code32
.section .text
  vpmaddwd (%edx), %xmm1, %xmm0{%k1}{z}
