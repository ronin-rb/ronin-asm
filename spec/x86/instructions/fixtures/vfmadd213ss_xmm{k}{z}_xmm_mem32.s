.code32
.section .text
  vfmadd213ss (%edx), %xmm1, %xmm0{%k1}{z}
