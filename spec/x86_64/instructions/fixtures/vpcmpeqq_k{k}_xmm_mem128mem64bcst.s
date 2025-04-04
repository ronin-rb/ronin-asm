.code64
.section .text
  vpcmpeqq (%rdx){1to2}, %xmm1, %k1{%k2}
