.code32
.section .text
  vpshufd $0x33, (%ecx){1to16}, %zmm0{%k1}{z}
