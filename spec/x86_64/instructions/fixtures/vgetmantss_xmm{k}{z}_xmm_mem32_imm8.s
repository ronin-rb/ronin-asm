.code64
.section .text
  vgetmantss $0x44, (%rdx), %xmm1, %xmm0{%k1}{z}
