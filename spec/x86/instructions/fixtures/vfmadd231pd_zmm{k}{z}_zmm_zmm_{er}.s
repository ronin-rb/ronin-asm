.code32
.section .text
  vfmadd231pd {rn-sae}, %zmm2, %zmm1, %zmm0{%k1}{z}
