.code32
.section .text
  vpackssdw (%edx){1to4}, %xmm1, %xmm0{%k1}{z}
