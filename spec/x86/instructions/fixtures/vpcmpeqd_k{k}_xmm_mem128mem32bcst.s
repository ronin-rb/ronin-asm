.code32
.section .text
  vpcmpeqd (%edx){1to4}, %xmm1, %k1{%k2}
