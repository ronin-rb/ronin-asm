.code32
.section .text
  vptestnmq (%edx){1to8}, %zmm1, %k1{%k2}
