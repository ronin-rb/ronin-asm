.code64
.section .text
  vgetmantph $0x33, (%rcx){1to32}, %zmm0{%k1}{z}
