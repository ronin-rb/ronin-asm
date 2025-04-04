.code32
.section .text
  vmulps (%edx){1to16}, %zmm1, %zmm0{%k1}{z}
