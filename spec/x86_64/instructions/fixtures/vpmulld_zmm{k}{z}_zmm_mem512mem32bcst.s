.code64
.section .text
  vpmulld (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
