.code64
.section .text
  vpcmpd $0x44, (%rdx){1to4}, %xmm1, %k1{%k2}
