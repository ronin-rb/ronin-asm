.code64
.section .text
  vpcmpq $0x44, (%rdx){1to8}, %zmm1, %k1
