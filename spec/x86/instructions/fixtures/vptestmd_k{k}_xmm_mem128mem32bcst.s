.code32
.section .text
  vptestmd (%edx){1to4}, %xmm1, %k1{%k2}
