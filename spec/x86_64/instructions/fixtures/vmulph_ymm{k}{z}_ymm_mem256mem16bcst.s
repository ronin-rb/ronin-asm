.code64
.section .text
  vmulph (%rdx){1to16}, %ymm1, %ymm0{%k1}{z}
