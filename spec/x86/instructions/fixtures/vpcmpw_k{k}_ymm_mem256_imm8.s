.code32
.section .text
  vpcmpw $0x44, (%edx), %ymm1, %k1{%k2}
