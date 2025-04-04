.code64
.section .text
  vfmadd231ss (%rdx), %xmm1, %xmm0{%k1}{z}
