.code64
.section .text
  vpcmpb $0x44, (%rdx), %ymm1, %k1{%k2}
