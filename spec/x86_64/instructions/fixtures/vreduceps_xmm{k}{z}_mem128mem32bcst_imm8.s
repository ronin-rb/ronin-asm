.code64
.section .text
  vreduceps $0x33, (%rcx){1to4}, %xmm0{%k1}{z}
