.code32
.section .text
  vpmaddubsw (%edx), %ymm1, %ymm0{%k1}{z}
