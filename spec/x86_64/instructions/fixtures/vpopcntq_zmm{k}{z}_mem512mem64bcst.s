.code64
.section .text
  vpopcntq (%rcx){1to8}, %zmm0{%k1}{z}
