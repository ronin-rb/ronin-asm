.code32
.section .text
  vcmppd $0x44, (%edx){1to4}, %ymm1, %k1{%k2}
