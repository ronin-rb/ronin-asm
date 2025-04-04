.code64
.section .text
  vpalignr $0x44, (%rdx), %zmm1, %zmm0{%k1}{z}
