.code32
.section .text
  vcvtne2ps2bf16 (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
