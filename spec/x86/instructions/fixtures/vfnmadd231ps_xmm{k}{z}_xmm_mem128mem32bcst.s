.code32
.section .text
  vfnmadd231ps (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
