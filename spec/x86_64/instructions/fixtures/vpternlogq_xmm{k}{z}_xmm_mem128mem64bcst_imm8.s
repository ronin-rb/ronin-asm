.code64
.section .text
  vpternlogq $0x44, (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
