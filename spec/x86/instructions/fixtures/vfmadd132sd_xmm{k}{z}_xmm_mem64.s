.code32
.section .text
  vfmadd132sd (%edx), %xmm1, %xmm0{%k1}{z}
