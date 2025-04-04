.code32
.section .text
  vpopcntq (%ecx){1to8}, %zmm0{%k1}{z}
