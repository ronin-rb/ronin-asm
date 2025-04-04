.code64
.section .text
  vfixupimmss $0x55, {sae}, %xmm2, %xmm1, %xmm0{%k1}{z}
