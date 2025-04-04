.code32
.section .text
  vfmadd132ss (%edx), %xmm1, %xmm0{%k1}{z}
