.code64
.section .text
  vpmaddwd (%rdx), %ymm1, %ymm0{%k1}{z}
