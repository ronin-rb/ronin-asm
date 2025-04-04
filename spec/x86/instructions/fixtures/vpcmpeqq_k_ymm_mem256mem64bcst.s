.code32
.section .text
  vpcmpeqq (%edx){1to4}, %ymm1, %k1
