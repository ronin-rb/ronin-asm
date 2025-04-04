.code32
.section .text
  vgetmantpd $0x44, {sae}, %zmm1, %zmm0{%k1}{z}
