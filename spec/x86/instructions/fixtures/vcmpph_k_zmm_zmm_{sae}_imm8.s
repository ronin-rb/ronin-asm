.code32
.section .text
  vcmpph $0x55, {sae}, %zmm2, %zmm1, %k1
