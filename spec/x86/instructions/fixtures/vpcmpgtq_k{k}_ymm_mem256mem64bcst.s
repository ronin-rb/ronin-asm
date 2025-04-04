.code32
.section .text
  vpcmpgtq (%edx){1to4}, %ymm1, %k1{%k2}
