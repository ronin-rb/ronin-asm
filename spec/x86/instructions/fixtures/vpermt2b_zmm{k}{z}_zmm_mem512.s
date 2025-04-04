.code32
.section .text
  vpermt2b (%edx), %zmm1, %zmm0{%k1}{z}
