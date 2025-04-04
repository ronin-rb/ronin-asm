.code32
.section .text
  vfnmadd132ps (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
