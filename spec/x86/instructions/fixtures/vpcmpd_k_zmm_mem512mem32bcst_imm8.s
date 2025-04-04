.code32
.section .text
  vpcmpd $0x44, (%edx){1to16}, %zmm1, %k1
