.code64
.section .text
  vmaxps {sae}, %zmm2, %zmm1, %zmm0{%k1}{z}
