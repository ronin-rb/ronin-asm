.code64
.section .text
  vpcmpeqd (%rdx){1to16}, %zmm1, %k1{%k2}
