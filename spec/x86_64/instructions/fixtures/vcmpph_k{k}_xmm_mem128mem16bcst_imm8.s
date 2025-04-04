.code64
.section .text
  vcmpph $0x44, (%rdx){1to8}, %xmm1, %k1{%k2}
