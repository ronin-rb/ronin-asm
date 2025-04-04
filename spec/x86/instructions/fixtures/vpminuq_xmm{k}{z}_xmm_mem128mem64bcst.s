.code32
.section .text
  vpminuq (%edx){1to2}, %xmm1, %xmm0{%k1}{z}
