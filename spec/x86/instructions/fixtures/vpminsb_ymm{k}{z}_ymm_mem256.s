.code32
.section .text
  vpminsb (%edx), %ymm1, %ymm0{%k1}{z}
