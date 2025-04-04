.code32
.section .text
  vpmaddwd (%edx), %zmm1, %zmm0{%k1}{z}
