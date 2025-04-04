.code32
.section .text
  vpcmpud $0x44, (%edx){1to8}, %ymm1, %k1
