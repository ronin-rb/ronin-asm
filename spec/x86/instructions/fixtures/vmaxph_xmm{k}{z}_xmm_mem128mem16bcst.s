.code32
.section .text
  vmaxph (%edx){1to8}, %xmm1, %xmm0{%k1}{z}
