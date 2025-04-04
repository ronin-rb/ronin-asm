.code64
.section .text
  vpsravq (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
