.code32
.section .text
  vpermps (%edx){1to16}, %zmm1, %zmm0{%k1}{z}
