.code64
.section .text
  vgetmantpd $0x33, (%rcx){1to2}, %xmm0{%k1}{z}
