.code64
.section .text
  vreducesd $0x44, (%rdx), %xmm1, %xmm0{%k1}{z}
