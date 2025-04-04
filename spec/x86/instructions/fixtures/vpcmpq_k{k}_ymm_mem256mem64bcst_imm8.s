.code32
.section .text
  vpcmpq $0x44, (%edx){1to4}, %ymm1, %k1{%k2}
