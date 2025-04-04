.code64
.section .text
  vpcmpw $0x44, (%rdx), %xmm1, %k1{%k2}
