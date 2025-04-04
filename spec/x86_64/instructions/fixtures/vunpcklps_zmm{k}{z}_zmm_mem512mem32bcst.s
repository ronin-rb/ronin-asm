.code64
.section .text
  vunpcklps (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
