.code32
.section .text
  vptestmq (%edx){1to8}, %zmm1, %k1{%k2}
