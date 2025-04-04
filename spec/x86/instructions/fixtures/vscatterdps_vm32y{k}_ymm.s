.code32
.section .text
  vscatterdps %ymm1, (%ebx,%ymm0,4){%k1}
