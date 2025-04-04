.code32
.section .text
  vgetmantph $0x33, (%ecx){1to32}, %zmm0{%k1}{z}
