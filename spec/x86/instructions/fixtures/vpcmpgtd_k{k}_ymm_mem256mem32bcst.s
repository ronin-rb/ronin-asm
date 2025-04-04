.code32
.section .text
  vpcmpgtd (%edx){1to8}, %ymm1, %k1{%k2}
