.code64
.section .text
  vpgatherqq (%rcx,%ymm1,8), %ymm0{%k1}
