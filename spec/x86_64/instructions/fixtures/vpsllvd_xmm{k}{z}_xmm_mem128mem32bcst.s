.code64
.section .text
  vpsllvd (%rdx){1to4}, %xmm1, %xmm0{%k1}{z}
