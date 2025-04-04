.code64
.section .text
  vpshrdvq (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
