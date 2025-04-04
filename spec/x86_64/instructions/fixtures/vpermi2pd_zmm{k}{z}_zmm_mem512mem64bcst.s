.code64
.section .text
  vpermi2pd (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
