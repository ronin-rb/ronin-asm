.code32
.section .text
  vfmadd231ss (%edx), %xmm1, %xmm0{%k1}{z}
