.code64
.section .text
  vpshldd $0x44, (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
