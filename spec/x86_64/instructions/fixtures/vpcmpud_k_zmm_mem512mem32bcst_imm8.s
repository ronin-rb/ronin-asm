.code64
.section .text
  vpcmpud $0x44, (%rdx){1to16}, %zmm1, %k1
