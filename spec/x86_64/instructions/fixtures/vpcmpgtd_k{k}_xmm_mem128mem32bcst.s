.code64
.section .text
  vpcmpgtd (%rdx){1to4}, %xmm1, %k1{%k2}
