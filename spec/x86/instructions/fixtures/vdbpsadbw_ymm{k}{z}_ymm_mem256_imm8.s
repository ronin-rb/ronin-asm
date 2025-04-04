.code32
.section .text
  vdbpsadbw $0x44, (%edx), %ymm1, %ymm0{%k1}{z}
