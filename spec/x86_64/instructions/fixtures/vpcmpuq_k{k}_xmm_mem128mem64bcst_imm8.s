.code64
.section .text
  vpcmpuq $0x44, (%rdx){1to2}, %xmm1, %k1{%k2}
