.code64
.section .text
  vpcmpb $0x44, (%rdx), %xmm1, %k1{%k2}
