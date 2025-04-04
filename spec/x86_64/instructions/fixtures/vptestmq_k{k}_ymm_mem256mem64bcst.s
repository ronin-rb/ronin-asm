.code64
.section .text
  vptestmq (%rdx){1to4}, %ymm1, %k1{%k2}
