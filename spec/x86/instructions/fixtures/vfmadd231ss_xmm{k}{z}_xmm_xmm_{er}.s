.code32
.section .text
  vfmadd231ss {rn-sae}, %xmm2, %xmm1, %xmm0{%k1}{z}
