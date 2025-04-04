.code64
.section .text
  vpopcntq (%rcx){1to4}, %ymm0{%k1}{z}
