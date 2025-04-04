.code32
.section .text
  vfmsub213ps (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
