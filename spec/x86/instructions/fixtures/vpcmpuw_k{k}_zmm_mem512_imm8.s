.code32
.section .text
  vpcmpuw $0x44, (%edx), %zmm1, %k1{%k2}
