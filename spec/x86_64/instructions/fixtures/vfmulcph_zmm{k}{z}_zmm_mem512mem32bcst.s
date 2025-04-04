.code64
.section .text
  vfmulcph (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
