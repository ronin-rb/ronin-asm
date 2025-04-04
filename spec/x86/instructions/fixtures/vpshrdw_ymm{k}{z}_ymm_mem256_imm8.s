.code32
.section .text
  vpshrdw $0x44, (%edx), %ymm1, %ymm0{%k1}{z}
