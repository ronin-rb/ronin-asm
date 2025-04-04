.code32
.section .text
  vpcmpgtq (%edx){1to8}, %zmm1, %k1{%k2}
