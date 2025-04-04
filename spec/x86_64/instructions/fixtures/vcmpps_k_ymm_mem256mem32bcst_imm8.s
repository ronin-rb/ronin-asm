.code64
.section .text
  vcmpps $0x44, (%rdx){1to8}, %ymm1, %k1
