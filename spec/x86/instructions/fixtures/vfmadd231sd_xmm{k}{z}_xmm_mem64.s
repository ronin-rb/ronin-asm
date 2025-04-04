.code32
.section .text
  vfmadd231sd (%edx), %xmm1, %xmm0{%k1}{z}
