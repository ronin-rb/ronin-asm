.code64
.section .text
  vcmpps $0x44, (%rdx){1to16}, %zmm1, %k1{%k2}
