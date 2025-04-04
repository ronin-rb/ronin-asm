.code32
.section .text
  vmaxpd (%edx){1to2}, %xmm1, %xmm0{%k1}{z}
