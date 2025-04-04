.code64
.section .text
  vpshufd $0x33, (%rcx){1to4}, %xmm0{%k1}{z}
