.code64
.section .text
  vpermi2q (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
