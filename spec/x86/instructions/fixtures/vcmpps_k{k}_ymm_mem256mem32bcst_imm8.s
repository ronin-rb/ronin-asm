.code32
.section .text
  vcmpps $0x44, (%edx){1to8}, %ymm1, %k1{%k2}
