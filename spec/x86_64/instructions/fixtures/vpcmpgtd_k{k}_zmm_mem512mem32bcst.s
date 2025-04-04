.code64
.section .text
  vpcmpgtd (%rdx){1to16}, %zmm1, %k1{%k2}
