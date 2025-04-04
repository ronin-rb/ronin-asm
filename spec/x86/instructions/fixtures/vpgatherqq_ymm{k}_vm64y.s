.code32
.section .text
  vpgatherqq (%ecx,%ymm1,8), %ymm0{%k1}
