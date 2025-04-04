.code64
.section .text
  vpunpckhdq (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
