.code64
.section .text
  vpscatterdq %ymm1, (%rbx,%xmm0,4){%k1}
