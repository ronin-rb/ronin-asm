.code32
.section .text
  vcmpsd $0x55, {sae}, %xmm2, %xmm1, %k1{%k2}
