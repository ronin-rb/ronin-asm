.code32
.section .text
  vcmpph $0x44, (%edx){1to16}, %ymm1, %k1{%k2}
