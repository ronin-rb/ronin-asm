.code32
.section .text
  vpcmpq $0x44, (%edx){1to8}, %zmm1, %k1
