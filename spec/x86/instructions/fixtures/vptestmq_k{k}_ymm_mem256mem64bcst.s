.code32
.section .text
  vptestmq (%edx){1to4}, %ymm1, %k1{%k2}
