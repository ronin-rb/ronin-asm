.code32
.section .text
  vcmpph $0x44, (%edx){1to32}, %zmm1, %k1{%k2}
