.code64
.section .text
  vpermq $0x33, (%rcx){1to8}, %zmm0{%k1}{z}
