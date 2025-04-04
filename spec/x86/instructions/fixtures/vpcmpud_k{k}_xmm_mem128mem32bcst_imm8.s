.code32
.section .text
  vpcmpud $0x44, (%edx){1to4}, %xmm1, %k1{%k2}
