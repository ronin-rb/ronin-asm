.code32
.section .text
  vpshrdd $0x44, (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
