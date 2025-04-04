.code32
.section .text
  vpgatherdd (%ecx,%ymm1,4), %ymm0{%k1}
