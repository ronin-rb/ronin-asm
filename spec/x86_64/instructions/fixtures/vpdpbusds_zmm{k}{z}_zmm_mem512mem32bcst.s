.code64
.section .text
  vpdpbusds (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
