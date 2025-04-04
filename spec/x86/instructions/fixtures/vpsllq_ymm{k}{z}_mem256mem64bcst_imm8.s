.code32
.section .text
  vpsllq $0x33, (%ecx){1to4}, %ymm0{%k1}{z}
