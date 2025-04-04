.code64
.section .text
  vpshrdd $0x44, (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
