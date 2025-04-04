.code32
.section .text
  vfmadd213ph (%edx){1to8}, %xmm1, %xmm0{%k1}{z}
