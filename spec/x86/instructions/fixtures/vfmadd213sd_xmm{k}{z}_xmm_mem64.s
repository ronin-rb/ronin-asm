.code32
.section .text
  vfmadd213sd (%edx), %xmm1, %xmm0{%k1}{z}
