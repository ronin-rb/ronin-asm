.code32
.section .text
  vpcmpub $0x44, (%edx), %ymm1, %k1{%k2}
