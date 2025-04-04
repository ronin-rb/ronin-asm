.code64
.section .text
  vpcmpd $0x44, (%rdx){1to8}, %ymm1, %k1
