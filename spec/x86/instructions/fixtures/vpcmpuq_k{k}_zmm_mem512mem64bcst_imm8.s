.code32
.section .text
  vpcmpuq $0x44, (%edx){1to8}, %zmm1, %k1{%k2}
