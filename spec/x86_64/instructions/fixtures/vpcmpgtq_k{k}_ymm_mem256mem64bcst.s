.code64
.section .text
  vpcmpgtq (%rdx){1to4}, %ymm1, %k1{%k2}
