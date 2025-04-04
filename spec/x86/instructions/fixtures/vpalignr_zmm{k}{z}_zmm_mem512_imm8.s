.code32
.section .text
  vpalignr $0x44, (%edx), %zmm1, %zmm0{%k1}{z}
