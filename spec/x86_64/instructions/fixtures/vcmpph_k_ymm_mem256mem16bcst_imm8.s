.code64
.section .text
  vcmpph $0x44, (%rdx){1to16}, %ymm1, %k1
