.code64
.section .text
  vpcmpd $0x44, (%rdx){1to16}, %zmm1, %k1
