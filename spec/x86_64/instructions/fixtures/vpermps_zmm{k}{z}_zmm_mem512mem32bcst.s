.code64
.section .text
  vpermps (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
