.code32
.section .text
  vpcmpuq $0x44, (%edx){1to2}, %xmm1, %k1{%k2}
