.code64
.section .text
  vreduceph $0x44, {sae}, %zmm1, %zmm0{%k1}{z}
