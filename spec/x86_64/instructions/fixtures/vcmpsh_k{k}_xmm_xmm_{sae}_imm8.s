.code64
.section .text
  vcmpsh $0x55, {sae}, %xmm2, %xmm1, %k1{%k2}
