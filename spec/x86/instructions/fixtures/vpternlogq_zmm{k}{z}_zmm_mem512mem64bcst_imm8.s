.code32
.section .text
  vpternlogq $0x44, (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
