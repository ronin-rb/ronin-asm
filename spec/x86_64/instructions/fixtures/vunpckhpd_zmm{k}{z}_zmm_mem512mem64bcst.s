.code64
.section .text
  vunpckhpd (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
