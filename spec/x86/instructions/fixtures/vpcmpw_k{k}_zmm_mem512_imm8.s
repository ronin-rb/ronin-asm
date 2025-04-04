.code32
.section .text
  vpcmpw $0x44, (%edx), %zmm1, %k1{%k2}
