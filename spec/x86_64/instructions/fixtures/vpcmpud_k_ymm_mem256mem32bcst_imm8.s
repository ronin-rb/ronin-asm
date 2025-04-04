.code64
.section .text
  vpcmpud $0x44, (%rdx){1to8}, %ymm1, %k1
