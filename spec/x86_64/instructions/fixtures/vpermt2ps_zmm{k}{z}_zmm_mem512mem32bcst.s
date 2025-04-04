.code64
.section .text
  vpermt2ps (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
