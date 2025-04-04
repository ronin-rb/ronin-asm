.code64
.section .text
  vpminuq (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
