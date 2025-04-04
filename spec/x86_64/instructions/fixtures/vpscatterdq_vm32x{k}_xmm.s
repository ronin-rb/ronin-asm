.code64
.section .text
  vpscatterdq %xmm1, (%rbx,%xmm0,4){%k1}
