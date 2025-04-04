.code32
.section .text
  vpscatterdq %xmm1, (%ebx,%xmm0,4){%k1}
