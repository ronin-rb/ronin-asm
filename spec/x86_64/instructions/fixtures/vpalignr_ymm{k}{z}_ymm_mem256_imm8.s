.code64
.section .text
  vpalignr $0x44, (%rdx), %ymm1, %ymm0{%k1}{z}
