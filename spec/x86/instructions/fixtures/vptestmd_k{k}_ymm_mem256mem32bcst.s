.code32
.section .text
  vptestmd (%edx){1to8}, %ymm1, %k1{%k2}
