.code64
.section .text
  vpcmpgtq (%rdx){1to2}, %xmm1, %k1{%k2}
