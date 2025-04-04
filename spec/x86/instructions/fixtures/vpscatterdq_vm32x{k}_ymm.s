.code32
.section .text
  vpscatterdq %ymm1, (%ebx,%xmm0,4){%k1}
