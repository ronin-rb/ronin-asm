.code32
.section .text
  vpsllq $0x33, (%ecx){1to8}, %zmm0{%k1}{z}
