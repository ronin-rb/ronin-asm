.code32
.section .text
  vshufps $0x44, (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
