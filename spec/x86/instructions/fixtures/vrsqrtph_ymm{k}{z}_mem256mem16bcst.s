.code32
.section .text
  vrsqrtph (%ecx){1to16}, %ymm0{%k1}{z}
