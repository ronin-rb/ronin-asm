.code32
.section .text
  vpmuldq (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
