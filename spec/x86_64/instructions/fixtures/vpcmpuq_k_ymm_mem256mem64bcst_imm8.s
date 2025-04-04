.code64
.section .text
  vpcmpuq $0x44, (%rdx){1to4}, %ymm1, %k1
