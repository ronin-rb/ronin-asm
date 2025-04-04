.code32
.section .text
  vmaxph (%edx){1to32}, %zmm1, %zmm0{%k1}{z}
