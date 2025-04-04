.code64
.section .text
  vsubph (%rdx){1to32}, %zmm1, %zmm0{%k1}{z}
