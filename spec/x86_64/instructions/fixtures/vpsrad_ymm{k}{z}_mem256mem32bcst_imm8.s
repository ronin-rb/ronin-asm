.code64
.section .text
  vpsrad $0x33, (%rcx){1to8}, %ymm0{%k1}{z}
