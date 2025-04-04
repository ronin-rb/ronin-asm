.code32
.section .text
  vpermi2pd (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
