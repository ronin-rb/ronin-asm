.code32
.section .text
  vpternlogd $0x44, (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
