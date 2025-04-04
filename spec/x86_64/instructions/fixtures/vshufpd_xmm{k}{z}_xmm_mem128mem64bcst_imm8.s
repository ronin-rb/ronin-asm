.code64
.section .text
  vshufpd $0x44, (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
