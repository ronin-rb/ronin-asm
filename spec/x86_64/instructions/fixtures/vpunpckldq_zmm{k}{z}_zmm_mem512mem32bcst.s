.code64
.section .text
  vpunpckldq (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
