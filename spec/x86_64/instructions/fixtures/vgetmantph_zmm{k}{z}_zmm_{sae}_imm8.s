.code64
.section .text
  vgetmantph $0x44, {sae}, %zmm1, %zmm0{%k1}{z}
