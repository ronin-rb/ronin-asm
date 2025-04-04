.code32
.section .text
  vpcmpud $0x44, (%edx){1to16}, %zmm1, %k1
