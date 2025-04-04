.code32
.section .text
  vcvtne2ps2bf16 (%edx){1to16}, %zmm1, %zmm0{%k1}{z}
