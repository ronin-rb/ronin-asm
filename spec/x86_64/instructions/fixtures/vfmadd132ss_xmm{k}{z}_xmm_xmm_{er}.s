.code64
.section .text
  vfmadd132ss {rn-sae}, %xmm2, %xmm1, %xmm0{%k1}{z}
