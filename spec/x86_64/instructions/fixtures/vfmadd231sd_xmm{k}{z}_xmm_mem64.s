.code64
.section .text
  vfmadd231sd (%rdx), %xmm1, %xmm0{%k1}{z}
