.code64
.section .text
  vpsrad $0x33, (%rcx){1to4}, %xmm0{%k1}{z}
