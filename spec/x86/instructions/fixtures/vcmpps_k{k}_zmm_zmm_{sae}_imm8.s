.code32
.section .text
  vcmpps $0x55, {sae}, %zmm2, %zmm1, %k1{%k2}
