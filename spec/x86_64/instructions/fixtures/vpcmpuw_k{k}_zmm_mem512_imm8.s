.code64
.section .text
  vpcmpuw $0x44, (%rdx), %zmm1, %k1{%k2}
