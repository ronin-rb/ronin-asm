.code64
.section .text
  vfixupimmps $0x55, {sae}, %zmm2, %zmm1, %zmm0{%k1}{z}
