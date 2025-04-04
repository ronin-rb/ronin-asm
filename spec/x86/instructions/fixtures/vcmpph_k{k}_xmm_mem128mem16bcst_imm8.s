.code32
.section .text
  vcmpph $0x44, (%edx){1to8}, %xmm1, %k1{%k2}
