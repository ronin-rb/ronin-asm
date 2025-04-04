.code32
.section .text
  vpcmpeqd (%edx){1to8}, %ymm1, %k1{%k2}
