.code32
.section .text
  vpshrdvq (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
