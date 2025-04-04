.code32
.section .text
  vpunpcklqdq (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
