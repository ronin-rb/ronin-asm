.code32
.section .text
  vpminsb (%edx), %zmm1, %zmm0{%k1}{z}
