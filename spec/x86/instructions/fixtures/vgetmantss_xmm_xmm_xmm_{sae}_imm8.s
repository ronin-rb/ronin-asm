.code32
.section .text
  vgetmantss $0x55, {sae}, %xmm2, %xmm1, %xmm0
