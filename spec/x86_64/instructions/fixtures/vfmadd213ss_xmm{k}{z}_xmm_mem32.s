.code64
.section .text
  vfmadd213ss (%rdx), %xmm1, %xmm0{%k1}{z}
