.code64
.section .text
  vpshldd $0x44, (%rdx){1to4}, %xmm1, %xmm0{%k1}{z}
