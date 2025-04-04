.code64
.section .text
  vpsravq (%rdx){1to2}, %xmm1, %xmm0{%k1}{z}
