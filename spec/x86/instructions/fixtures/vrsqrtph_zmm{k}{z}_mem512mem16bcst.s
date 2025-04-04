.code32
.section .text
  vrsqrtph (%ecx){1to32}, %zmm0{%k1}{z}
