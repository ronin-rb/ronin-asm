.code64
.section .text
  vpshldvd (%rdx){1to8}, %ymm1, %ymm0{%k1}{z}
