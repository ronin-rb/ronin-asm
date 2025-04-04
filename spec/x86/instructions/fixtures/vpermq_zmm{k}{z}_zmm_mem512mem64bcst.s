.code32
.section .text
  vpermq (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
