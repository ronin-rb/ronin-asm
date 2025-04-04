.code32
.section .text
  vpcmpuq $0x44, (%edx){1to4}, %ymm1, %k1
