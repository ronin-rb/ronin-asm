.code64
.section .text
  vpternlogd $0x44, (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
