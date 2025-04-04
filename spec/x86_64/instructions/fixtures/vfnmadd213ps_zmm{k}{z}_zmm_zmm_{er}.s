.code64
.section .text
  vfnmadd213ps {rn-sae}, %zmm2, %zmm1, %zmm0{%k1}{z}
