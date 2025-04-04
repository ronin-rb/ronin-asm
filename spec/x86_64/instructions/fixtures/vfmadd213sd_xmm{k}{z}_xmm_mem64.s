.code64
.section .text
  vfmadd213sd (%rdx), %xmm1, %xmm0{%k1}{z}
