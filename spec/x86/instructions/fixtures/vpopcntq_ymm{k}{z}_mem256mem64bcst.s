.code32
.section .text
  vpopcntq (%ecx){1to4}, %ymm0{%k1}{z}
