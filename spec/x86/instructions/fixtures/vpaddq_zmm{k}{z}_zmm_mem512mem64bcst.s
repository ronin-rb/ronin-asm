.code32
.section .text
  vpaddq (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
