.code32
.section .text
  vpcmpeqd (%edx){1to16}, %zmm1, %k1{%k2}
