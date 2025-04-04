.code64
.section .text
  vminph (%rdx){1to32}, %zmm1, %zmm0{%k1}{z}
