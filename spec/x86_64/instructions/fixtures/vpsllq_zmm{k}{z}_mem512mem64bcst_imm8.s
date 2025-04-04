.code64
.section .text
  vpsllq $0x33, (%rcx){1to8}, %zmm0{%k1}{z}
