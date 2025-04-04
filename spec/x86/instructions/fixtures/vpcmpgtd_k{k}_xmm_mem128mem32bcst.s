.code32
.section .text
  vpcmpgtd (%edx){1to4}, %xmm1, %k1{%k2}
