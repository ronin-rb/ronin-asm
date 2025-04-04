.code64
.section .text
  vpxord (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
