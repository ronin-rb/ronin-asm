.code64
.section .text
  vfmadd132sd (%rdx), %xmm1, %xmm0{%k1}{z}
