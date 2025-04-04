.code64
.section .text
  vpcmpuq $0x44, (%rdx){1to8}, %zmm1, %k1{%k2}
