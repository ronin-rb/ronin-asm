.code64
.section .text
  vpminsd (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
