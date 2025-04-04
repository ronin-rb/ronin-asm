.code64
.section .text
  vpsrld $0x33, (%rcx){1to16}, %zmm0{%k1}{z}
