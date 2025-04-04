.code32
.section .text
  vpermi2q (%edx){1to2}, %xmm1, %xmm0{%k1}{z}
