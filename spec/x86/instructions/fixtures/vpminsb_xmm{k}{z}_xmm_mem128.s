.code32
.section .text
  vpminsb (%edx), %xmm1, %xmm0{%k1}{z}
