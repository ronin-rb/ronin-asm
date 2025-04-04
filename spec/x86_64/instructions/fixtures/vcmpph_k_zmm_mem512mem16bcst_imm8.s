.code64
.section .text
  vcmpph $0x44, (%rdx){1to32}, %zmm1, %k1
