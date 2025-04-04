.code32
.section .text
  vpcmpw $0x44, (%edx), %xmm1, %k1{%k2}
