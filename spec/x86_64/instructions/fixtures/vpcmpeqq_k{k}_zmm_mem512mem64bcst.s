.code64
.section .text
  vpcmpeqq (%rdx){1to8}, %zmm1, %k1{%k2}
