.code64
.section .text
  vrsqrtph (%rcx){1to16}, %ymm0{%k1}{z}
