.code64
.section .text
  vpmaxsq (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
