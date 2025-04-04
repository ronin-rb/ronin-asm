.code32
.section .text
  vfnmadd231ph (%edx){1to8}, %xmm1, %xmm0{%k1}{z}
