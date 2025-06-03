# frozen_string_literal: true
#
# ronin-asm - A Ruby DSL for crafting Assembly programs and shellcode.
#
# Copyright (c) 2007-2025 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# ronin-asm is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ronin-asm is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with ronin-asm.  If not, see <https://www.gnu.org/licenses/>.
#

#
# NOTE: this file was automatically generated. Do not edit!
#

module Ronin
  module ASM
    module X86
      #
      # Contains all x86 instruction classes and methods.
      #
      module Instructions
        autoload :AAA, 'ronin/asm/x86/instructions/aaa'
        autoload :AAD, 'ronin/asm/x86/instructions/aad'
        autoload :AADD, 'ronin/asm/x86/instructions/aadd'
        autoload :AAM, 'ronin/asm/x86/instructions/aam'
        autoload :AAND, 'ronin/asm/x86/instructions/aand'
        autoload :AAS, 'ronin/asm/x86/instructions/aas'
        autoload :ADC, 'ronin/asm/x86/instructions/adc'
        autoload :ADCX, 'ronin/asm/x86/instructions/adcx'
        autoload :ADD, 'ronin/asm/x86/instructions/add'
        autoload :ADDPD, 'ronin/asm/x86/instructions/addpd'
        autoload :ADDPS, 'ronin/asm/x86/instructions/addps'
        autoload :ADDSD, 'ronin/asm/x86/instructions/addsd'
        autoload :ADDSS, 'ronin/asm/x86/instructions/addss'
        autoload :ADDSUBPD, 'ronin/asm/x86/instructions/addsubpd'
        autoload :ADDSUBPS, 'ronin/asm/x86/instructions/addsubps'
        autoload :ADOX, 'ronin/asm/x86/instructions/adox'
        autoload :AESDEC, 'ronin/asm/x86/instructions/aesdec'
        autoload :AESDECLAST, 'ronin/asm/x86/instructions/aesdeclast'
        autoload :AESENC, 'ronin/asm/x86/instructions/aesenc'
        autoload :AESENCLAST, 'ronin/asm/x86/instructions/aesenclast'
        autoload :AESIMC, 'ronin/asm/x86/instructions/aesimc'
        autoload :AESKEYGENASSIST, 'ronin/asm/x86/instructions/aeskeygenassist'
        autoload :AND, 'ronin/asm/x86/instructions/and'
        autoload :ANDN, 'ronin/asm/x86/instructions/andn'
        autoload :ANDNPD, 'ronin/asm/x86/instructions/andnpd'
        autoload :ANDNPS, 'ronin/asm/x86/instructions/andnps'
        autoload :ANDPD, 'ronin/asm/x86/instructions/andpd'
        autoload :ANDPS, 'ronin/asm/x86/instructions/andps'
        autoload :AOR, 'ronin/asm/x86/instructions/aor'
        autoload :AXOR, 'ronin/asm/x86/instructions/axor'
        autoload :BEXTR, 'ronin/asm/x86/instructions/bextr'
        autoload :BLCFILL, 'ronin/asm/x86/instructions/blcfill'
        autoload :BLCI, 'ronin/asm/x86/instructions/blci'
        autoload :BLCIC, 'ronin/asm/x86/instructions/blcic'
        autoload :BLCMSK, 'ronin/asm/x86/instructions/blcmsk'
        autoload :BLCS, 'ronin/asm/x86/instructions/blcs'
        autoload :BLENDPD, 'ronin/asm/x86/instructions/blendpd'
        autoload :BLENDPS, 'ronin/asm/x86/instructions/blendps'
        autoload :BLENDVPD, 'ronin/asm/x86/instructions/blendvpd'
        autoload :BLENDVPS, 'ronin/asm/x86/instructions/blendvps'
        autoload :BLSFILL, 'ronin/asm/x86/instructions/blsfill'
        autoload :BLSI, 'ronin/asm/x86/instructions/blsi'
        autoload :BLSIC, 'ronin/asm/x86/instructions/blsic'
        autoload :BLSMSK, 'ronin/asm/x86/instructions/blsmsk'
        autoload :BLSR, 'ronin/asm/x86/instructions/blsr'
        autoload :BSF, 'ronin/asm/x86/instructions/bsf'
        autoload :BSR, 'ronin/asm/x86/instructions/bsr'
        autoload :BSWAP, 'ronin/asm/x86/instructions/bswap'
        autoload :BT, 'ronin/asm/x86/instructions/bt'
        autoload :BTC, 'ronin/asm/x86/instructions/btc'
        autoload :BTR, 'ronin/asm/x86/instructions/btr'
        autoload :BTS, 'ronin/asm/x86/instructions/bts'
        autoload :BZHI, 'ronin/asm/x86/instructions/bzhi'
        autoload :CALL, 'ronin/asm/x86/instructions/call'
        autoload :CBW, 'ronin/asm/x86/instructions/cbw'
        autoload :CDQ, 'ronin/asm/x86/instructions/cdq'
        autoload :CLC, 'ronin/asm/x86/instructions/clc'
        autoload :CLD, 'ronin/asm/x86/instructions/cld'
        autoload :CLDEMOTE, 'ronin/asm/x86/instructions/cldemote'
        autoload :CLFLUSH, 'ronin/asm/x86/instructions/clflush'
        autoload :CLFLUSHOPT, 'ronin/asm/x86/instructions/clflushopt'
        autoload :CLWB, 'ronin/asm/x86/instructions/clwb'
        autoload :CLZERO, 'ronin/asm/x86/instructions/clzero'
        autoload :CMC, 'ronin/asm/x86/instructions/cmc'
        autoload :CMOVA, 'ronin/asm/x86/instructions/cmova'
        autoload :CMOVAE, 'ronin/asm/x86/instructions/cmovae'
        autoload :CMOVB, 'ronin/asm/x86/instructions/cmovb'
        autoload :CMOVBE, 'ronin/asm/x86/instructions/cmovbe'
        autoload :CMOVC, 'ronin/asm/x86/instructions/cmovc'
        autoload :CMOVE, 'ronin/asm/x86/instructions/cmove'
        autoload :CMOVG, 'ronin/asm/x86/instructions/cmovg'
        autoload :CMOVGE, 'ronin/asm/x86/instructions/cmovge'
        autoload :CMOVL, 'ronin/asm/x86/instructions/cmovl'
        autoload :CMOVLE, 'ronin/asm/x86/instructions/cmovle'
        autoload :CMOVNA, 'ronin/asm/x86/instructions/cmovna'
        autoload :CMOVNAE, 'ronin/asm/x86/instructions/cmovnae'
        autoload :CMOVNB, 'ronin/asm/x86/instructions/cmovnb'
        autoload :CMOVNBE, 'ronin/asm/x86/instructions/cmovnbe'
        autoload :CMOVNC, 'ronin/asm/x86/instructions/cmovnc'
        autoload :CMOVNE, 'ronin/asm/x86/instructions/cmovne'
        autoload :CMOVNG, 'ronin/asm/x86/instructions/cmovng'
        autoload :CMOVNGE, 'ronin/asm/x86/instructions/cmovnge'
        autoload :CMOVNL, 'ronin/asm/x86/instructions/cmovnl'
        autoload :CMOVNLE, 'ronin/asm/x86/instructions/cmovnle'
        autoload :CMOVNO, 'ronin/asm/x86/instructions/cmovno'
        autoload :CMOVNP, 'ronin/asm/x86/instructions/cmovnp'
        autoload :CMOVNS, 'ronin/asm/x86/instructions/cmovns'
        autoload :CMOVNZ, 'ronin/asm/x86/instructions/cmovnz'
        autoload :CMOVO, 'ronin/asm/x86/instructions/cmovo'
        autoload :CMOVP, 'ronin/asm/x86/instructions/cmovp'
        autoload :CMOVPE, 'ronin/asm/x86/instructions/cmovpe'
        autoload :CMOVPO, 'ronin/asm/x86/instructions/cmovpo'
        autoload :CMOVS, 'ronin/asm/x86/instructions/cmovs'
        autoload :CMOVZ, 'ronin/asm/x86/instructions/cmovz'
        autoload :CMP, 'ronin/asm/x86/instructions/cmp'
        autoload :CMPPD, 'ronin/asm/x86/instructions/cmppd'
        autoload :CMPPS, 'ronin/asm/x86/instructions/cmpps'
        autoload :CMPSD, 'ronin/asm/x86/instructions/cmpsd'
        autoload :CMPSS, 'ronin/asm/x86/instructions/cmpss'
        autoload :CMPXCHG, 'ronin/asm/x86/instructions/cmpxchg'
        autoload :CMPXCHG8B, 'ronin/asm/x86/instructions/cmpxchg8b'
        autoload :COMISD, 'ronin/asm/x86/instructions/comisd'
        autoload :COMISS, 'ronin/asm/x86/instructions/comiss'
        autoload :CPUID, 'ronin/asm/x86/instructions/cpuid'
        autoload :CRC32, 'ronin/asm/x86/instructions/crc32'
        autoload :CVTDQ2PD, 'ronin/asm/x86/instructions/cvtdq2pd'
        autoload :CVTDQ2PS, 'ronin/asm/x86/instructions/cvtdq2ps'
        autoload :CVTPD2DQ, 'ronin/asm/x86/instructions/cvtpd2dq'
        autoload :CVTPD2PI, 'ronin/asm/x86/instructions/cvtpd2pi'
        autoload :CVTPD2PS, 'ronin/asm/x86/instructions/cvtpd2ps'
        autoload :CVTPI2PD, 'ronin/asm/x86/instructions/cvtpi2pd'
        autoload :CVTPI2PS, 'ronin/asm/x86/instructions/cvtpi2ps'
        autoload :CVTPS2DQ, 'ronin/asm/x86/instructions/cvtps2dq'
        autoload :CVTPS2PD, 'ronin/asm/x86/instructions/cvtps2pd'
        autoload :CVTPS2PI, 'ronin/asm/x86/instructions/cvtps2pi'
        autoload :CVTSD2SI, 'ronin/asm/x86/instructions/cvtsd2si'
        autoload :CVTSD2SS, 'ronin/asm/x86/instructions/cvtsd2ss'
        autoload :CVTSI2SD, 'ronin/asm/x86/instructions/cvtsi2sd'
        autoload :CVTSI2SS, 'ronin/asm/x86/instructions/cvtsi2ss'
        autoload :CVTSS2SD, 'ronin/asm/x86/instructions/cvtss2sd'
        autoload :CVTSS2SI, 'ronin/asm/x86/instructions/cvtss2si'
        autoload :CVTTPD2DQ, 'ronin/asm/x86/instructions/cvttpd2dq'
        autoload :CVTTPD2PI, 'ronin/asm/x86/instructions/cvttpd2pi'
        autoload :CVTTPS2DQ, 'ronin/asm/x86/instructions/cvttps2dq'
        autoload :CVTTPS2PI, 'ronin/asm/x86/instructions/cvttps2pi'
        autoload :CVTTSD2SI, 'ronin/asm/x86/instructions/cvttsd2si'
        autoload :CVTTSS2SI, 'ronin/asm/x86/instructions/cvttss2si'
        autoload :CWD, 'ronin/asm/x86/instructions/cwd'
        autoload :CWDE, 'ronin/asm/x86/instructions/cwde'
        autoload :DAA, 'ronin/asm/x86/instructions/daa'
        autoload :DAS, 'ronin/asm/x86/instructions/das'
        autoload :DEC, 'ronin/asm/x86/instructions/dec'
        autoload :DIV, 'ronin/asm/x86/instructions/div'
        autoload :DIVPD, 'ronin/asm/x86/instructions/divpd'
        autoload :DIVPS, 'ronin/asm/x86/instructions/divps'
        autoload :DIVSD, 'ronin/asm/x86/instructions/divsd'
        autoload :DIVSS, 'ronin/asm/x86/instructions/divss'
        autoload :DPPD, 'ronin/asm/x86/instructions/dppd'
        autoload :DPPS, 'ronin/asm/x86/instructions/dpps'
        autoload :EMMS, 'ronin/asm/x86/instructions/emms'
        autoload :ENDBR32, 'ronin/asm/x86/instructions/endbr32'
        autoload :EXTRACTPS, 'ronin/asm/x86/instructions/extractps'
        autoload :EXTRQ, 'ronin/asm/x86/instructions/extrq'
        autoload :FEMMS, 'ronin/asm/x86/instructions/femms'
        autoload :GF2P8AFFINEINVQB, 'ronin/asm/x86/instructions/gf2p8affineinvqb'
        autoload :GF2P8AFFINEQB, 'ronin/asm/x86/instructions/gf2p8affineqb'
        autoload :GF2P8MULB, 'ronin/asm/x86/instructions/gf2p8mulb'
        autoload :HADDPD, 'ronin/asm/x86/instructions/haddpd'
        autoload :HADDPS, 'ronin/asm/x86/instructions/haddps'
        autoload :HSUBPD, 'ronin/asm/x86/instructions/hsubpd'
        autoload :HSUBPS, 'ronin/asm/x86/instructions/hsubps'
        autoload :IDIV, 'ronin/asm/x86/instructions/idiv'
        autoload :IMUL, 'ronin/asm/x86/instructions/imul'
        autoload :INC, 'ronin/asm/x86/instructions/inc'
        autoload :INSERTPS, 'ronin/asm/x86/instructions/insertps'
        autoload :INSERTQ, 'ronin/asm/x86/instructions/insertq'
        autoload :INT, 'ronin/asm/x86/instructions/int'
        autoload :INT3, 'ronin/asm/x86/instructions/int3'
        autoload :INTO, 'ronin/asm/x86/instructions/into'
        autoload :JA, 'ronin/asm/x86/instructions/ja'
        autoload :JAE, 'ronin/asm/x86/instructions/jae'
        autoload :JB, 'ronin/asm/x86/instructions/jb'
        autoload :JBE, 'ronin/asm/x86/instructions/jbe'
        autoload :JC, 'ronin/asm/x86/instructions/jc'
        autoload :JE, 'ronin/asm/x86/instructions/je'
        autoload :JECXZ, 'ronin/asm/x86/instructions/jecxz'
        autoload :JG, 'ronin/asm/x86/instructions/jg'
        autoload :JGE, 'ronin/asm/x86/instructions/jge'
        autoload :JL, 'ronin/asm/x86/instructions/jl'
        autoload :JLE, 'ronin/asm/x86/instructions/jle'
        autoload :JMP, 'ronin/asm/x86/instructions/jmp'
        autoload :JNA, 'ronin/asm/x86/instructions/jna'
        autoload :JNAE, 'ronin/asm/x86/instructions/jnae'
        autoload :JNB, 'ronin/asm/x86/instructions/jnb'
        autoload :JNBE, 'ronin/asm/x86/instructions/jnbe'
        autoload :JNC, 'ronin/asm/x86/instructions/jnc'
        autoload :JNE, 'ronin/asm/x86/instructions/jne'
        autoload :JNG, 'ronin/asm/x86/instructions/jng'
        autoload :JNGE, 'ronin/asm/x86/instructions/jnge'
        autoload :JNL, 'ronin/asm/x86/instructions/jnl'
        autoload :JNLE, 'ronin/asm/x86/instructions/jnle'
        autoload :JNO, 'ronin/asm/x86/instructions/jno'
        autoload :JNP, 'ronin/asm/x86/instructions/jnp'
        autoload :JNS, 'ronin/asm/x86/instructions/jns'
        autoload :JNZ, 'ronin/asm/x86/instructions/jnz'
        autoload :JO, 'ronin/asm/x86/instructions/jo'
        autoload :JP, 'ronin/asm/x86/instructions/jp'
        autoload :JPE, 'ronin/asm/x86/instructions/jpe'
        autoload :JPO, 'ronin/asm/x86/instructions/jpo'
        autoload :JS, 'ronin/asm/x86/instructions/js'
        autoload :JZ, 'ronin/asm/x86/instructions/jz'
        autoload :KADDB, 'ronin/asm/x86/instructions/kaddb'
        autoload :KADDD, 'ronin/asm/x86/instructions/kaddd'
        autoload :KADDQ, 'ronin/asm/x86/instructions/kaddq'
        autoload :KADDW, 'ronin/asm/x86/instructions/kaddw'
        autoload :KANDB, 'ronin/asm/x86/instructions/kandb'
        autoload :KANDD, 'ronin/asm/x86/instructions/kandd'
        autoload :KANDNB, 'ronin/asm/x86/instructions/kandnb'
        autoload :KANDND, 'ronin/asm/x86/instructions/kandnd'
        autoload :KANDNQ, 'ronin/asm/x86/instructions/kandnq'
        autoload :KANDNW, 'ronin/asm/x86/instructions/kandnw'
        autoload :KANDQ, 'ronin/asm/x86/instructions/kandq'
        autoload :KANDW, 'ronin/asm/x86/instructions/kandw'
        autoload :KMOVB, 'ronin/asm/x86/instructions/kmovb'
        autoload :KMOVD, 'ronin/asm/x86/instructions/kmovd'
        autoload :KMOVQ, 'ronin/asm/x86/instructions/kmovq'
        autoload :KMOVW, 'ronin/asm/x86/instructions/kmovw'
        autoload :KNOTB, 'ronin/asm/x86/instructions/knotb'
        autoload :KNOTD, 'ronin/asm/x86/instructions/knotd'
        autoload :KNOTQ, 'ronin/asm/x86/instructions/knotq'
        autoload :KNOTW, 'ronin/asm/x86/instructions/knotw'
        autoload :KORB, 'ronin/asm/x86/instructions/korb'
        autoload :KORD, 'ronin/asm/x86/instructions/kord'
        autoload :KORQ, 'ronin/asm/x86/instructions/korq'
        autoload :KORTESTB, 'ronin/asm/x86/instructions/kortestb'
        autoload :KORTESTD, 'ronin/asm/x86/instructions/kortestd'
        autoload :KORTESTQ, 'ronin/asm/x86/instructions/kortestq'
        autoload :KORTESTW, 'ronin/asm/x86/instructions/kortestw'
        autoload :KORW, 'ronin/asm/x86/instructions/korw'
        autoload :KSHIFTLB, 'ronin/asm/x86/instructions/kshiftlb'
        autoload :KSHIFTLD, 'ronin/asm/x86/instructions/kshiftld'
        autoload :KSHIFTLQ, 'ronin/asm/x86/instructions/kshiftlq'
        autoload :KSHIFTLW, 'ronin/asm/x86/instructions/kshiftlw'
        autoload :KSHIFTRB, 'ronin/asm/x86/instructions/kshiftrb'
        autoload :KSHIFTRD, 'ronin/asm/x86/instructions/kshiftrd'
        autoload :KSHIFTRQ, 'ronin/asm/x86/instructions/kshiftrq'
        autoload :KSHIFTRW, 'ronin/asm/x86/instructions/kshiftrw'
        autoload :KTESTB, 'ronin/asm/x86/instructions/ktestb'
        autoload :KTESTD, 'ronin/asm/x86/instructions/ktestd'
        autoload :KTESTQ, 'ronin/asm/x86/instructions/ktestq'
        autoload :KTESTW, 'ronin/asm/x86/instructions/ktestw'
        autoload :KUNPCKBW, 'ronin/asm/x86/instructions/kunpckbw'
        autoload :KUNPCKDQ, 'ronin/asm/x86/instructions/kunpckdq'
        autoload :KUNPCKWD, 'ronin/asm/x86/instructions/kunpckwd'
        autoload :KXNORB, 'ronin/asm/x86/instructions/kxnorb'
        autoload :KXNORD, 'ronin/asm/x86/instructions/kxnord'
        autoload :KXNORQ, 'ronin/asm/x86/instructions/kxnorq'
        autoload :KXNORW, 'ronin/asm/x86/instructions/kxnorw'
        autoload :KXORB, 'ronin/asm/x86/instructions/kxorb'
        autoload :KXORD, 'ronin/asm/x86/instructions/kxord'
        autoload :KXORQ, 'ronin/asm/x86/instructions/kxorq'
        autoload :KXORW, 'ronin/asm/x86/instructions/kxorw'
        autoload :LAHF, 'ronin/asm/x86/instructions/lahf'
        autoload :LDDQU, 'ronin/asm/x86/instructions/lddqu'
        autoload :LDMXCSR, 'ronin/asm/x86/instructions/ldmxcsr'
        autoload :LEA, 'ronin/asm/x86/instructions/lea'
        autoload :LFENCE, 'ronin/asm/x86/instructions/lfence'
        autoload :LZCNT, 'ronin/asm/x86/instructions/lzcnt'
        autoload :MASKMOVDQU, 'ronin/asm/x86/instructions/maskmovdqu'
        autoload :MASKMOVQ, 'ronin/asm/x86/instructions/maskmovq'
        autoload :MAXPD, 'ronin/asm/x86/instructions/maxpd'
        autoload :MAXPS, 'ronin/asm/x86/instructions/maxps'
        autoload :MAXSD, 'ronin/asm/x86/instructions/maxsd'
        autoload :MAXSS, 'ronin/asm/x86/instructions/maxss'
        autoload :MCOMMIT, 'ronin/asm/x86/instructions/mcommit'
        autoload :MFENCE, 'ronin/asm/x86/instructions/mfence'
        autoload :MINPD, 'ronin/asm/x86/instructions/minpd'
        autoload :MINPS, 'ronin/asm/x86/instructions/minps'
        autoload :MINSD, 'ronin/asm/x86/instructions/minsd'
        autoload :MINSS, 'ronin/asm/x86/instructions/minss'
        autoload :MONITOR, 'ronin/asm/x86/instructions/monitor'
        autoload :MONITORX, 'ronin/asm/x86/instructions/monitorx'
        autoload :MOV, 'ronin/asm/x86/instructions/mov'
        autoload :MOVAPD, 'ronin/asm/x86/instructions/movapd'
        autoload :MOVAPS, 'ronin/asm/x86/instructions/movaps'
        autoload :MOVBE, 'ronin/asm/x86/instructions/movbe'
        autoload :MOVD, 'ronin/asm/x86/instructions/movd'
        autoload :MOVDDUP, 'ronin/asm/x86/instructions/movddup'
        autoload :MOVDIR64B, 'ronin/asm/x86/instructions/movdir64b'
        autoload :MOVDIRI, 'ronin/asm/x86/instructions/movdiri'
        autoload :MOVDQ2Q, 'ronin/asm/x86/instructions/movdq2q'
        autoload :MOVDQA, 'ronin/asm/x86/instructions/movdqa'
        autoload :MOVDQU, 'ronin/asm/x86/instructions/movdqu'
        autoload :MOVHLPS, 'ronin/asm/x86/instructions/movhlps'
        autoload :MOVHPD, 'ronin/asm/x86/instructions/movhpd'
        autoload :MOVHPS, 'ronin/asm/x86/instructions/movhps'
        autoload :MOVLHPS, 'ronin/asm/x86/instructions/movlhps'
        autoload :MOVLPD, 'ronin/asm/x86/instructions/movlpd'
        autoload :MOVLPS, 'ronin/asm/x86/instructions/movlps'
        autoload :MOVMSKPD, 'ronin/asm/x86/instructions/movmskpd'
        autoload :MOVMSKPS, 'ronin/asm/x86/instructions/movmskps'
        autoload :MOVNTDQ, 'ronin/asm/x86/instructions/movntdq'
        autoload :MOVNTDQA, 'ronin/asm/x86/instructions/movntdqa'
        autoload :MOVNTI, 'ronin/asm/x86/instructions/movnti'
        autoload :MOVNTPD, 'ronin/asm/x86/instructions/movntpd'
        autoload :MOVNTPS, 'ronin/asm/x86/instructions/movntps'
        autoload :MOVNTQ, 'ronin/asm/x86/instructions/movntq'
        autoload :MOVNTSD, 'ronin/asm/x86/instructions/movntsd'
        autoload :MOVNTSS, 'ronin/asm/x86/instructions/movntss'
        autoload :MOVQ, 'ronin/asm/x86/instructions/movq'
        autoload :MOVQ2DQ, 'ronin/asm/x86/instructions/movq2dq'
        autoload :MOVSD, 'ronin/asm/x86/instructions/movsd'
        autoload :MOVSHDUP, 'ronin/asm/x86/instructions/movshdup'
        autoload :MOVSLDUP, 'ronin/asm/x86/instructions/movsldup'
        autoload :MOVSS, 'ronin/asm/x86/instructions/movss'
        autoload :MOVSX, 'ronin/asm/x86/instructions/movsx'
        autoload :MOVUPD, 'ronin/asm/x86/instructions/movupd'
        autoload :MOVUPS, 'ronin/asm/x86/instructions/movups'
        autoload :MOVZX, 'ronin/asm/x86/instructions/movzx'
        autoload :MPSADBW, 'ronin/asm/x86/instructions/mpsadbw'
        autoload :MUL, 'ronin/asm/x86/instructions/mul'
        autoload :MULPD, 'ronin/asm/x86/instructions/mulpd'
        autoload :MULPS, 'ronin/asm/x86/instructions/mulps'
        autoload :MULSD, 'ronin/asm/x86/instructions/mulsd'
        autoload :MULSS, 'ronin/asm/x86/instructions/mulss'
        autoload :MULX, 'ronin/asm/x86/instructions/mulx'
        autoload :MWAIT, 'ronin/asm/x86/instructions/mwait'
        autoload :MWAITX, 'ronin/asm/x86/instructions/mwaitx'
        autoload :NEG, 'ronin/asm/x86/instructions/neg'
        autoload :NOP, 'ronin/asm/x86/instructions/nop'
        autoload :NOT, 'ronin/asm/x86/instructions/not'
        autoload :OR, 'ronin/asm/x86/instructions/or'
        autoload :ORPD, 'ronin/asm/x86/instructions/orpd'
        autoload :ORPS, 'ronin/asm/x86/instructions/orps'
        autoload :PABSB, 'ronin/asm/x86/instructions/pabsb'
        autoload :PABSD, 'ronin/asm/x86/instructions/pabsd'
        autoload :PABSW, 'ronin/asm/x86/instructions/pabsw'
        autoload :PACKSSDW, 'ronin/asm/x86/instructions/packssdw'
        autoload :PACKSSWB, 'ronin/asm/x86/instructions/packsswb'
        autoload :PACKUSDW, 'ronin/asm/x86/instructions/packusdw'
        autoload :PACKUSWB, 'ronin/asm/x86/instructions/packuswb'
        autoload :PADDB, 'ronin/asm/x86/instructions/paddb'
        autoload :PADDD, 'ronin/asm/x86/instructions/paddd'
        autoload :PADDQ, 'ronin/asm/x86/instructions/paddq'
        autoload :PADDSB, 'ronin/asm/x86/instructions/paddsb'
        autoload :PADDSW, 'ronin/asm/x86/instructions/paddsw'
        autoload :PADDUSB, 'ronin/asm/x86/instructions/paddusb'
        autoload :PADDUSW, 'ronin/asm/x86/instructions/paddusw'
        autoload :PADDW, 'ronin/asm/x86/instructions/paddw'
        autoload :PALIGNR, 'ronin/asm/x86/instructions/palignr'
        autoload :PAND, 'ronin/asm/x86/instructions/pand'
        autoload :PANDN, 'ronin/asm/x86/instructions/pandn'
        autoload :PAUSE, 'ronin/asm/x86/instructions/pause'
        autoload :PAVGB, 'ronin/asm/x86/instructions/pavgb'
        autoload :PAVGUSB, 'ronin/asm/x86/instructions/pavgusb'
        autoload :PAVGW, 'ronin/asm/x86/instructions/pavgw'
        autoload :PBLENDVB, 'ronin/asm/x86/instructions/pblendvb'
        autoload :PBLENDW, 'ronin/asm/x86/instructions/pblendw'
        autoload :PCLMULQDQ, 'ronin/asm/x86/instructions/pclmulqdq'
        autoload :PCMPEQB, 'ronin/asm/x86/instructions/pcmpeqb'
        autoload :PCMPEQD, 'ronin/asm/x86/instructions/pcmpeqd'
        autoload :PCMPEQQ, 'ronin/asm/x86/instructions/pcmpeqq'
        autoload :PCMPEQW, 'ronin/asm/x86/instructions/pcmpeqw'
        autoload :PCMPESTRI, 'ronin/asm/x86/instructions/pcmpestri'
        autoload :PCMPESTRM, 'ronin/asm/x86/instructions/pcmpestrm'
        autoload :PCMPGTB, 'ronin/asm/x86/instructions/pcmpgtb'
        autoload :PCMPGTD, 'ronin/asm/x86/instructions/pcmpgtd'
        autoload :PCMPGTQ, 'ronin/asm/x86/instructions/pcmpgtq'
        autoload :PCMPGTW, 'ronin/asm/x86/instructions/pcmpgtw'
        autoload :PCMPISTRI, 'ronin/asm/x86/instructions/pcmpistri'
        autoload :PCMPISTRM, 'ronin/asm/x86/instructions/pcmpistrm'
        autoload :PDEP, 'ronin/asm/x86/instructions/pdep'
        autoload :PEXT, 'ronin/asm/x86/instructions/pext'
        autoload :PEXTRB, 'ronin/asm/x86/instructions/pextrb'
        autoload :PEXTRD, 'ronin/asm/x86/instructions/pextrd'
        autoload :PEXTRW, 'ronin/asm/x86/instructions/pextrw'
        autoload :PF2ID, 'ronin/asm/x86/instructions/pf2id'
        autoload :PF2IW, 'ronin/asm/x86/instructions/pf2iw'
        autoload :PFACC, 'ronin/asm/x86/instructions/pfacc'
        autoload :PFADD, 'ronin/asm/x86/instructions/pfadd'
        autoload :PFCMPEQ, 'ronin/asm/x86/instructions/pfcmpeq'
        autoload :PFCMPGE, 'ronin/asm/x86/instructions/pfcmpge'
        autoload :PFCMPGT, 'ronin/asm/x86/instructions/pfcmpgt'
        autoload :PFMAX, 'ronin/asm/x86/instructions/pfmax'
        autoload :PFMIN, 'ronin/asm/x86/instructions/pfmin'
        autoload :PFMUL, 'ronin/asm/x86/instructions/pfmul'
        autoload :PFNACC, 'ronin/asm/x86/instructions/pfnacc'
        autoload :PFPNACC, 'ronin/asm/x86/instructions/pfpnacc'
        autoload :PFRCP, 'ronin/asm/x86/instructions/pfrcp'
        autoload :PFRCPIT1, 'ronin/asm/x86/instructions/pfrcpit1'
        autoload :PFRCPIT2, 'ronin/asm/x86/instructions/pfrcpit2'
        autoload :PFRCPV, 'ronin/asm/x86/instructions/pfrcpv'
        autoload :PFRSQIT1, 'ronin/asm/x86/instructions/pfrsqit1'
        autoload :PFRSQRT, 'ronin/asm/x86/instructions/pfrsqrt'
        autoload :PFRSQRTV, 'ronin/asm/x86/instructions/pfrsqrtv'
        autoload :PFSUB, 'ronin/asm/x86/instructions/pfsub'
        autoload :PFSUBR, 'ronin/asm/x86/instructions/pfsubr'
        autoload :PHADDD, 'ronin/asm/x86/instructions/phaddd'
        autoload :PHADDSW, 'ronin/asm/x86/instructions/phaddsw'
        autoload :PHADDW, 'ronin/asm/x86/instructions/phaddw'
        autoload :PHMINPOSUW, 'ronin/asm/x86/instructions/phminposuw'
        autoload :PHSUBD, 'ronin/asm/x86/instructions/phsubd'
        autoload :PHSUBSW, 'ronin/asm/x86/instructions/phsubsw'
        autoload :PHSUBW, 'ronin/asm/x86/instructions/phsubw'
        autoload :PI2FD, 'ronin/asm/x86/instructions/pi2fd'
        autoload :PI2FW, 'ronin/asm/x86/instructions/pi2fw'
        autoload :PINSRB, 'ronin/asm/x86/instructions/pinsrb'
        autoload :PINSRD, 'ronin/asm/x86/instructions/pinsrd'
        autoload :PINSRW, 'ronin/asm/x86/instructions/pinsrw'
        autoload :PMADDUBSW, 'ronin/asm/x86/instructions/pmaddubsw'
        autoload :PMADDWD, 'ronin/asm/x86/instructions/pmaddwd'
        autoload :PMAXSB, 'ronin/asm/x86/instructions/pmaxsb'
        autoload :PMAXSD, 'ronin/asm/x86/instructions/pmaxsd'
        autoload :PMAXSW, 'ronin/asm/x86/instructions/pmaxsw'
        autoload :PMAXUB, 'ronin/asm/x86/instructions/pmaxub'
        autoload :PMAXUD, 'ronin/asm/x86/instructions/pmaxud'
        autoload :PMAXUW, 'ronin/asm/x86/instructions/pmaxuw'
        autoload :PMINSB, 'ronin/asm/x86/instructions/pminsb'
        autoload :PMINSD, 'ronin/asm/x86/instructions/pminsd'
        autoload :PMINSW, 'ronin/asm/x86/instructions/pminsw'
        autoload :PMINUB, 'ronin/asm/x86/instructions/pminub'
        autoload :PMINUD, 'ronin/asm/x86/instructions/pminud'
        autoload :PMINUW, 'ronin/asm/x86/instructions/pminuw'
        autoload :PMOVMSKB, 'ronin/asm/x86/instructions/pmovmskb'
        autoload :PMOVSXBD, 'ronin/asm/x86/instructions/pmovsxbd'
        autoload :PMOVSXBQ, 'ronin/asm/x86/instructions/pmovsxbq'
        autoload :PMOVSXBW, 'ronin/asm/x86/instructions/pmovsxbw'
        autoload :PMOVSXDQ, 'ronin/asm/x86/instructions/pmovsxdq'
        autoload :PMOVSXWD, 'ronin/asm/x86/instructions/pmovsxwd'
        autoload :PMOVSXWQ, 'ronin/asm/x86/instructions/pmovsxwq'
        autoload :PMOVZXBD, 'ronin/asm/x86/instructions/pmovzxbd'
        autoload :PMOVZXBQ, 'ronin/asm/x86/instructions/pmovzxbq'
        autoload :PMOVZXBW, 'ronin/asm/x86/instructions/pmovzxbw'
        autoload :PMOVZXDQ, 'ronin/asm/x86/instructions/pmovzxdq'
        autoload :PMOVZXWD, 'ronin/asm/x86/instructions/pmovzxwd'
        autoload :PMOVZXWQ, 'ronin/asm/x86/instructions/pmovzxwq'
        autoload :PMULDQ, 'ronin/asm/x86/instructions/pmuldq'
        autoload :PMULHRSW, 'ronin/asm/x86/instructions/pmulhrsw'
        autoload :PMULHRW, 'ronin/asm/x86/instructions/pmulhrw'
        autoload :PMULHUW, 'ronin/asm/x86/instructions/pmulhuw'
        autoload :PMULHW, 'ronin/asm/x86/instructions/pmulhw'
        autoload :PMULLD, 'ronin/asm/x86/instructions/pmulld'
        autoload :PMULLW, 'ronin/asm/x86/instructions/pmullw'
        autoload :PMULUDQ, 'ronin/asm/x86/instructions/pmuludq'
        autoload :POP, 'ronin/asm/x86/instructions/pop'
        autoload :POPCNT, 'ronin/asm/x86/instructions/popcnt'
        autoload :POR, 'ronin/asm/x86/instructions/por'
        autoload :PREFETCH, 'ronin/asm/x86/instructions/prefetch'
        autoload :PREFETCHNTA, 'ronin/asm/x86/instructions/prefetchnta'
        autoload :PREFETCHT0, 'ronin/asm/x86/instructions/prefetcht0'
        autoload :PREFETCHT1, 'ronin/asm/x86/instructions/prefetcht1'
        autoload :PREFETCHT2, 'ronin/asm/x86/instructions/prefetcht2'
        autoload :PREFETCHW, 'ronin/asm/x86/instructions/prefetchw'
        autoload :PREFETCHWT1, 'ronin/asm/x86/instructions/prefetchwt1'
        autoload :PSADBW, 'ronin/asm/x86/instructions/psadbw'
        autoload :PSHUFB, 'ronin/asm/x86/instructions/pshufb'
        autoload :PSHUFD, 'ronin/asm/x86/instructions/pshufd'
        autoload :PSHUFHW, 'ronin/asm/x86/instructions/pshufhw'
        autoload :PSHUFLW, 'ronin/asm/x86/instructions/pshuflw'
        autoload :PSHUFW, 'ronin/asm/x86/instructions/pshufw'
        autoload :PSIGNB, 'ronin/asm/x86/instructions/psignb'
        autoload :PSIGND, 'ronin/asm/x86/instructions/psignd'
        autoload :PSIGNW, 'ronin/asm/x86/instructions/psignw'
        autoload :PSLLD, 'ronin/asm/x86/instructions/pslld'
        autoload :PSLLDQ, 'ronin/asm/x86/instructions/pslldq'
        autoload :PSLLQ, 'ronin/asm/x86/instructions/psllq'
        autoload :PSLLW, 'ronin/asm/x86/instructions/psllw'
        autoload :PSRAD, 'ronin/asm/x86/instructions/psrad'
        autoload :PSRAW, 'ronin/asm/x86/instructions/psraw'
        autoload :PSRLD, 'ronin/asm/x86/instructions/psrld'
        autoload :PSRLDQ, 'ronin/asm/x86/instructions/psrldq'
        autoload :PSRLQ, 'ronin/asm/x86/instructions/psrlq'
        autoload :PSRLW, 'ronin/asm/x86/instructions/psrlw'
        autoload :PSUBB, 'ronin/asm/x86/instructions/psubb'
        autoload :PSUBD, 'ronin/asm/x86/instructions/psubd'
        autoload :PSUBQ, 'ronin/asm/x86/instructions/psubq'
        autoload :PSUBSB, 'ronin/asm/x86/instructions/psubsb'
        autoload :PSUBSW, 'ronin/asm/x86/instructions/psubsw'
        autoload :PSUBUSB, 'ronin/asm/x86/instructions/psubusb'
        autoload :PSUBUSW, 'ronin/asm/x86/instructions/psubusw'
        autoload :PSUBW, 'ronin/asm/x86/instructions/psubw'
        autoload :PSWAPD, 'ronin/asm/x86/instructions/pswapd'
        autoload :PTEST, 'ronin/asm/x86/instructions/ptest'
        autoload :PUNPCKHBW, 'ronin/asm/x86/instructions/punpckhbw'
        autoload :PUNPCKHDQ, 'ronin/asm/x86/instructions/punpckhdq'
        autoload :PUNPCKHQDQ, 'ronin/asm/x86/instructions/punpckhqdq'
        autoload :PUNPCKHWD, 'ronin/asm/x86/instructions/punpckhwd'
        autoload :PUNPCKLBW, 'ronin/asm/x86/instructions/punpcklbw'
        autoload :PUNPCKLDQ, 'ronin/asm/x86/instructions/punpckldq'
        autoload :PUNPCKLQDQ, 'ronin/asm/x86/instructions/punpcklqdq'
        autoload :PUNPCKLWD, 'ronin/asm/x86/instructions/punpcklwd'
        autoload :PUSH, 'ronin/asm/x86/instructions/push'
        autoload :PXOR, 'ronin/asm/x86/instructions/pxor'
        autoload :RCL, 'ronin/asm/x86/instructions/rcl'
        autoload :RCPPS, 'ronin/asm/x86/instructions/rcpps'
        autoload :RCPSS, 'ronin/asm/x86/instructions/rcpss'
        autoload :RCR, 'ronin/asm/x86/instructions/rcr'
        autoload :RDPID, 'ronin/asm/x86/instructions/rdpid'
        autoload :RDPMC, 'ronin/asm/x86/instructions/rdpmc'
        autoload :RDPRU, 'ronin/asm/x86/instructions/rdpru'
        autoload :RDRAND, 'ronin/asm/x86/instructions/rdrand'
        autoload :RDSEED, 'ronin/asm/x86/instructions/rdseed'
        autoload :RDTSC, 'ronin/asm/x86/instructions/rdtsc'
        autoload :RDTSCP, 'ronin/asm/x86/instructions/rdtscp'
        autoload :RET, 'ronin/asm/x86/instructions/ret'
        autoload :ROL, 'ronin/asm/x86/instructions/rol'
        autoload :ROR, 'ronin/asm/x86/instructions/ror'
        autoload :RORX, 'ronin/asm/x86/instructions/rorx'
        autoload :ROUNDPD, 'ronin/asm/x86/instructions/roundpd'
        autoload :ROUNDPS, 'ronin/asm/x86/instructions/roundps'
        autoload :ROUNDSD, 'ronin/asm/x86/instructions/roundsd'
        autoload :ROUNDSS, 'ronin/asm/x86/instructions/roundss'
        autoload :RSQRTPS, 'ronin/asm/x86/instructions/rsqrtps'
        autoload :RSQRTSS, 'ronin/asm/x86/instructions/rsqrtss'
        autoload :SAHF, 'ronin/asm/x86/instructions/sahf'
        autoload :SAL, 'ronin/asm/x86/instructions/sal'
        autoload :SAR, 'ronin/asm/x86/instructions/sar'
        autoload :SARX, 'ronin/asm/x86/instructions/sarx'
        autoload :SBB, 'ronin/asm/x86/instructions/sbb'
        autoload :SERIALIZE, 'ronin/asm/x86/instructions/serialize'
        autoload :SETA, 'ronin/asm/x86/instructions/seta'
        autoload :SETAE, 'ronin/asm/x86/instructions/setae'
        autoload :SETB, 'ronin/asm/x86/instructions/setb'
        autoload :SETBE, 'ronin/asm/x86/instructions/setbe'
        autoload :SETC, 'ronin/asm/x86/instructions/setc'
        autoload :SETE, 'ronin/asm/x86/instructions/sete'
        autoload :SETG, 'ronin/asm/x86/instructions/setg'
        autoload :SETGE, 'ronin/asm/x86/instructions/setge'
        autoload :SETL, 'ronin/asm/x86/instructions/setl'
        autoload :SETLE, 'ronin/asm/x86/instructions/setle'
        autoload :SETNA, 'ronin/asm/x86/instructions/setna'
        autoload :SETNAE, 'ronin/asm/x86/instructions/setnae'
        autoload :SETNB, 'ronin/asm/x86/instructions/setnb'
        autoload :SETNBE, 'ronin/asm/x86/instructions/setnbe'
        autoload :SETNC, 'ronin/asm/x86/instructions/setnc'
        autoload :SETNE, 'ronin/asm/x86/instructions/setne'
        autoload :SETNG, 'ronin/asm/x86/instructions/setng'
        autoload :SETNGE, 'ronin/asm/x86/instructions/setnge'
        autoload :SETNL, 'ronin/asm/x86/instructions/setnl'
        autoload :SETNLE, 'ronin/asm/x86/instructions/setnle'
        autoload :SETNO, 'ronin/asm/x86/instructions/setno'
        autoload :SETNP, 'ronin/asm/x86/instructions/setnp'
        autoload :SETNS, 'ronin/asm/x86/instructions/setns'
        autoload :SETNZ, 'ronin/asm/x86/instructions/setnz'
        autoload :SETO, 'ronin/asm/x86/instructions/seto'
        autoload :SETP, 'ronin/asm/x86/instructions/setp'
        autoload :SETPE, 'ronin/asm/x86/instructions/setpe'
        autoload :SETPO, 'ronin/asm/x86/instructions/setpo'
        autoload :SETS, 'ronin/asm/x86/instructions/sets'
        autoload :SETZ, 'ronin/asm/x86/instructions/setz'
        autoload :SFENCE, 'ronin/asm/x86/instructions/sfence'
        autoload :SHA1MSG1, 'ronin/asm/x86/instructions/sha1msg1'
        autoload :SHA1MSG2, 'ronin/asm/x86/instructions/sha1msg2'
        autoload :SHA1NEXTE, 'ronin/asm/x86/instructions/sha1nexte'
        autoload :SHA1RNDS4, 'ronin/asm/x86/instructions/sha1rnds4'
        autoload :SHA256MSG1, 'ronin/asm/x86/instructions/sha256msg1'
        autoload :SHA256MSG2, 'ronin/asm/x86/instructions/sha256msg2'
        autoload :SHA256RNDS2, 'ronin/asm/x86/instructions/sha256rnds2'
        autoload :SHL, 'ronin/asm/x86/instructions/shl'
        autoload :SHLD, 'ronin/asm/x86/instructions/shld'
        autoload :SHLX, 'ronin/asm/x86/instructions/shlx'
        autoload :SHR, 'ronin/asm/x86/instructions/shr'
        autoload :SHRD, 'ronin/asm/x86/instructions/shrd'
        autoload :SHRX, 'ronin/asm/x86/instructions/shrx'
        autoload :SHUFPD, 'ronin/asm/x86/instructions/shufpd'
        autoload :SHUFPS, 'ronin/asm/x86/instructions/shufps'
        autoload :SQRTPD, 'ronin/asm/x86/instructions/sqrtpd'
        autoload :SQRTPS, 'ronin/asm/x86/instructions/sqrtps'
        autoload :SQRTSD, 'ronin/asm/x86/instructions/sqrtsd'
        autoload :SQRTSS, 'ronin/asm/x86/instructions/sqrtss'
        autoload :STC, 'ronin/asm/x86/instructions/stc'
        autoload :STD, 'ronin/asm/x86/instructions/std'
        autoload :STMXCSR, 'ronin/asm/x86/instructions/stmxcsr'
        autoload :SUB, 'ronin/asm/x86/instructions/sub'
        autoload :SUBPD, 'ronin/asm/x86/instructions/subpd'
        autoload :SUBPS, 'ronin/asm/x86/instructions/subps'
        autoload :SUBSD, 'ronin/asm/x86/instructions/subsd'
        autoload :SUBSS, 'ronin/asm/x86/instructions/subss'
        autoload :T1MSKC, 'ronin/asm/x86/instructions/t1mskc'
        autoload :TEST, 'ronin/asm/x86/instructions/test'
        autoload :TPAUSE, 'ronin/asm/x86/instructions/tpause'
        autoload :TZCNT, 'ronin/asm/x86/instructions/tzcnt'
        autoload :TZMSK, 'ronin/asm/x86/instructions/tzmsk'
        autoload :UCOMISD, 'ronin/asm/x86/instructions/ucomisd'
        autoload :UCOMISS, 'ronin/asm/x86/instructions/ucomiss'
        autoload :UD2, 'ronin/asm/x86/instructions/ud2'
        autoload :UMONITOR, 'ronin/asm/x86/instructions/umonitor'
        autoload :UMWAIT, 'ronin/asm/x86/instructions/umwait'
        autoload :UNPCKHPD, 'ronin/asm/x86/instructions/unpckhpd'
        autoload :UNPCKHPS, 'ronin/asm/x86/instructions/unpckhps'
        autoload :UNPCKLPD, 'ronin/asm/x86/instructions/unpcklpd'
        autoload :UNPCKLPS, 'ronin/asm/x86/instructions/unpcklps'
        autoload :VADDPD, 'ronin/asm/x86/instructions/vaddpd'
        autoload :VADDPH, 'ronin/asm/x86/instructions/vaddph'
        autoload :VADDPS, 'ronin/asm/x86/instructions/vaddps'
        autoload :VADDSD, 'ronin/asm/x86/instructions/vaddsd'
        autoload :VADDSH, 'ronin/asm/x86/instructions/vaddsh'
        autoload :VADDSS, 'ronin/asm/x86/instructions/vaddss'
        autoload :VADDSUBPD, 'ronin/asm/x86/instructions/vaddsubpd'
        autoload :VADDSUBPS, 'ronin/asm/x86/instructions/vaddsubps'
        autoload :VAESDEC, 'ronin/asm/x86/instructions/vaesdec'
        autoload :VAESDECLAST, 'ronin/asm/x86/instructions/vaesdeclast'
        autoload :VAESENC, 'ronin/asm/x86/instructions/vaesenc'
        autoload :VAESENCLAST, 'ronin/asm/x86/instructions/vaesenclast'
        autoload :VAESIMC, 'ronin/asm/x86/instructions/vaesimc'
        autoload :VAESKEYGENASSIST, 'ronin/asm/x86/instructions/vaeskeygenassist'
        autoload :VALIGND, 'ronin/asm/x86/instructions/valignd'
        autoload :VALIGNQ, 'ronin/asm/x86/instructions/valignq'
        autoload :VANDNPD, 'ronin/asm/x86/instructions/vandnpd'
        autoload :VANDNPS, 'ronin/asm/x86/instructions/vandnps'
        autoload :VANDPD, 'ronin/asm/x86/instructions/vandpd'
        autoload :VANDPS, 'ronin/asm/x86/instructions/vandps'
        autoload :VBCSTNEBF162PS, 'ronin/asm/x86/instructions/vbcstnebf162ps'
        autoload :VBCSTNESH2PS, 'ronin/asm/x86/instructions/vbcstnesh2ps'
        autoload :VBLENDMPD, 'ronin/asm/x86/instructions/vblendmpd'
        autoload :VBLENDMPS, 'ronin/asm/x86/instructions/vblendmps'
        autoload :VBLENDPD, 'ronin/asm/x86/instructions/vblendpd'
        autoload :VBLENDPS, 'ronin/asm/x86/instructions/vblendps'
        autoload :VBLENDVPD, 'ronin/asm/x86/instructions/vblendvpd'
        autoload :VBLENDVPS, 'ronin/asm/x86/instructions/vblendvps'
        autoload :VBROADCASTF128, 'ronin/asm/x86/instructions/vbroadcastf128'
        autoload :VBROADCASTF32X2, 'ronin/asm/x86/instructions/vbroadcastf32x2'
        autoload :VBROADCASTF32X4, 'ronin/asm/x86/instructions/vbroadcastf32x4'
        autoload :VBROADCASTF32X8, 'ronin/asm/x86/instructions/vbroadcastf32x8'
        autoload :VBROADCASTF64X2, 'ronin/asm/x86/instructions/vbroadcastf64x2'
        autoload :VBROADCASTF64X4, 'ronin/asm/x86/instructions/vbroadcastf64x4'
        autoload :VBROADCASTI128, 'ronin/asm/x86/instructions/vbroadcasti128'
        autoload :VBROADCASTI32X2, 'ronin/asm/x86/instructions/vbroadcasti32x2'
        autoload :VBROADCASTI32X4, 'ronin/asm/x86/instructions/vbroadcasti32x4'
        autoload :VBROADCASTI32X8, 'ronin/asm/x86/instructions/vbroadcasti32x8'
        autoload :VBROADCASTI64X2, 'ronin/asm/x86/instructions/vbroadcasti64x2'
        autoload :VBROADCASTI64X4, 'ronin/asm/x86/instructions/vbroadcasti64x4'
        autoload :VBROADCASTSD, 'ronin/asm/x86/instructions/vbroadcastsd'
        autoload :VBROADCASTSS, 'ronin/asm/x86/instructions/vbroadcastss'
        autoload :VCMPPD, 'ronin/asm/x86/instructions/vcmppd'
        autoload :VCMPPH, 'ronin/asm/x86/instructions/vcmpph'
        autoload :VCMPPS, 'ronin/asm/x86/instructions/vcmpps'
        autoload :VCMPSD, 'ronin/asm/x86/instructions/vcmpsd'
        autoload :VCMPSH, 'ronin/asm/x86/instructions/vcmpsh'
        autoload :VCMPSS, 'ronin/asm/x86/instructions/vcmpss'
        autoload :VCOMISD, 'ronin/asm/x86/instructions/vcomisd'
        autoload :VCOMISH, 'ronin/asm/x86/instructions/vcomish'
        autoload :VCOMISS, 'ronin/asm/x86/instructions/vcomiss'
        autoload :VCOMPRESSPD, 'ronin/asm/x86/instructions/vcompresspd'
        autoload :VCOMPRESSPS, 'ronin/asm/x86/instructions/vcompressps'
        autoload :VCVTDQ2PD, 'ronin/asm/x86/instructions/vcvtdq2pd'
        autoload :VCVTDQ2PH, 'ronin/asm/x86/instructions/vcvtdq2ph'
        autoload :VCVTDQ2PS, 'ronin/asm/x86/instructions/vcvtdq2ps'
        autoload :VCVTNE2PS2BF16, 'ronin/asm/x86/instructions/vcvtne2ps2bf16'
        autoload :VCVTNEEBF162PS, 'ronin/asm/x86/instructions/vcvtneebf162ps'
        autoload :VCVTNEEPH2PS, 'ronin/asm/x86/instructions/vcvtneeph2ps'
        autoload :VCVTNEOBF162PS, 'ronin/asm/x86/instructions/vcvtneobf162ps'
        autoload :VCVTNEOPH2PS, 'ronin/asm/x86/instructions/vcvtneoph2ps'
        autoload :VCVTNEPS2BF16, 'ronin/asm/x86/instructions/vcvtneps2bf16'
        autoload :VCVTPD2DQ, 'ronin/asm/x86/instructions/vcvtpd2dq'
        autoload :VCVTPD2PH, 'ronin/asm/x86/instructions/vcvtpd2ph'
        autoload :VCVTPD2PS, 'ronin/asm/x86/instructions/vcvtpd2ps'
        autoload :VCVTPD2QQ, 'ronin/asm/x86/instructions/vcvtpd2qq'
        autoload :VCVTPD2UDQ, 'ronin/asm/x86/instructions/vcvtpd2udq'
        autoload :VCVTPD2UQQ, 'ronin/asm/x86/instructions/vcvtpd2uqq'
        autoload :VCVTPH2DQ, 'ronin/asm/x86/instructions/vcvtph2dq'
        autoload :VCVTPH2PD, 'ronin/asm/x86/instructions/vcvtph2pd'
        autoload :VCVTPH2PS, 'ronin/asm/x86/instructions/vcvtph2ps'
        autoload :VCVTPH2PSX, 'ronin/asm/x86/instructions/vcvtph2psx'
        autoload :VCVTPH2QQ, 'ronin/asm/x86/instructions/vcvtph2qq'
        autoload :VCVTPH2UDQ, 'ronin/asm/x86/instructions/vcvtph2udq'
        autoload :VCVTPH2UQQ, 'ronin/asm/x86/instructions/vcvtph2uqq'
        autoload :VCVTPH2UW, 'ronin/asm/x86/instructions/vcvtph2uw'
        autoload :VCVTPH2W, 'ronin/asm/x86/instructions/vcvtph2w'
        autoload :VCVTPS2DQ, 'ronin/asm/x86/instructions/vcvtps2dq'
        autoload :VCVTPS2PD, 'ronin/asm/x86/instructions/vcvtps2pd'
        autoload :VCVTPS2PH, 'ronin/asm/x86/instructions/vcvtps2ph'
        autoload :VCVTPS2PHX, 'ronin/asm/x86/instructions/vcvtps2phx'
        autoload :VCVTPS2QQ, 'ronin/asm/x86/instructions/vcvtps2qq'
        autoload :VCVTPS2UDQ, 'ronin/asm/x86/instructions/vcvtps2udq'
        autoload :VCVTPS2UQQ, 'ronin/asm/x86/instructions/vcvtps2uqq'
        autoload :VCVTQQ2PD, 'ronin/asm/x86/instructions/vcvtqq2pd'
        autoload :VCVTQQ2PH, 'ronin/asm/x86/instructions/vcvtqq2ph'
        autoload :VCVTQQ2PS, 'ronin/asm/x86/instructions/vcvtqq2ps'
        autoload :VCVTSD2SH, 'ronin/asm/x86/instructions/vcvtsd2sh'
        autoload :VCVTSD2SI, 'ronin/asm/x86/instructions/vcvtsd2si'
        autoload :VCVTSD2SS, 'ronin/asm/x86/instructions/vcvtsd2ss'
        autoload :VCVTSD2USI, 'ronin/asm/x86/instructions/vcvtsd2usi'
        autoload :VCVTSH2SD, 'ronin/asm/x86/instructions/vcvtsh2sd'
        autoload :VCVTSH2SI, 'ronin/asm/x86/instructions/vcvtsh2si'
        autoload :VCVTSH2SS, 'ronin/asm/x86/instructions/vcvtsh2ss'
        autoload :VCVTSH2USI, 'ronin/asm/x86/instructions/vcvtsh2usi'
        autoload :VCVTSI2SD, 'ronin/asm/x86/instructions/vcvtsi2sd'
        autoload :VCVTSI2SH, 'ronin/asm/x86/instructions/vcvtsi2sh'
        autoload :VCVTSI2SS, 'ronin/asm/x86/instructions/vcvtsi2ss'
        autoload :VCVTSS2SD, 'ronin/asm/x86/instructions/vcvtss2sd'
        autoload :VCVTSS2SH, 'ronin/asm/x86/instructions/vcvtss2sh'
        autoload :VCVTSS2SI, 'ronin/asm/x86/instructions/vcvtss2si'
        autoload :VCVTSS2USI, 'ronin/asm/x86/instructions/vcvtss2usi'
        autoload :VCVTTPD2DQ, 'ronin/asm/x86/instructions/vcvttpd2dq'
        autoload :VCVTTPD2QQ, 'ronin/asm/x86/instructions/vcvttpd2qq'
        autoload :VCVTTPD2UDQ, 'ronin/asm/x86/instructions/vcvttpd2udq'
        autoload :VCVTTPD2UQQ, 'ronin/asm/x86/instructions/vcvttpd2uqq'
        autoload :VCVTTPH2DQ, 'ronin/asm/x86/instructions/vcvttph2dq'
        autoload :VCVTTPH2QQ, 'ronin/asm/x86/instructions/vcvttph2qq'
        autoload :VCVTTPH2UDQ, 'ronin/asm/x86/instructions/vcvttph2udq'
        autoload :VCVTTPH2UQQ, 'ronin/asm/x86/instructions/vcvttph2uqq'
        autoload :VCVTTPH2UW, 'ronin/asm/x86/instructions/vcvttph2uw'
        autoload :VCVTTPH2W, 'ronin/asm/x86/instructions/vcvttph2w'
        autoload :VCVTTPS2DQ, 'ronin/asm/x86/instructions/vcvttps2dq'
        autoload :VCVTTPS2QQ, 'ronin/asm/x86/instructions/vcvttps2qq'
        autoload :VCVTTPS2UDQ, 'ronin/asm/x86/instructions/vcvttps2udq'
        autoload :VCVTTPS2UQQ, 'ronin/asm/x86/instructions/vcvttps2uqq'
        autoload :VCVTTSD2SI, 'ronin/asm/x86/instructions/vcvttsd2si'
        autoload :VCVTTSD2USI, 'ronin/asm/x86/instructions/vcvttsd2usi'
        autoload :VCVTTSH2SI, 'ronin/asm/x86/instructions/vcvttsh2si'
        autoload :VCVTTSH2USI, 'ronin/asm/x86/instructions/vcvttsh2usi'
        autoload :VCVTTSS2SI, 'ronin/asm/x86/instructions/vcvttss2si'
        autoload :VCVTTSS2USI, 'ronin/asm/x86/instructions/vcvttss2usi'
        autoload :VCVTUDQ2PD, 'ronin/asm/x86/instructions/vcvtudq2pd'
        autoload :VCVTUDQ2PH, 'ronin/asm/x86/instructions/vcvtudq2ph'
        autoload :VCVTUDQ2PS, 'ronin/asm/x86/instructions/vcvtudq2ps'
        autoload :VCVTUQQ2PD, 'ronin/asm/x86/instructions/vcvtuqq2pd'
        autoload :VCVTUQQ2PH, 'ronin/asm/x86/instructions/vcvtuqq2ph'
        autoload :VCVTUQQ2PS, 'ronin/asm/x86/instructions/vcvtuqq2ps'
        autoload :VCVTUSI2SD, 'ronin/asm/x86/instructions/vcvtusi2sd'
        autoload :VCVTUSI2SH, 'ronin/asm/x86/instructions/vcvtusi2sh'
        autoload :VCVTUSI2SS, 'ronin/asm/x86/instructions/vcvtusi2ss'
        autoload :VCVTUW2PH, 'ronin/asm/x86/instructions/vcvtuw2ph'
        autoload :VCVTW2PH, 'ronin/asm/x86/instructions/vcvtw2ph'
        autoload :VDBPSADBW, 'ronin/asm/x86/instructions/vdbpsadbw'
        autoload :VDIVPD, 'ronin/asm/x86/instructions/vdivpd'
        autoload :VDIVPH, 'ronin/asm/x86/instructions/vdivph'
        autoload :VDIVPS, 'ronin/asm/x86/instructions/vdivps'
        autoload :VDIVSD, 'ronin/asm/x86/instructions/vdivsd'
        autoload :VDIVSH, 'ronin/asm/x86/instructions/vdivsh'
        autoload :VDIVSS, 'ronin/asm/x86/instructions/vdivss'
        autoload :VDPBF16PS, 'ronin/asm/x86/instructions/vdpbf16ps'
        autoload :VDPPD, 'ronin/asm/x86/instructions/vdppd'
        autoload :VDPPS, 'ronin/asm/x86/instructions/vdpps'
        autoload :VEXP2PD, 'ronin/asm/x86/instructions/vexp2pd'
        autoload :VEXP2PS, 'ronin/asm/x86/instructions/vexp2ps'
        autoload :VEXPANDPD, 'ronin/asm/x86/instructions/vexpandpd'
        autoload :VEXPANDPS, 'ronin/asm/x86/instructions/vexpandps'
        autoload :VEXTRACTF128, 'ronin/asm/x86/instructions/vextractf128'
        autoload :VEXTRACTF32X4, 'ronin/asm/x86/instructions/vextractf32x4'
        autoload :VEXTRACTF32X8, 'ronin/asm/x86/instructions/vextractf32x8'
        autoload :VEXTRACTF64X2, 'ronin/asm/x86/instructions/vextractf64x2'
        autoload :VEXTRACTF64X4, 'ronin/asm/x86/instructions/vextractf64x4'
        autoload :VEXTRACTI128, 'ronin/asm/x86/instructions/vextracti128'
        autoload :VEXTRACTI32X4, 'ronin/asm/x86/instructions/vextracti32x4'
        autoload :VEXTRACTI32X8, 'ronin/asm/x86/instructions/vextracti32x8'
        autoload :VEXTRACTI64X2, 'ronin/asm/x86/instructions/vextracti64x2'
        autoload :VEXTRACTI64X4, 'ronin/asm/x86/instructions/vextracti64x4'
        autoload :VEXTRACTPS, 'ronin/asm/x86/instructions/vextractps'
        autoload :VFCMADDCPH, 'ronin/asm/x86/instructions/vfcmaddcph'
        autoload :VFCMADDCSH, 'ronin/asm/x86/instructions/vfcmaddcsh'
        autoload :VFCMULCPH, 'ronin/asm/x86/instructions/vfcmulcph'
        autoload :VFCMULCSH, 'ronin/asm/x86/instructions/vfcmulcsh'
        autoload :VFIXUPIMMPD, 'ronin/asm/x86/instructions/vfixupimmpd'
        autoload :VFIXUPIMMPS, 'ronin/asm/x86/instructions/vfixupimmps'
        autoload :VFIXUPIMMSD, 'ronin/asm/x86/instructions/vfixupimmsd'
        autoload :VFIXUPIMMSS, 'ronin/asm/x86/instructions/vfixupimmss'
        autoload :VFMADD132PD, 'ronin/asm/x86/instructions/vfmadd132pd'
        autoload :VFMADD132PH, 'ronin/asm/x86/instructions/vfmadd132ph'
        autoload :VFMADD132PS, 'ronin/asm/x86/instructions/vfmadd132ps'
        autoload :VFMADD132SD, 'ronin/asm/x86/instructions/vfmadd132sd'
        autoload :VFMADD132SS, 'ronin/asm/x86/instructions/vfmadd132ss'
        autoload :VFMADD213PD, 'ronin/asm/x86/instructions/vfmadd213pd'
        autoload :VFMADD213PH, 'ronin/asm/x86/instructions/vfmadd213ph'
        autoload :VFMADD213PS, 'ronin/asm/x86/instructions/vfmadd213ps'
        autoload :VFMADD213SD, 'ronin/asm/x86/instructions/vfmadd213sd'
        autoload :VFMADD213SS, 'ronin/asm/x86/instructions/vfmadd213ss'
        autoload :VFMADD231PD, 'ronin/asm/x86/instructions/vfmadd231pd'
        autoload :VFMADD231PH, 'ronin/asm/x86/instructions/vfmadd231ph'
        autoload :VFMADD231PS, 'ronin/asm/x86/instructions/vfmadd231ps'
        autoload :VFMADD231SD, 'ronin/asm/x86/instructions/vfmadd231sd'
        autoload :VFMADD231SS, 'ronin/asm/x86/instructions/vfmadd231ss'
        autoload :VFMADDCPH, 'ronin/asm/x86/instructions/vfmaddcph'
        autoload :VFMADDCSH, 'ronin/asm/x86/instructions/vfmaddcsh'
        autoload :VFMADDPD, 'ronin/asm/x86/instructions/vfmaddpd'
        autoload :VFMADDPS, 'ronin/asm/x86/instructions/vfmaddps'
        autoload :VFMADDSD, 'ronin/asm/x86/instructions/vfmaddsd'
        autoload :VFMADDSS, 'ronin/asm/x86/instructions/vfmaddss'
        autoload :VFMADDSUB132PD, 'ronin/asm/x86/instructions/vfmaddsub132pd'
        autoload :VFMADDSUB132PH, 'ronin/asm/x86/instructions/vfmaddsub132ph'
        autoload :VFMADDSUB132PS, 'ronin/asm/x86/instructions/vfmaddsub132ps'
        autoload :VFMADDSUB213PD, 'ronin/asm/x86/instructions/vfmaddsub213pd'
        autoload :VFMADDSUB213PH, 'ronin/asm/x86/instructions/vfmaddsub213ph'
        autoload :VFMADDSUB213PS, 'ronin/asm/x86/instructions/vfmaddsub213ps'
        autoload :VFMADDSUB231PD, 'ronin/asm/x86/instructions/vfmaddsub231pd'
        autoload :VFMADDSUB231PH, 'ronin/asm/x86/instructions/vfmaddsub231ph'
        autoload :VFMADDSUB231PS, 'ronin/asm/x86/instructions/vfmaddsub231ps'
        autoload :VFMADDSUBPD, 'ronin/asm/x86/instructions/vfmaddsubpd'
        autoload :VFMADDSUBPS, 'ronin/asm/x86/instructions/vfmaddsubps'
        autoload :VFMSUB132PD, 'ronin/asm/x86/instructions/vfmsub132pd'
        autoload :VFMSUB132PH, 'ronin/asm/x86/instructions/vfmsub132ph'
        autoload :VFMSUB132PS, 'ronin/asm/x86/instructions/vfmsub132ps'
        autoload :VFMSUB132SD, 'ronin/asm/x86/instructions/vfmsub132sd'
        autoload :VFMSUB132SH, 'ronin/asm/x86/instructions/vfmsub132sh'
        autoload :VFMSUB132SS, 'ronin/asm/x86/instructions/vfmsub132ss'
        autoload :VFMSUB213PD, 'ronin/asm/x86/instructions/vfmsub213pd'
        autoload :VFMSUB213PH, 'ronin/asm/x86/instructions/vfmsub213ph'
        autoload :VFMSUB213PS, 'ronin/asm/x86/instructions/vfmsub213ps'
        autoload :VFMSUB213SD, 'ronin/asm/x86/instructions/vfmsub213sd'
        autoload :VFMSUB213SH, 'ronin/asm/x86/instructions/vfmsub213sh'
        autoload :VFMSUB213SS, 'ronin/asm/x86/instructions/vfmsub213ss'
        autoload :VFMSUB231PD, 'ronin/asm/x86/instructions/vfmsub231pd'
        autoload :VFMSUB231PH, 'ronin/asm/x86/instructions/vfmsub231ph'
        autoload :VFMSUB231PS, 'ronin/asm/x86/instructions/vfmsub231ps'
        autoload :VFMSUB231SD, 'ronin/asm/x86/instructions/vfmsub231sd'
        autoload :VFMSUB231SH, 'ronin/asm/x86/instructions/vfmsub231sh'
        autoload :VFMSUB231SS, 'ronin/asm/x86/instructions/vfmsub231ss'
        autoload :VFMSUBADD132PD, 'ronin/asm/x86/instructions/vfmsubadd132pd'
        autoload :VFMSUBADD132PH, 'ronin/asm/x86/instructions/vfmsubadd132ph'
        autoload :VFMSUBADD132PS, 'ronin/asm/x86/instructions/vfmsubadd132ps'
        autoload :VFMSUBADD213PD, 'ronin/asm/x86/instructions/vfmsubadd213pd'
        autoload :VFMSUBADD213PH, 'ronin/asm/x86/instructions/vfmsubadd213ph'
        autoload :VFMSUBADD213PS, 'ronin/asm/x86/instructions/vfmsubadd213ps'
        autoload :VFMSUBADD231PD, 'ronin/asm/x86/instructions/vfmsubadd231pd'
        autoload :VFMSUBADD231PH, 'ronin/asm/x86/instructions/vfmsubadd231ph'
        autoload :VFMSUBADD231PS, 'ronin/asm/x86/instructions/vfmsubadd231ps'
        autoload :VFMSUBADDPD, 'ronin/asm/x86/instructions/vfmsubaddpd'
        autoload :VFMSUBADDPS, 'ronin/asm/x86/instructions/vfmsubaddps'
        autoload :VFMSUBPD, 'ronin/asm/x86/instructions/vfmsubpd'
        autoload :VFMSUBPS, 'ronin/asm/x86/instructions/vfmsubps'
        autoload :VFMSUBSD, 'ronin/asm/x86/instructions/vfmsubsd'
        autoload :VFMSUBSS, 'ronin/asm/x86/instructions/vfmsubss'
        autoload :VFMULCPH, 'ronin/asm/x86/instructions/vfmulcph'
        autoload :VFMULCSH, 'ronin/asm/x86/instructions/vfmulcsh'
        autoload :VFNMADD132PD, 'ronin/asm/x86/instructions/vfnmadd132pd'
        autoload :VFNMADD132PH, 'ronin/asm/x86/instructions/vfnmadd132ph'
        autoload :VFNMADD132PS, 'ronin/asm/x86/instructions/vfnmadd132ps'
        autoload :VFNMADD132SD, 'ronin/asm/x86/instructions/vfnmadd132sd'
        autoload :VFNMADD132SS, 'ronin/asm/x86/instructions/vfnmadd132ss'
        autoload :VFNMADD213PD, 'ronin/asm/x86/instructions/vfnmadd213pd'
        autoload :VFNMADD213PH, 'ronin/asm/x86/instructions/vfnmadd213ph'
        autoload :VFNMADD213PS, 'ronin/asm/x86/instructions/vfnmadd213ps'
        autoload :VFNMADD213SD, 'ronin/asm/x86/instructions/vfnmadd213sd'
        autoload :VFNMADD213SS, 'ronin/asm/x86/instructions/vfnmadd213ss'
        autoload :VFNMADD231PD, 'ronin/asm/x86/instructions/vfnmadd231pd'
        autoload :VFNMADD231PH, 'ronin/asm/x86/instructions/vfnmadd231ph'
        autoload :VFNMADD231PS, 'ronin/asm/x86/instructions/vfnmadd231ps'
        autoload :VFNMADD231SD, 'ronin/asm/x86/instructions/vfnmadd231sd'
        autoload :VFNMADD231SS, 'ronin/asm/x86/instructions/vfnmadd231ss'
        autoload :VFNMADDPD, 'ronin/asm/x86/instructions/vfnmaddpd'
        autoload :VFNMADDPS, 'ronin/asm/x86/instructions/vfnmaddps'
        autoload :VFNMADDSD, 'ronin/asm/x86/instructions/vfnmaddsd'
        autoload :VFNMADDSS, 'ronin/asm/x86/instructions/vfnmaddss'
        autoload :VFNMSUB132PD, 'ronin/asm/x86/instructions/vfnmsub132pd'
        autoload :VFNMSUB132PH, 'ronin/asm/x86/instructions/vfnmsub132ph'
        autoload :VFNMSUB132PS, 'ronin/asm/x86/instructions/vfnmsub132ps'
        autoload :VFNMSUB132SD, 'ronin/asm/x86/instructions/vfnmsub132sd'
        autoload :VFNMSUB132SH, 'ronin/asm/x86/instructions/vfnmsub132sh'
        autoload :VFNMSUB132SS, 'ronin/asm/x86/instructions/vfnmsub132ss'
        autoload :VFNMSUB213PD, 'ronin/asm/x86/instructions/vfnmsub213pd'
        autoload :VFNMSUB213PH, 'ronin/asm/x86/instructions/vfnmsub213ph'
        autoload :VFNMSUB213PS, 'ronin/asm/x86/instructions/vfnmsub213ps'
        autoload :VFNMSUB213SD, 'ronin/asm/x86/instructions/vfnmsub213sd'
        autoload :VFNMSUB213SH, 'ronin/asm/x86/instructions/vfnmsub213sh'
        autoload :VFNMSUB213SS, 'ronin/asm/x86/instructions/vfnmsub213ss'
        autoload :VFNMSUB231PD, 'ronin/asm/x86/instructions/vfnmsub231pd'
        autoload :VFNMSUB231PH, 'ronin/asm/x86/instructions/vfnmsub231ph'
        autoload :VFNMSUB231PS, 'ronin/asm/x86/instructions/vfnmsub231ps'
        autoload :VFNMSUB231SD, 'ronin/asm/x86/instructions/vfnmsub231sd'
        autoload :VFNMSUB231SH, 'ronin/asm/x86/instructions/vfnmsub231sh'
        autoload :VFNMSUB231SS, 'ronin/asm/x86/instructions/vfnmsub231ss'
        autoload :VFNMSUBPD, 'ronin/asm/x86/instructions/vfnmsubpd'
        autoload :VFNMSUBPS, 'ronin/asm/x86/instructions/vfnmsubps'
        autoload :VFNMSUBSD, 'ronin/asm/x86/instructions/vfnmsubsd'
        autoload :VFNMSUBSS, 'ronin/asm/x86/instructions/vfnmsubss'
        autoload :VFPCLASSPD, 'ronin/asm/x86/instructions/vfpclasspd'
        autoload :VFPCLASSPH, 'ronin/asm/x86/instructions/vfpclassph'
        autoload :VFPCLASSPS, 'ronin/asm/x86/instructions/vfpclassps'
        autoload :VFPCLASSSD, 'ronin/asm/x86/instructions/vfpclasssd'
        autoload :VFPCLASSSH, 'ronin/asm/x86/instructions/vfpclasssh'
        autoload :VFPCLASSSS, 'ronin/asm/x86/instructions/vfpclassss'
        autoload :VFRCZPD, 'ronin/asm/x86/instructions/vfrczpd'
        autoload :VFRCZPS, 'ronin/asm/x86/instructions/vfrczps'
        autoload :VFRCZSD, 'ronin/asm/x86/instructions/vfrczsd'
        autoload :VFRCZSS, 'ronin/asm/x86/instructions/vfrczss'
        autoload :VGATHERDPD, 'ronin/asm/x86/instructions/vgatherdpd'
        autoload :VGATHERDPS, 'ronin/asm/x86/instructions/vgatherdps'
        autoload :VGATHERPF0DPD, 'ronin/asm/x86/instructions/vgatherpf0dpd'
        autoload :VGATHERPF0DPS, 'ronin/asm/x86/instructions/vgatherpf0dps'
        autoload :VGATHERPF0QPD, 'ronin/asm/x86/instructions/vgatherpf0qpd'
        autoload :VGATHERPF0QPS, 'ronin/asm/x86/instructions/vgatherpf0qps'
        autoload :VGATHERPF1DPD, 'ronin/asm/x86/instructions/vgatherpf1dpd'
        autoload :VGATHERPF1DPS, 'ronin/asm/x86/instructions/vgatherpf1dps'
        autoload :VGATHERPF1QPD, 'ronin/asm/x86/instructions/vgatherpf1qpd'
        autoload :VGATHERPF1QPS, 'ronin/asm/x86/instructions/vgatherpf1qps'
        autoload :VGATHERQPD, 'ronin/asm/x86/instructions/vgatherqpd'
        autoload :VGATHERQPS, 'ronin/asm/x86/instructions/vgatherqps'
        autoload :VGETEXPPD, 'ronin/asm/x86/instructions/vgetexppd'
        autoload :VGETEXPPH, 'ronin/asm/x86/instructions/vgetexpph'
        autoload :VGETEXPPS, 'ronin/asm/x86/instructions/vgetexpps'
        autoload :VGETEXPSD, 'ronin/asm/x86/instructions/vgetexpsd'
        autoload :VGETEXPSH, 'ronin/asm/x86/instructions/vgetexpsh'
        autoload :VGETEXPSS, 'ronin/asm/x86/instructions/vgetexpss'
        autoload :VGETMANTPD, 'ronin/asm/x86/instructions/vgetmantpd'
        autoload :VGETMANTPH, 'ronin/asm/x86/instructions/vgetmantph'
        autoload :VGETMANTPS, 'ronin/asm/x86/instructions/vgetmantps'
        autoload :VGETMANTSD, 'ronin/asm/x86/instructions/vgetmantsd'
        autoload :VGETMANTSH, 'ronin/asm/x86/instructions/vgetmantsh'
        autoload :VGETMANTSS, 'ronin/asm/x86/instructions/vgetmantss'
        autoload :VGF2P8AFFINEINVQB, 'ronin/asm/x86/instructions/vgf2p8affineinvqb'
        autoload :VGF2P8AFFINEQB, 'ronin/asm/x86/instructions/vgf2p8affineqb'
        autoload :VGF2P8MULB, 'ronin/asm/x86/instructions/vgf2p8mulb'
        autoload :VHADDPD, 'ronin/asm/x86/instructions/vhaddpd'
        autoload :VHADDPS, 'ronin/asm/x86/instructions/vhaddps'
        autoload :VHSUBPD, 'ronin/asm/x86/instructions/vhsubpd'
        autoload :VHSUBPS, 'ronin/asm/x86/instructions/vhsubps'
        autoload :VINSERTF128, 'ronin/asm/x86/instructions/vinsertf128'
        autoload :VINSERTF32X4, 'ronin/asm/x86/instructions/vinsertf32x4'
        autoload :VINSERTF32X8, 'ronin/asm/x86/instructions/vinsertf32x8'
        autoload :VINSERTF64X2, 'ronin/asm/x86/instructions/vinsertf64x2'
        autoload :VINSERTF64X4, 'ronin/asm/x86/instructions/vinsertf64x4'
        autoload :VINSERTI128, 'ronin/asm/x86/instructions/vinserti128'
        autoload :VINSERTI32X4, 'ronin/asm/x86/instructions/vinserti32x4'
        autoload :VINSERTI32X8, 'ronin/asm/x86/instructions/vinserti32x8'
        autoload :VINSERTI64X2, 'ronin/asm/x86/instructions/vinserti64x2'
        autoload :VINSERTI64X4, 'ronin/asm/x86/instructions/vinserti64x4'
        autoload :VINSERTPS, 'ronin/asm/x86/instructions/vinsertps'
        autoload :VLDDQU, 'ronin/asm/x86/instructions/vlddqu'
        autoload :VLDMXCSR, 'ronin/asm/x86/instructions/vldmxcsr'
        autoload :VMASKMOVDQU, 'ronin/asm/x86/instructions/vmaskmovdqu'
        autoload :VMASKMOVPD, 'ronin/asm/x86/instructions/vmaskmovpd'
        autoload :VMASKMOVPS, 'ronin/asm/x86/instructions/vmaskmovps'
        autoload :VMAXPD, 'ronin/asm/x86/instructions/vmaxpd'
        autoload :VMAXPH, 'ronin/asm/x86/instructions/vmaxph'
        autoload :VMAXPS, 'ronin/asm/x86/instructions/vmaxps'
        autoload :VMAXSD, 'ronin/asm/x86/instructions/vmaxsd'
        autoload :VMAXSH, 'ronin/asm/x86/instructions/vmaxsh'
        autoload :VMAXSS, 'ronin/asm/x86/instructions/vmaxss'
        autoload :VMINPD, 'ronin/asm/x86/instructions/vminpd'
        autoload :VMINPH, 'ronin/asm/x86/instructions/vminph'
        autoload :VMINPS, 'ronin/asm/x86/instructions/vminps'
        autoload :VMINSD, 'ronin/asm/x86/instructions/vminsd'
        autoload :VMINSH, 'ronin/asm/x86/instructions/vminsh'
        autoload :VMINSS, 'ronin/asm/x86/instructions/vminss'
        autoload :VMOVAPD, 'ronin/asm/x86/instructions/vmovapd'
        autoload :VMOVAPS, 'ronin/asm/x86/instructions/vmovaps'
        autoload :VMOVD, 'ronin/asm/x86/instructions/vmovd'
        autoload :VMOVDDUP, 'ronin/asm/x86/instructions/vmovddup'
        autoload :VMOVDQA, 'ronin/asm/x86/instructions/vmovdqa'
        autoload :VMOVDQA32, 'ronin/asm/x86/instructions/vmovdqa32'
        autoload :VMOVDQA64, 'ronin/asm/x86/instructions/vmovdqa64'
        autoload :VMOVDQU, 'ronin/asm/x86/instructions/vmovdqu'
        autoload :VMOVDQU16, 'ronin/asm/x86/instructions/vmovdqu16'
        autoload :VMOVDQU32, 'ronin/asm/x86/instructions/vmovdqu32'
        autoload :VMOVDQU64, 'ronin/asm/x86/instructions/vmovdqu64'
        autoload :VMOVDQU8, 'ronin/asm/x86/instructions/vmovdqu8'
        autoload :VMOVHLPS, 'ronin/asm/x86/instructions/vmovhlps'
        autoload :VMOVHPD, 'ronin/asm/x86/instructions/vmovhpd'
        autoload :VMOVHPS, 'ronin/asm/x86/instructions/vmovhps'
        autoload :VMOVLHPS, 'ronin/asm/x86/instructions/vmovlhps'
        autoload :VMOVLPD, 'ronin/asm/x86/instructions/vmovlpd'
        autoload :VMOVLPS, 'ronin/asm/x86/instructions/vmovlps'
        autoload :VMOVMSKPD, 'ronin/asm/x86/instructions/vmovmskpd'
        autoload :VMOVMSKPS, 'ronin/asm/x86/instructions/vmovmskps'
        autoload :VMOVNTDQ, 'ronin/asm/x86/instructions/vmovntdq'
        autoload :VMOVNTDQA, 'ronin/asm/x86/instructions/vmovntdqa'
        autoload :VMOVNTPD, 'ronin/asm/x86/instructions/vmovntpd'
        autoload :VMOVNTPS, 'ronin/asm/x86/instructions/vmovntps'
        autoload :VMOVQ, 'ronin/asm/x86/instructions/vmovq'
        autoload :VMOVSD, 'ronin/asm/x86/instructions/vmovsd'
        autoload :VMOVSH, 'ronin/asm/x86/instructions/vmovsh'
        autoload :VMOVSHDUP, 'ronin/asm/x86/instructions/vmovshdup'
        autoload :VMOVSLDUP, 'ronin/asm/x86/instructions/vmovsldup'
        autoload :VMOVSS, 'ronin/asm/x86/instructions/vmovss'
        autoload :VMOVUPD, 'ronin/asm/x86/instructions/vmovupd'
        autoload :VMOVUPS, 'ronin/asm/x86/instructions/vmovups'
        autoload :VMOVW, 'ronin/asm/x86/instructions/vmovw'
        autoload :VMPSADBW, 'ronin/asm/x86/instructions/vmpsadbw'
        autoload :VMULPD, 'ronin/asm/x86/instructions/vmulpd'
        autoload :VMULPH, 'ronin/asm/x86/instructions/vmulph'
        autoload :VMULPS, 'ronin/asm/x86/instructions/vmulps'
        autoload :VMULSD, 'ronin/asm/x86/instructions/vmulsd'
        autoload :VMULSH, 'ronin/asm/x86/instructions/vmulsh'
        autoload :VMULSS, 'ronin/asm/x86/instructions/vmulss'
        autoload :VORPD, 'ronin/asm/x86/instructions/vorpd'
        autoload :VORPS, 'ronin/asm/x86/instructions/vorps'
        autoload :VPABSB, 'ronin/asm/x86/instructions/vpabsb'
        autoload :VPABSD, 'ronin/asm/x86/instructions/vpabsd'
        autoload :VPABSQ, 'ronin/asm/x86/instructions/vpabsq'
        autoload :VPABSW, 'ronin/asm/x86/instructions/vpabsw'
        autoload :VPACKSSDW, 'ronin/asm/x86/instructions/vpackssdw'
        autoload :VPACKSSWB, 'ronin/asm/x86/instructions/vpacksswb'
        autoload :VPACKUSDW, 'ronin/asm/x86/instructions/vpackusdw'
        autoload :VPACKUSWB, 'ronin/asm/x86/instructions/vpackuswb'
        autoload :VPADDB, 'ronin/asm/x86/instructions/vpaddb'
        autoload :VPADDD, 'ronin/asm/x86/instructions/vpaddd'
        autoload :VPADDQ, 'ronin/asm/x86/instructions/vpaddq'
        autoload :VPADDSB, 'ronin/asm/x86/instructions/vpaddsb'
        autoload :VPADDSW, 'ronin/asm/x86/instructions/vpaddsw'
        autoload :VPADDUSB, 'ronin/asm/x86/instructions/vpaddusb'
        autoload :VPADDUSW, 'ronin/asm/x86/instructions/vpaddusw'
        autoload :VPADDW, 'ronin/asm/x86/instructions/vpaddw'
        autoload :VPALIGNR, 'ronin/asm/x86/instructions/vpalignr'
        autoload :VPAND, 'ronin/asm/x86/instructions/vpand'
        autoload :VPANDD, 'ronin/asm/x86/instructions/vpandd'
        autoload :VPANDN, 'ronin/asm/x86/instructions/vpandn'
        autoload :VPANDND, 'ronin/asm/x86/instructions/vpandnd'
        autoload :VPANDNQ, 'ronin/asm/x86/instructions/vpandnq'
        autoload :VPANDQ, 'ronin/asm/x86/instructions/vpandq'
        autoload :VPAVGB, 'ronin/asm/x86/instructions/vpavgb'
        autoload :VPAVGW, 'ronin/asm/x86/instructions/vpavgw'
        autoload :VPBLENDD, 'ronin/asm/x86/instructions/vpblendd'
        autoload :VPBLENDMB, 'ronin/asm/x86/instructions/vpblendmb'
        autoload :VPBLENDMD, 'ronin/asm/x86/instructions/vpblendmd'
        autoload :VPBLENDMQ, 'ronin/asm/x86/instructions/vpblendmq'
        autoload :VPBLENDMW, 'ronin/asm/x86/instructions/vpblendmw'
        autoload :VPBLENDVB, 'ronin/asm/x86/instructions/vpblendvb'
        autoload :VPBLENDW, 'ronin/asm/x86/instructions/vpblendw'
        autoload :VPBROADCASTB, 'ronin/asm/x86/instructions/vpbroadcastb'
        autoload :VPBROADCASTD, 'ronin/asm/x86/instructions/vpbroadcastd'
        autoload :VPBROADCASTMB2Q, 'ronin/asm/x86/instructions/vpbroadcastmb2q'
        autoload :VPBROADCASTMW2D, 'ronin/asm/x86/instructions/vpbroadcastmw2d'
        autoload :VPBROADCASTQ, 'ronin/asm/x86/instructions/vpbroadcastq'
        autoload :VPBROADCASTW, 'ronin/asm/x86/instructions/vpbroadcastw'
        autoload :VPCLMULQDQ, 'ronin/asm/x86/instructions/vpclmulqdq'
        autoload :VPCMOV, 'ronin/asm/x86/instructions/vpcmov'
        autoload :VPCMPB, 'ronin/asm/x86/instructions/vpcmpb'
        autoload :VPCMPD, 'ronin/asm/x86/instructions/vpcmpd'
        autoload :VPCMPEQB, 'ronin/asm/x86/instructions/vpcmpeqb'
        autoload :VPCMPEQD, 'ronin/asm/x86/instructions/vpcmpeqd'
        autoload :VPCMPEQQ, 'ronin/asm/x86/instructions/vpcmpeqq'
        autoload :VPCMPEQW, 'ronin/asm/x86/instructions/vpcmpeqw'
        autoload :VPCMPESTRI, 'ronin/asm/x86/instructions/vpcmpestri'
        autoload :VPCMPESTRM, 'ronin/asm/x86/instructions/vpcmpestrm'
        autoload :VPCMPGTB, 'ronin/asm/x86/instructions/vpcmpgtb'
        autoload :VPCMPGTD, 'ronin/asm/x86/instructions/vpcmpgtd'
        autoload :VPCMPGTQ, 'ronin/asm/x86/instructions/vpcmpgtq'
        autoload :VPCMPGTW, 'ronin/asm/x86/instructions/vpcmpgtw'
        autoload :VPCMPISTRI, 'ronin/asm/x86/instructions/vpcmpistri'
        autoload :VPCMPISTRM, 'ronin/asm/x86/instructions/vpcmpistrm'
        autoload :VPCMPQ, 'ronin/asm/x86/instructions/vpcmpq'
        autoload :VPCMPUB, 'ronin/asm/x86/instructions/vpcmpub'
        autoload :VPCMPUD, 'ronin/asm/x86/instructions/vpcmpud'
        autoload :VPCMPUQ, 'ronin/asm/x86/instructions/vpcmpuq'
        autoload :VPCMPUW, 'ronin/asm/x86/instructions/vpcmpuw'
        autoload :VPCMPW, 'ronin/asm/x86/instructions/vpcmpw'
        autoload :VPCOMB, 'ronin/asm/x86/instructions/vpcomb'
        autoload :VPCOMD, 'ronin/asm/x86/instructions/vpcomd'
        autoload :VPCOMPRESSB, 'ronin/asm/x86/instructions/vpcompressb'
        autoload :VPCOMPRESSD, 'ronin/asm/x86/instructions/vpcompressd'
        autoload :VPCOMPRESSQ, 'ronin/asm/x86/instructions/vpcompressq'
        autoload :VPCOMPRESSW, 'ronin/asm/x86/instructions/vpcompressw'
        autoload :VPCOMQ, 'ronin/asm/x86/instructions/vpcomq'
        autoload :VPCOMUB, 'ronin/asm/x86/instructions/vpcomub'
        autoload :VPCOMUD, 'ronin/asm/x86/instructions/vpcomud'
        autoload :VPCOMUQ, 'ronin/asm/x86/instructions/vpcomuq'
        autoload :VPCOMUW, 'ronin/asm/x86/instructions/vpcomuw'
        autoload :VPCOMW, 'ronin/asm/x86/instructions/vpcomw'
        autoload :VPCONFLICTD, 'ronin/asm/x86/instructions/vpconflictd'
        autoload :VPCONFLICTQ, 'ronin/asm/x86/instructions/vpconflictq'
        autoload :VPDPBSSD, 'ronin/asm/x86/instructions/vpdpbssd'
        autoload :VPDPBSSDS, 'ronin/asm/x86/instructions/vpdpbssds'
        autoload :VPDPBSUD, 'ronin/asm/x86/instructions/vpdpbsud'
        autoload :VPDPBSUDS, 'ronin/asm/x86/instructions/vpdpbsuds'
        autoload :VPDPBUSD, 'ronin/asm/x86/instructions/vpdpbusd'
        autoload :VPDPBUSDS, 'ronin/asm/x86/instructions/vpdpbusds'
        autoload :VPDPBUUD, 'ronin/asm/x86/instructions/vpdpbuud'
        autoload :VPDPBUUDS, 'ronin/asm/x86/instructions/vpdpbuuds'
        autoload :VPDPWSSD, 'ronin/asm/x86/instructions/vpdpwssd'
        autoload :VPDPWSSDS, 'ronin/asm/x86/instructions/vpdpwssds'
        autoload :VPDPWSUD, 'ronin/asm/x86/instructions/vpdpwsud'
        autoload :VPDPWSUDS, 'ronin/asm/x86/instructions/vpdpwsuds'
        autoload :VPDPWUSD, 'ronin/asm/x86/instructions/vpdpwusd'
        autoload :VPDPWUSDS, 'ronin/asm/x86/instructions/vpdpwusds'
        autoload :VPDPWUUD, 'ronin/asm/x86/instructions/vpdpwuud'
        autoload :VPDPWUUDS, 'ronin/asm/x86/instructions/vpdpwuuds'
        autoload :VPERM2F128, 'ronin/asm/x86/instructions/vperm2f128'
        autoload :VPERM2I128, 'ronin/asm/x86/instructions/vperm2i128'
        autoload :VPERMB, 'ronin/asm/x86/instructions/vpermb'
        autoload :VPERMD, 'ronin/asm/x86/instructions/vpermd'
        autoload :VPERMI2B, 'ronin/asm/x86/instructions/vpermi2b'
        autoload :VPERMI2D, 'ronin/asm/x86/instructions/vpermi2d'
        autoload :VPERMI2PD, 'ronin/asm/x86/instructions/vpermi2pd'
        autoload :VPERMI2PS, 'ronin/asm/x86/instructions/vpermi2ps'
        autoload :VPERMI2Q, 'ronin/asm/x86/instructions/vpermi2q'
        autoload :VPERMI2W, 'ronin/asm/x86/instructions/vpermi2w'
        autoload :VPERMIL2PD, 'ronin/asm/x86/instructions/vpermil2pd'
        autoload :VPERMIL2PS, 'ronin/asm/x86/instructions/vpermil2ps'
        autoload :VPERMILPD, 'ronin/asm/x86/instructions/vpermilpd'
        autoload :VPERMILPS, 'ronin/asm/x86/instructions/vpermilps'
        autoload :VPERMPD, 'ronin/asm/x86/instructions/vpermpd'
        autoload :VPERMPS, 'ronin/asm/x86/instructions/vpermps'
        autoload :VPERMQ, 'ronin/asm/x86/instructions/vpermq'
        autoload :VPERMT2B, 'ronin/asm/x86/instructions/vpermt2b'
        autoload :VPERMT2D, 'ronin/asm/x86/instructions/vpermt2d'
        autoload :VPERMT2PD, 'ronin/asm/x86/instructions/vpermt2pd'
        autoload :VPERMT2PS, 'ronin/asm/x86/instructions/vpermt2ps'
        autoload :VPERMT2Q, 'ronin/asm/x86/instructions/vpermt2q'
        autoload :VPERMT2W, 'ronin/asm/x86/instructions/vpermt2w'
        autoload :VPERMW, 'ronin/asm/x86/instructions/vpermw'
        autoload :VPEXPANDB, 'ronin/asm/x86/instructions/vpexpandb'
        autoload :VPEXPANDD, 'ronin/asm/x86/instructions/vpexpandd'
        autoload :VPEXPANDQ, 'ronin/asm/x86/instructions/vpexpandq'
        autoload :VPEXPANDW, 'ronin/asm/x86/instructions/vpexpandw'
        autoload :VPEXTRB, 'ronin/asm/x86/instructions/vpextrb'
        autoload :VPEXTRD, 'ronin/asm/x86/instructions/vpextrd'
        autoload :VPEXTRW, 'ronin/asm/x86/instructions/vpextrw'
        autoload :VPGATHERDD, 'ronin/asm/x86/instructions/vpgatherdd'
        autoload :VPGATHERDQ, 'ronin/asm/x86/instructions/vpgatherdq'
        autoload :VPGATHERQD, 'ronin/asm/x86/instructions/vpgatherqd'
        autoload :VPGATHERQQ, 'ronin/asm/x86/instructions/vpgatherqq'
        autoload :VPHADDBD, 'ronin/asm/x86/instructions/vphaddbd'
        autoload :VPHADDBQ, 'ronin/asm/x86/instructions/vphaddbq'
        autoload :VPHADDBW, 'ronin/asm/x86/instructions/vphaddbw'
        autoload :VPHADDD, 'ronin/asm/x86/instructions/vphaddd'
        autoload :VPHADDDQ, 'ronin/asm/x86/instructions/vphadddq'
        autoload :VPHADDSW, 'ronin/asm/x86/instructions/vphaddsw'
        autoload :VPHADDUBD, 'ronin/asm/x86/instructions/vphaddubd'
        autoload :VPHADDUBQ, 'ronin/asm/x86/instructions/vphaddubq'
        autoload :VPHADDUBW, 'ronin/asm/x86/instructions/vphaddubw'
        autoload :VPHADDUDQ, 'ronin/asm/x86/instructions/vphaddudq'
        autoload :VPHADDUWD, 'ronin/asm/x86/instructions/vphadduwd'
        autoload :VPHADDUWQ, 'ronin/asm/x86/instructions/vphadduwq'
        autoload :VPHADDW, 'ronin/asm/x86/instructions/vphaddw'
        autoload :VPHADDWD, 'ronin/asm/x86/instructions/vphaddwd'
        autoload :VPHADDWQ, 'ronin/asm/x86/instructions/vphaddwq'
        autoload :VPHMINPOSUW, 'ronin/asm/x86/instructions/vphminposuw'
        autoload :VPHSUBBW, 'ronin/asm/x86/instructions/vphsubbw'
        autoload :VPHSUBD, 'ronin/asm/x86/instructions/vphsubd'
        autoload :VPHSUBDQ, 'ronin/asm/x86/instructions/vphsubdq'
        autoload :VPHSUBSW, 'ronin/asm/x86/instructions/vphsubsw'
        autoload :VPHSUBW, 'ronin/asm/x86/instructions/vphsubw'
        autoload :VPHSUBWD, 'ronin/asm/x86/instructions/vphsubwd'
        autoload :VPINSRB, 'ronin/asm/x86/instructions/vpinsrb'
        autoload :VPINSRD, 'ronin/asm/x86/instructions/vpinsrd'
        autoload :VPINSRW, 'ronin/asm/x86/instructions/vpinsrw'
        autoload :VPLZCNTD, 'ronin/asm/x86/instructions/vplzcntd'
        autoload :VPLZCNTQ, 'ronin/asm/x86/instructions/vplzcntq'
        autoload :VPMACSDD, 'ronin/asm/x86/instructions/vpmacsdd'
        autoload :VPMACSDQH, 'ronin/asm/x86/instructions/vpmacsdqh'
        autoload :VPMACSDQL, 'ronin/asm/x86/instructions/vpmacsdql'
        autoload :VPMACSSDD, 'ronin/asm/x86/instructions/vpmacssdd'
        autoload :VPMACSSDQH, 'ronin/asm/x86/instructions/vpmacssdqh'
        autoload :VPMACSSDQL, 'ronin/asm/x86/instructions/vpmacssdql'
        autoload :VPMACSSWD, 'ronin/asm/x86/instructions/vpmacsswd'
        autoload :VPMACSSWW, 'ronin/asm/x86/instructions/vpmacssww'
        autoload :VPMACSWD, 'ronin/asm/x86/instructions/vpmacswd'
        autoload :VPMACSWW, 'ronin/asm/x86/instructions/vpmacsww'
        autoload :VPMADCSSWD, 'ronin/asm/x86/instructions/vpmadcsswd'
        autoload :VPMADCSWD, 'ronin/asm/x86/instructions/vpmadcswd'
        autoload :VPMADD52HUQ, 'ronin/asm/x86/instructions/vpmadd52huq'
        autoload :VPMADD52LUQ, 'ronin/asm/x86/instructions/vpmadd52luq'
        autoload :VPMADDUBSW, 'ronin/asm/x86/instructions/vpmaddubsw'
        autoload :VPMADDWD, 'ronin/asm/x86/instructions/vpmaddwd'
        autoload :VPMASKMOVD, 'ronin/asm/x86/instructions/vpmaskmovd'
        autoload :VPMASKMOVQ, 'ronin/asm/x86/instructions/vpmaskmovq'
        autoload :VPMAXSB, 'ronin/asm/x86/instructions/vpmaxsb'
        autoload :VPMAXSD, 'ronin/asm/x86/instructions/vpmaxsd'
        autoload :VPMAXSQ, 'ronin/asm/x86/instructions/vpmaxsq'
        autoload :VPMAXSW, 'ronin/asm/x86/instructions/vpmaxsw'
        autoload :VPMAXUB, 'ronin/asm/x86/instructions/vpmaxub'
        autoload :VPMAXUD, 'ronin/asm/x86/instructions/vpmaxud'
        autoload :VPMAXUQ, 'ronin/asm/x86/instructions/vpmaxuq'
        autoload :VPMAXUW, 'ronin/asm/x86/instructions/vpmaxuw'
        autoload :VPMINSB, 'ronin/asm/x86/instructions/vpminsb'
        autoload :VPMINSD, 'ronin/asm/x86/instructions/vpminsd'
        autoload :VPMINSQ, 'ronin/asm/x86/instructions/vpminsq'
        autoload :VPMINSW, 'ronin/asm/x86/instructions/vpminsw'
        autoload :VPMINUB, 'ronin/asm/x86/instructions/vpminub'
        autoload :VPMINUD, 'ronin/asm/x86/instructions/vpminud'
        autoload :VPMINUQ, 'ronin/asm/x86/instructions/vpminuq'
        autoload :VPMINUW, 'ronin/asm/x86/instructions/vpminuw'
        autoload :VPMOVB2M, 'ronin/asm/x86/instructions/vpmovb2m'
        autoload :VPMOVD2M, 'ronin/asm/x86/instructions/vpmovd2m'
        autoload :VPMOVDB, 'ronin/asm/x86/instructions/vpmovdb'
        autoload :VPMOVDW, 'ronin/asm/x86/instructions/vpmovdw'
        autoload :VPMOVM2B, 'ronin/asm/x86/instructions/vpmovm2b'
        autoload :VPMOVM2D, 'ronin/asm/x86/instructions/vpmovm2d'
        autoload :VPMOVM2Q, 'ronin/asm/x86/instructions/vpmovm2q'
        autoload :VPMOVM2W, 'ronin/asm/x86/instructions/vpmovm2w'
        autoload :VPMOVMSKB, 'ronin/asm/x86/instructions/vpmovmskb'
        autoload :VPMOVQ2M, 'ronin/asm/x86/instructions/vpmovq2m'
        autoload :VPMOVQB, 'ronin/asm/x86/instructions/vpmovqb'
        autoload :VPMOVQD, 'ronin/asm/x86/instructions/vpmovqd'
        autoload :VPMOVQW, 'ronin/asm/x86/instructions/vpmovqw'
        autoload :VPMOVSDB, 'ronin/asm/x86/instructions/vpmovsdb'
        autoload :VPMOVSDW, 'ronin/asm/x86/instructions/vpmovsdw'
        autoload :VPMOVSQB, 'ronin/asm/x86/instructions/vpmovsqb'
        autoload :VPMOVSQD, 'ronin/asm/x86/instructions/vpmovsqd'
        autoload :VPMOVSQW, 'ronin/asm/x86/instructions/vpmovsqw'
        autoload :VPMOVSWB, 'ronin/asm/x86/instructions/vpmovswb'
        autoload :VPMOVSXBD, 'ronin/asm/x86/instructions/vpmovsxbd'
        autoload :VPMOVSXBQ, 'ronin/asm/x86/instructions/vpmovsxbq'
        autoload :VPMOVSXBW, 'ronin/asm/x86/instructions/vpmovsxbw'
        autoload :VPMOVSXDQ, 'ronin/asm/x86/instructions/vpmovsxdq'
        autoload :VPMOVSXWD, 'ronin/asm/x86/instructions/vpmovsxwd'
        autoload :VPMOVSXWQ, 'ronin/asm/x86/instructions/vpmovsxwq'
        autoload :VPMOVUSDB, 'ronin/asm/x86/instructions/vpmovusdb'
        autoload :VPMOVUSDW, 'ronin/asm/x86/instructions/vpmovusdw'
        autoload :VPMOVUSQB, 'ronin/asm/x86/instructions/vpmovusqb'
        autoload :VPMOVUSQD, 'ronin/asm/x86/instructions/vpmovusqd'
        autoload :VPMOVUSQW, 'ronin/asm/x86/instructions/vpmovusqw'
        autoload :VPMOVUSWB, 'ronin/asm/x86/instructions/vpmovuswb'
        autoload :VPMOVW2M, 'ronin/asm/x86/instructions/vpmovw2m'
        autoload :VPMOVWB, 'ronin/asm/x86/instructions/vpmovwb'
        autoload :VPMOVZXBD, 'ronin/asm/x86/instructions/vpmovzxbd'
        autoload :VPMOVZXBQ, 'ronin/asm/x86/instructions/vpmovzxbq'
        autoload :VPMOVZXBW, 'ronin/asm/x86/instructions/vpmovzxbw'
        autoload :VPMOVZXDQ, 'ronin/asm/x86/instructions/vpmovzxdq'
        autoload :VPMOVZXWD, 'ronin/asm/x86/instructions/vpmovzxwd'
        autoload :VPMOVZXWQ, 'ronin/asm/x86/instructions/vpmovzxwq'
        autoload :VPMULDQ, 'ronin/asm/x86/instructions/vpmuldq'
        autoload :VPMULHRSW, 'ronin/asm/x86/instructions/vpmulhrsw'
        autoload :VPMULHUW, 'ronin/asm/x86/instructions/vpmulhuw'
        autoload :VPMULHW, 'ronin/asm/x86/instructions/vpmulhw'
        autoload :VPMULLD, 'ronin/asm/x86/instructions/vpmulld'
        autoload :VPMULLQ, 'ronin/asm/x86/instructions/vpmullq'
        autoload :VPMULLW, 'ronin/asm/x86/instructions/vpmullw'
        autoload :VPMULTISHIFTQB, 'ronin/asm/x86/instructions/vpmultishiftqb'
        autoload :VPMULUDQ, 'ronin/asm/x86/instructions/vpmuludq'
        autoload :VPOPCNTB, 'ronin/asm/x86/instructions/vpopcntb'
        autoload :VPOPCNTD, 'ronin/asm/x86/instructions/vpopcntd'
        autoload :VPOPCNTQ, 'ronin/asm/x86/instructions/vpopcntq'
        autoload :VPOPCNTW, 'ronin/asm/x86/instructions/vpopcntw'
        autoload :VPOR, 'ronin/asm/x86/instructions/vpor'
        autoload :VPORD, 'ronin/asm/x86/instructions/vpord'
        autoload :VPORQ, 'ronin/asm/x86/instructions/vporq'
        autoload :VPPERM, 'ronin/asm/x86/instructions/vpperm'
        autoload :VPROLD, 'ronin/asm/x86/instructions/vprold'
        autoload :VPROLQ, 'ronin/asm/x86/instructions/vprolq'
        autoload :VPROLVD, 'ronin/asm/x86/instructions/vprolvd'
        autoload :VPROLVQ, 'ronin/asm/x86/instructions/vprolvq'
        autoload :VPRORD, 'ronin/asm/x86/instructions/vprord'
        autoload :VPRORQ, 'ronin/asm/x86/instructions/vprorq'
        autoload :VPRORVD, 'ronin/asm/x86/instructions/vprorvd'
        autoload :VPRORVQ, 'ronin/asm/x86/instructions/vprorvq'
        autoload :VPROTB, 'ronin/asm/x86/instructions/vprotb'
        autoload :VPROTD, 'ronin/asm/x86/instructions/vprotd'
        autoload :VPROTQ, 'ronin/asm/x86/instructions/vprotq'
        autoload :VPROTW, 'ronin/asm/x86/instructions/vprotw'
        autoload :VPSADBW, 'ronin/asm/x86/instructions/vpsadbw'
        autoload :VPSCATTERDD, 'ronin/asm/x86/instructions/vpscatterdd'
        autoload :VPSCATTERDQ, 'ronin/asm/x86/instructions/vpscatterdq'
        autoload :VPSCATTERQD, 'ronin/asm/x86/instructions/vpscatterqd'
        autoload :VPSCATTERQQ, 'ronin/asm/x86/instructions/vpscatterqq'
        autoload :VPSHAB, 'ronin/asm/x86/instructions/vpshab'
        autoload :VPSHAD, 'ronin/asm/x86/instructions/vpshad'
        autoload :VPSHAQ, 'ronin/asm/x86/instructions/vpshaq'
        autoload :VPSHAW, 'ronin/asm/x86/instructions/vpshaw'
        autoload :VPSHLB, 'ronin/asm/x86/instructions/vpshlb'
        autoload :VPSHLD, 'ronin/asm/x86/instructions/vpshld'
        autoload :VPSHLDD, 'ronin/asm/x86/instructions/vpshldd'
        autoload :VPSHLDQ, 'ronin/asm/x86/instructions/vpshldq'
        autoload :VPSHLDVD, 'ronin/asm/x86/instructions/vpshldvd'
        autoload :VPSHLDVQ, 'ronin/asm/x86/instructions/vpshldvq'
        autoload :VPSHLDVW, 'ronin/asm/x86/instructions/vpshldvw'
        autoload :VPSHLDW, 'ronin/asm/x86/instructions/vpshldw'
        autoload :VPSHLQ, 'ronin/asm/x86/instructions/vpshlq'
        autoload :VPSHLW, 'ronin/asm/x86/instructions/vpshlw'
        autoload :VPSHRDD, 'ronin/asm/x86/instructions/vpshrdd'
        autoload :VPSHRDQ, 'ronin/asm/x86/instructions/vpshrdq'
        autoload :VPSHRDVD, 'ronin/asm/x86/instructions/vpshrdvd'
        autoload :VPSHRDVQ, 'ronin/asm/x86/instructions/vpshrdvq'
        autoload :VPSHRDVW, 'ronin/asm/x86/instructions/vpshrdvw'
        autoload :VPSHRDW, 'ronin/asm/x86/instructions/vpshrdw'
        autoload :VPSHUFB, 'ronin/asm/x86/instructions/vpshufb'
        autoload :VPSHUFBITQMB, 'ronin/asm/x86/instructions/vpshufbitqmb'
        autoload :VPSHUFD, 'ronin/asm/x86/instructions/vpshufd'
        autoload :VPSHUFHW, 'ronin/asm/x86/instructions/vpshufhw'
        autoload :VPSHUFLW, 'ronin/asm/x86/instructions/vpshuflw'
        autoload :VPSIGNB, 'ronin/asm/x86/instructions/vpsignb'
        autoload :VPSIGND, 'ronin/asm/x86/instructions/vpsignd'
        autoload :VPSIGNW, 'ronin/asm/x86/instructions/vpsignw'
        autoload :VPSLLD, 'ronin/asm/x86/instructions/vpslld'
        autoload :VPSLLDQ, 'ronin/asm/x86/instructions/vpslldq'
        autoload :VPSLLQ, 'ronin/asm/x86/instructions/vpsllq'
        autoload :VPSLLVD, 'ronin/asm/x86/instructions/vpsllvd'
        autoload :VPSLLVQ, 'ronin/asm/x86/instructions/vpsllvq'
        autoload :VPSLLVW, 'ronin/asm/x86/instructions/vpsllvw'
        autoload :VPSLLW, 'ronin/asm/x86/instructions/vpsllw'
        autoload :VPSRAD, 'ronin/asm/x86/instructions/vpsrad'
        autoload :VPSRAQ, 'ronin/asm/x86/instructions/vpsraq'
        autoload :VPSRAVD, 'ronin/asm/x86/instructions/vpsravd'
        autoload :VPSRAVQ, 'ronin/asm/x86/instructions/vpsravq'
        autoload :VPSRAVW, 'ronin/asm/x86/instructions/vpsravw'
        autoload :VPSRAW, 'ronin/asm/x86/instructions/vpsraw'
        autoload :VPSRLD, 'ronin/asm/x86/instructions/vpsrld'
        autoload :VPSRLDQ, 'ronin/asm/x86/instructions/vpsrldq'
        autoload :VPSRLQ, 'ronin/asm/x86/instructions/vpsrlq'
        autoload :VPSRLVD, 'ronin/asm/x86/instructions/vpsrlvd'
        autoload :VPSRLVQ, 'ronin/asm/x86/instructions/vpsrlvq'
        autoload :VPSRLVW, 'ronin/asm/x86/instructions/vpsrlvw'
        autoload :VPSRLW, 'ronin/asm/x86/instructions/vpsrlw'
        autoload :VPSUBB, 'ronin/asm/x86/instructions/vpsubb'
        autoload :VPSUBD, 'ronin/asm/x86/instructions/vpsubd'
        autoload :VPSUBQ, 'ronin/asm/x86/instructions/vpsubq'
        autoload :VPSUBSB, 'ronin/asm/x86/instructions/vpsubsb'
        autoload :VPSUBSW, 'ronin/asm/x86/instructions/vpsubsw'
        autoload :VPSUBUSB, 'ronin/asm/x86/instructions/vpsubusb'
        autoload :VPSUBUSW, 'ronin/asm/x86/instructions/vpsubusw'
        autoload :VPSUBW, 'ronin/asm/x86/instructions/vpsubw'
        autoload :VPTERNLOGD, 'ronin/asm/x86/instructions/vpternlogd'
        autoload :VPTERNLOGQ, 'ronin/asm/x86/instructions/vpternlogq'
        autoload :VPTEST, 'ronin/asm/x86/instructions/vptest'
        autoload :VPTESTMB, 'ronin/asm/x86/instructions/vptestmb'
        autoload :VPTESTMD, 'ronin/asm/x86/instructions/vptestmd'
        autoload :VPTESTMQ, 'ronin/asm/x86/instructions/vptestmq'
        autoload :VPTESTMW, 'ronin/asm/x86/instructions/vptestmw'
        autoload :VPTESTNMB, 'ronin/asm/x86/instructions/vptestnmb'
        autoload :VPTESTNMD, 'ronin/asm/x86/instructions/vptestnmd'
        autoload :VPTESTNMQ, 'ronin/asm/x86/instructions/vptestnmq'
        autoload :VPTESTNMW, 'ronin/asm/x86/instructions/vptestnmw'
        autoload :VPUNPCKHBW, 'ronin/asm/x86/instructions/vpunpckhbw'
        autoload :VPUNPCKHDQ, 'ronin/asm/x86/instructions/vpunpckhdq'
        autoload :VPUNPCKHQDQ, 'ronin/asm/x86/instructions/vpunpckhqdq'
        autoload :VPUNPCKHWD, 'ronin/asm/x86/instructions/vpunpckhwd'
        autoload :VPUNPCKLBW, 'ronin/asm/x86/instructions/vpunpcklbw'
        autoload :VPUNPCKLDQ, 'ronin/asm/x86/instructions/vpunpckldq'
        autoload :VPUNPCKLQDQ, 'ronin/asm/x86/instructions/vpunpcklqdq'
        autoload :VPUNPCKLWD, 'ronin/asm/x86/instructions/vpunpcklwd'
        autoload :VPXOR, 'ronin/asm/x86/instructions/vpxor'
        autoload :VPXORD, 'ronin/asm/x86/instructions/vpxord'
        autoload :VPXORQ, 'ronin/asm/x86/instructions/vpxorq'
        autoload :VRANGEPD, 'ronin/asm/x86/instructions/vrangepd'
        autoload :VRANGEPS, 'ronin/asm/x86/instructions/vrangeps'
        autoload :VRANGESD, 'ronin/asm/x86/instructions/vrangesd'
        autoload :VRANGESS, 'ronin/asm/x86/instructions/vrangess'
        autoload :VRCP14PD, 'ronin/asm/x86/instructions/vrcp14pd'
        autoload :VRCP14PS, 'ronin/asm/x86/instructions/vrcp14ps'
        autoload :VRCP14SD, 'ronin/asm/x86/instructions/vrcp14sd'
        autoload :VRCP14SS, 'ronin/asm/x86/instructions/vrcp14ss'
        autoload :VRCP28PD, 'ronin/asm/x86/instructions/vrcp28pd'
        autoload :VRCP28PS, 'ronin/asm/x86/instructions/vrcp28ps'
        autoload :VRCP28SD, 'ronin/asm/x86/instructions/vrcp28sd'
        autoload :VRCP28SS, 'ronin/asm/x86/instructions/vrcp28ss'
        autoload :VRCPPH, 'ronin/asm/x86/instructions/vrcpph'
        autoload :VRCPPS, 'ronin/asm/x86/instructions/vrcpps'
        autoload :VRCPSH, 'ronin/asm/x86/instructions/vrcpsh'
        autoload :VRCPSS, 'ronin/asm/x86/instructions/vrcpss'
        autoload :VREDUCEPD, 'ronin/asm/x86/instructions/vreducepd'
        autoload :VREDUCEPH, 'ronin/asm/x86/instructions/vreduceph'
        autoload :VREDUCEPS, 'ronin/asm/x86/instructions/vreduceps'
        autoload :VREDUCESD, 'ronin/asm/x86/instructions/vreducesd'
        autoload :VREDUCESH, 'ronin/asm/x86/instructions/vreducesh'
        autoload :VREDUCESS, 'ronin/asm/x86/instructions/vreducess'
        autoload :VRNDSCALEPD, 'ronin/asm/x86/instructions/vrndscalepd'
        autoload :VRNDSCALEPH, 'ronin/asm/x86/instructions/vrndscaleph'
        autoload :VRNDSCALEPS, 'ronin/asm/x86/instructions/vrndscaleps'
        autoload :VRNDSCALESD, 'ronin/asm/x86/instructions/vrndscalesd'
        autoload :VRNDSCALESH, 'ronin/asm/x86/instructions/vrndscalesh'
        autoload :VRNDSCALESS, 'ronin/asm/x86/instructions/vrndscaless'
        autoload :VROUNDPD, 'ronin/asm/x86/instructions/vroundpd'
        autoload :VROUNDPS, 'ronin/asm/x86/instructions/vroundps'
        autoload :VROUNDSD, 'ronin/asm/x86/instructions/vroundsd'
        autoload :VROUNDSS, 'ronin/asm/x86/instructions/vroundss'
        autoload :VRSQRT14PD, 'ronin/asm/x86/instructions/vrsqrt14pd'
        autoload :VRSQRT14PS, 'ronin/asm/x86/instructions/vrsqrt14ps'
        autoload :VRSQRT14SD, 'ronin/asm/x86/instructions/vrsqrt14sd'
        autoload :VRSQRT14SS, 'ronin/asm/x86/instructions/vrsqrt14ss'
        autoload :VRSQRT28PD, 'ronin/asm/x86/instructions/vrsqrt28pd'
        autoload :VRSQRT28PS, 'ronin/asm/x86/instructions/vrsqrt28ps'
        autoload :VRSQRT28SD, 'ronin/asm/x86/instructions/vrsqrt28sd'
        autoload :VRSQRT28SS, 'ronin/asm/x86/instructions/vrsqrt28ss'
        autoload :VRSQRTPH, 'ronin/asm/x86/instructions/vrsqrtph'
        autoload :VRSQRTPS, 'ronin/asm/x86/instructions/vrsqrtps'
        autoload :VRSQRTSH, 'ronin/asm/x86/instructions/vrsqrtsh'
        autoload :VRSQRTSS, 'ronin/asm/x86/instructions/vrsqrtss'
        autoload :VSCALEFPD, 'ronin/asm/x86/instructions/vscalefpd'
        autoload :VSCALEFPH, 'ronin/asm/x86/instructions/vscalefph'
        autoload :VSCALEFPS, 'ronin/asm/x86/instructions/vscalefps'
        autoload :VSCALEFSD, 'ronin/asm/x86/instructions/vscalefsd'
        autoload :VSCALEFSH, 'ronin/asm/x86/instructions/vscalefsh'
        autoload :VSCALEFSS, 'ronin/asm/x86/instructions/vscalefss'
        autoload :VSCATTERDPD, 'ronin/asm/x86/instructions/vscatterdpd'
        autoload :VSCATTERDPS, 'ronin/asm/x86/instructions/vscatterdps'
        autoload :VSCATTERPF0DPD, 'ronin/asm/x86/instructions/vscatterpf0dpd'
        autoload :VSCATTERPF0DPS, 'ronin/asm/x86/instructions/vscatterpf0dps'
        autoload :VSCATTERPF0QPD, 'ronin/asm/x86/instructions/vscatterpf0qpd'
        autoload :VSCATTERPF0QPS, 'ronin/asm/x86/instructions/vscatterpf0qps'
        autoload :VSCATTERPF1DPD, 'ronin/asm/x86/instructions/vscatterpf1dpd'
        autoload :VSCATTERPF1DPS, 'ronin/asm/x86/instructions/vscatterpf1dps'
        autoload :VSCATTERPF1QPD, 'ronin/asm/x86/instructions/vscatterpf1qpd'
        autoload :VSCATTERPF1QPS, 'ronin/asm/x86/instructions/vscatterpf1qps'
        autoload :VSCATTERQPD, 'ronin/asm/x86/instructions/vscatterqpd'
        autoload :VSCATTERQPS, 'ronin/asm/x86/instructions/vscatterqps'
        autoload :VSHA512MSG1, 'ronin/asm/x86/instructions/vsha512msg1'
        autoload :VSHA512MSG2, 'ronin/asm/x86/instructions/vsha512msg2'
        autoload :VSHA512RNDS2, 'ronin/asm/x86/instructions/vsha512rnds2'
        autoload :VSHUFF32X4, 'ronin/asm/x86/instructions/vshuff32x4'
        autoload :VSHUFF64X2, 'ronin/asm/x86/instructions/vshuff64x2'
        autoload :VSHUFI32X4, 'ronin/asm/x86/instructions/vshufi32x4'
        autoload :VSHUFI64X2, 'ronin/asm/x86/instructions/vshufi64x2'
        autoload :VSHUFPD, 'ronin/asm/x86/instructions/vshufpd'
        autoload :VSHUFPS, 'ronin/asm/x86/instructions/vshufps'
        autoload :VSM3MSG1, 'ronin/asm/x86/instructions/vsm3msg1'
        autoload :VSM3MSG2, 'ronin/asm/x86/instructions/vsm3msg2'
        autoload :VSM3RNDS2, 'ronin/asm/x86/instructions/vsm3rnds2'
        autoload :VSM4KEY4, 'ronin/asm/x86/instructions/vsm4key4'
        autoload :VSM4RNDS4, 'ronin/asm/x86/instructions/vsm4rnds4'
        autoload :VSQRTPD, 'ronin/asm/x86/instructions/vsqrtpd'
        autoload :VSQRTPH, 'ronin/asm/x86/instructions/vsqrtph'
        autoload :VSQRTPS, 'ronin/asm/x86/instructions/vsqrtps'
        autoload :VSQRTSD, 'ronin/asm/x86/instructions/vsqrtsd'
        autoload :VSQRTSH, 'ronin/asm/x86/instructions/vsqrtsh'
        autoload :VSQRTSS, 'ronin/asm/x86/instructions/vsqrtss'
        autoload :VSTMXCSR, 'ronin/asm/x86/instructions/vstmxcsr'
        autoload :VSUBPD, 'ronin/asm/x86/instructions/vsubpd'
        autoload :VSUBPH, 'ronin/asm/x86/instructions/vsubph'
        autoload :VSUBPS, 'ronin/asm/x86/instructions/vsubps'
        autoload :VSUBSD, 'ronin/asm/x86/instructions/vsubsd'
        autoload :VSUBSH, 'ronin/asm/x86/instructions/vsubsh'
        autoload :VSUBSS, 'ronin/asm/x86/instructions/vsubss'
        autoload :VTESTPD, 'ronin/asm/x86/instructions/vtestpd'
        autoload :VTESTPS, 'ronin/asm/x86/instructions/vtestps'
        autoload :VUCOMISD, 'ronin/asm/x86/instructions/vucomisd'
        autoload :VUCOMISH, 'ronin/asm/x86/instructions/vucomish'
        autoload :VUCOMISS, 'ronin/asm/x86/instructions/vucomiss'
        autoload :VUNPCKHPD, 'ronin/asm/x86/instructions/vunpckhpd'
        autoload :VUNPCKHPS, 'ronin/asm/x86/instructions/vunpckhps'
        autoload :VUNPCKLPD, 'ronin/asm/x86/instructions/vunpcklpd'
        autoload :VUNPCKLPS, 'ronin/asm/x86/instructions/vunpcklps'
        autoload :VXORPD, 'ronin/asm/x86/instructions/vxorpd'
        autoload :VXORPS, 'ronin/asm/x86/instructions/vxorps'
        autoload :VZEROALL, 'ronin/asm/x86/instructions/vzeroall'
        autoload :VZEROUPPER, 'ronin/asm/x86/instructions/vzeroupper'
        autoload :XADD, 'ronin/asm/x86/instructions/xadd'
        autoload :XCHG, 'ronin/asm/x86/instructions/xchg'
        autoload :XGETBV, 'ronin/asm/x86/instructions/xgetbv'
        autoload :XLATB, 'ronin/asm/x86/instructions/xlatb'
        autoload :XOR, 'ronin/asm/x86/instructions/xor'
        autoload :XORPD, 'ronin/asm/x86/instructions/xorpd'
        autoload :XORPS, 'ronin/asm/x86/instructions/xorps'

        # ASCII Adjust After Addition
        # @return [Ronin::ASM::X86::Instructions::AAA]
        def aaa(**kwargs) = add_instruction(Instructions::AAA,**kwargs)
        # ASCII Adjust AX Before Division
        # @return [Ronin::ASM::X86::Instructions::AAD]
        # @example
        #   aad
        #   aad 0x01
        def aad(*operands,**kwargs) = add_instruction(Instructions::AAD,*operands,**kwargs)
        # Atomically ADD
        # @return [Ronin::ASM::X86::Instructions::AADD]
        # @example
        #   aadd [eax], ebx
        def aadd(operand1,operand2,**kwargs) = add_instruction(Instructions::AADD,operand1,operand2,**kwargs)
        # ASCII Adjust AX After Multiply
        # @return [Ronin::ASM::X86::Instructions::AAM]
        # @example
        #   aam
        #   aam 0x01
        def aam(*operands,**kwargs) = add_instruction(Instructions::AAM,*operands,**kwargs)
        # Atomically AND
        # @return [Ronin::ASM::X86::Instructions::AAND]
        # @example
        #   aand [eax], ebx
        def aand(operand1,operand2,**kwargs) = add_instruction(Instructions::AAND,operand1,operand2,**kwargs)
        # ASCII Adjust AL After Subtraction
        # @return [Ronin::ASM::X86::Instructions::AAS]
        def aas(**kwargs) = add_instruction(Instructions::AAS,**kwargs)
        # Add with Carry
        # @return [Ronin::ASM::X86::Instructions::ADC]
        # @example
        #   adc al, 0x02
        #   adc al, bl
        #   adc al, [ebx]
        #   adc ax, 0x0002
        #   adc ax, 0x02
        #   adc ax, bx
        #   adc ax, [ebx]
        #   adc eax, 0x00000002
        #   adc eax, 0x02
        #   adc eax, ebx
        #   adc eax, [ebx]
        #   adc [eax], 0x02
        #   adc [eax], bl
        #   adc [eax], 0x0002
        #   adc [eax], bx
        #   adc [eax], 0x00000002
        #   adc [eax], ebx
        def adc(operand1,operand2,**kwargs) = add_instruction(Instructions::ADC,operand1,operand2,**kwargs)
        # Unsigned Integer Addition of Two Operands with Carry Flag
        # @return [Ronin::ASM::X86::Instructions::ADCX]
        # @example
        #   adcx eax, ebx
        #   adcx eax, [ebx]
        def adcx(operand1,operand2,**kwargs) = add_instruction(Instructions::ADCX,operand1,operand2,**kwargs)
        # Add
        # @return [Ronin::ASM::X86::Instructions::ADD]
        # @example
        #   add al, 0x02
        #   add al, bl
        #   add al, [ebx]
        #   add ax, 0x0002
        #   add ax, 0x02
        #   add ax, bx
        #   add ax, [ebx]
        #   add eax, 0x00000002
        #   add eax, 0x02
        #   add eax, ebx
        #   add eax, [ebx]
        #   add [eax], 0x02
        #   add [eax], bl
        #   add [eax], 0x0002
        #   add [eax], bx
        #   add [eax], 0x00000002
        #   add [eax], ebx
        def add(operand1,operand2,**kwargs) = add_instruction(Instructions::ADD,operand1,operand2,**kwargs)
        # Add Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ADDPD]
        # @example
        #   addpd xmm0, xmm1
        #   addpd xmm0, [ebx]
        def addpd(operand1,operand2,**kwargs) = add_instruction(Instructions::ADDPD,operand1,operand2,**kwargs)
        # Add Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ADDPS]
        # @example
        #   addps xmm0, xmm1
        #   addps xmm0, [ebx]
        def addps(operand1,operand2,**kwargs) = add_instruction(Instructions::ADDPS,operand1,operand2,**kwargs)
        # Add Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ADDSD]
        # @example
        #   addsd xmm0, xmm1
        #   addsd xmm0, [ebx]
        def addsd(operand1,operand2,**kwargs) = add_instruction(Instructions::ADDSD,operand1,operand2,**kwargs)
        # Add Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ADDSS]
        # @example
        #   addss xmm0, xmm1
        #   addss xmm0, [ebx]
        def addss(operand1,operand2,**kwargs) = add_instruction(Instructions::ADDSS,operand1,operand2,**kwargs)
        # Packed Double-FP Add/Subtract
        # @return [Ronin::ASM::X86::Instructions::ADDSUBPD]
        # @example
        #   addsubpd xmm0, xmm1
        #   addsubpd xmm0, [ebx]
        def addsubpd(operand1,operand2,**kwargs) = add_instruction(Instructions::ADDSUBPD,operand1,operand2,**kwargs)
        # Packed Single-FP Add/Subtract
        # @return [Ronin::ASM::X86::Instructions::ADDSUBPS]
        # @example
        #   addsubps xmm0, xmm1
        #   addsubps xmm0, [ebx]
        def addsubps(operand1,operand2,**kwargs) = add_instruction(Instructions::ADDSUBPS,operand1,operand2,**kwargs)
        # Unsigned Integer Addition of Two Operands with Overflow Flag
        # @return [Ronin::ASM::X86::Instructions::ADOX]
        # @example
        #   adox eax, ebx
        #   adox eax, [ebx]
        def adox(operand1,operand2,**kwargs) = add_instruction(Instructions::ADOX,operand1,operand2,**kwargs)
        # Perform One Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86::Instructions::AESDEC]
        # @example
        #   aesdec xmm0, xmm1
        #   aesdec xmm0, [ebx]
        def aesdec(operand1,operand2,**kwargs) = add_instruction(Instructions::AESDEC,operand1,operand2,**kwargs)
        # Perform Last Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86::Instructions::AESDECLAST]
        # @example
        #   aesdeclast xmm0, xmm1
        #   aesdeclast xmm0, [ebx]
        def aesdeclast(operand1,operand2,**kwargs) = add_instruction(Instructions::AESDECLAST,operand1,operand2,**kwargs)
        # Perform One Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86::Instructions::AESENC]
        # @example
        #   aesenc xmm0, xmm1
        #   aesenc xmm0, [ebx]
        def aesenc(operand1,operand2,**kwargs) = add_instruction(Instructions::AESENC,operand1,operand2,**kwargs)
        # Perform Last Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86::Instructions::AESENCLAST]
        # @example
        #   aesenclast xmm0, xmm1
        #   aesenclast xmm0, [ebx]
        def aesenclast(operand1,operand2,**kwargs) = add_instruction(Instructions::AESENCLAST,operand1,operand2,**kwargs)
        # Perform the AES InvMixColumn Transformation
        # @return [Ronin::ASM::X86::Instructions::AESIMC]
        # @example
        #   aesimc xmm0, xmm1
        #   aesimc xmm0, [ebx]
        def aesimc(operand1,operand2,**kwargs) = add_instruction(Instructions::AESIMC,operand1,operand2,**kwargs)
        # AES Round Key Generation Assist
        # @return [Ronin::ASM::X86::Instructions::AESKEYGENASSIST]
        # @example
        #   aeskeygenassist xmm0, xmm1, 0x03
        #   aeskeygenassist xmm0, [ebx], 0x03
        def aeskeygenassist(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::AESKEYGENASSIST,operand1,operand2,operand3,**kwargs)
        # Logical AND
        # @return [Ronin::ASM::X86::Instructions::AND]
        # @example
        #   and al, 0x02
        #   and al, bl
        #   and al, [ebx]
        #   and ax, 0x0002
        #   and ax, 0x02
        #   and ax, bx
        #   and ax, [ebx]
        #   and eax, 0x00000002
        #   and eax, 0x02
        #   and eax, ebx
        #   and eax, [ebx]
        #   and [eax], 0x02
        #   and [eax], bl
        #   and [eax], 0x0002
        #   and [eax], bx
        #   and [eax], 0x00000002
        #   and [eax], ebx
        def and(operand1,operand2,**kwargs) = add_instruction(Instructions::AND,operand1,operand2,**kwargs)
        # Logical AND NOT
        # @return [Ronin::ASM::X86::Instructions::ANDN]
        # @example
        #   andn eax, ebx, ecx
        #   andn eax, ebx, [ecx]
        def andn(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::ANDN,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ANDNPD]
        # @example
        #   andnpd xmm0, xmm1
        #   andnpd xmm0, [ebx]
        def andnpd(operand1,operand2,**kwargs) = add_instruction(Instructions::ANDNPD,operand1,operand2,**kwargs)
        # Bitwise Logical AND NOT of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ANDNPS]
        # @example
        #   andnps xmm0, xmm1
        #   andnps xmm0, [ebx]
        def andnps(operand1,operand2,**kwargs) = add_instruction(Instructions::ANDNPS,operand1,operand2,**kwargs)
        # Bitwise Logical AND of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ANDPD]
        # @example
        #   andpd xmm0, xmm1
        #   andpd xmm0, [ebx]
        def andpd(operand1,operand2,**kwargs) = add_instruction(Instructions::ANDPD,operand1,operand2,**kwargs)
        # Bitwise Logical AND of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ANDPS]
        # @example
        #   andps xmm0, xmm1
        #   andps xmm0, [ebx]
        def andps(operand1,operand2,**kwargs) = add_instruction(Instructions::ANDPS,operand1,operand2,**kwargs)
        # Atomically OR
        # @return [Ronin::ASM::X86::Instructions::AOR]
        # @example
        #   aor [eax], ebx
        def aor(operand1,operand2,**kwargs) = add_instruction(Instructions::AOR,operand1,operand2,**kwargs)
        # Atomically XOR
        # @return [Ronin::ASM::X86::Instructions::AXOR]
        # @example
        #   axor [eax], ebx
        def axor(operand1,operand2,**kwargs) = add_instruction(Instructions::AXOR,operand1,operand2,**kwargs)
        # Bit Field Extract
        # @return [Ronin::ASM::X86::Instructions::BEXTR]
        # @example
        #   bextr eax, ebx, 0x00000003
        #   bextr eax, ebx, ecx
        #   bextr eax, [ebx], 0x00000003
        #   bextr eax, [ebx], ecx
        def bextr(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::BEXTR,operand1,operand2,operand3,**kwargs)
        # Fill From Lowest Clear Bit
        # @return [Ronin::ASM::X86::Instructions::BLCFILL]
        # @example
        #   blcfill eax, ebx
        #   blcfill eax, [ebx]
        def blcfill(operand1,operand2,**kwargs) = add_instruction(Instructions::BLCFILL,operand1,operand2,**kwargs)
        # Isolate Lowest Clear Bit
        # @return [Ronin::ASM::X86::Instructions::BLCI]
        # @example
        #   blci eax, ebx
        #   blci eax, [ebx]
        def blci(operand1,operand2,**kwargs) = add_instruction(Instructions::BLCI,operand1,operand2,**kwargs)
        # Isolate Lowest Set Bit and Complement
        # @return [Ronin::ASM::X86::Instructions::BLCIC]
        # @example
        #   blcic eax, ebx
        #   blcic eax, [ebx]
        def blcic(operand1,operand2,**kwargs) = add_instruction(Instructions::BLCIC,operand1,operand2,**kwargs)
        # Mask From Lowest Clear Bit
        # @return [Ronin::ASM::X86::Instructions::BLCMSK]
        # @example
        #   blcmsk eax, ebx
        #   blcmsk eax, [ebx]
        def blcmsk(operand1,operand2,**kwargs) = add_instruction(Instructions::BLCMSK,operand1,operand2,**kwargs)
        # Set Lowest Clear Bit
        # @return [Ronin::ASM::X86::Instructions::BLCS]
        # @example
        #   blcs eax, ebx
        #   blcs eax, [ebx]
        def blcs(operand1,operand2,**kwargs) = add_instruction(Instructions::BLCS,operand1,operand2,**kwargs)
        # Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::BLENDPD]
        # @example
        #   blendpd xmm0, xmm1, 0x03
        #   blendpd xmm0, [ebx], 0x03
        def blendpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::BLENDPD,operand1,operand2,operand3,**kwargs)
        #  Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::BLENDPS]
        # @example
        #   blendps xmm0, xmm1, 0x03
        #   blendps xmm0, [ebx], 0x03
        def blendps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::BLENDPS,operand1,operand2,operand3,**kwargs)
        #  Variable Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::BLENDVPD]
        # @example
        #   blendvpd xmm0, xmm1, xmm0
        #   blendvpd xmm0, [ebx], xmm0
        def blendvpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::BLENDVPD,operand1,operand2,operand3,**kwargs)
        #  Variable Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::BLENDVPS]
        # @example
        #   blendvps xmm0, xmm1, xmm0
        #   blendvps xmm0, [ebx], xmm0
        def blendvps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::BLENDVPS,operand1,operand2,operand3,**kwargs)
        # Fill From Lowest Set Bit
        # @return [Ronin::ASM::X86::Instructions::BLSFILL]
        # @example
        #   blsfill eax, ebx
        #   blsfill eax, [ebx]
        def blsfill(operand1,operand2,**kwargs) = add_instruction(Instructions::BLSFILL,operand1,operand2,**kwargs)
        # Isolate Lowest Set Bit
        # @return [Ronin::ASM::X86::Instructions::BLSI]
        # @example
        #   blsi eax, ebx
        #   blsi eax, [ebx]
        def blsi(operand1,operand2,**kwargs) = add_instruction(Instructions::BLSI,operand1,operand2,**kwargs)
        # Isolate Lowest Set Bit and Complement
        # @return [Ronin::ASM::X86::Instructions::BLSIC]
        # @example
        #   blsic eax, ebx
        #   blsic eax, [ebx]
        def blsic(operand1,operand2,**kwargs) = add_instruction(Instructions::BLSIC,operand1,operand2,**kwargs)
        # Mask From Lowest Set Bit
        # @return [Ronin::ASM::X86::Instructions::BLSMSK]
        # @example
        #   blsmsk eax, ebx
        #   blsmsk eax, [ebx]
        def blsmsk(operand1,operand2,**kwargs) = add_instruction(Instructions::BLSMSK,operand1,operand2,**kwargs)
        # Reset Lowest Set Bit
        # @return [Ronin::ASM::X86::Instructions::BLSR]
        # @example
        #   blsr eax, ebx
        #   blsr eax, [ebx]
        def blsr(operand1,operand2,**kwargs) = add_instruction(Instructions::BLSR,operand1,operand2,**kwargs)
        # Bit Scan Forward
        # @return [Ronin::ASM::X86::Instructions::BSF]
        # @example
        #   bsf ax, bx
        #   bsf ax, [ebx]
        #   bsf eax, ebx
        #   bsf eax, [ebx]
        def bsf(operand1,operand2,**kwargs) = add_instruction(Instructions::BSF,operand1,operand2,**kwargs)
        # Bit Scan Reverse
        # @return [Ronin::ASM::X86::Instructions::BSR]
        # @example
        #   bsr ax, bx
        #   bsr ax, [ebx]
        #   bsr eax, ebx
        #   bsr eax, [ebx]
        def bsr(operand1,operand2,**kwargs) = add_instruction(Instructions::BSR,operand1,operand2,**kwargs)
        # Byte Swap
        # @return [Ronin::ASM::X86::Instructions::BSWAP]
        # @example
        #   bswap eax
        def bswap(operand,**kwargs) = add_instruction(Instructions::BSWAP,operand,**kwargs)
        # Bit Test
        # @return [Ronin::ASM::X86::Instructions::BT]
        # @example
        #   bt ax, 0x02
        #   bt ax, bx
        #   bt eax, 0x02
        #   bt eax, ebx
        #   bt [eax], 0x02
        #   bt [eax], bx
        #   bt [eax], ebx
        def bt(operand1,operand2,**kwargs) = add_instruction(Instructions::BT,operand1,operand2,**kwargs)
        # Bit Test and Complement
        # @return [Ronin::ASM::X86::Instructions::BTC]
        # @example
        #   btc ax, 0x02
        #   btc ax, bx
        #   btc eax, 0x02
        #   btc eax, ebx
        #   btc [eax], 0x02
        #   btc [eax], bx
        #   btc [eax], ebx
        def btc(operand1,operand2,**kwargs) = add_instruction(Instructions::BTC,operand1,operand2,**kwargs)
        # Bit Test and Reset
        # @return [Ronin::ASM::X86::Instructions::BTR]
        # @example
        #   btr ax, 0x02
        #   btr ax, bx
        #   btr eax, 0x02
        #   btr eax, ebx
        #   btr [eax], 0x02
        #   btr [eax], bx
        #   btr [eax], ebx
        def btr(operand1,operand2,**kwargs) = add_instruction(Instructions::BTR,operand1,operand2,**kwargs)
        # Bit Test and Set
        # @return [Ronin::ASM::X86::Instructions::BTS]
        # @example
        #   bts ax, 0x02
        #   bts ax, bx
        #   bts eax, 0x02
        #   bts eax, ebx
        #   bts [eax], 0x02
        #   bts [eax], bx
        #   bts [eax], ebx
        def bts(operand1,operand2,**kwargs) = add_instruction(Instructions::BTS,operand1,operand2,**kwargs)
        # Zero High Bits Starting with Specified Bit Position
        # @return [Ronin::ASM::X86::Instructions::BZHI]
        # @example
        #   bzhi eax, ebx, ecx
        #   bzhi eax, [ebx], ecx
        def bzhi(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::BZHI,operand1,operand2,operand3,**kwargs)
        # Call Procedure
        # @return [Ronin::ASM::X86::Instructions::CALL]
        # @example
        #   call rel32(0x10000)
        #   call eax
        #   call [eax]
        def call(operand,**kwargs) = add_instruction(Instructions::CALL,operand,**kwargs)
        # Convert Byte to Word
        # @return [Ronin::ASM::X86::Instructions::CBW]
        def cbw(**kwargs) = add_instruction(Instructions::CBW,**kwargs)
        # Convert Doubleword to Quadword
        # @return [Ronin::ASM::X86::Instructions::CDQ]
        def cdq(**kwargs) = add_instruction(Instructions::CDQ,**kwargs)
        # Clear Carry Flag
        # @return [Ronin::ASM::X86::Instructions::CLC]
        def clc(**kwargs) = add_instruction(Instructions::CLC,**kwargs)
        # Clear Direction Flag
        # @return [Ronin::ASM::X86::Instructions::CLD]
        def cld(**kwargs) = add_instruction(Instructions::CLD,**kwargs)
        # Cache Line Demote
        # @return [Ronin::ASM::X86::Instructions::CLDEMOTE]
        # @example
        #   cldemote [eax]
        def cldemote(operand,**kwargs) = add_instruction(Instructions::CLDEMOTE,operand,**kwargs)
        # Flush Cache Line
        # @return [Ronin::ASM::X86::Instructions::CLFLUSH]
        # @example
        #   clflush [eax]
        def clflush(operand,**kwargs) = add_instruction(Instructions::CLFLUSH,operand,**kwargs)
        # Flush Cache Line Optimized
        # @return [Ronin::ASM::X86::Instructions::CLFLUSHOPT]
        # @example
        #   clflushopt [eax]
        def clflushopt(operand,**kwargs) = add_instruction(Instructions::CLFLUSHOPT,operand,**kwargs)
        # Cache Line Write Back
        # @return [Ronin::ASM::X86::Instructions::CLWB]
        # @example
        #   clwb [eax]
        def clwb(operand,**kwargs) = add_instruction(Instructions::CLWB,operand,**kwargs)
        # Zero-out 64-bit Cache Line
        # @return [Ronin::ASM::X86::Instructions::CLZERO]
        def clzero(**kwargs) = add_instruction(Instructions::CLZERO,**kwargs)
        # Complement Carry Flag
        # @return [Ronin::ASM::X86::Instructions::CMC]
        def cmc(**kwargs) = add_instruction(Instructions::CMC,**kwargs)
        # Move if above (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVA]
        # @example
        #   cmova ax, bx
        #   cmova ax, [ebx]
        #   cmova eax, ebx
        #   cmova eax, [ebx]
        def cmova(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVA,operand1,operand2,**kwargs)
        # Move if above or equal (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVAE]
        # @example
        #   cmovae ax, bx
        #   cmovae ax, [ebx]
        #   cmovae eax, ebx
        #   cmovae eax, [ebx]
        def cmovae(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVAE,operand1,operand2,**kwargs)
        # Move if below (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVB]
        # @example
        #   cmovb ax, bx
        #   cmovb ax, [ebx]
        #   cmovb eax, ebx
        #   cmovb eax, [ebx]
        def cmovb(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVB,operand1,operand2,**kwargs)
        # Move if below or equal (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVBE]
        # @example
        #   cmovbe ax, bx
        #   cmovbe ax, [ebx]
        #   cmovbe eax, ebx
        #   cmovbe eax, [ebx]
        def cmovbe(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVBE,operand1,operand2,**kwargs)
        # Move if carry (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVC]
        # @example
        #   cmovc ax, bx
        #   cmovc ax, [ebx]
        #   cmovc eax, ebx
        #   cmovc eax, [ebx]
        def cmovc(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVC,operand1,operand2,**kwargs)
        # Move if equal (ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVE]
        # @example
        #   cmove ax, bx
        #   cmove ax, [ebx]
        #   cmove eax, ebx
        #   cmove eax, [ebx]
        def cmove(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVE,operand1,operand2,**kwargs)
        # Move if greater (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVG]
        # @example
        #   cmovg ax, bx
        #   cmovg ax, [ebx]
        #   cmovg eax, ebx
        #   cmovg eax, [ebx]
        def cmovg(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVG,operand1,operand2,**kwargs)
        # Move if greater or equal (SF == OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVGE]
        # @example
        #   cmovge ax, bx
        #   cmovge ax, [ebx]
        #   cmovge eax, ebx
        #   cmovge eax, [ebx]
        def cmovge(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVGE,operand1,operand2,**kwargs)
        # Move if less (SF != OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVL]
        # @example
        #   cmovl ax, bx
        #   cmovl ax, [ebx]
        #   cmovl eax, ebx
        #   cmovl eax, [ebx]
        def cmovl(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVL,operand1,operand2,**kwargs)
        # Move if less or equal (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVLE]
        # @example
        #   cmovle ax, bx
        #   cmovle ax, [ebx]
        #   cmovle eax, ebx
        #   cmovle eax, [ebx]
        def cmovle(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVLE,operand1,operand2,**kwargs)
        # Move if not above (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVNA]
        # @example
        #   cmovna ax, bx
        #   cmovna ax, [ebx]
        #   cmovna eax, ebx
        #   cmovna eax, [ebx]
        def cmovna(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNA,operand1,operand2,**kwargs)
        # Move if not above or equal (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVNAE]
        # @example
        #   cmovnae ax, bx
        #   cmovnae ax, [ebx]
        #   cmovnae eax, ebx
        #   cmovnae eax, [ebx]
        def cmovnae(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNAE,operand1,operand2,**kwargs)
        # Move if not below (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNB]
        # @example
        #   cmovnb ax, bx
        #   cmovnb ax, [ebx]
        #   cmovnb eax, ebx
        #   cmovnb eax, [ebx]
        def cmovnb(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNB,operand1,operand2,**kwargs)
        # Move if not below or equal (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNBE]
        # @example
        #   cmovnbe ax, bx
        #   cmovnbe ax, [ebx]
        #   cmovnbe eax, ebx
        #   cmovnbe eax, [ebx]
        def cmovnbe(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNBE,operand1,operand2,**kwargs)
        # Move if not carry (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNC]
        # @example
        #   cmovnc ax, bx
        #   cmovnc ax, [ebx]
        #   cmovnc eax, ebx
        #   cmovnc eax, [ebx]
        def cmovnc(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNC,operand1,operand2,**kwargs)
        # Move if not equal (ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNE]
        # @example
        #   cmovne ax, bx
        #   cmovne ax, [ebx]
        #   cmovne eax, ebx
        #   cmovne eax, [ebx]
        def cmovne(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNE,operand1,operand2,**kwargs)
        # Move if not greater (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVNG]
        # @example
        #   cmovng ax, bx
        #   cmovng ax, [ebx]
        #   cmovng eax, ebx
        #   cmovng eax, [ebx]
        def cmovng(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNG,operand1,operand2,**kwargs)
        # Move if not greater or equal (SF != OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVNGE]
        # @example
        #   cmovnge ax, bx
        #   cmovnge ax, [ebx]
        #   cmovnge eax, ebx
        #   cmovnge eax, [ebx]
        def cmovnge(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNGE,operand1,operand2,**kwargs)
        # Move if not less (SF == OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVNL]
        # @example
        #   cmovnl ax, bx
        #   cmovnl ax, [ebx]
        #   cmovnl eax, ebx
        #   cmovnl eax, [ebx]
        def cmovnl(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNL,operand1,operand2,**kwargs)
        # Move if not less or equal (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86::Instructions::CMOVNLE]
        # @example
        #   cmovnle ax, bx
        #   cmovnle ax, [ebx]
        #   cmovnle eax, ebx
        #   cmovnle eax, [ebx]
        def cmovnle(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNLE,operand1,operand2,**kwargs)
        # Move if not overflow (OF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNO]
        # @example
        #   cmovno ax, bx
        #   cmovno ax, [ebx]
        #   cmovno eax, ebx
        #   cmovno eax, [ebx]
        def cmovno(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNO,operand1,operand2,**kwargs)
        # Move if not parity (PF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNP]
        # @example
        #   cmovnp ax, bx
        #   cmovnp ax, [ebx]
        #   cmovnp eax, ebx
        #   cmovnp eax, [ebx]
        def cmovnp(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNP,operand1,operand2,**kwargs)
        # Move if not sign (SF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNS]
        # @example
        #   cmovns ax, bx
        #   cmovns ax, [ebx]
        #   cmovns eax, ebx
        #   cmovns eax, [ebx]
        def cmovns(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNS,operand1,operand2,**kwargs)
        # Move if not zero (ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVNZ]
        # @example
        #   cmovnz ax, bx
        #   cmovnz ax, [ebx]
        #   cmovnz eax, ebx
        #   cmovnz eax, [ebx]
        def cmovnz(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVNZ,operand1,operand2,**kwargs)
        # Move if overflow (OF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVO]
        # @example
        #   cmovo ax, bx
        #   cmovo ax, [ebx]
        #   cmovo eax, ebx
        #   cmovo eax, [ebx]
        def cmovo(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVO,operand1,operand2,**kwargs)
        # Move if parity (PF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVP]
        # @example
        #   cmovp ax, bx
        #   cmovp ax, [ebx]
        #   cmovp eax, ebx
        #   cmovp eax, [ebx]
        def cmovp(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVP,operand1,operand2,**kwargs)
        # Move if parity even (PF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVPE]
        # @example
        #   cmovpe ax, bx
        #   cmovpe ax, [ebx]
        #   cmovpe eax, ebx
        #   cmovpe eax, [ebx]
        def cmovpe(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVPE,operand1,operand2,**kwargs)
        # Move if parity odd (PF == 0)
        # @return [Ronin::ASM::X86::Instructions::CMOVPO]
        # @example
        #   cmovpo ax, bx
        #   cmovpo ax, [ebx]
        #   cmovpo eax, ebx
        #   cmovpo eax, [ebx]
        def cmovpo(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVPO,operand1,operand2,**kwargs)
        # Move if sign (SF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVS]
        # @example
        #   cmovs ax, bx
        #   cmovs ax, [ebx]
        #   cmovs eax, ebx
        #   cmovs eax, [ebx]
        def cmovs(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVS,operand1,operand2,**kwargs)
        # Move if zero (ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::CMOVZ]
        # @example
        #   cmovz ax, bx
        #   cmovz ax, [ebx]
        #   cmovz eax, ebx
        #   cmovz eax, [ebx]
        def cmovz(operand1,operand2,**kwargs) = add_instruction(Instructions::CMOVZ,operand1,operand2,**kwargs)
        # Compare Two Operands
        # @return [Ronin::ASM::X86::Instructions::CMP]
        # @example
        #   cmp al, 0x02
        #   cmp al, bl
        #   cmp al, [ebx]
        #   cmp ax, 0x0002
        #   cmp ax, 0x02
        #   cmp ax, bx
        #   cmp ax, [ebx]
        #   cmp eax, 0x00000002
        #   cmp eax, 0x02
        #   cmp eax, ebx
        #   cmp eax, [ebx]
        #   cmp [eax], 0x02
        #   cmp [eax], bl
        #   cmp [eax], 0x0002
        #   cmp [eax], bx
        #   cmp [eax], 0x00000002
        #   cmp [eax], ebx
        def cmp(operand1,operand2,**kwargs) = add_instruction(Instructions::CMP,operand1,operand2,**kwargs)
        # Compare Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::CMPPD]
        # @example
        #   cmppd xmm0, xmm1, 0x03
        #   cmppd xmm0, [ebx], 0x03
        def cmppd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::CMPPD,operand1,operand2,operand3,**kwargs)
        # Compare Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::CMPPS]
        # @example
        #   cmpps xmm0, xmm1, 0x03
        #   cmpps xmm0, [ebx], 0x03
        def cmpps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::CMPPS,operand1,operand2,operand3,**kwargs)
        # Compare Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::CMPSD]
        # @example
        #   cmpsd xmm0, xmm1, 0x03
        #   cmpsd xmm0, [ebx], 0x03
        def cmpsd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::CMPSD,operand1,operand2,operand3,**kwargs)
        # Compare Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::CMPSS]
        # @example
        #   cmpss xmm0, xmm1, 0x03
        #   cmpss xmm0, [ebx], 0x03
        def cmpss(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::CMPSS,operand1,operand2,operand3,**kwargs)
        # Compare and Exchange
        # @return [Ronin::ASM::X86::Instructions::CMPXCHG]
        # @example
        #   cmpxchg al, bl
        #   cmpxchg ax, bx
        #   cmpxchg eax, ebx
        #   cmpxchg [eax], bl
        #   cmpxchg [eax], bx
        #   cmpxchg [eax], ebx
        def cmpxchg(operand1,operand2,**kwargs) = add_instruction(Instructions::CMPXCHG,operand1,operand2,**kwargs)
        # Compare and Exchange 8 Bytes
        # @return [Ronin::ASM::X86::Instructions::CMPXCHG8B]
        # @example
        #   cmpxchg8b [eax]
        def cmpxchg8b(operand,**kwargs) = add_instruction(Instructions::CMPXCHG8B,operand,**kwargs)
        # Compare Scalar Ordered Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::COMISD]
        # @example
        #   comisd xmm0, xmm1
        #   comisd xmm0, [ebx]
        def comisd(operand1,operand2,**kwargs) = add_instruction(Instructions::COMISD,operand1,operand2,**kwargs)
        # Compare Scalar Ordered Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::COMISS]
        # @example
        #   comiss xmm0, xmm1
        #   comiss xmm0, [ebx]
        def comiss(operand1,operand2,**kwargs) = add_instruction(Instructions::COMISS,operand1,operand2,**kwargs)
        # CPU Identification
        # @return [Ronin::ASM::X86::Instructions::CPUID]
        def cpuid(**kwargs) = add_instruction(Instructions::CPUID,**kwargs)
        # Accumulate CRC32 Value
        # @return [Ronin::ASM::X86::Instructions::CRC32]
        # @example
        #   crc32 eax, bl
        #   crc32 eax, bx
        #   crc32 eax, ebx
        #   crc32 eax, [ebx]
        def crc32(operand1,operand2,**kwargs) = add_instruction(Instructions::CRC32,operand1,operand2,**kwargs)
        # Convert Packed Dword Integers to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::CVTDQ2PD]
        # @example
        #   cvtdq2pd xmm0, xmm1
        #   cvtdq2pd xmm0, [ebx]
        def cvtdq2pd(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTDQ2PD,operand1,operand2,**kwargs)
        # Convert Packed Dword Integers to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::CVTDQ2PS]
        # @example
        #   cvtdq2ps xmm0, xmm1
        #   cvtdq2ps xmm0, [ebx]
        def cvtdq2ps(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTDQ2PS,operand1,operand2,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTPD2DQ]
        # @example
        #   cvtpd2dq xmm0, xmm1
        #   cvtpd2dq xmm0, [ebx]
        def cvtpd2dq(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPD2DQ,operand1,operand2,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTPD2PI]
        # @example
        #   cvtpd2pi mm0, xmm1
        #   cvtpd2pi mm0, [ebx]
        def cvtpd2pi(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPD2PI,operand1,operand2,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::CVTPD2PS]
        # @example
        #   cvtpd2ps xmm0, xmm1
        #   cvtpd2ps xmm0, [ebx]
        def cvtpd2ps(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPD2PS,operand1,operand2,**kwargs)
        # Convert Packed Dword Integers to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::CVTPI2PD]
        # @example
        #   cvtpi2pd xmm0, mm1
        #   cvtpi2pd xmm0, [ebx]
        def cvtpi2pd(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPI2PD,operand1,operand2,**kwargs)
        # Convert Packed Dword Integers to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::CVTPI2PS]
        # @example
        #   cvtpi2ps xmm0, mm1
        #   cvtpi2ps xmm0, [ebx]
        def cvtpi2ps(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPI2PS,operand1,operand2,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTPS2DQ]
        # @example
        #   cvtps2dq xmm0, xmm1
        #   cvtps2dq xmm0, [ebx]
        def cvtps2dq(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPS2DQ,operand1,operand2,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::CVTPS2PD]
        # @example
        #   cvtps2pd xmm0, xmm1
        #   cvtps2pd xmm0, [ebx]
        def cvtps2pd(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPS2PD,operand1,operand2,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTPS2PI]
        # @example
        #   cvtps2pi mm0, xmm1
        #   cvtps2pi mm0, [ebx]
        def cvtps2pi(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTPS2PI,operand1,operand2,**kwargs)
        # Convert Scalar Double-Precision FP Value to Integer
        # @return [Ronin::ASM::X86::Instructions::CVTSD2SI]
        # @example
        #   cvtsd2si eax, xmm1
        #   cvtsd2si eax, [ebx]
        def cvtsd2si(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTSD2SI,operand1,operand2,**kwargs)
        # Convert Scalar Double-Precision FP Value to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::CVTSD2SS]
        # @example
        #   cvtsd2ss xmm0, xmm1
        #   cvtsd2ss xmm0, [ebx]
        def cvtsd2ss(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTSD2SS,operand1,operand2,**kwargs)
        # Convert Dword Integer to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::CVTSI2SD]
        # @example
        #   cvtsi2sd xmm0, ebx
        #   cvtsi2sd xmm0, [ebx]
        def cvtsi2sd(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTSI2SD,operand1,operand2,**kwargs)
        # Convert Dword Integer to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::CVTSI2SS]
        # @example
        #   cvtsi2ss xmm0, ebx
        #   cvtsi2ss xmm0, [ebx]
        def cvtsi2ss(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTSI2SS,operand1,operand2,**kwargs)
        # Convert Scalar Single-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::CVTSS2SD]
        # @example
        #   cvtss2sd xmm0, xmm1
        #   cvtss2sd xmm0, [ebx]
        def cvtss2sd(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTSS2SD,operand1,operand2,**kwargs)
        # Convert Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86::Instructions::CVTSS2SI]
        # @example
        #   cvtss2si eax, xmm1
        #   cvtss2si eax, [ebx]
        def cvtss2si(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTSS2SI,operand1,operand2,**kwargs)
        # Convert with Truncation Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTTPD2DQ]
        # @example
        #   cvttpd2dq xmm0, xmm1
        #   cvttpd2dq xmm0, [ebx]
        def cvttpd2dq(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTTPD2DQ,operand1,operand2,**kwargs)
        # Convert with Truncation Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTTPD2PI]
        # @example
        #   cvttpd2pi mm0, xmm1
        #   cvttpd2pi mm0, [ebx]
        def cvttpd2pi(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTTPD2PI,operand1,operand2,**kwargs)
        # Convert with Truncation Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTTPS2DQ]
        # @example
        #   cvttps2dq xmm0, xmm1
        #   cvttps2dq xmm0, [ebx]
        def cvttps2dq(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTTPS2DQ,operand1,operand2,**kwargs)
        # Convert with Truncation Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::CVTTPS2PI]
        # @example
        #   cvttps2pi mm0, xmm1
        #   cvttps2pi mm0, [ebx]
        def cvttps2pi(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTTPS2PI,operand1,operand2,**kwargs)
        # Convert with Truncation Scalar Double-Precision FP Value to Signed Integer
        # @return [Ronin::ASM::X86::Instructions::CVTTSD2SI]
        # @example
        #   cvttsd2si eax, xmm1
        #   cvttsd2si eax, [ebx]
        def cvttsd2si(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTTSD2SI,operand1,operand2,**kwargs)
        # Convert with Truncation Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86::Instructions::CVTTSS2SI]
        # @example
        #   cvttss2si eax, xmm1
        #   cvttss2si eax, [ebx]
        def cvttss2si(operand1,operand2,**kwargs) = add_instruction(Instructions::CVTTSS2SI,operand1,operand2,**kwargs)
        # Convert Word to Doubleword
        # @return [Ronin::ASM::X86::Instructions::CWD]
        def cwd(**kwargs) = add_instruction(Instructions::CWD,**kwargs)
        # Convert Word to Doubleword
        # @return [Ronin::ASM::X86::Instructions::CWDE]
        def cwde(**kwargs) = add_instruction(Instructions::CWDE,**kwargs)
        # Decimal Adjust AL after Addition
        # @return [Ronin::ASM::X86::Instructions::DAA]
        def daa(**kwargs) = add_instruction(Instructions::DAA,**kwargs)
        # Decimal Adjust AL after Subtraction
        # @return [Ronin::ASM::X86::Instructions::DAS]
        def das(**kwargs) = add_instruction(Instructions::DAS,**kwargs)
        # Decrement by 1
        # @return [Ronin::ASM::X86::Instructions::DEC]
        # @example
        #   dec al
        #   dec ax
        #   dec eax
        #   dec [eax]
        def dec(operand,**kwargs) = add_instruction(Instructions::DEC,operand,**kwargs)
        # Unsigned Divide
        # @return [Ronin::ASM::X86::Instructions::DIV]
        # @example
        #   div al
        #   div ax
        #   div eax
        #   div [eax]
        def div(operand,**kwargs) = add_instruction(Instructions::DIV,operand,**kwargs)
        # Divide Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::DIVPD]
        # @example
        #   divpd xmm0, xmm1
        #   divpd xmm0, [ebx]
        def divpd(operand1,operand2,**kwargs) = add_instruction(Instructions::DIVPD,operand1,operand2,**kwargs)
        # Divide Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::DIVPS]
        # @example
        #   divps xmm0, xmm1
        #   divps xmm0, [ebx]
        def divps(operand1,operand2,**kwargs) = add_instruction(Instructions::DIVPS,operand1,operand2,**kwargs)
        # Divide Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::DIVSD]
        # @example
        #   divsd xmm0, xmm1
        #   divsd xmm0, [ebx]
        def divsd(operand1,operand2,**kwargs) = add_instruction(Instructions::DIVSD,operand1,operand2,**kwargs)
        # Divide Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::DIVSS]
        # @example
        #   divss xmm0, xmm1
        #   divss xmm0, [ebx]
        def divss(operand1,operand2,**kwargs) = add_instruction(Instructions::DIVSS,operand1,operand2,**kwargs)
        # Dot Product of Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::DPPD]
        # @example
        #   dppd xmm0, xmm1, 0x03
        #   dppd xmm0, [ebx], 0x03
        def dppd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::DPPD,operand1,operand2,operand3,**kwargs)
        # Dot Product of Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::DPPS]
        # @example
        #   dpps xmm0, xmm1, 0x03
        #   dpps xmm0, [ebx], 0x03
        def dpps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::DPPS,operand1,operand2,operand3,**kwargs)
        # Exit MMX State
        # @return [Ronin::ASM::X86::Instructions::EMMS]
        def emms(**kwargs) = add_instruction(Instructions::EMMS,**kwargs)
        # END (terminate) BRanch in 32-bit mode
        # @return [Ronin::ASM::X86::Instructions::ENDBR32]
        def endbr32(**kwargs) = add_instruction(Instructions::ENDBR32,**kwargs)
        # Extract Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::EXTRACTPS]
        # @example
        #   extractps eax, xmm1, 0x03
        #   extractps [eax], xmm1, 0x03
        def extractps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::EXTRACTPS,operand1,operand2,operand3,**kwargs)
        # Extract Field
        # @return [Ronin::ASM::X86::Instructions::EXTRQ]
        # @example
        #   extrq xmm0, xmm1
        #   extrq xmm0, 0x02, 0x03
        def extrq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::EXTRQ,operand1,operand2,*operands,**kwargs)
        # Fast Exit Multimedia State
        # @return [Ronin::ASM::X86::Instructions::FEMMS]
        def femms(**kwargs) = add_instruction(Instructions::FEMMS,**kwargs)
        # Galois Field (2^8) Affine Inverse Transformation
        # @return [Ronin::ASM::X86::Instructions::GF2P8AFFINEINVQB]
        # @example
        #   gf2p8affineinvqb xmm0, xmm1, 0x03
        #   gf2p8affineinvqb xmm0, [ebx], 0x03
        def gf2p8affineinvqb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::GF2P8AFFINEINVQB,operand1,operand2,operand3,**kwargs)
        # Galois Field (2^8) Affine Transformation
        # @return [Ronin::ASM::X86::Instructions::GF2P8AFFINEQB]
        # @example
        #   gf2p8affineqb xmm0, xmm1, 0x03
        #   gf2p8affineqb xmm0, [ebx], 0x03
        def gf2p8affineqb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::GF2P8AFFINEQB,operand1,operand2,operand3,**kwargs)
        # Galois Field Multiply Bytes
        # @return [Ronin::ASM::X86::Instructions::GF2P8MULB]
        # @example
        #   gf2p8mulb xmm0, xmm1
        #   gf2p8mulb xmm0, [ebx]
        def gf2p8mulb(operand1,operand2,**kwargs) = add_instruction(Instructions::GF2P8MULB,operand1,operand2,**kwargs)
        # Packed Double-FP Horizontal Add
        # @return [Ronin::ASM::X86::Instructions::HADDPD]
        # @example
        #   haddpd xmm0, xmm1
        #   haddpd xmm0, [ebx]
        def haddpd(operand1,operand2,**kwargs) = add_instruction(Instructions::HADDPD,operand1,operand2,**kwargs)
        # Packed Single-FP Horizontal Add
        # @return [Ronin::ASM::X86::Instructions::HADDPS]
        # @example
        #   haddps xmm0, xmm1
        #   haddps xmm0, [ebx]
        def haddps(operand1,operand2,**kwargs) = add_instruction(Instructions::HADDPS,operand1,operand2,**kwargs)
        # Packed Double-FP Horizontal Subtract
        # @return [Ronin::ASM::X86::Instructions::HSUBPD]
        # @example
        #   hsubpd xmm0, xmm1
        #   hsubpd xmm0, [ebx]
        def hsubpd(operand1,operand2,**kwargs) = add_instruction(Instructions::HSUBPD,operand1,operand2,**kwargs)
        # Packed Single-FP Horizontal Subtract
        # @return [Ronin::ASM::X86::Instructions::HSUBPS]
        # @example
        #   hsubps xmm0, xmm1
        #   hsubps xmm0, [ebx]
        def hsubps(operand1,operand2,**kwargs) = add_instruction(Instructions::HSUBPS,operand1,operand2,**kwargs)
        # Signed Divide
        # @return [Ronin::ASM::X86::Instructions::IDIV]
        # @example
        #   idiv al
        #   idiv ax
        #   idiv eax
        #   idiv [eax]
        def idiv(operand,**kwargs) = add_instruction(Instructions::IDIV,operand,**kwargs)
        # Signed Multiply
        # @return [Ronin::ASM::X86::Instructions::IMUL]
        # @example
        #   imul al
        #   imul ax
        #   imul eax
        #   imul [eax]
        #   imul ax, bx
        #   imul ax, [ebx]
        #   imul eax, ebx
        #   imul eax, [ebx]
        #   imul ax, bx, 0x03
        #   imul ax, bx, 0x0003
        #   imul ax, [ebx], 0x03
        #   imul ax, [ebx], 0x0003
        #   imul eax, ebx, 0x03
        #   imul eax, ebx, 0x00000003
        #   imul eax, [ebx], 0x03
        #   imul eax, [ebx], 0x00000003
        def imul(operand1,*operands,**kwargs) = add_instruction(Instructions::IMUL,operand1,*operands,**kwargs)
        # Increment by 1
        # @return [Ronin::ASM::X86::Instructions::INC]
        # @example
        #   inc al
        #   inc ax
        #   inc eax
        #   inc [eax]
        def inc(operand,**kwargs) = add_instruction(Instructions::INC,operand,**kwargs)
        # Insert Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::INSERTPS]
        # @example
        #   insertps xmm0, xmm1, 0x03
        #   insertps xmm0, [ebx], 0x03
        def insertps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::INSERTPS,operand1,operand2,operand3,**kwargs)
        # Insert Field
        # @return [Ronin::ASM::X86::Instructions::INSERTQ]
        # @example
        #   insertq xmm0, xmm1
        #   insertq xmm0, xmm1, 0x03, 0x04
        def insertq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::INSERTQ,operand1,operand2,*operands,**kwargs)
        # Call to Interrupt Procedure
        # @return [Ronin::ASM::X86::Instructions::INT]
        # @example
        #   int 0x01
        def int(operand,**kwargs) = add_instruction(Instructions::INT,operand,**kwargs)
        # Interrupt 3 (debug trap)
        # @return [Ronin::ASM::X86::Instructions::INT3]
        def int3(**kwargs) = add_instruction(Instructions::INT3,**kwargs)
        # Interrupt 4 If Overflow Flag is Set
        # @return [Ronin::ASM::X86::Instructions::INTO]
        def into(**kwargs) = add_instruction(Instructions::INTO,**kwargs)
        # Jump if above (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::JA]
        # @example
        #   ja rel8(-4)
        #   ja rel32(0x10000)
        def ja(operand,**kwargs) = add_instruction(Instructions::JA,operand,**kwargs)
        # Jump if above or equal (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::JAE]
        # @example
        #   jae rel8(-4)
        #   jae rel32(0x10000)
        def jae(operand,**kwargs) = add_instruction(Instructions::JAE,operand,**kwargs)
        # Jump if below (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::JB]
        # @example
        #   jb rel8(-4)
        #   jb rel32(0x10000)
        def jb(operand,**kwargs) = add_instruction(Instructions::JB,operand,**kwargs)
        # Jump if below or equal (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::JBE]
        # @example
        #   jbe rel8(-4)
        #   jbe rel32(0x10000)
        def jbe(operand,**kwargs) = add_instruction(Instructions::JBE,operand,**kwargs)
        # Jump if carry (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::JC]
        # @example
        #   jc rel8(-4)
        #   jc rel32(0x10000)
        def jc(operand,**kwargs) = add_instruction(Instructions::JC,operand,**kwargs)
        # Jump if equal (ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::JE]
        # @example
        #   je rel8(-4)
        #   je rel32(0x10000)
        def je(operand,**kwargs) = add_instruction(Instructions::JE,operand,**kwargs)
        # Jump if ECX register is 0
        # @return [Ronin::ASM::X86::Instructions::JECXZ]
        # @example
        #   jecxz rel8(-4)
        def jecxz(operand,**kwargs) = add_instruction(Instructions::JECXZ,operand,**kwargs)
        # Jump if greater (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86::Instructions::JG]
        # @example
        #   jg rel8(-4)
        #   jg rel32(0x10000)
        def jg(operand,**kwargs) = add_instruction(Instructions::JG,operand,**kwargs)
        # Jump if greater or equal (SF == OF)
        # @return [Ronin::ASM::X86::Instructions::JGE]
        # @example
        #   jge rel8(-4)
        #   jge rel32(0x10000)
        def jge(operand,**kwargs) = add_instruction(Instructions::JGE,operand,**kwargs)
        # Jump if less (SF != OF)
        # @return [Ronin::ASM::X86::Instructions::JL]
        # @example
        #   jl rel8(-4)
        #   jl rel32(0x10000)
        def jl(operand,**kwargs) = add_instruction(Instructions::JL,operand,**kwargs)
        # Jump if less or equal (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86::Instructions::JLE]
        # @example
        #   jle rel8(-4)
        #   jle rel32(0x10000)
        def jle(operand,**kwargs) = add_instruction(Instructions::JLE,operand,**kwargs)
        # Jump Unconditionally
        # @return [Ronin::ASM::X86::Instructions::JMP]
        # @example
        #   jmp rel8(-4)
        #   jmp rel32(0x10000)
        #   jmp eax
        #   jmp [eax]
        def jmp(operand,**kwargs) = add_instruction(Instructions::JMP,operand,**kwargs)
        # Jump if not above (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::JNA]
        # @example
        #   jna rel8(-4)
        #   jna rel32(0x10000)
        def jna(operand,**kwargs) = add_instruction(Instructions::JNA,operand,**kwargs)
        # Jump if not above or equal (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::JNAE]
        # @example
        #   jnae rel8(-4)
        #   jnae rel32(0x10000)
        def jnae(operand,**kwargs) = add_instruction(Instructions::JNAE,operand,**kwargs)
        # Jump if not below (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNB]
        # @example
        #   jnb rel8(-4)
        #   jnb rel32(0x10000)
        def jnb(operand,**kwargs) = add_instruction(Instructions::JNB,operand,**kwargs)
        # Jump if not below or equal (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNBE]
        # @example
        #   jnbe rel8(-4)
        #   jnbe rel32(0x10000)
        def jnbe(operand,**kwargs) = add_instruction(Instructions::JNBE,operand,**kwargs)
        # Jump if not carry (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNC]
        # @example
        #   jnc rel8(-4)
        #   jnc rel32(0x10000)
        def jnc(operand,**kwargs) = add_instruction(Instructions::JNC,operand,**kwargs)
        # Jump if not equal (ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNE]
        # @example
        #   jne rel8(-4)
        #   jne rel32(0x10000)
        def jne(operand,**kwargs) = add_instruction(Instructions::JNE,operand,**kwargs)
        # Jump if not greater (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86::Instructions::JNG]
        # @example
        #   jng rel8(-4)
        #   jng rel32(0x10000)
        def jng(operand,**kwargs) = add_instruction(Instructions::JNG,operand,**kwargs)
        # Jump if not greater or equal (SF != OF)
        # @return [Ronin::ASM::X86::Instructions::JNGE]
        # @example
        #   jnge rel8(-4)
        #   jnge rel32(0x10000)
        def jnge(operand,**kwargs) = add_instruction(Instructions::JNGE,operand,**kwargs)
        # Jump if not less (SF == OF)
        # @return [Ronin::ASM::X86::Instructions::JNL]
        # @example
        #   jnl rel8(-4)
        #   jnl rel32(0x10000)
        def jnl(operand,**kwargs) = add_instruction(Instructions::JNL,operand,**kwargs)
        # Jump if not less or equal (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86::Instructions::JNLE]
        # @example
        #   jnle rel8(-4)
        #   jnle rel32(0x10000)
        def jnle(operand,**kwargs) = add_instruction(Instructions::JNLE,operand,**kwargs)
        # Jump if not overflow (OF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNO]
        # @example
        #   jno rel8(-4)
        #   jno rel32(0x10000)
        def jno(operand,**kwargs) = add_instruction(Instructions::JNO,operand,**kwargs)
        # Jump if not parity (PF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNP]
        # @example
        #   jnp rel8(-4)
        #   jnp rel32(0x10000)
        def jnp(operand,**kwargs) = add_instruction(Instructions::JNP,operand,**kwargs)
        # Jump if not sign (SF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNS]
        # @example
        #   jns rel8(-4)
        #   jns rel32(0x10000)
        def jns(operand,**kwargs) = add_instruction(Instructions::JNS,operand,**kwargs)
        # Jump if not zero (ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::JNZ]
        # @example
        #   jnz rel8(-4)
        #   jnz rel32(0x10000)
        def jnz(operand,**kwargs) = add_instruction(Instructions::JNZ,operand,**kwargs)
        # Jump if overflow (OF == 1)
        # @return [Ronin::ASM::X86::Instructions::JO]
        # @example
        #   jo rel8(-4)
        #   jo rel32(0x10000)
        def jo(operand,**kwargs) = add_instruction(Instructions::JO,operand,**kwargs)
        # Jump if parity (PF == 1)
        # @return [Ronin::ASM::X86::Instructions::JP]
        # @example
        #   jp rel8(-4)
        #   jp rel32(0x10000)
        def jp(operand,**kwargs) = add_instruction(Instructions::JP,operand,**kwargs)
        # Jump if parity even (PF == 1)
        # @return [Ronin::ASM::X86::Instructions::JPE]
        # @example
        #   jpe rel8(-4)
        #   jpe rel32(0x10000)
        def jpe(operand,**kwargs) = add_instruction(Instructions::JPE,operand,**kwargs)
        # Jump if parity odd (PF == 0)
        # @return [Ronin::ASM::X86::Instructions::JPO]
        # @example
        #   jpo rel8(-4)
        #   jpo rel32(0x10000)
        def jpo(operand,**kwargs) = add_instruction(Instructions::JPO,operand,**kwargs)
        # Jump if sign (SF == 1)
        # @return [Ronin::ASM::X86::Instructions::JS]
        # @example
        #   js rel8(-4)
        #   js rel32(0x10000)
        def js(operand,**kwargs) = add_instruction(Instructions::JS,operand,**kwargs)
        # Jump if zero (ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::JZ]
        # @example
        #   jz rel8(-4)
        #   jz rel32(0x10000)
        def jz(operand,**kwargs) = add_instruction(Instructions::JZ,operand,**kwargs)
        # ADD Two 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KADDB]
        # @example
        #   kaddb k1, k2, k3
        def kaddb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KADDB,operand1,operand2,operand3,**kwargs)
        # ADD Two 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KADDD]
        # @example
        #   kaddd k1, k2, k3
        def kaddd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KADDD,operand1,operand2,operand3,**kwargs)
        # ADD Two 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KADDQ]
        # @example
        #   kaddq k1, k2, k3
        def kaddq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KADDQ,operand1,operand2,operand3,**kwargs)
        # ADD Two 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KADDW]
        # @example
        #   kaddw k1, k2, k3
        def kaddw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KADDW,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDB]
        # @example
        #   kandb k1, k2, k3
        def kandb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDB,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDD]
        # @example
        #   kandd k1, k2, k3
        def kandd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDNB]
        # @example
        #   kandnb k1, k2, k3
        def kandnb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDNB,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDND]
        # @example
        #   kandnd k1, k2, k3
        def kandnd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDND,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDNQ]
        # @example
        #   kandnq k1, k2, k3
        def kandnq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDNQ,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDNW]
        # @example
        #   kandnw k1, k2, k3
        def kandnw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDNW,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDQ]
        # @example
        #   kandq k1, k2, k3
        def kandq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDQ,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KANDW]
        # @example
        #   kandw k1, k2, k3
        def kandw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KANDW,operand1,operand2,operand3,**kwargs)
        # Move 8-bit Mask
        # @return [Ronin::ASM::X86::Instructions::KMOVB]
        # @example
        #   kmovb k1, k2
        #   kmovb k1, ebx
        #   kmovb k1, [ebx]
        #   kmovb eax, k2
        #   kmovb [eax], k2
        def kmovb(operand1,operand2,**kwargs) = add_instruction(Instructions::KMOVB,operand1,operand2,**kwargs)
        # Move 32-bit Mask
        # @return [Ronin::ASM::X86::Instructions::KMOVD]
        # @example
        #   kmovd k1, k2
        #   kmovd k1, ebx
        #   kmovd k1, [ebx]
        #   kmovd eax, k2
        #   kmovd [eax], k2
        def kmovd(operand1,operand2,**kwargs) = add_instruction(Instructions::KMOVD,operand1,operand2,**kwargs)
        # Move 64-bit Mask
        # @return [Ronin::ASM::X86::Instructions::KMOVQ]
        # @example
        #   kmovq k1, k2
        #   kmovq k1, [ebx]
        #   kmovq [eax], k2
        def kmovq(operand1,operand2,**kwargs) = add_instruction(Instructions::KMOVQ,operand1,operand2,**kwargs)
        # Move 16-bit Mask
        # @return [Ronin::ASM::X86::Instructions::KMOVW]
        # @example
        #   kmovw k1, k2
        #   kmovw k1, ebx
        #   kmovw k1, [ebx]
        #   kmovw eax, k2
        #   kmovw [eax], k2
        def kmovw(operand1,operand2,**kwargs) = add_instruction(Instructions::KMOVW,operand1,operand2,**kwargs)
        # NOT 8-bit Mask Register
        # @return [Ronin::ASM::X86::Instructions::KNOTB]
        # @example
        #   knotb k1, k2
        def knotb(operand1,operand2,**kwargs) = add_instruction(Instructions::KNOTB,operand1,operand2,**kwargs)
        # NOT 32-bit Mask Register
        # @return [Ronin::ASM::X86::Instructions::KNOTD]
        # @example
        #   knotd k1, k2
        def knotd(operand1,operand2,**kwargs) = add_instruction(Instructions::KNOTD,operand1,operand2,**kwargs)
        # NOT 64-bit Mask Register
        # @return [Ronin::ASM::X86::Instructions::KNOTQ]
        # @example
        #   knotq k1, k2
        def knotq(operand1,operand2,**kwargs) = add_instruction(Instructions::KNOTQ,operand1,operand2,**kwargs)
        # NOT 16-bit Mask Register
        # @return [Ronin::ASM::X86::Instructions::KNOTW]
        # @example
        #   knotw k1, k2
        def knotw(operand1,operand2,**kwargs) = add_instruction(Instructions::KNOTW,operand1,operand2,**kwargs)
        # Bitwise Logical OR 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KORB]
        # @example
        #   korb k1, k2, k3
        def korb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KORB,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical OR 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KORD]
        # @example
        #   kord k1, k2, k3
        def kord(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KORD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical OR 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KORQ]
        # @example
        #   korq k1, k2, k3
        def korq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KORQ,operand1,operand2,operand3,**kwargs)
        # OR 8-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KORTESTB]
        # @example
        #   kortestb k1, k2
        def kortestb(operand1,operand2,**kwargs) = add_instruction(Instructions::KORTESTB,operand1,operand2,**kwargs)
        # OR 32-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KORTESTD]
        # @example
        #   kortestd k1, k2
        def kortestd(operand1,operand2,**kwargs) = add_instruction(Instructions::KORTESTD,operand1,operand2,**kwargs)
        # OR 64-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KORTESTQ]
        # @example
        #   kortestq k1, k2
        def kortestq(operand1,operand2,**kwargs) = add_instruction(Instructions::KORTESTQ,operand1,operand2,**kwargs)
        # OR 16-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KORTESTW]
        # @example
        #   kortestw k1, k2
        def kortestw(operand1,operand2,**kwargs) = add_instruction(Instructions::KORTESTW,operand1,operand2,**kwargs)
        # Bitwise Logical OR 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KORW]
        # @example
        #   korw k1, k2, k3
        def korw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KORW,operand1,operand2,operand3,**kwargs)
        # Shift Left 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTLB]
        # @example
        #   kshiftlb k1, k2, 0x03
        def kshiftlb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTLB,operand1,operand2,operand3,**kwargs)
        # Shift Left 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTLD]
        # @example
        #   kshiftld k1, k2, 0x03
        def kshiftld(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTLD,operand1,operand2,operand3,**kwargs)
        # Shift Left 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTLQ]
        # @example
        #   kshiftlq k1, k2, 0x03
        def kshiftlq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTLQ,operand1,operand2,operand3,**kwargs)
        # Shift Left 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTLW]
        # @example
        #   kshiftlw k1, k2, 0x03
        def kshiftlw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTLW,operand1,operand2,operand3,**kwargs)
        # Shift Right 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTRB]
        # @example
        #   kshiftrb k1, k2, 0x03
        def kshiftrb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTRB,operand1,operand2,operand3,**kwargs)
        # Shift Right 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTRD]
        # @example
        #   kshiftrd k1, k2, 0x03
        def kshiftrd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTRD,operand1,operand2,operand3,**kwargs)
        # Shift Right 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTRQ]
        # @example
        #   kshiftrq k1, k2, 0x03
        def kshiftrq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTRQ,operand1,operand2,operand3,**kwargs)
        # Shift Right 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KSHIFTRW]
        # @example
        #   kshiftrw k1, k2, 0x03
        def kshiftrw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KSHIFTRW,operand1,operand2,operand3,**kwargs)
        # Bit Test 8-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KTESTB]
        # @example
        #   ktestb k1, k2
        def ktestb(operand1,operand2,**kwargs) = add_instruction(Instructions::KTESTB,operand1,operand2,**kwargs)
        # Bit Test 32-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KTESTD]
        # @example
        #   ktestd k1, k2
        def ktestd(operand1,operand2,**kwargs) = add_instruction(Instructions::KTESTD,operand1,operand2,**kwargs)
        # Bit Test 64-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KTESTQ]
        # @example
        #   ktestq k1, k2
        def ktestq(operand1,operand2,**kwargs) = add_instruction(Instructions::KTESTQ,operand1,operand2,**kwargs)
        # Bit Test 16-bit Masks and Set Flags
        # @return [Ronin::ASM::X86::Instructions::KTESTW]
        # @example
        #   ktestw k1, k2
        def ktestw(operand1,operand2,**kwargs) = add_instruction(Instructions::KTESTW,operand1,operand2,**kwargs)
        # Unpack and Interleave 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KUNPCKBW]
        # @example
        #   kunpckbw k1, k2, k3
        def kunpckbw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KUNPCKBW,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KUNPCKDQ]
        # @example
        #   kunpckdq k1, k2, k3
        def kunpckdq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KUNPCKDQ,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KUNPCKWD]
        # @example
        #   kunpckwd k1, k2, k3
        def kunpckwd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KUNPCKWD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XNOR 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXNORB]
        # @example
        #   kxnorb k1, k2, k3
        def kxnorb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXNORB,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XNOR 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXNORD]
        # @example
        #   kxnord k1, k2, k3
        def kxnord(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXNORD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XNOR 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXNORQ]
        # @example
        #   kxnorq k1, k2, k3
        def kxnorq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXNORQ,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XNOR 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXNORW]
        # @example
        #   kxnorw k1, k2, k3
        def kxnorw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXNORW,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XOR 8-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXORB]
        # @example
        #   kxorb k1, k2, k3
        def kxorb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXORB,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XOR 32-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXORD]
        # @example
        #   kxord k1, k2, k3
        def kxord(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXORD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XOR 64-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXORQ]
        # @example
        #   kxorq k1, k2, k3
        def kxorq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXORQ,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XOR 16-bit Masks
        # @return [Ronin::ASM::X86::Instructions::KXORW]
        # @example
        #   kxorw k1, k2, k3
        def kxorw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::KXORW,operand1,operand2,operand3,**kwargs)
        # Load AH from Flags
        # @return [Ronin::ASM::X86::Instructions::LAHF]
        def lahf(**kwargs) = add_instruction(Instructions::LAHF,**kwargs)
        # Load Unaligned Integer 128 Bits
        # @return [Ronin::ASM::X86::Instructions::LDDQU]
        # @example
        #   lddqu xmm0, [ebx]
        def lddqu(operand1,operand2,**kwargs) = add_instruction(Instructions::LDDQU,operand1,operand2,**kwargs)
        # Load MXCSR Register
        # @return [Ronin::ASM::X86::Instructions::LDMXCSR]
        # @example
        #   ldmxcsr [eax]
        def ldmxcsr(operand,**kwargs) = add_instruction(Instructions::LDMXCSR,operand,**kwargs)
        # Load Effective Address
        # @return [Ronin::ASM::X86::Instructions::LEA]
        # @example
        #   lea ax, [ebx]
        #   lea eax, [ebx]
        def lea(operand1,operand2,**kwargs) = add_instruction(Instructions::LEA,operand1,operand2,**kwargs)
        # Load Fence
        # @return [Ronin::ASM::X86::Instructions::LFENCE]
        def lfence(**kwargs) = add_instruction(Instructions::LFENCE,**kwargs)
        # Count the Number of Leading Zero Bits
        # @return [Ronin::ASM::X86::Instructions::LZCNT]
        # @example
        #   lzcnt ax, bx
        #   lzcnt ax, [ebx]
        #   lzcnt eax, ebx
        #   lzcnt eax, [ebx]
        def lzcnt(operand1,operand2,**kwargs) = add_instruction(Instructions::LZCNT,operand1,operand2,**kwargs)
        # Store Selected Bytes of Double Quadword
        # @return [Ronin::ASM::X86::Instructions::MASKMOVDQU]
        # @example
        #   maskmovdqu xmm0, xmm1
        def maskmovdqu(operand1,operand2,**kwargs) = add_instruction(Instructions::MASKMOVDQU,operand1,operand2,**kwargs)
        # Store Selected Bytes of Quadword
        # @return [Ronin::ASM::X86::Instructions::MASKMOVQ]
        # @example
        #   maskmovq mm0, mm1
        def maskmovq(operand1,operand2,**kwargs) = add_instruction(Instructions::MASKMOVQ,operand1,operand2,**kwargs)
        # Return Maximum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MAXPD]
        # @example
        #   maxpd xmm0, xmm1
        #   maxpd xmm0, [ebx]
        def maxpd(operand1,operand2,**kwargs) = add_instruction(Instructions::MAXPD,operand1,operand2,**kwargs)
        # Return Maximum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MAXPS]
        # @example
        #   maxps xmm0, xmm1
        #   maxps xmm0, [ebx]
        def maxps(operand1,operand2,**kwargs) = add_instruction(Instructions::MAXPS,operand1,operand2,**kwargs)
        # Return Maximum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::MAXSD]
        # @example
        #   maxsd xmm0, xmm1
        #   maxsd xmm0, [ebx]
        def maxsd(operand1,operand2,**kwargs) = add_instruction(Instructions::MAXSD,operand1,operand2,**kwargs)
        # Return Maximum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::MAXSS]
        # @example
        #   maxss xmm0, xmm1
        #   maxss xmm0, [ebx]
        def maxss(operand1,operand2,**kwargs) = add_instruction(Instructions::MAXSS,operand1,operand2,**kwargs)
        # Memory COMMIT
        # @return [Ronin::ASM::X86::Instructions::MCOMMIT]
        def mcommit(**kwargs) = add_instruction(Instructions::MCOMMIT,**kwargs)
        # Memory Fence
        # @return [Ronin::ASM::X86::Instructions::MFENCE]
        def mfence(**kwargs) = add_instruction(Instructions::MFENCE,**kwargs)
        # Return Minimum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MINPD]
        # @example
        #   minpd xmm0, xmm1
        #   minpd xmm0, [ebx]
        def minpd(operand1,operand2,**kwargs) = add_instruction(Instructions::MINPD,operand1,operand2,**kwargs)
        # Return Minimum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MINPS]
        # @example
        #   minps xmm0, xmm1
        #   minps xmm0, [ebx]
        def minps(operand1,operand2,**kwargs) = add_instruction(Instructions::MINPS,operand1,operand2,**kwargs)
        # Return Minimum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::MINSD]
        # @example
        #   minsd xmm0, xmm1
        #   minsd xmm0, [ebx]
        def minsd(operand1,operand2,**kwargs) = add_instruction(Instructions::MINSD,operand1,operand2,**kwargs)
        # Return Minimum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::MINSS]
        # @example
        #   minss xmm0, xmm1
        #   minss xmm0, [ebx]
        def minss(operand1,operand2,**kwargs) = add_instruction(Instructions::MINSS,operand1,operand2,**kwargs)
        # Monitor a Linear Address Range
        # @return [Ronin::ASM::X86::Instructions::MONITOR]
        def monitor(**kwargs) = add_instruction(Instructions::MONITOR,**kwargs)
        # Monitor a Linear Address Range with Timeout
        # @return [Ronin::ASM::X86::Instructions::MONITORX]
        def monitorx(**kwargs) = add_instruction(Instructions::MONITORX,**kwargs)
        # Move
        # @return [Ronin::ASM::X86::Instructions::MOV]
        # @example
        #   mov al, 0x02
        #   mov al, bl
        #   mov al, [ebx]
        #   mov ax, 0x0002
        #   mov ax, bx
        #   mov ax, [ebx]
        #   mov eax, moffset32(0x10000)
        #   mov eax, 0x00000002
        #   mov eax, ebx
        #   mov eax, [ebx]
        #   mov [eax], 0x02
        #   mov [eax], bl
        #   mov [eax], 0x0002
        #   mov [eax], bx
        #   mov moffset32(0x10000), eax
        #   mov [eax], 0x00000002
        #   mov [eax], ebx
        def mov(operand1,operand2,**kwargs) = add_instruction(Instructions::MOV,operand1,operand2,**kwargs)
        # Move Aligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MOVAPD]
        # @example
        #   movapd xmm0, xmm1
        #   movapd xmm0, [ebx]
        #   movapd [eax], xmm1
        def movapd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVAPD,operand1,operand2,**kwargs)
        # Move Aligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MOVAPS]
        # @example
        #   movaps xmm0, xmm1
        #   movaps xmm0, [ebx]
        #   movaps [eax], xmm1
        def movaps(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVAPS,operand1,operand2,**kwargs)
        # Move Data After Swapping Bytes
        # @return [Ronin::ASM::X86::Instructions::MOVBE]
        # @example
        #   movbe ax, [ebx]
        #   movbe eax, [ebx]
        #   movbe [eax], bx
        #   movbe [eax], ebx
        def movbe(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVBE,operand1,operand2,**kwargs)
        # Move Doubleword
        # @return [Ronin::ASM::X86::Instructions::MOVD]
        # @example
        #   movd eax, mm1
        #   movd eax, xmm1
        #   movd mm0, ebx
        #   movd mm0, [ebx]
        #   movd xmm0, ebx
        #   movd xmm0, [ebx]
        #   movd [eax], mm1
        #   movd [eax], xmm1
        def movd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVD,operand1,operand2,**kwargs)
        # Move One Double-FP and Duplicate
        # @return [Ronin::ASM::X86::Instructions::MOVDDUP]
        # @example
        #   movddup xmm0, xmm1
        #   movddup xmm0, [ebx]
        def movddup(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVDDUP,operand1,operand2,**kwargs)
        # MOVe to DIRect store 64 Bytes
        # @return [Ronin::ASM::X86::Instructions::MOVDIR64B]
        # @example
        #   movdir64b eax, [ebx]
        def movdir64b(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVDIR64B,operand1,operand2,**kwargs)
        # MOVe to DIRect store Integer
        # @return [Ronin::ASM::X86::Instructions::MOVDIRI]
        # @example
        #   movdiri [eax], ebx
        def movdiri(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVDIRI,operand1,operand2,**kwargs)
        # Move Quadword from XMM to MMX Technology Register
        # @return [Ronin::ASM::X86::Instructions::MOVDQ2Q]
        # @example
        #   movdq2q mm0, xmm1
        def movdq2q(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVDQ2Q,operand1,operand2,**kwargs)
        # Move Aligned Double Quadword
        # @return [Ronin::ASM::X86::Instructions::MOVDQA]
        # @example
        #   movdqa xmm0, xmm1
        #   movdqa xmm0, [ebx]
        #   movdqa [eax], xmm1
        def movdqa(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVDQA,operand1,operand2,**kwargs)
        # Move Unaligned Double Quadword
        # @return [Ronin::ASM::X86::Instructions::MOVDQU]
        # @example
        #   movdqu xmm0, xmm1
        #   movdqu xmm0, [ebx]
        #   movdqu [eax], xmm1
        def movdqu(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVDQU,operand1,operand2,**kwargs)
        # Move Packed Single-Precision Floating-Point Values High to Low
        # @return [Ronin::ASM::X86::Instructions::MOVHLPS]
        # @example
        #   movhlps xmm0, xmm1
        def movhlps(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVHLPS,operand1,operand2,**kwargs)
        # Move High Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::MOVHPD]
        # @example
        #   movhpd xmm0, [ebx]
        #   movhpd [eax], xmm1
        def movhpd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVHPD,operand1,operand2,**kwargs)
        # Move High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MOVHPS]
        # @example
        #   movhps xmm0, [ebx]
        #   movhps [eax], xmm1
        def movhps(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVHPS,operand1,operand2,**kwargs)
        # Move Packed Single-Precision Floating-Point Values Low to High
        # @return [Ronin::ASM::X86::Instructions::MOVLHPS]
        # @example
        #   movlhps xmm0, xmm1
        def movlhps(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVLHPS,operand1,operand2,**kwargs)
        # Move Low Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::MOVLPD]
        # @example
        #   movlpd xmm0, [ebx]
        #   movlpd [eax], xmm1
        def movlpd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVLPD,operand1,operand2,**kwargs)
        # Move Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MOVLPS]
        # @example
        #   movlps xmm0, [ebx]
        #   movlps [eax], xmm1
        def movlps(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVLPS,operand1,operand2,**kwargs)
        # Extract Packed Double-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86::Instructions::MOVMSKPD]
        # @example
        #   movmskpd eax, xmm1
        def movmskpd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVMSKPD,operand1,operand2,**kwargs)
        # Extract Packed Single-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86::Instructions::MOVMSKPS]
        # @example
        #   movmskps eax, xmm1
        def movmskps(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVMSKPS,operand1,operand2,**kwargs)
        # Store Double Quadword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTDQ]
        # @example
        #   movntdq [eax], xmm1
        def movntdq(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTDQ,operand1,operand2,**kwargs)
        # Load Double Quadword Non-Temporal Aligned Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTDQA]
        # @example
        #   movntdqa xmm0, [ebx]
        def movntdqa(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTDQA,operand1,operand2,**kwargs)
        # Store Doubleword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTI]
        # @example
        #   movnti [eax], ebx
        def movnti(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTI,operand1,operand2,**kwargs)
        # Store Packed Double-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTPD]
        # @example
        #   movntpd [eax], xmm1
        def movntpd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTPD,operand1,operand2,**kwargs)
        # Store Packed Single-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTPS]
        # @example
        #   movntps [eax], xmm1
        def movntps(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTPS,operand1,operand2,**kwargs)
        # Store of Quadword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTQ]
        # @example
        #   movntq [eax], mm1
        def movntq(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTQ,operand1,operand2,**kwargs)
        # Store Scalar Double-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTSD]
        # @example
        #   movntsd [eax], xmm1
        def movntsd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTSD,operand1,operand2,**kwargs)
        # Store Scalar Single-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::MOVNTSS]
        # @example
        #   movntss [eax], xmm1
        def movntss(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVNTSS,operand1,operand2,**kwargs)
        # Move Quadword
        # @return [Ronin::ASM::X86::Instructions::MOVQ]
        # @example
        #   movq mm0, mm1
        #   movq mm0, [ebx]
        #   movq xmm0, xmm1
        #   movq xmm0, [ebx]
        #   movq [eax], mm1
        #   movq [eax], xmm1
        def movq(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVQ,operand1,operand2,**kwargs)
        # Move Quadword from MMX Technology to XMM Register
        # @return [Ronin::ASM::X86::Instructions::MOVQ2DQ]
        # @example
        #   movq2dq xmm0, mm1
        def movq2dq(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVQ2DQ,operand1,operand2,**kwargs)
        # Move Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::MOVSD]
        # @example
        #   movsd xmm0, xmm1
        #   movsd xmm0, [ebx]
        #   movsd [eax], xmm1
        def movsd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVSD,operand1,operand2,**kwargs)
        # Move Packed Single-FP High and Duplicate
        # @return [Ronin::ASM::X86::Instructions::MOVSHDUP]
        # @example
        #   movshdup xmm0, xmm1
        #   movshdup xmm0, [ebx]
        def movshdup(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVSHDUP,operand1,operand2,**kwargs)
        # Move Packed Single-FP Low and Duplicate
        # @return [Ronin::ASM::X86::Instructions::MOVSLDUP]
        # @example
        #   movsldup xmm0, xmm1
        #   movsldup xmm0, [ebx]
        def movsldup(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVSLDUP,operand1,operand2,**kwargs)
        # Move Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MOVSS]
        # @example
        #   movss xmm0, xmm1
        #   movss xmm0, [ebx]
        #   movss [eax], xmm1
        def movss(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVSS,operand1,operand2,**kwargs)
        # Move with Sign-Extension
        # @return [Ronin::ASM::X86::Instructions::MOVSX]
        # @example
        #   movsx ax, bl
        #   movsx ax, [ebx]
        #   movsx eax, bl
        #   movsx eax, bx
        #   movsx eax, [ebx]
        def movsx(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVSX,operand1,operand2,**kwargs)
        # Move Unaligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MOVUPD]
        # @example
        #   movupd xmm0, xmm1
        #   movupd xmm0, [ebx]
        #   movupd [eax], xmm1
        def movupd(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVUPD,operand1,operand2,**kwargs)
        # Move Unaligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MOVUPS]
        # @example
        #   movups xmm0, xmm1
        #   movups xmm0, [ebx]
        #   movups [eax], xmm1
        def movups(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVUPS,operand1,operand2,**kwargs)
        # Move with Zero-Extend
        # @return [Ronin::ASM::X86::Instructions::MOVZX]
        # @example
        #   movzx ax, bl
        #   movzx ax, [ebx]
        #   movzx eax, bl
        #   movzx eax, bx
        #   movzx eax, [ebx]
        def movzx(operand1,operand2,**kwargs) = add_instruction(Instructions::MOVZX,operand1,operand2,**kwargs)
        # Compute Multiple Packed Sums of Absolute Difference
        # @return [Ronin::ASM::X86::Instructions::MPSADBW]
        # @example
        #   mpsadbw xmm0, xmm1, 0x03
        #   mpsadbw xmm0, [ebx], 0x03
        def mpsadbw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::MPSADBW,operand1,operand2,operand3,**kwargs)
        # Unsigned Multiply
        # @return [Ronin::ASM::X86::Instructions::MUL]
        # @example
        #   mul al
        #   mul ax
        #   mul eax
        #   mul [eax]
        def mul(operand,**kwargs) = add_instruction(Instructions::MUL,operand,**kwargs)
        # Multiply Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MULPD]
        # @example
        #   mulpd xmm0, xmm1
        #   mulpd xmm0, [ebx]
        def mulpd(operand1,operand2,**kwargs) = add_instruction(Instructions::MULPD,operand1,operand2,**kwargs)
        # Multiply Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MULPS]
        # @example
        #   mulps xmm0, xmm1
        #   mulps xmm0, [ebx]
        def mulps(operand1,operand2,**kwargs) = add_instruction(Instructions::MULPS,operand1,operand2,**kwargs)
        # Multiply Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MULSD]
        # @example
        #   mulsd xmm0, xmm1
        #   mulsd xmm0, [ebx]
        def mulsd(operand1,operand2,**kwargs) = add_instruction(Instructions::MULSD,operand1,operand2,**kwargs)
        # Multiply Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::MULSS]
        # @example
        #   mulss xmm0, xmm1
        #   mulss xmm0, [ebx]
        def mulss(operand1,operand2,**kwargs) = add_instruction(Instructions::MULSS,operand1,operand2,**kwargs)
        # Unsigned Multiply Without Affecting Flags
        # @return [Ronin::ASM::X86::Instructions::MULX]
        # @example
        #   mulx eax, ebx, ecx
        #   mulx eax, ebx, [ecx]
        def mulx(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::MULX,operand1,operand2,operand3,**kwargs)
        # Monitor Wait
        # @return [Ronin::ASM::X86::Instructions::MWAIT]
        def mwait(**kwargs) = add_instruction(Instructions::MWAIT,**kwargs)
        # Monitor Wait with Timeout
        # @return [Ronin::ASM::X86::Instructions::MWAITX]
        def mwaitx(**kwargs) = add_instruction(Instructions::MWAITX,**kwargs)
        # Two's Complement Negation
        # @return [Ronin::ASM::X86::Instructions::NEG]
        # @example
        #   neg al
        #   neg ax
        #   neg eax
        #   neg [eax]
        def neg(operand,**kwargs) = add_instruction(Instructions::NEG,operand,**kwargs)
        # No Operation
        # @return [Ronin::ASM::X86::Instructions::NOP]
        def nop(**kwargs) = add_instruction(Instructions::NOP,**kwargs)
        # One's Complement Negation
        # @return [Ronin::ASM::X86::Instructions::NOT]
        # @example
        #   not al
        #   not ax
        #   not eax
        #   not [eax]
        def not(operand,**kwargs) = add_instruction(Instructions::NOT,operand,**kwargs)
        # Logical Inclusive OR
        # @return [Ronin::ASM::X86::Instructions::OR]
        # @example
        #   or al, 0x02
        #   or al, bl
        #   or al, [ebx]
        #   or ax, 0x0002
        #   or ax, 0x02
        #   or ax, bx
        #   or ax, [ebx]
        #   or eax, 0x00000002
        #   or eax, 0x02
        #   or eax, ebx
        #   or eax, [ebx]
        #   or [eax], 0x02
        #   or [eax], bl
        #   or [eax], 0x0002
        #   or [eax], bx
        #   or [eax], 0x00000002
        #   or [eax], ebx
        def or(operand1,operand2,**kwargs) = add_instruction(Instructions::OR,operand1,operand2,**kwargs)
        # Bitwise Logical OR of Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ORPD]
        # @example
        #   orpd xmm0, xmm1
        #   orpd xmm0, [ebx]
        def orpd(operand1,operand2,**kwargs) = add_instruction(Instructions::ORPD,operand1,operand2,**kwargs)
        # Bitwise Logical OR of Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ORPS]
        # @example
        #   orps xmm0, xmm1
        #   orps xmm0, [ebx]
        def orps(operand1,operand2,**kwargs) = add_instruction(Instructions::ORPS,operand1,operand2,**kwargs)
        # Packed Absolute Value of Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PABSB]
        # @example
        #   pabsb mm0, mm1
        #   pabsb mm0, [ebx]
        #   pabsb xmm0, xmm1
        #   pabsb xmm0, [ebx]
        def pabsb(operand1,operand2,**kwargs) = add_instruction(Instructions::PABSB,operand1,operand2,**kwargs)
        # Packed Absolute Value of Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PABSD]
        # @example
        #   pabsd mm0, mm1
        #   pabsd mm0, [ebx]
        #   pabsd xmm0, xmm1
        #   pabsd xmm0, [ebx]
        def pabsd(operand1,operand2,**kwargs) = add_instruction(Instructions::PABSD,operand1,operand2,**kwargs)
        # Packed Absolute Value of Word Integers
        # @return [Ronin::ASM::X86::Instructions::PABSW]
        # @example
        #   pabsw mm0, mm1
        #   pabsw mm0, [ebx]
        #   pabsw xmm0, xmm1
        #   pabsw xmm0, [ebx]
        def pabsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PABSW,operand1,operand2,**kwargs)
        # Pack Doublewords into Words with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PACKSSDW]
        # @example
        #   packssdw mm0, mm1
        #   packssdw mm0, [ebx]
        #   packssdw xmm0, xmm1
        #   packssdw xmm0, [ebx]
        def packssdw(operand1,operand2,**kwargs) = add_instruction(Instructions::PACKSSDW,operand1,operand2,**kwargs)
        # Pack Words into Bytes with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PACKSSWB]
        # @example
        #   packsswb mm0, mm1
        #   packsswb mm0, [ebx]
        #   packsswb xmm0, xmm1
        #   packsswb xmm0, [ebx]
        def packsswb(operand1,operand2,**kwargs) = add_instruction(Instructions::PACKSSWB,operand1,operand2,**kwargs)
        # Pack Doublewords into Words with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::PACKUSDW]
        # @example
        #   packusdw xmm0, xmm1
        #   packusdw xmm0, [ebx]
        def packusdw(operand1,operand2,**kwargs) = add_instruction(Instructions::PACKUSDW,operand1,operand2,**kwargs)
        # Pack Words into Bytes with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::PACKUSWB]
        # @example
        #   packuswb mm0, mm1
        #   packuswb mm0, [ebx]
        #   packuswb xmm0, xmm1
        #   packuswb xmm0, [ebx]
        def packuswb(operand1,operand2,**kwargs) = add_instruction(Instructions::PACKUSWB,operand1,operand2,**kwargs)
        # Add Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PADDB]
        # @example
        #   paddb mm0, mm1
        #   paddb mm0, [ebx]
        #   paddb xmm0, xmm1
        #   paddb xmm0, [ebx]
        def paddb(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDB,operand1,operand2,**kwargs)
        # Add Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PADDD]
        # @example
        #   paddd mm0, mm1
        #   paddd mm0, [ebx]
        #   paddd xmm0, xmm1
        #   paddd xmm0, [ebx]
        def paddd(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDD,operand1,operand2,**kwargs)
        # Add Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::PADDQ]
        # @example
        #   paddq mm0, mm1
        #   paddq mm0, [ebx]
        #   paddq xmm0, xmm1
        #   paddq xmm0, [ebx]
        def paddq(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDQ,operand1,operand2,**kwargs)
        # Add Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PADDSB]
        # @example
        #   paddsb mm0, mm1
        #   paddsb mm0, [ebx]
        #   paddsb xmm0, xmm1
        #   paddsb xmm0, [ebx]
        def paddsb(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDSB,operand1,operand2,**kwargs)
        # Add Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PADDSW]
        # @example
        #   paddsw mm0, mm1
        #   paddsw mm0, [ebx]
        #   paddsw xmm0, xmm1
        #   paddsw xmm0, [ebx]
        def paddsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDSW,operand1,operand2,**kwargs)
        # Add Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::PADDUSB]
        # @example
        #   paddusb mm0, mm1
        #   paddusb mm0, [ebx]
        #   paddusb xmm0, xmm1
        #   paddusb xmm0, [ebx]
        def paddusb(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDUSB,operand1,operand2,**kwargs)
        # Add Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::PADDUSW]
        # @example
        #   paddusw mm0, mm1
        #   paddusw mm0, [ebx]
        #   paddusw xmm0, xmm1
        #   paddusw xmm0, [ebx]
        def paddusw(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDUSW,operand1,operand2,**kwargs)
        # Add Packed Word Integers
        # @return [Ronin::ASM::X86::Instructions::PADDW]
        # @example
        #   paddw mm0, mm1
        #   paddw mm0, [ebx]
        #   paddw xmm0, xmm1
        #   paddw xmm0, [ebx]
        def paddw(operand1,operand2,**kwargs) = add_instruction(Instructions::PADDW,operand1,operand2,**kwargs)
        # Packed Align Right
        # @return [Ronin::ASM::X86::Instructions::PALIGNR]
        # @example
        #   palignr mm0, mm1, 0x03
        #   palignr mm0, [ebx], 0x03
        #   palignr xmm0, xmm1, 0x03
        #   palignr xmm0, [ebx], 0x03
        def palignr(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PALIGNR,operand1,operand2,operand3,**kwargs)
        # Packed Bitwise Logical AND
        # @return [Ronin::ASM::X86::Instructions::PAND]
        # @example
        #   pand mm0, mm1
        #   pand mm0, [ebx]
        #   pand xmm0, xmm1
        #   pand xmm0, [ebx]
        def pand(operand1,operand2,**kwargs) = add_instruction(Instructions::PAND,operand1,operand2,**kwargs)
        # Packed Bitwise Logical AND NOT
        # @return [Ronin::ASM::X86::Instructions::PANDN]
        # @example
        #   pandn mm0, mm1
        #   pandn mm0, [ebx]
        #   pandn xmm0, xmm1
        #   pandn xmm0, [ebx]
        def pandn(operand1,operand2,**kwargs) = add_instruction(Instructions::PANDN,operand1,operand2,**kwargs)
        # Spin Loop Hint
        # @return [Ronin::ASM::X86::Instructions::PAUSE]
        def pause(**kwargs) = add_instruction(Instructions::PAUSE,**kwargs)
        # Average Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PAVGB]
        # @example
        #   pavgb mm0, mm1
        #   pavgb mm0, [ebx]
        #   pavgb xmm0, xmm1
        #   pavgb xmm0, [ebx]
        def pavgb(operand1,operand2,**kwargs) = add_instruction(Instructions::PAVGB,operand1,operand2,**kwargs)
        # Average Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PAVGUSB]
        # @example
        #   pavgusb mm0, mm1
        #   pavgusb mm0, [ebx]
        def pavgusb(operand1,operand2,**kwargs) = add_instruction(Instructions::PAVGUSB,operand1,operand2,**kwargs)
        # Average Packed Word Integers
        # @return [Ronin::ASM::X86::Instructions::PAVGW]
        # @example
        #   pavgw mm0, mm1
        #   pavgw mm0, [ebx]
        #   pavgw xmm0, xmm1
        #   pavgw xmm0, [ebx]
        def pavgw(operand1,operand2,**kwargs) = add_instruction(Instructions::PAVGW,operand1,operand2,**kwargs)
        # Variable Blend Packed Bytes
        # @return [Ronin::ASM::X86::Instructions::PBLENDVB]
        # @example
        #   pblendvb xmm0, xmm1, xmm0
        #   pblendvb xmm0, [ebx], xmm0
        def pblendvb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PBLENDVB,operand1,operand2,operand3,**kwargs)
        # Blend Packed Words
        # @return [Ronin::ASM::X86::Instructions::PBLENDW]
        # @example
        #   pblendw xmm0, xmm1, 0x03
        #   pblendw xmm0, [ebx], 0x03
        def pblendw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PBLENDW,operand1,operand2,operand3,**kwargs)
        # Carry-Less Quadword Multiplication
        # @return [Ronin::ASM::X86::Instructions::PCLMULQDQ]
        # @example
        #   pclmulqdq xmm0, xmm1, 0x03
        #   pclmulqdq xmm0, [ebx], 0x03
        def pclmulqdq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PCLMULQDQ,operand1,operand2,operand3,**kwargs)
        # Compare Packed Byte Data for Equality
        # @return [Ronin::ASM::X86::Instructions::PCMPEQB]
        # @example
        #   pcmpeqb mm0, mm1
        #   pcmpeqb mm0, [ebx]
        #   pcmpeqb xmm0, xmm1
        #   pcmpeqb xmm0, [ebx]
        def pcmpeqb(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPEQB,operand1,operand2,**kwargs)
        # Compare Packed Doubleword Data for Equality
        # @return [Ronin::ASM::X86::Instructions::PCMPEQD]
        # @example
        #   pcmpeqd mm0, mm1
        #   pcmpeqd mm0, [ebx]
        #   pcmpeqd xmm0, xmm1
        #   pcmpeqd xmm0, [ebx]
        def pcmpeqd(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPEQD,operand1,operand2,**kwargs)
        # Compare Packed Quadword Data for Equality
        # @return [Ronin::ASM::X86::Instructions::PCMPEQQ]
        # @example
        #   pcmpeqq xmm0, xmm1
        #   pcmpeqq xmm0, [ebx]
        def pcmpeqq(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPEQQ,operand1,operand2,**kwargs)
        # Compare Packed Word Data for Equality
        # @return [Ronin::ASM::X86::Instructions::PCMPEQW]
        # @example
        #   pcmpeqw mm0, mm1
        #   pcmpeqw mm0, [ebx]
        #   pcmpeqw xmm0, xmm1
        #   pcmpeqw xmm0, [ebx]
        def pcmpeqw(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPEQW,operand1,operand2,**kwargs)
        # Packed Compare Explicit Length Strings, Return Index
        # @return [Ronin::ASM::X86::Instructions::PCMPESTRI]
        # @example
        #   pcmpestri xmm0, xmm1, 0x03
        #   pcmpestri xmm0, [ebx], 0x03
        def pcmpestri(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PCMPESTRI,operand1,operand2,operand3,**kwargs)
        # Packed Compare Explicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86::Instructions::PCMPESTRM]
        # @example
        #   pcmpestrm xmm0, xmm1, 0x03
        #   pcmpestrm xmm0, [ebx], 0x03
        def pcmpestrm(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PCMPESTRM,operand1,operand2,operand3,**kwargs)
        # Compare Packed Signed Byte Integers for Greater Than
        # @return [Ronin::ASM::X86::Instructions::PCMPGTB]
        # @example
        #   pcmpgtb mm0, mm1
        #   pcmpgtb mm0, [ebx]
        #   pcmpgtb xmm0, xmm1
        #   pcmpgtb xmm0, [ebx]
        def pcmpgtb(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPGTB,operand1,operand2,**kwargs)
        # Compare Packed Signed Doubleword Integers for Greater Than
        # @return [Ronin::ASM::X86::Instructions::PCMPGTD]
        # @example
        #   pcmpgtd mm0, mm1
        #   pcmpgtd mm0, [ebx]
        #   pcmpgtd xmm0, xmm1
        #   pcmpgtd xmm0, [ebx]
        def pcmpgtd(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPGTD,operand1,operand2,**kwargs)
        # Compare Packed Data for Greater Than
        # @return [Ronin::ASM::X86::Instructions::PCMPGTQ]
        # @example
        #   pcmpgtq xmm0, xmm1
        #   pcmpgtq xmm0, [ebx]
        def pcmpgtq(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPGTQ,operand1,operand2,**kwargs)
        # Compare Packed Signed Word Integers for Greater Than
        # @return [Ronin::ASM::X86::Instructions::PCMPGTW]
        # @example
        #   pcmpgtw mm0, mm1
        #   pcmpgtw mm0, [ebx]
        #   pcmpgtw xmm0, xmm1
        #   pcmpgtw xmm0, [ebx]
        def pcmpgtw(operand1,operand2,**kwargs) = add_instruction(Instructions::PCMPGTW,operand1,operand2,**kwargs)
        # Packed Compare Implicit Length Strings, Return Index
        # @return [Ronin::ASM::X86::Instructions::PCMPISTRI]
        # @example
        #   pcmpistri xmm0, xmm1, 0x03
        #   pcmpistri xmm0, [ebx], 0x03
        def pcmpistri(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PCMPISTRI,operand1,operand2,operand3,**kwargs)
        # Packed Compare Implicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86::Instructions::PCMPISTRM]
        # @example
        #   pcmpistrm xmm0, xmm1, 0x03
        #   pcmpistrm xmm0, [ebx], 0x03
        def pcmpistrm(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PCMPISTRM,operand1,operand2,operand3,**kwargs)
        # Parallel Bits Deposit
        # @return [Ronin::ASM::X86::Instructions::PDEP]
        # @example
        #   pdep eax, ebx, ecx
        #   pdep eax, ebx, [ecx]
        def pdep(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PDEP,operand1,operand2,operand3,**kwargs)
        # Parallel Bits Extract
        # @return [Ronin::ASM::X86::Instructions::PEXT]
        # @example
        #   pext eax, ebx, ecx
        #   pext eax, ebx, [ecx]
        def pext(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PEXT,operand1,operand2,operand3,**kwargs)
        # Extract Byte
        # @return [Ronin::ASM::X86::Instructions::PEXTRB]
        # @example
        #   pextrb eax, xmm1, 0x03
        #   pextrb [eax], xmm1, 0x03
        def pextrb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PEXTRB,operand1,operand2,operand3,**kwargs)
        # Extract Doubleword
        # @return [Ronin::ASM::X86::Instructions::PEXTRD]
        # @example
        #   pextrd eax, xmm1, 0x03
        #   pextrd [eax], xmm1, 0x03
        def pextrd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PEXTRD,operand1,operand2,operand3,**kwargs)
        # Extract Word
        # @return [Ronin::ASM::X86::Instructions::PEXTRW]
        # @example
        #   pextrw eax, mm1, 0x03
        #   pextrw eax, xmm1, 0x03
        #   pextrw [eax], xmm1, 0x03
        def pextrw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PEXTRW,operand1,operand2,operand3,**kwargs)
        # Packed Floating-Point to Integer Doubleword Converson
        # @return [Ronin::ASM::X86::Instructions::PF2ID]
        # @example
        #   pf2id mm0, mm1
        #   pf2id mm0, [ebx]
        def pf2id(operand1,operand2,**kwargs) = add_instruction(Instructions::PF2ID,operand1,operand2,**kwargs)
        # Packed Floating-Point to Integer Word Conversion
        # @return [Ronin::ASM::X86::Instructions::PF2IW]
        # @example
        #   pf2iw mm0, mm1
        #   pf2iw mm0, [ebx]
        def pf2iw(operand1,operand2,**kwargs) = add_instruction(Instructions::PF2IW,operand1,operand2,**kwargs)
        # Packed Floating-Point Accumulate
        # @return [Ronin::ASM::X86::Instructions::PFACC]
        # @example
        #   pfacc mm0, mm1
        #   pfacc mm0, [ebx]
        def pfacc(operand1,operand2,**kwargs) = add_instruction(Instructions::PFACC,operand1,operand2,**kwargs)
        # Packed Floating-Point Add
        # @return [Ronin::ASM::X86::Instructions::PFADD]
        # @example
        #   pfadd mm0, mm1
        #   pfadd mm0, [ebx]
        def pfadd(operand1,operand2,**kwargs) = add_instruction(Instructions::PFADD,operand1,operand2,**kwargs)
        # Packed Floating-Point Compare for Equal
        # @return [Ronin::ASM::X86::Instructions::PFCMPEQ]
        # @example
        #   pfcmpeq mm0, mm1
        #   pfcmpeq mm0, [ebx]
        def pfcmpeq(operand1,operand2,**kwargs) = add_instruction(Instructions::PFCMPEQ,operand1,operand2,**kwargs)
        # Packed Floating-Point Compare for Greater or Equal
        # @return [Ronin::ASM::X86::Instructions::PFCMPGE]
        # @example
        #   pfcmpge mm0, mm1
        #   pfcmpge mm0, [ebx]
        def pfcmpge(operand1,operand2,**kwargs) = add_instruction(Instructions::PFCMPGE,operand1,operand2,**kwargs)
        # Packed Floating-Point Compare for Greater Than
        # @return [Ronin::ASM::X86::Instructions::PFCMPGT]
        # @example
        #   pfcmpgt mm0, mm1
        #   pfcmpgt mm0, [ebx]
        def pfcmpgt(operand1,operand2,**kwargs) = add_instruction(Instructions::PFCMPGT,operand1,operand2,**kwargs)
        # Packed Floating-Point Maximum
        # @return [Ronin::ASM::X86::Instructions::PFMAX]
        # @example
        #   pfmax mm0, mm1
        #   pfmax mm0, [ebx]
        def pfmax(operand1,operand2,**kwargs) = add_instruction(Instructions::PFMAX,operand1,operand2,**kwargs)
        # Packed Floating-Point Minimum
        # @return [Ronin::ASM::X86::Instructions::PFMIN]
        # @example
        #   pfmin mm0, mm1
        #   pfmin mm0, [ebx]
        def pfmin(operand1,operand2,**kwargs) = add_instruction(Instructions::PFMIN,operand1,operand2,**kwargs)
        # Packed Floating-Point Multiply
        # @return [Ronin::ASM::X86::Instructions::PFMUL]
        # @example
        #   pfmul mm0, mm1
        #   pfmul mm0, [ebx]
        def pfmul(operand1,operand2,**kwargs) = add_instruction(Instructions::PFMUL,operand1,operand2,**kwargs)
        # Packed Floating-Point Negative Accumulate
        # @return [Ronin::ASM::X86::Instructions::PFNACC]
        # @example
        #   pfnacc mm0, mm1
        #   pfnacc mm0, [ebx]
        def pfnacc(operand1,operand2,**kwargs) = add_instruction(Instructions::PFNACC,operand1,operand2,**kwargs)
        # Packed Floating-Point Positive-Negative Accumulate
        # @return [Ronin::ASM::X86::Instructions::PFPNACC]
        # @example
        #   pfpnacc mm0, mm1
        #   pfpnacc mm0, [ebx]
        def pfpnacc(operand1,operand2,**kwargs) = add_instruction(Instructions::PFPNACC,operand1,operand2,**kwargs)
        # Packed Floating-Point Reciprocal Approximation
        # @return [Ronin::ASM::X86::Instructions::PFRCP]
        # @example
        #   pfrcp mm0, mm1
        #   pfrcp mm0, [ebx]
        def pfrcp(operand1,operand2,**kwargs) = add_instruction(Instructions::PFRCP,operand1,operand2,**kwargs)
        # Packed Floating-Point Reciprocal Iteration 1
        # @return [Ronin::ASM::X86::Instructions::PFRCPIT1]
        # @example
        #   pfrcpit1 mm0, mm1
        #   pfrcpit1 mm0, [ebx]
        def pfrcpit1(operand1,operand2,**kwargs) = add_instruction(Instructions::PFRCPIT1,operand1,operand2,**kwargs)
        # Packed Floating-Point Reciprocal Iteration 2
        # @return [Ronin::ASM::X86::Instructions::PFRCPIT2]
        # @example
        #   pfrcpit2 mm0, mm1
        #   pfrcpit2 mm0, [ebx]
        def pfrcpit2(operand1,operand2,**kwargs) = add_instruction(Instructions::PFRCPIT2,operand1,operand2,**kwargs)
        # Packed Floating-Point Reciprocal Approximation Vector
        # @return [Ronin::ASM::X86::Instructions::PFRCPV]
        # @example
        #   pfrcpv mm0, mm1
        #   pfrcpv mm0, [ebx]
        def pfrcpv(operand1,operand2,**kwargs) = add_instruction(Instructions::PFRCPV,operand1,operand2,**kwargs)
        # Packed Floating-Point Reciprocal Square Root Iteration 1
        # @return [Ronin::ASM::X86::Instructions::PFRSQIT1]
        # @example
        #   pfrsqit1 mm0, mm1
        #   pfrsqit1 mm0, [ebx]
        def pfrsqit1(operand1,operand2,**kwargs) = add_instruction(Instructions::PFRSQIT1,operand1,operand2,**kwargs)
        # Packed Floating-Point Reciprocal Square Root Approximation
        # @return [Ronin::ASM::X86::Instructions::PFRSQRT]
        # @example
        #   pfrsqrt mm0, mm1
        #   pfrsqrt mm0, [ebx]
        def pfrsqrt(operand1,operand2,**kwargs) = add_instruction(Instructions::PFRSQRT,operand1,operand2,**kwargs)
        # Packed Floating-Point Reciprocal Square Root Approximation Vector
        # @return [Ronin::ASM::X86::Instructions::PFRSQRTV]
        # @example
        #   pfrsqrtv mm0, mm1
        #   pfrsqrtv mm0, [ebx]
        def pfrsqrtv(operand1,operand2,**kwargs) = add_instruction(Instructions::PFRSQRTV,operand1,operand2,**kwargs)
        # Packed Floating-Point Subtract
        # @return [Ronin::ASM::X86::Instructions::PFSUB]
        # @example
        #   pfsub mm0, mm1
        #   pfsub mm0, [ebx]
        def pfsub(operand1,operand2,**kwargs) = add_instruction(Instructions::PFSUB,operand1,operand2,**kwargs)
        # Packed Floating-Point Subtract Reverse
        # @return [Ronin::ASM::X86::Instructions::PFSUBR]
        # @example
        #   pfsubr mm0, mm1
        #   pfsubr mm0, [ebx]
        def pfsubr(operand1,operand2,**kwargs) = add_instruction(Instructions::PFSUBR,operand1,operand2,**kwargs)
        # Packed Horizontal Add Doubleword Integer
        # @return [Ronin::ASM::X86::Instructions::PHADDD]
        # @example
        #   phaddd mm0, mm1
        #   phaddd mm0, [ebx]
        #   phaddd xmm0, xmm1
        #   phaddd xmm0, [ebx]
        def phaddd(operand1,operand2,**kwargs) = add_instruction(Instructions::PHADDD,operand1,operand2,**kwargs)
        # Packed Horizontal Add Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PHADDSW]
        # @example
        #   phaddsw mm0, mm1
        #   phaddsw mm0, [ebx]
        #   phaddsw xmm0, xmm1
        #   phaddsw xmm0, [ebx]
        def phaddsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PHADDSW,operand1,operand2,**kwargs)
        # Packed Horizontal Add Word Integers
        # @return [Ronin::ASM::X86::Instructions::PHADDW]
        # @example
        #   phaddw mm0, mm1
        #   phaddw mm0, [ebx]
        #   phaddw xmm0, xmm1
        #   phaddw xmm0, [ebx]
        def phaddw(operand1,operand2,**kwargs) = add_instruction(Instructions::PHADDW,operand1,operand2,**kwargs)
        # Packed Horizontal Minimum of Unsigned Word Integers
        # @return [Ronin::ASM::X86::Instructions::PHMINPOSUW]
        # @example
        #   phminposuw xmm0, xmm1
        #   phminposuw xmm0, [ebx]
        def phminposuw(operand1,operand2,**kwargs) = add_instruction(Instructions::PHMINPOSUW,operand1,operand2,**kwargs)
        # Packed Horizontal Subtract Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PHSUBD]
        # @example
        #   phsubd mm0, mm1
        #   phsubd mm0, [ebx]
        #   phsubd xmm0, xmm1
        #   phsubd xmm0, [ebx]
        def phsubd(operand1,operand2,**kwargs) = add_instruction(Instructions::PHSUBD,operand1,operand2,**kwargs)
        # Packed Horizontal Subtract Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PHSUBSW]
        # @example
        #   phsubsw mm0, mm1
        #   phsubsw mm0, [ebx]
        #   phsubsw xmm0, xmm1
        #   phsubsw xmm0, [ebx]
        def phsubsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PHSUBSW,operand1,operand2,**kwargs)
        # Packed Horizontal Subtract Word Integers
        # @return [Ronin::ASM::X86::Instructions::PHSUBW]
        # @example
        #   phsubw mm0, mm1
        #   phsubw mm0, [ebx]
        #   phsubw xmm0, xmm1
        #   phsubw xmm0, [ebx]
        def phsubw(operand1,operand2,**kwargs) = add_instruction(Instructions::PHSUBW,operand1,operand2,**kwargs)
        # Packed Integer to Floating-Point Doubleword Conversion
        # @return [Ronin::ASM::X86::Instructions::PI2FD]
        # @example
        #   pi2fd mm0, mm1
        #   pi2fd mm0, [ebx]
        def pi2fd(operand1,operand2,**kwargs) = add_instruction(Instructions::PI2FD,operand1,operand2,**kwargs)
        # Packed Integer to Floating-Point Word Conversion
        # @return [Ronin::ASM::X86::Instructions::PI2FW]
        # @example
        #   pi2fw mm0, mm1
        #   pi2fw mm0, [ebx]
        def pi2fw(operand1,operand2,**kwargs) = add_instruction(Instructions::PI2FW,operand1,operand2,**kwargs)
        # Insert Byte
        # @return [Ronin::ASM::X86::Instructions::PINSRB]
        # @example
        #   pinsrb xmm0, ebx, 0x03
        #   pinsrb xmm0, [ebx], 0x03
        def pinsrb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PINSRB,operand1,operand2,operand3,**kwargs)
        # Insert Doubleword
        # @return [Ronin::ASM::X86::Instructions::PINSRD]
        # @example
        #   pinsrd xmm0, ebx, 0x03
        #   pinsrd xmm0, [ebx], 0x03
        def pinsrd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PINSRD,operand1,operand2,operand3,**kwargs)
        # Insert Word
        # @return [Ronin::ASM::X86::Instructions::PINSRW]
        # @example
        #   pinsrw mm0, ebx, 0x03
        #   pinsrw mm0, [ebx], 0x03
        #   pinsrw xmm0, ebx, 0x03
        #   pinsrw xmm0, [ebx], 0x03
        def pinsrw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PINSRW,operand1,operand2,operand3,**kwargs)
        # Multiply and Add Packed Signed and Unsigned Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PMADDUBSW]
        # @example
        #   pmaddubsw mm0, mm1
        #   pmaddubsw mm0, [ebx]
        #   pmaddubsw xmm0, xmm1
        #   pmaddubsw xmm0, [ebx]
        def pmaddubsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMADDUBSW,operand1,operand2,**kwargs)
        # Multiply and Add Packed Signed Word Integers
        # @return [Ronin::ASM::X86::Instructions::PMADDWD]
        # @example
        #   pmaddwd mm0, mm1
        #   pmaddwd mm0, [ebx]
        #   pmaddwd xmm0, xmm1
        #   pmaddwd xmm0, [ebx]
        def pmaddwd(operand1,operand2,**kwargs) = add_instruction(Instructions::PMADDWD,operand1,operand2,**kwargs)
        # Maximum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PMAXSB]
        # @example
        #   pmaxsb xmm0, xmm1
        #   pmaxsb xmm0, [ebx]
        def pmaxsb(operand1,operand2,**kwargs) = add_instruction(Instructions::PMAXSB,operand1,operand2,**kwargs)
        # Maximum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PMAXSD]
        # @example
        #   pmaxsd xmm0, xmm1
        #   pmaxsd xmm0, [ebx]
        def pmaxsd(operand1,operand2,**kwargs) = add_instruction(Instructions::PMAXSD,operand1,operand2,**kwargs)
        # Maximum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86::Instructions::PMAXSW]
        # @example
        #   pmaxsw mm0, mm1
        #   pmaxsw mm0, [ebx]
        #   pmaxsw xmm0, xmm1
        #   pmaxsw xmm0, [ebx]
        def pmaxsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMAXSW,operand1,operand2,**kwargs)
        # Maximum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PMAXUB]
        # @example
        #   pmaxub mm0, mm1
        #   pmaxub mm0, [ebx]
        #   pmaxub xmm0, xmm1
        #   pmaxub xmm0, [ebx]
        def pmaxub(operand1,operand2,**kwargs) = add_instruction(Instructions::PMAXUB,operand1,operand2,**kwargs)
        # Maximum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PMAXUD]
        # @example
        #   pmaxud xmm0, xmm1
        #   pmaxud xmm0, [ebx]
        def pmaxud(operand1,operand2,**kwargs) = add_instruction(Instructions::PMAXUD,operand1,operand2,**kwargs)
        # Maximum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86::Instructions::PMAXUW]
        # @example
        #   pmaxuw xmm0, xmm1
        #   pmaxuw xmm0, [ebx]
        def pmaxuw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMAXUW,operand1,operand2,**kwargs)
        # Minimum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PMINSB]
        # @example
        #   pminsb xmm0, xmm1
        #   pminsb xmm0, [ebx]
        def pminsb(operand1,operand2,**kwargs) = add_instruction(Instructions::PMINSB,operand1,operand2,**kwargs)
        # Minimum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PMINSD]
        # @example
        #   pminsd xmm0, xmm1
        #   pminsd xmm0, [ebx]
        def pminsd(operand1,operand2,**kwargs) = add_instruction(Instructions::PMINSD,operand1,operand2,**kwargs)
        # Minimum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86::Instructions::PMINSW]
        # @example
        #   pminsw mm0, mm1
        #   pminsw mm0, [ebx]
        #   pminsw xmm0, xmm1
        #   pminsw xmm0, [ebx]
        def pminsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMINSW,operand1,operand2,**kwargs)
        # Minimum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PMINUB]
        # @example
        #   pminub mm0, mm1
        #   pminub mm0, [ebx]
        #   pminub xmm0, xmm1
        #   pminub xmm0, [ebx]
        def pminub(operand1,operand2,**kwargs) = add_instruction(Instructions::PMINUB,operand1,operand2,**kwargs)
        # Minimum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PMINUD]
        # @example
        #   pminud xmm0, xmm1
        #   pminud xmm0, [ebx]
        def pminud(operand1,operand2,**kwargs) = add_instruction(Instructions::PMINUD,operand1,operand2,**kwargs)
        # Minimum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86::Instructions::PMINUW]
        # @example
        #   pminuw xmm0, xmm1
        #   pminuw xmm0, [ebx]
        def pminuw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMINUW,operand1,operand2,**kwargs)
        # Move Byte Mask
        # @return [Ronin::ASM::X86::Instructions::PMOVMSKB]
        # @example
        #   pmovmskb eax, mm1
        #   pmovmskb eax, xmm1
        def pmovmskb(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVMSKB,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVSXBD]
        # @example
        #   pmovsxbd xmm0, xmm1
        #   pmovsxbd xmm0, [ebx]
        def pmovsxbd(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVSXBD,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVSXBQ]
        # @example
        #   pmovsxbq xmm0, xmm1
        #   pmovsxbq xmm0, [ebx]
        def pmovsxbq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVSXBQ,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Word Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVSXBW]
        # @example
        #   pmovsxbw xmm0, xmm1
        #   pmovsxbw xmm0, [ebx]
        def pmovsxbw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVSXBW,operand1,operand2,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVSXDQ]
        # @example
        #   pmovsxdq xmm0, xmm1
        #   pmovsxdq xmm0, [ebx]
        def pmovsxdq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVSXDQ,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVSXWD]
        # @example
        #   pmovsxwd xmm0, xmm1
        #   pmovsxwd xmm0, [ebx]
        def pmovsxwd(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVSXWD,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVSXWQ]
        # @example
        #   pmovsxwq xmm0, xmm1
        #   pmovsxwq xmm0, [ebx]
        def pmovsxwq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVSXWQ,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVZXBD]
        # @example
        #   pmovzxbd xmm0, xmm1
        #   pmovzxbd xmm0, [ebx]
        def pmovzxbd(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVZXBD,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVZXBQ]
        # @example
        #   pmovzxbq xmm0, xmm1
        #   pmovzxbq xmm0, [ebx]
        def pmovzxbq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVZXBQ,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Word Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVZXBW]
        # @example
        #   pmovzxbw xmm0, xmm1
        #   pmovzxbw xmm0, [ebx]
        def pmovzxbw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVZXBW,operand1,operand2,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVZXDQ]
        # @example
        #   pmovzxdq xmm0, xmm1
        #   pmovzxdq xmm0, [ebx]
        def pmovzxdq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVZXDQ,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVZXWD]
        # @example
        #   pmovzxwd xmm0, xmm1
        #   pmovzxwd xmm0, [ebx]
        def pmovzxwd(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVZXWD,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::PMOVZXWQ]
        # @example
        #   pmovzxwq xmm0, xmm1
        #   pmovzxwq xmm0, [ebx]
        def pmovzxwq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMOVZXWQ,operand1,operand2,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Quadword Result
        # @return [Ronin::ASM::X86::Instructions::PMULDQ]
        # @example
        #   pmuldq xmm0, xmm1
        #   pmuldq xmm0, [ebx]
        def pmuldq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULDQ,operand1,operand2,**kwargs)
        # Packed Multiply Signed Word Integers and Store High Result with Round and Scale
        # @return [Ronin::ASM::X86::Instructions::PMULHRSW]
        # @example
        #   pmulhrsw mm0, mm1
        #   pmulhrsw mm0, [ebx]
        #   pmulhrsw xmm0, xmm1
        #   pmulhrsw xmm0, [ebx]
        def pmulhrsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULHRSW,operand1,operand2,**kwargs)
        # Packed Multiply High Rounded Word
        # @return [Ronin::ASM::X86::Instructions::PMULHRW]
        # @example
        #   pmulhrw mm0, mm1
        #   pmulhrw mm0, [ebx]
        def pmulhrw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULHRW,operand1,operand2,**kwargs)
        # Multiply Packed Unsigned Word Integers and Store High Result
        # @return [Ronin::ASM::X86::Instructions::PMULHUW]
        # @example
        #   pmulhuw mm0, mm1
        #   pmulhuw mm0, [ebx]
        #   pmulhuw xmm0, xmm1
        #   pmulhuw xmm0, [ebx]
        def pmulhuw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULHUW,operand1,operand2,**kwargs)
        # Multiply Packed Signed Word Integers and Store High Result
        # @return [Ronin::ASM::X86::Instructions::PMULHW]
        # @example
        #   pmulhw mm0, mm1
        #   pmulhw mm0, [ebx]
        #   pmulhw xmm0, xmm1
        #   pmulhw xmm0, [ebx]
        def pmulhw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULHW,operand1,operand2,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Low Result
        # @return [Ronin::ASM::X86::Instructions::PMULLD]
        # @example
        #   pmulld xmm0, xmm1
        #   pmulld xmm0, [ebx]
        def pmulld(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULLD,operand1,operand2,**kwargs)
        # Multiply Packed Signed Word Integers and Store Low Result
        # @return [Ronin::ASM::X86::Instructions::PMULLW]
        # @example
        #   pmullw mm0, mm1
        #   pmullw mm0, [ebx]
        #   pmullw xmm0, xmm1
        #   pmullw xmm0, [ebx]
        def pmullw(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULLW,operand1,operand2,**kwargs)
        # Multiply Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PMULUDQ]
        # @example
        #   pmuludq mm0, mm1
        #   pmuludq mm0, [ebx]
        #   pmuludq xmm0, xmm1
        #   pmuludq xmm0, [ebx]
        def pmuludq(operand1,operand2,**kwargs) = add_instruction(Instructions::PMULUDQ,operand1,operand2,**kwargs)
        # Pop a Value from the Stack
        # @return [Ronin::ASM::X86::Instructions::POP]
        # @example
        #   pop ax
        #   pop eax
        #   pop [eax]
        def pop(operand,**kwargs) = add_instruction(Instructions::POP,operand,**kwargs)
        # Count of Number of Bits Set to 1
        # @return [Ronin::ASM::X86::Instructions::POPCNT]
        # @example
        #   popcnt ax, bx
        #   popcnt ax, [ebx]
        #   popcnt eax, ebx
        #   popcnt eax, [ebx]
        def popcnt(operand1,operand2,**kwargs) = add_instruction(Instructions::POPCNT,operand1,operand2,**kwargs)
        # Packed Bitwise Logical OR
        # @return [Ronin::ASM::X86::Instructions::POR]
        # @example
        #   por mm0, mm1
        #   por mm0, [ebx]
        #   por xmm0, xmm1
        #   por xmm0, [ebx]
        def por(operand1,operand2,**kwargs) = add_instruction(Instructions::POR,operand1,operand2,**kwargs)
        # Prefetch Data into Caches
        # @return [Ronin::ASM::X86::Instructions::PREFETCH]
        # @example
        #   prefetch [eax]
        def prefetch(operand,**kwargs) = add_instruction(Instructions::PREFETCH,operand,**kwargs)
        # Prefetch Data Into Caches using NTA Hint
        # @return [Ronin::ASM::X86::Instructions::PREFETCHNTA]
        # @example
        #   prefetchnta [eax]
        def prefetchnta(operand,**kwargs) = add_instruction(Instructions::PREFETCHNTA,operand,**kwargs)
        # Prefetch Data Into Caches using T0 Hint
        # @return [Ronin::ASM::X86::Instructions::PREFETCHT0]
        # @example
        #   prefetcht0 [eax]
        def prefetcht0(operand,**kwargs) = add_instruction(Instructions::PREFETCHT0,operand,**kwargs)
        # Prefetch Data Into Caches using T1 Hint
        # @return [Ronin::ASM::X86::Instructions::PREFETCHT1]
        # @example
        #   prefetcht1 [eax]
        def prefetcht1(operand,**kwargs) = add_instruction(Instructions::PREFETCHT1,operand,**kwargs)
        # Prefetch Data Into Caches using T2 Hint
        # @return [Ronin::ASM::X86::Instructions::PREFETCHT2]
        # @example
        #   prefetcht2 [eax]
        def prefetcht2(operand,**kwargs) = add_instruction(Instructions::PREFETCHT2,operand,**kwargs)
        # Prefetch Data into Caches in Anticipation of a Write
        # @return [Ronin::ASM::X86::Instructions::PREFETCHW]
        # @example
        #   prefetchw [eax]
        def prefetchw(operand,**kwargs) = add_instruction(Instructions::PREFETCHW,operand,**kwargs)
        # Prefetch Vector Data Into Caches with Intent to Write and T1 Hint
        # @return [Ronin::ASM::X86::Instructions::PREFETCHWT1]
        # @example
        #   prefetchwt1 [eax]
        def prefetchwt1(operand,**kwargs) = add_instruction(Instructions::PREFETCHWT1,operand,**kwargs)
        # Compute Sum of Absolute Differences
        # @return [Ronin::ASM::X86::Instructions::PSADBW]
        # @example
        #   psadbw mm0, mm1
        #   psadbw mm0, [ebx]
        #   psadbw xmm0, xmm1
        #   psadbw xmm0, [ebx]
        def psadbw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSADBW,operand1,operand2,**kwargs)
        # Packed Shuffle Bytes
        # @return [Ronin::ASM::X86::Instructions::PSHUFB]
        # @example
        #   pshufb mm0, mm1
        #   pshufb mm0, [ebx]
        #   pshufb xmm0, xmm1
        #   pshufb xmm0, [ebx]
        def pshufb(operand1,operand2,**kwargs) = add_instruction(Instructions::PSHUFB,operand1,operand2,**kwargs)
        # Shuffle Packed Doublewords
        # @return [Ronin::ASM::X86::Instructions::PSHUFD]
        # @example
        #   pshufd xmm0, xmm1, 0x03
        #   pshufd xmm0, [ebx], 0x03
        def pshufd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PSHUFD,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed High Words
        # @return [Ronin::ASM::X86::Instructions::PSHUFHW]
        # @example
        #   pshufhw xmm0, xmm1, 0x03
        #   pshufhw xmm0, [ebx], 0x03
        def pshufhw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PSHUFHW,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed Low Words
        # @return [Ronin::ASM::X86::Instructions::PSHUFLW]
        # @example
        #   pshuflw xmm0, xmm1, 0x03
        #   pshuflw xmm0, [ebx], 0x03
        def pshuflw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PSHUFLW,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed Words
        # @return [Ronin::ASM::X86::Instructions::PSHUFW]
        # @example
        #   pshufw mm0, mm1, 0x03
        #   pshufw mm0, [ebx], 0x03
        def pshufw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::PSHUFW,operand1,operand2,operand3,**kwargs)
        # Packed Sign of Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PSIGNB]
        # @example
        #   psignb mm0, mm1
        #   psignb mm0, [ebx]
        #   psignb xmm0, xmm1
        #   psignb xmm0, [ebx]
        def psignb(operand1,operand2,**kwargs) = add_instruction(Instructions::PSIGNB,operand1,operand2,**kwargs)
        # Packed Sign of Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PSIGND]
        # @example
        #   psignd mm0, mm1
        #   psignd mm0, [ebx]
        #   psignd xmm0, xmm1
        #   psignd xmm0, [ebx]
        def psignd(operand1,operand2,**kwargs) = add_instruction(Instructions::PSIGND,operand1,operand2,**kwargs)
        # Packed Sign of Word Integers
        # @return [Ronin::ASM::X86::Instructions::PSIGNW]
        # @example
        #   psignw mm0, mm1
        #   psignw mm0, [ebx]
        #   psignw xmm0, xmm1
        #   psignw xmm0, [ebx]
        def psignw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSIGNW,operand1,operand2,**kwargs)
        # Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::PSLLD]
        # @example
        #   pslld mm0, 0x02
        #   pslld mm0, mm1
        #   pslld mm0, [ebx]
        #   pslld xmm0, 0x02
        #   pslld xmm0, xmm1
        #   pslld xmm0, [ebx]
        def pslld(operand1,operand2,**kwargs) = add_instruction(Instructions::PSLLD,operand1,operand2,**kwargs)
        # Shift Packed Double Quadword Left Logical
        # @return [Ronin::ASM::X86::Instructions::PSLLDQ]
        # @example
        #   pslldq xmm0, 0x02
        def pslldq(operand1,operand2,**kwargs) = add_instruction(Instructions::PSLLDQ,operand1,operand2,**kwargs)
        # Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::PSLLQ]
        # @example
        #   psllq mm0, 0x02
        #   psllq mm0, mm1
        #   psllq mm0, [ebx]
        #   psllq xmm0, 0x02
        #   psllq xmm0, xmm1
        #   psllq xmm0, [ebx]
        def psllq(operand1,operand2,**kwargs) = add_instruction(Instructions::PSLLQ,operand1,operand2,**kwargs)
        # Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::PSLLW]
        # @example
        #   psllw mm0, 0x02
        #   psllw mm0, mm1
        #   psllw mm0, [ebx]
        #   psllw xmm0, 0x02
        #   psllw xmm0, xmm1
        #   psllw xmm0, [ebx]
        def psllw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSLLW,operand1,operand2,**kwargs)
        # Shift Packed Doubleword Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::PSRAD]
        # @example
        #   psrad mm0, 0x02
        #   psrad mm0, mm1
        #   psrad mm0, [ebx]
        #   psrad xmm0, 0x02
        #   psrad xmm0, xmm1
        #   psrad xmm0, [ebx]
        def psrad(operand1,operand2,**kwargs) = add_instruction(Instructions::PSRAD,operand1,operand2,**kwargs)
        # Shift Packed Word Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::PSRAW]
        # @example
        #   psraw mm0, 0x02
        #   psraw mm0, mm1
        #   psraw mm0, [ebx]
        #   psraw xmm0, 0x02
        #   psraw xmm0, xmm1
        #   psraw xmm0, [ebx]
        def psraw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSRAW,operand1,operand2,**kwargs)
        # Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::PSRLD]
        # @example
        #   psrld mm0, 0x02
        #   psrld mm0, mm1
        #   psrld mm0, [ebx]
        #   psrld xmm0, 0x02
        #   psrld xmm0, xmm1
        #   psrld xmm0, [ebx]
        def psrld(operand1,operand2,**kwargs) = add_instruction(Instructions::PSRLD,operand1,operand2,**kwargs)
        # Shift Packed Double Quadword Right Logical
        # @return [Ronin::ASM::X86::Instructions::PSRLDQ]
        # @example
        #   psrldq xmm0, 0x02
        def psrldq(operand1,operand2,**kwargs) = add_instruction(Instructions::PSRLDQ,operand1,operand2,**kwargs)
        # Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::PSRLQ]
        # @example
        #   psrlq mm0, 0x02
        #   psrlq mm0, mm1
        #   psrlq mm0, [ebx]
        #   psrlq xmm0, 0x02
        #   psrlq xmm0, xmm1
        #   psrlq xmm0, [ebx]
        def psrlq(operand1,operand2,**kwargs) = add_instruction(Instructions::PSRLQ,operand1,operand2,**kwargs)
        # Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::PSRLW]
        # @example
        #   psrlw mm0, 0x02
        #   psrlw mm0, mm1
        #   psrlw mm0, [ebx]
        #   psrlw xmm0, 0x02
        #   psrlw xmm0, xmm1
        #   psrlw xmm0, [ebx]
        def psrlw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSRLW,operand1,operand2,**kwargs)
        # Subtract Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::PSUBB]
        # @example
        #   psubb mm0, mm1
        #   psubb mm0, [ebx]
        #   psubb xmm0, xmm1
        #   psubb xmm0, [ebx]
        def psubb(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBB,operand1,operand2,**kwargs)
        # Subtract Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::PSUBD]
        # @example
        #   psubd mm0, mm1
        #   psubd mm0, [ebx]
        #   psubd xmm0, xmm1
        #   psubd xmm0, [ebx]
        def psubd(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBD,operand1,operand2,**kwargs)
        # Subtract Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::PSUBQ]
        # @example
        #   psubq mm0, mm1
        #   psubq mm0, [ebx]
        #   psubq xmm0, xmm1
        #   psubq xmm0, [ebx]
        def psubq(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBQ,operand1,operand2,**kwargs)
        # Subtract Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PSUBSB]
        # @example
        #   psubsb mm0, mm1
        #   psubsb mm0, [ebx]
        #   psubsb xmm0, xmm1
        #   psubsb xmm0, [ebx]
        def psubsb(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBSB,operand1,operand2,**kwargs)
        # Subtract Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::PSUBSW]
        # @example
        #   psubsw mm0, mm1
        #   psubsw mm0, [ebx]
        #   psubsw xmm0, xmm1
        #   psubsw xmm0, [ebx]
        def psubsw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBSW,operand1,operand2,**kwargs)
        # Subtract Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::PSUBUSB]
        # @example
        #   psubusb mm0, mm1
        #   psubusb mm0, [ebx]
        #   psubusb xmm0, xmm1
        #   psubusb xmm0, [ebx]
        def psubusb(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBUSB,operand1,operand2,**kwargs)
        # Subtract Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::PSUBUSW]
        # @example
        #   psubusw mm0, mm1
        #   psubusw mm0, [ebx]
        #   psubusw xmm0, xmm1
        #   psubusw xmm0, [ebx]
        def psubusw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBUSW,operand1,operand2,**kwargs)
        # Subtract Packed Word Integers
        # @return [Ronin::ASM::X86::Instructions::PSUBW]
        # @example
        #   psubw mm0, mm1
        #   psubw mm0, [ebx]
        #   psubw xmm0, xmm1
        #   psubw xmm0, [ebx]
        def psubw(operand1,operand2,**kwargs) = add_instruction(Instructions::PSUBW,operand1,operand2,**kwargs)
        # Packed Swap Doubleword
        # @return [Ronin::ASM::X86::Instructions::PSWAPD]
        # @example
        #   pswapd mm0, mm1
        #   pswapd mm0, [ebx]
        def pswapd(operand1,operand2,**kwargs) = add_instruction(Instructions::PSWAPD,operand1,operand2,**kwargs)
        # Packed Logical Compare
        # @return [Ronin::ASM::X86::Instructions::PTEST]
        # @example
        #   ptest xmm0, xmm1
        #   ptest xmm0, [ebx]
        def ptest(operand1,operand2,**kwargs) = add_instruction(Instructions::PTEST,operand1,operand2,**kwargs)
        # Unpack and Interleave High-Order Bytes into Words
        # @return [Ronin::ASM::X86::Instructions::PUNPCKHBW]
        # @example
        #   punpckhbw mm0, mm1
        #   punpckhbw mm0, [ebx]
        #   punpckhbw xmm0, xmm1
        #   punpckhbw xmm0, [ebx]
        def punpckhbw(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKHBW,operand1,operand2,**kwargs)
        # Unpack and Interleave High-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86::Instructions::PUNPCKHDQ]
        # @example
        #   punpckhdq mm0, mm1
        #   punpckhdq mm0, [ebx]
        #   punpckhdq xmm0, xmm1
        #   punpckhdq xmm0, [ebx]
        def punpckhdq(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKHDQ,operand1,operand2,**kwargs)
        # Unpack and Interleave High-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86::Instructions::PUNPCKHQDQ]
        # @example
        #   punpckhqdq xmm0, xmm1
        #   punpckhqdq xmm0, [ebx]
        def punpckhqdq(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKHQDQ,operand1,operand2,**kwargs)
        # Unpack and Interleave High-Order Words into Doublewords
        # @return [Ronin::ASM::X86::Instructions::PUNPCKHWD]
        # @example
        #   punpckhwd mm0, mm1
        #   punpckhwd mm0, [ebx]
        #   punpckhwd xmm0, xmm1
        #   punpckhwd xmm0, [ebx]
        def punpckhwd(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKHWD,operand1,operand2,**kwargs)
        # Unpack and Interleave Low-Order Bytes into Words
        # @return [Ronin::ASM::X86::Instructions::PUNPCKLBW]
        # @example
        #   punpcklbw mm0, mm1
        #   punpcklbw mm0, [ebx]
        #   punpcklbw xmm0, xmm1
        #   punpcklbw xmm0, [ebx]
        def punpcklbw(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKLBW,operand1,operand2,**kwargs)
        # Unpack and Interleave Low-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86::Instructions::PUNPCKLDQ]
        # @example
        #   punpckldq mm0, mm1
        #   punpckldq mm0, [ebx]
        #   punpckldq xmm0, xmm1
        #   punpckldq xmm0, [ebx]
        def punpckldq(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKLDQ,operand1,operand2,**kwargs)
        # Unpack and Interleave Low-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86::Instructions::PUNPCKLQDQ]
        # @example
        #   punpcklqdq xmm0, xmm1
        #   punpcklqdq xmm0, [ebx]
        def punpcklqdq(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKLQDQ,operand1,operand2,**kwargs)
        # Unpack and Interleave Low-Order Words into Doublewords
        # @return [Ronin::ASM::X86::Instructions::PUNPCKLWD]
        # @example
        #   punpcklwd mm0, mm1
        #   punpcklwd mm0, [ebx]
        #   punpcklwd xmm0, xmm1
        #   punpcklwd xmm0, [ebx]
        def punpcklwd(operand1,operand2,**kwargs) = add_instruction(Instructions::PUNPCKLWD,operand1,operand2,**kwargs)
        # Push Value Onto the Stack
        # @return [Ronin::ASM::X86::Instructions::PUSH]
        # @example
        #   push 0x01
        #   push 0x00000001
        #   push ax
        #   push eax
        #   push [eax]
        def push(operand,**kwargs) = add_instruction(Instructions::PUSH,operand,**kwargs)
        # Packed Bitwise Logical Exclusive OR
        # @return [Ronin::ASM::X86::Instructions::PXOR]
        # @example
        #   pxor mm0, mm1
        #   pxor mm0, [ebx]
        #   pxor xmm0, xmm1
        #   pxor xmm0, [ebx]
        def pxor(operand1,operand2,**kwargs) = add_instruction(Instructions::PXOR,operand1,operand2,**kwargs)
        # Rotate Left through Carry Flag
        # @return [Ronin::ASM::X86::Instructions::RCL]
        # @example
        #   rcl al, 1
        #   rcl al, 0x02
        #   rcl al, cl
        #   rcl ax, 1
        #   rcl ax, 0x02
        #   rcl ax, cl
        #   rcl eax, 1
        #   rcl eax, 0x02
        #   rcl eax, cl
        #   rcl [eax], 1
        #   rcl [eax], 0x02
        #   rcl [eax], cl
        def rcl(operand1,operand2,**kwargs) = add_instruction(Instructions::RCL,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocals of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::RCPPS]
        # @example
        #   rcpps xmm0, xmm1
        #   rcpps xmm0, [ebx]
        def rcpps(operand1,operand2,**kwargs) = add_instruction(Instructions::RCPPS,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocal of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::RCPSS]
        # @example
        #   rcpss xmm0, xmm1
        #   rcpss xmm0, [ebx]
        def rcpss(operand1,operand2,**kwargs) = add_instruction(Instructions::RCPSS,operand1,operand2,**kwargs)
        # Rotate Right through Carry Flag
        # @return [Ronin::ASM::X86::Instructions::RCR]
        # @example
        #   rcr al, 1
        #   rcr al, 0x02
        #   rcr al, cl
        #   rcr ax, 1
        #   rcr ax, 0x02
        #   rcr ax, cl
        #   rcr eax, 1
        #   rcr eax, 0x02
        #   rcr eax, cl
        #   rcr [eax], 1
        #   rcr [eax], 0x02
        #   rcr [eax], cl
        def rcr(operand1,operand2,**kwargs) = add_instruction(Instructions::RCR,operand1,operand2,**kwargs)
        # Read Processor ID
        # @return [Ronin::ASM::X86::Instructions::RDPID]
        # @example
        #   rdpid eax
        def rdpid(operand,**kwargs) = add_instruction(Instructions::RDPID,operand,**kwargs)
        # Read Performance-Monitoring Counter
        # @return [Ronin::ASM::X86::Instructions::RDPMC]
        def rdpmc(**kwargs) = add_instruction(Instructions::RDPMC,**kwargs)
        # Read Processor Register in User mode
        # @return [Ronin::ASM::X86::Instructions::RDPRU]
        def rdpru(**kwargs) = add_instruction(Instructions::RDPRU,**kwargs)
        # Read Random Number
        # @return [Ronin::ASM::X86::Instructions::RDRAND]
        # @example
        #   rdrand ax
        #   rdrand eax
        def rdrand(operand,**kwargs) = add_instruction(Instructions::RDRAND,operand,**kwargs)
        # Read Random SEED
        # @return [Ronin::ASM::X86::Instructions::RDSEED]
        # @example
        #   rdseed ax
        #   rdseed eax
        def rdseed(operand,**kwargs) = add_instruction(Instructions::RDSEED,operand,**kwargs)
        # Read Time-Stamp Counter
        # @return [Ronin::ASM::X86::Instructions::RDTSC]
        def rdtsc(**kwargs) = add_instruction(Instructions::RDTSC,**kwargs)
        # Read Time-Stamp Counter and Processor ID
        # @return [Ronin::ASM::X86::Instructions::RDTSCP]
        def rdtscp(**kwargs) = add_instruction(Instructions::RDTSCP,**kwargs)
        # Return from Procedure
        # @return [Ronin::ASM::X86::Instructions::RET]
        # @example
        #   ret
        #   ret 0x0001
        def ret(*operands,**kwargs) = add_instruction(Instructions::RET,*operands,**kwargs)
        # Rotate Left
        # @return [Ronin::ASM::X86::Instructions::ROL]
        # @example
        #   rol al, 1
        #   rol al, 0x02
        #   rol al, cl
        #   rol ax, 1
        #   rol ax, 0x02
        #   rol ax, cl
        #   rol eax, 1
        #   rol eax, 0x02
        #   rol eax, cl
        #   rol [eax], 1
        #   rol [eax], 0x02
        #   rol [eax], cl
        def rol(operand1,operand2,**kwargs) = add_instruction(Instructions::ROL,operand1,operand2,**kwargs)
        # Rotate Right
        # @return [Ronin::ASM::X86::Instructions::ROR]
        # @example
        #   ror al, 1
        #   ror al, 0x02
        #   ror al, cl
        #   ror ax, 1
        #   ror ax, 0x02
        #   ror ax, cl
        #   ror eax, 1
        #   ror eax, 0x02
        #   ror eax, cl
        #   ror [eax], 1
        #   ror [eax], 0x02
        #   ror [eax], cl
        def ror(operand1,operand2,**kwargs) = add_instruction(Instructions::ROR,operand1,operand2,**kwargs)
        # Rotate Right Logical Without Affecting Flags
        # @return [Ronin::ASM::X86::Instructions::RORX]
        # @example
        #   rorx eax, ebx, 0x03
        #   rorx eax, [ebx], 0x03
        def rorx(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::RORX,operand1,operand2,operand3,**kwargs)
        # Round Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ROUNDPD]
        # @example
        #   roundpd xmm0, xmm1, 0x03
        #   roundpd xmm0, [ebx], 0x03
        def roundpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::ROUNDPD,operand1,operand2,operand3,**kwargs)
        # Round Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ROUNDPS]
        # @example
        #   roundps xmm0, xmm1, 0x03
        #   roundps xmm0, [ebx], 0x03
        def roundps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::ROUNDPS,operand1,operand2,operand3,**kwargs)
        # Round Scalar Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ROUNDSD]
        # @example
        #   roundsd xmm0, xmm1, 0x03
        #   roundsd xmm0, [ebx], 0x03
        def roundsd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::ROUNDSD,operand1,operand2,operand3,**kwargs)
        # Round Scalar Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::ROUNDSS]
        # @example
        #   roundss xmm0, xmm1, 0x03
        #   roundss xmm0, [ebx], 0x03
        def roundss(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::ROUNDSS,operand1,operand2,operand3,**kwargs)
        # Compute Reciprocals of Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::RSQRTPS]
        # @example
        #   rsqrtps xmm0, xmm1
        #   rsqrtps xmm0, [ebx]
        def rsqrtps(operand1,operand2,**kwargs) = add_instruction(Instructions::RSQRTPS,operand1,operand2,**kwargs)
        # Compute Reciprocal of Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::RSQRTSS]
        # @example
        #   rsqrtss xmm0, xmm1
        #   rsqrtss xmm0, [ebx]
        def rsqrtss(operand1,operand2,**kwargs) = add_instruction(Instructions::RSQRTSS,operand1,operand2,**kwargs)
        # Store AH into Flags
        # @return [Ronin::ASM::X86::Instructions::SAHF]
        def sahf(**kwargs) = add_instruction(Instructions::SAHF,**kwargs)
        # Arithmetic Shift Left
        # @return [Ronin::ASM::X86::Instructions::SAL]
        # @example
        #   sal al, 1
        #   sal al, 0x02
        #   sal al, cl
        #   sal ax, 1
        #   sal ax, 0x02
        #   sal ax, cl
        #   sal eax, 1
        #   sal eax, 0x02
        #   sal eax, cl
        #   sal [eax], 1
        #   sal [eax], 0x02
        #   sal [eax], cl
        def sal(operand1,operand2,**kwargs) = add_instruction(Instructions::SAL,operand1,operand2,**kwargs)
        # Arithmetic Shift Right
        # @return [Ronin::ASM::X86::Instructions::SAR]
        # @example
        #   sar al, 1
        #   sar al, 0x02
        #   sar al, cl
        #   sar ax, 1
        #   sar ax, 0x02
        #   sar ax, cl
        #   sar eax, 1
        #   sar eax, 0x02
        #   sar eax, cl
        #   sar [eax], 1
        #   sar [eax], 0x02
        #   sar [eax], cl
        def sar(operand1,operand2,**kwargs) = add_instruction(Instructions::SAR,operand1,operand2,**kwargs)
        # Arithmetic Shift Right Without Affecting Flags
        # @return [Ronin::ASM::X86::Instructions::SARX]
        # @example
        #   sarx eax, ebx, ecx
        #   sarx eax, [ebx], ecx
        def sarx(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SARX,operand1,operand2,operand3,**kwargs)
        # Subtract with Borrow
        # @return [Ronin::ASM::X86::Instructions::SBB]
        # @example
        #   sbb al, 0x02
        #   sbb al, bl
        #   sbb al, [ebx]
        #   sbb ax, 0x0002
        #   sbb ax, 0x02
        #   sbb ax, bx
        #   sbb ax, [ebx]
        #   sbb eax, 0x00000002
        #   sbb eax, 0x02
        #   sbb eax, ebx
        #   sbb eax, [ebx]
        #   sbb [eax], 0x02
        #   sbb [eax], bl
        #   sbb [eax], 0x0002
        #   sbb [eax], bx
        #   sbb [eax], 0x00000002
        #   sbb [eax], ebx
        def sbb(operand1,operand2,**kwargs) = add_instruction(Instructions::SBB,operand1,operand2,**kwargs)
        # Serialize Instruction Execution
        # @return [Ronin::ASM::X86::Instructions::SERIALIZE]
        def serialize(**kwargs) = add_instruction(Instructions::SERIALIZE,**kwargs)
        # Set byte if above (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETA]
        # @example
        #   seta al
        #   seta [eax]
        def seta(operand,**kwargs) = add_instruction(Instructions::SETA,operand,**kwargs)
        # Set byte if above or equal (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETAE]
        # @example
        #   setae al
        #   setae [eax]
        def setae(operand,**kwargs) = add_instruction(Instructions::SETAE,operand,**kwargs)
        # Set byte if below (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETB]
        # @example
        #   setb al
        #   setb [eax]
        def setb(operand,**kwargs) = add_instruction(Instructions::SETB,operand,**kwargs)
        # Set byte if below or equal (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETBE]
        # @example
        #   setbe al
        #   setbe [eax]
        def setbe(operand,**kwargs) = add_instruction(Instructions::SETBE,operand,**kwargs)
        # Set byte if carry (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETC]
        # @example
        #   setc al
        #   setc [eax]
        def setc(operand,**kwargs) = add_instruction(Instructions::SETC,operand,**kwargs)
        # Set byte if equal (ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETE]
        # @example
        #   sete al
        #   sete [eax]
        def sete(operand,**kwargs) = add_instruction(Instructions::SETE,operand,**kwargs)
        # Set byte if greater (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86::Instructions::SETG]
        # @example
        #   setg al
        #   setg [eax]
        def setg(operand,**kwargs) = add_instruction(Instructions::SETG,operand,**kwargs)
        # Set byte if greater or equal (SF == OF)
        # @return [Ronin::ASM::X86::Instructions::SETGE]
        # @example
        #   setge al
        #   setge [eax]
        def setge(operand,**kwargs) = add_instruction(Instructions::SETGE,operand,**kwargs)
        # Set byte if less (SF != OF)
        # @return [Ronin::ASM::X86::Instructions::SETL]
        # @example
        #   setl al
        #   setl [eax]
        def setl(operand,**kwargs) = add_instruction(Instructions::SETL,operand,**kwargs)
        # Set byte if less or equal (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86::Instructions::SETLE]
        # @example
        #   setle al
        #   setle [eax]
        def setle(operand,**kwargs) = add_instruction(Instructions::SETLE,operand,**kwargs)
        # Set byte if not above (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETNA]
        # @example
        #   setna al
        #   setna [eax]
        def setna(operand,**kwargs) = add_instruction(Instructions::SETNA,operand,**kwargs)
        # Set byte if not above or equal (CF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETNAE]
        # @example
        #   setnae al
        #   setnae [eax]
        def setnae(operand,**kwargs) = add_instruction(Instructions::SETNAE,operand,**kwargs)
        # Set byte if not below (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNB]
        # @example
        #   setnb al
        #   setnb [eax]
        def setnb(operand,**kwargs) = add_instruction(Instructions::SETNB,operand,**kwargs)
        # Set byte if not below or equal (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNBE]
        # @example
        #   setnbe al
        #   setnbe [eax]
        def setnbe(operand,**kwargs) = add_instruction(Instructions::SETNBE,operand,**kwargs)
        # Set byte if not carry (CF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNC]
        # @example
        #   setnc al
        #   setnc [eax]
        def setnc(operand,**kwargs) = add_instruction(Instructions::SETNC,operand,**kwargs)
        # Set byte if not equal (ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNE]
        # @example
        #   setne al
        #   setne [eax]
        def setne(operand,**kwargs) = add_instruction(Instructions::SETNE,operand,**kwargs)
        # Set byte if not greater (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86::Instructions::SETNG]
        # @example
        #   setng al
        #   setng [eax]
        def setng(operand,**kwargs) = add_instruction(Instructions::SETNG,operand,**kwargs)
        # Set byte if not greater or equal (SF != OF)
        # @return [Ronin::ASM::X86::Instructions::SETNGE]
        # @example
        #   setnge al
        #   setnge [eax]
        def setnge(operand,**kwargs) = add_instruction(Instructions::SETNGE,operand,**kwargs)
        # Set byte if not less (SF == OF)
        # @return [Ronin::ASM::X86::Instructions::SETNL]
        # @example
        #   setnl al
        #   setnl [eax]
        def setnl(operand,**kwargs) = add_instruction(Instructions::SETNL,operand,**kwargs)
        # Set byte if not less or equal (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86::Instructions::SETNLE]
        # @example
        #   setnle al
        #   setnle [eax]
        def setnle(operand,**kwargs) = add_instruction(Instructions::SETNLE,operand,**kwargs)
        # Set byte if not overflow (OF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNO]
        # @example
        #   setno al
        #   setno [eax]
        def setno(operand,**kwargs) = add_instruction(Instructions::SETNO,operand,**kwargs)
        # Set byte if not parity (PF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNP]
        # @example
        #   setnp al
        #   setnp [eax]
        def setnp(operand,**kwargs) = add_instruction(Instructions::SETNP,operand,**kwargs)
        # Set byte if not sign (SF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNS]
        # @example
        #   setns al
        #   setns [eax]
        def setns(operand,**kwargs) = add_instruction(Instructions::SETNS,operand,**kwargs)
        # Set byte if not zero (ZF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETNZ]
        # @example
        #   setnz al
        #   setnz [eax]
        def setnz(operand,**kwargs) = add_instruction(Instructions::SETNZ,operand,**kwargs)
        # Set byte if overflow (OF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETO]
        # @example
        #   seto al
        #   seto [eax]
        def seto(operand,**kwargs) = add_instruction(Instructions::SETO,operand,**kwargs)
        # Set byte if parity (PF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETP]
        # @example
        #   setp al
        #   setp [eax]
        def setp(operand,**kwargs) = add_instruction(Instructions::SETP,operand,**kwargs)
        # Set byte if parity even (PF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETPE]
        # @example
        #   setpe al
        #   setpe [eax]
        def setpe(operand,**kwargs) = add_instruction(Instructions::SETPE,operand,**kwargs)
        # Set byte if parity odd (PF == 0)
        # @return [Ronin::ASM::X86::Instructions::SETPO]
        # @example
        #   setpo al
        #   setpo [eax]
        def setpo(operand,**kwargs) = add_instruction(Instructions::SETPO,operand,**kwargs)
        # Set byte if sign (SF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETS]
        # @example
        #   sets al
        #   sets [eax]
        def sets(operand,**kwargs) = add_instruction(Instructions::SETS,operand,**kwargs)
        # Set byte if zero (ZF == 1)
        # @return [Ronin::ASM::X86::Instructions::SETZ]
        # @example
        #   setz al
        #   setz [eax]
        def setz(operand,**kwargs) = add_instruction(Instructions::SETZ,operand,**kwargs)
        # Store Fence
        # @return [Ronin::ASM::X86::Instructions::SFENCE]
        def sfence(**kwargs) = add_instruction(Instructions::SFENCE,**kwargs)
        # Perform an Intermediate Calculation for the Next Four SHA1 Message Doublewords
        # @return [Ronin::ASM::X86::Instructions::SHA1MSG1]
        # @example
        #   sha1msg1 xmm0, xmm1
        #   sha1msg1 xmm0, [ebx]
        def sha1msg1(operand1,operand2,**kwargs) = add_instruction(Instructions::SHA1MSG1,operand1,operand2,**kwargs)
        # Perform a Final Calculation for the Next Four SHA1 Message Doublewords
        # @return [Ronin::ASM::X86::Instructions::SHA1MSG2]
        # @example
        #   sha1msg2 xmm0, xmm1
        #   sha1msg2 xmm0, [ebx]
        def sha1msg2(operand1,operand2,**kwargs) = add_instruction(Instructions::SHA1MSG2,operand1,operand2,**kwargs)
        # Calculate SHA1 State Variable E after Four Rounds
        # @return [Ronin::ASM::X86::Instructions::SHA1NEXTE]
        # @example
        #   sha1nexte xmm0, xmm1
        #   sha1nexte xmm0, [ebx]
        def sha1nexte(operand1,operand2,**kwargs) = add_instruction(Instructions::SHA1NEXTE,operand1,operand2,**kwargs)
        # Perform Four Rounds of SHA1 Operation
        # @return [Ronin::ASM::X86::Instructions::SHA1RNDS4]
        # @example
        #   sha1rnds4 xmm0, xmm1, 0x03
        #   sha1rnds4 xmm0, [ebx], 0x03
        def sha1rnds4(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHA1RNDS4,operand1,operand2,operand3,**kwargs)
        # Perform an Intermediate Calculation for the Next Four SHA256 Message Doublewords
        # @return [Ronin::ASM::X86::Instructions::SHA256MSG1]
        # @example
        #   sha256msg1 xmm0, xmm1
        #   sha256msg1 xmm0, [ebx]
        def sha256msg1(operand1,operand2,**kwargs) = add_instruction(Instructions::SHA256MSG1,operand1,operand2,**kwargs)
        # Perform a Final Calculation for the Next Four SHA256 Message Doublewords
        # @return [Ronin::ASM::X86::Instructions::SHA256MSG2]
        # @example
        #   sha256msg2 xmm0, xmm1
        #   sha256msg2 xmm0, [ebx]
        def sha256msg2(operand1,operand2,**kwargs) = add_instruction(Instructions::SHA256MSG2,operand1,operand2,**kwargs)
        # Perform Two Rounds of SHA256 Operation
        # @return [Ronin::ASM::X86::Instructions::SHA256RNDS2]
        # @example
        #   sha256rnds2 xmm0, xmm1, xmm0
        #   sha256rnds2 xmm0, [ebx], xmm0
        def sha256rnds2(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHA256RNDS2,operand1,operand2,operand3,**kwargs)
        # Logical Shift Left
        # @return [Ronin::ASM::X86::Instructions::SHL]
        # @example
        #   shl al, 1
        #   shl al, 0x02
        #   shl al, cl
        #   shl ax, 1
        #   shl ax, 0x02
        #   shl ax, cl
        #   shl eax, 1
        #   shl eax, 0x02
        #   shl eax, cl
        #   shl [eax], 1
        #   shl [eax], 0x02
        #   shl [eax], cl
        def shl(operand1,operand2,**kwargs) = add_instruction(Instructions::SHL,operand1,operand2,**kwargs)
        # Integer Double Precision Shift Left
        # @return [Ronin::ASM::X86::Instructions::SHLD]
        # @example
        #   shld ax, bx, 0x03
        #   shld ax, bx, cl
        #   shld eax, ebx, 0x03
        #   shld eax, ebx, cl
        #   shld [eax], bx, 0x03
        #   shld [eax], bx, cl
        #   shld [eax], ebx, 0x03
        #   shld [eax], ebx, cl
        def shld(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHLD,operand1,operand2,operand3,**kwargs)
        # Logical Shift Left Without Affecting Flags
        # @return [Ronin::ASM::X86::Instructions::SHLX]
        # @example
        #   shlx eax, ebx, ecx
        #   shlx eax, [ebx], ecx
        def shlx(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHLX,operand1,operand2,operand3,**kwargs)
        # Logical Shift Right
        # @return [Ronin::ASM::X86::Instructions::SHR]
        # @example
        #   shr al, 1
        #   shr al, 0x02
        #   shr al, cl
        #   shr ax, 1
        #   shr ax, 0x02
        #   shr ax, cl
        #   shr eax, 1
        #   shr eax, 0x02
        #   shr eax, cl
        #   shr [eax], 1
        #   shr [eax], 0x02
        #   shr [eax], cl
        def shr(operand1,operand2,**kwargs) = add_instruction(Instructions::SHR,operand1,operand2,**kwargs)
        # Integer Double Precision Shift Right
        # @return [Ronin::ASM::X86::Instructions::SHRD]
        # @example
        #   shrd ax, bx, 0x03
        #   shrd ax, bx, cl
        #   shrd eax, ebx, 0x03
        #   shrd eax, ebx, cl
        #   shrd [eax], bx, 0x03
        #   shrd [eax], bx, cl
        #   shrd [eax], ebx, 0x03
        #   shrd [eax], ebx, cl
        def shrd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHRD,operand1,operand2,operand3,**kwargs)
        # Logical Shift Right Without Affecting Flags
        # @return [Ronin::ASM::X86::Instructions::SHRX]
        # @example
        #   shrx eax, ebx, ecx
        #   shrx eax, [ebx], ecx
        def shrx(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHRX,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SHUFPD]
        # @example
        #   shufpd xmm0, xmm1, 0x03
        #   shufpd xmm0, [ebx], 0x03
        def shufpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHUFPD,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SHUFPS]
        # @example
        #   shufps xmm0, xmm1, 0x03
        #   shufps xmm0, [ebx], 0x03
        def shufps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::SHUFPS,operand1,operand2,operand3,**kwargs)
        # Compute Square Roots of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SQRTPD]
        # @example
        #   sqrtpd xmm0, xmm1
        #   sqrtpd xmm0, [ebx]
        def sqrtpd(operand1,operand2,**kwargs) = add_instruction(Instructions::SQRTPD,operand1,operand2,**kwargs)
        # Compute Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SQRTPS]
        # @example
        #   sqrtps xmm0, xmm1
        #   sqrtps xmm0, [ebx]
        def sqrtps(operand1,operand2,**kwargs) = add_instruction(Instructions::SQRTPS,operand1,operand2,**kwargs)
        # Compute Square Root of Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::SQRTSD]
        # @example
        #   sqrtsd xmm0, xmm1
        #   sqrtsd xmm0, [ebx]
        def sqrtsd(operand1,operand2,**kwargs) = add_instruction(Instructions::SQRTSD,operand1,operand2,**kwargs)
        # Compute Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::SQRTSS]
        # @example
        #   sqrtss xmm0, xmm1
        #   sqrtss xmm0, [ebx]
        def sqrtss(operand1,operand2,**kwargs) = add_instruction(Instructions::SQRTSS,operand1,operand2,**kwargs)
        # Set Carry Flag
        # @return [Ronin::ASM::X86::Instructions::STC]
        def stc(**kwargs) = add_instruction(Instructions::STC,**kwargs)
        # Set Direction Flag
        # @return [Ronin::ASM::X86::Instructions::STD]
        def std(**kwargs) = add_instruction(Instructions::STD,**kwargs)
        # Store MXCSR Register State
        # @return [Ronin::ASM::X86::Instructions::STMXCSR]
        # @example
        #   stmxcsr [eax]
        def stmxcsr(operand,**kwargs) = add_instruction(Instructions::STMXCSR,operand,**kwargs)
        # Subtract
        # @return [Ronin::ASM::X86::Instructions::SUB]
        # @example
        #   sub al, 0x02
        #   sub al, bl
        #   sub al, [ebx]
        #   sub ax, 0x0002
        #   sub ax, 0x02
        #   sub ax, bx
        #   sub ax, [ebx]
        #   sub eax, 0x00000002
        #   sub eax, 0x02
        #   sub eax, ebx
        #   sub eax, [ebx]
        #   sub [eax], 0x02
        #   sub [eax], bl
        #   sub [eax], 0x0002
        #   sub [eax], bx
        #   sub [eax], 0x00000002
        #   sub [eax], ebx
        def sub(operand1,operand2,**kwargs) = add_instruction(Instructions::SUB,operand1,operand2,**kwargs)
        # Subtract Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SUBPD]
        # @example
        #   subpd xmm0, xmm1
        #   subpd xmm0, [ebx]
        def subpd(operand1,operand2,**kwargs) = add_instruction(Instructions::SUBPD,operand1,operand2,**kwargs)
        # Subtract Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SUBPS]
        # @example
        #   subps xmm0, xmm1
        #   subps xmm0, [ebx]
        def subps(operand1,operand2,**kwargs) = add_instruction(Instructions::SUBPS,operand1,operand2,**kwargs)
        # Subtract Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SUBSD]
        # @example
        #   subsd xmm0, xmm1
        #   subsd xmm0, [ebx]
        def subsd(operand1,operand2,**kwargs) = add_instruction(Instructions::SUBSD,operand1,operand2,**kwargs)
        # Subtract Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::SUBSS]
        # @example
        #   subss xmm0, xmm1
        #   subss xmm0, [ebx]
        def subss(operand1,operand2,**kwargs) = add_instruction(Instructions::SUBSS,operand1,operand2,**kwargs)
        # Inverse Mask From Trailing Ones
        # @return [Ronin::ASM::X86::Instructions::T1MSKC]
        # @example
        #   t1mskc eax, ebx
        #   t1mskc eax, [ebx]
        def t1mskc(operand1,operand2,**kwargs) = add_instruction(Instructions::T1MSKC,operand1,operand2,**kwargs)
        # Logical Compare
        # @return [Ronin::ASM::X86::Instructions::TEST]
        # @example
        #   test al, 0x02
        #   test al, bl
        #   test ax, 0x0002
        #   test ax, bx
        #   test eax, 0x00000002
        #   test eax, ebx
        #   test [eax], 0x02
        #   test [eax], bl
        #   test [eax], 0x0002
        #   test [eax], bx
        #   test [eax], 0x00000002
        #   test [eax], ebx
        def test(operand1,operand2,**kwargs) = add_instruction(Instructions::TEST,operand1,operand2,**kwargs)
        # Timed PAUSE
        # @return [Ronin::ASM::X86::Instructions::TPAUSE]
        # @example
        #   tpause eax
        def tpause(operand,**kwargs) = add_instruction(Instructions::TPAUSE,operand,**kwargs)
        # Count the Number of Trailing Zero Bits
        # @return [Ronin::ASM::X86::Instructions::TZCNT]
        # @example
        #   tzcnt ax, bx
        #   tzcnt ax, [ebx]
        #   tzcnt eax, ebx
        #   tzcnt eax, [ebx]
        def tzcnt(operand1,operand2,**kwargs) = add_instruction(Instructions::TZCNT,operand1,operand2,**kwargs)
        # Mask From Trailing Zeros
        # @return [Ronin::ASM::X86::Instructions::TZMSK]
        # @example
        #   tzmsk eax, ebx
        #   tzmsk eax, [ebx]
        def tzmsk(operand1,operand2,**kwargs) = add_instruction(Instructions::TZMSK,operand1,operand2,**kwargs)
        # Unordered Compare Scalar Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::UCOMISD]
        # @example
        #   ucomisd xmm0, xmm1
        #   ucomisd xmm0, [ebx]
        def ucomisd(operand1,operand2,**kwargs) = add_instruction(Instructions::UCOMISD,operand1,operand2,**kwargs)
        # Unordered Compare Scalar Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::UCOMISS]
        # @example
        #   ucomiss xmm0, xmm1
        #   ucomiss xmm0, [ebx]
        def ucomiss(operand1,operand2,**kwargs) = add_instruction(Instructions::UCOMISS,operand1,operand2,**kwargs)
        # Undefined Instruction
        # @return [Ronin::ASM::X86::Instructions::UD2]
        def ud2(**kwargs) = add_instruction(Instructions::UD2,**kwargs)
        # User mode Monitor a Linear Address Range
        # @return [Ronin::ASM::X86::Instructions::UMONITOR]
        # @example
        #   umonitor eax
        def umonitor(operand,**kwargs) = add_instruction(Instructions::UMONITOR,operand,**kwargs)
        # User mode Monitor Wait
        # @return [Ronin::ASM::X86::Instructions::UMWAIT]
        # @example
        #   umwait eax
        def umwait(operand,**kwargs) = add_instruction(Instructions::UMWAIT,operand,**kwargs)
        # Unpack and Interleave High Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::UNPCKHPD]
        # @example
        #   unpckhpd xmm0, xmm1
        #   unpckhpd xmm0, [ebx]
        def unpckhpd(operand1,operand2,**kwargs) = add_instruction(Instructions::UNPCKHPD,operand1,operand2,**kwargs)
        # Unpack and Interleave High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::UNPCKHPS]
        # @example
        #   unpckhps xmm0, xmm1
        #   unpckhps xmm0, [ebx]
        def unpckhps(operand1,operand2,**kwargs) = add_instruction(Instructions::UNPCKHPS,operand1,operand2,**kwargs)
        # Unpack and Interleave Low Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::UNPCKLPD]
        # @example
        #   unpcklpd xmm0, xmm1
        #   unpcklpd xmm0, [ebx]
        def unpcklpd(operand1,operand2,**kwargs) = add_instruction(Instructions::UNPCKLPD,operand1,operand2,**kwargs)
        # Unpack and Interleave Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::UNPCKLPS]
        # @example
        #   unpcklps xmm0, xmm1
        #   unpcklps xmm0, [ebx]
        def unpcklps(operand1,operand2,**kwargs) = add_instruction(Instructions::UNPCKLPS,operand1,operand2,**kwargs)
        # Add Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VADDPD]
        # @example
        #   vaddpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vaddpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vaddpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vaddpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vaddpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vaddpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vaddpd xmm0, xmm1, xmm2
        #   vaddpd xmm0, xmm1, [ecx]
        #   vaddpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vaddpd ymm0, ymm1, ymm2
        #   vaddpd ymm0, ymm1, [ecx]
        #   vaddpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vaddpd zmm0, zmm1, zmm2
        #   vaddpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vaddpd zmm0, zmm1, zmm2, er
        def vaddpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VADDPD,operand1,operand2,operand3,*operands,**kwargs)
        # Add Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VADDPH]
        # @example
        #   vaddph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vaddph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vaddph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vaddph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vaddph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vaddph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vaddph xmm0, xmm1, xmm2
        #   vaddph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vaddph ymm0, ymm1, ymm2
        #   vaddph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vaddph zmm0, zmm1, zmm2
        #   vaddph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vaddph zmm0, zmm1, zmm2, er
        def vaddph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VADDPH,operand1,operand2,operand3,*operands,**kwargs)
        # Add Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VADDPS]
        # @example
        #   vaddps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vaddps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vaddps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vaddps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vaddps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vaddps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vaddps xmm0, xmm1, xmm2
        #   vaddps xmm0, xmm1, [ecx]
        #   vaddps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vaddps ymm0, ymm1, ymm2
        #   vaddps ymm0, ymm1, [ecx]
        #   vaddps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vaddps zmm0, zmm1, zmm2
        #   vaddps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vaddps zmm0, zmm1, zmm2, er
        def vaddps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VADDPS,operand1,operand2,operand3,*operands,**kwargs)
        # Add Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VADDSD]
        # @example
        #   vaddsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vaddsd xmm0, xmm1, xmm2
        #   vaddsd xmm0, xmm1, [ecx]
        #   vaddsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vaddsd xmm0, xmm1, xmm2, er
        def vaddsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VADDSD,operand1,operand2,operand3,*operands,**kwargs)
        # Add Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VADDSH]
        # @example
        #   vaddsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vaddsh xmm0, xmm1, xmm2
        #   vaddsh xmm0, xmm1, [ecx]
        #   vaddsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vaddsh xmm0, xmm1, xmm2, er
        def vaddsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VADDSH,operand1,operand2,operand3,*operands,**kwargs)
        # Add Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VADDSS]
        # @example
        #   vaddss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vaddss xmm0, xmm1, xmm2
        #   vaddss xmm0, xmm1, [ecx]
        #   vaddss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vaddss xmm0, xmm1, xmm2, er
        def vaddss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VADDSS,operand1,operand2,operand3,*operands,**kwargs)
        # Packed Double-FP Add/Subtract
        # @return [Ronin::ASM::X86::Instructions::VADDSUBPD]
        # @example
        #   vaddsubpd xmm0, xmm1, xmm2
        #   vaddsubpd xmm0, xmm1, [ecx]
        #   vaddsubpd ymm0, ymm1, ymm2
        #   vaddsubpd ymm0, ymm1, [ecx]
        def vaddsubpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VADDSUBPD,operand1,operand2,operand3,**kwargs)
        # Packed Single-FP Add/Subtract
        # @return [Ronin::ASM::X86::Instructions::VADDSUBPS]
        # @example
        #   vaddsubps xmm0, xmm1, xmm2
        #   vaddsubps xmm0, xmm1, [ecx]
        #   vaddsubps ymm0, ymm1, ymm2
        #   vaddsubps ymm0, ymm1, [ecx]
        def vaddsubps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VADDSUBPS,operand1,operand2,operand3,**kwargs)
        # Perform One Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86::Instructions::VAESDEC]
        # @example
        #   vaesdec xmm0, xmm1, xmm2
        #   vaesdec xmm0, xmm1, [ecx]
        #   vaesdec ymm0, ymm1, ymm2
        #   vaesdec ymm0, ymm1, [ecx]
        #   vaesdec zmm0, zmm1, zmm2
        #   vaesdec zmm0, zmm1, [ecx]
        def vaesdec(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VAESDEC,operand1,operand2,operand3,**kwargs)
        # Perform Last Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86::Instructions::VAESDECLAST]
        # @example
        #   vaesdeclast xmm0, xmm1, xmm2
        #   vaesdeclast xmm0, xmm1, [ecx]
        #   vaesdeclast ymm0, ymm1, ymm2
        #   vaesdeclast ymm0, ymm1, [ecx]
        #   vaesdeclast zmm0, zmm1, zmm2
        #   vaesdeclast zmm0, zmm1, [ecx]
        def vaesdeclast(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VAESDECLAST,operand1,operand2,operand3,**kwargs)
        # Perform One Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86::Instructions::VAESENC]
        # @example
        #   vaesenc xmm0, xmm1, xmm2
        #   vaesenc xmm0, xmm1, [ecx]
        #   vaesenc ymm0, ymm1, ymm2
        #   vaesenc ymm0, ymm1, [ecx]
        #   vaesenc zmm0, zmm1, zmm2
        #   vaesenc zmm0, zmm1, [ecx]
        def vaesenc(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VAESENC,operand1,operand2,operand3,**kwargs)
        # Perform Last Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86::Instructions::VAESENCLAST]
        # @example
        #   vaesenclast xmm0, xmm1, xmm2
        #   vaesenclast xmm0, xmm1, [ecx]
        #   vaesenclast ymm0, ymm1, ymm2
        #   vaesenclast ymm0, ymm1, [ecx]
        #   vaesenclast zmm0, zmm1, zmm2
        #   vaesenclast zmm0, zmm1, [ecx]
        def vaesenclast(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VAESENCLAST,operand1,operand2,operand3,**kwargs)
        # Perform the AES InvMixColumn Transformation
        # @return [Ronin::ASM::X86::Instructions::VAESIMC]
        # @example
        #   vaesimc xmm0, xmm1
        #   vaesimc xmm0, [ebx]
        def vaesimc(operand1,operand2,**kwargs) = add_instruction(Instructions::VAESIMC,operand1,operand2,**kwargs)
        # AES Round Key Generation Assist
        # @return [Ronin::ASM::X86::Instructions::VAESKEYGENASSIST]
        # @example
        #   vaeskeygenassist xmm0, xmm1, 0x03
        #   vaeskeygenassist xmm0, [ebx], 0x03
        def vaeskeygenassist(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VAESKEYGENASSIST,operand1,operand2,operand3,**kwargs)
        # Align Doubleword Vectors
        # @return [Ronin::ASM::X86::Instructions::VALIGND]
        # @example
        #   valignd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4}), 0x04
        #   valignd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   valignd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   valignd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   valignd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   valignd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   valignd xmm0, xmm1, bcst([ecx], {1=>4}), 0x04
        #   valignd xmm0, xmm1, xmm2, 0x04
        #   valignd ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   valignd ymm0, ymm1, ymm2, 0x04
        #   valignd zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   valignd zmm0, zmm1, zmm2, 0x04
        def valignd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VALIGND,operand1,operand2,operand3,operand4,**kwargs)
        # Align Quadword Vectors
        # @return [Ronin::ASM::X86::Instructions::VALIGNQ]
        # @example
        #   valignq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   valignq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   valignq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   valignq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   valignq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   valignq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   valignq xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   valignq xmm0, xmm1, xmm2, 0x04
        #   valignq ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   valignq ymm0, ymm1, ymm2, 0x04
        #   valignq zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   valignq zmm0, zmm1, zmm2, 0x04
        def valignq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VALIGNQ,operand1,operand2,operand3,operand4,**kwargs)
        # Bitwise Logical AND NOT of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VANDNPD]
        # @example
        #   vandnpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vandnpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandnpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vandnpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandnpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vandnpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandnpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vandnpd xmm0, xmm1, xmm2
        #   vandnpd xmm0, xmm1, [ecx]
        #   vandnpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vandnpd ymm0, ymm1, ymm2
        #   vandnpd ymm0, ymm1, [ecx]
        #   vandnpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vandnpd zmm0, zmm1, zmm2
        def vandnpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VANDNPD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VANDNPS]
        # @example
        #   vandnps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vandnps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandnps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vandnps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandnps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vandnps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandnps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vandnps xmm0, xmm1, xmm2
        #   vandnps xmm0, xmm1, [ecx]
        #   vandnps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vandnps ymm0, ymm1, ymm2
        #   vandnps ymm0, ymm1, [ecx]
        #   vandnps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vandnps zmm0, zmm1, zmm2
        def vandnps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VANDNPS,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VANDPD]
        # @example
        #   vandpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vandpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vandpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vandpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vandpd xmm0, xmm1, xmm2
        #   vandpd xmm0, xmm1, [ecx]
        #   vandpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vandpd ymm0, ymm1, ymm2
        #   vandpd ymm0, ymm1, [ecx]
        #   vandpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vandpd zmm0, zmm1, zmm2
        def vandpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VANDPD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VANDPS]
        # @example
        #   vandps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vandps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vandps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vandps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vandps xmm0, xmm1, xmm2
        #   vandps xmm0, xmm1, [ecx]
        #   vandps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vandps ymm0, ymm1, ymm2
        #   vandps ymm0, ymm1, [ecx]
        #   vandps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vandps zmm0, zmm1, zmm2
        def vandps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VANDPS,operand1,operand2,operand3,**kwargs)
        # Load BF16 Element and Convert to FP32 Element With Broadcas
        # @return [Ronin::ASM::X86::Instructions::VBCSTNEBF162PS]
        # @example
        #   vbcstnebf162ps xmm0, [ebx]
        #   vbcstnebf162ps ymm0, [ebx]
        def vbcstnebf162ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VBCSTNEBF162PS,operand1,operand2,**kwargs)
        # Load FP16 Element and Convert to FP32 Element with Broadcast
        # @return [Ronin::ASM::X86::Instructions::VBCSTNESH2PS]
        # @example
        #   vbcstnesh2ps xmm0, [ebx]
        #   vbcstnesh2ps ymm0, [ebx]
        def vbcstnesh2ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VBCSTNESH2PS,operand1,operand2,**kwargs)
        # Blend Packed Double-Precision Floating-Point Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86::Instructions::VBLENDMPD]
        # @example
        #   vblendmpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vblendmpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vblendmpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vblendmpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vblendmpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vblendmpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vblendmpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vblendmpd xmm0, xmm1, xmm2
        #   vblendmpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vblendmpd ymm0, ymm1, ymm2
        #   vblendmpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vblendmpd zmm0, zmm1, zmm2
        def vblendmpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VBLENDMPD,operand1,operand2,operand3,**kwargs)
        # Blend Packed Single-Precision Floating-Point Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86::Instructions::VBLENDMPS]
        # @example
        #   vblendmps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vblendmps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vblendmps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vblendmps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vblendmps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vblendmps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vblendmps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vblendmps xmm0, xmm1, xmm2
        #   vblendmps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vblendmps ymm0, ymm1, ymm2
        #   vblendmps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vblendmps zmm0, zmm1, zmm2
        def vblendmps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VBLENDMPS,operand1,operand2,operand3,**kwargs)
        # Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VBLENDPD]
        # @example
        #   vblendpd xmm0, xmm1, xmm2, 0x04
        #   vblendpd xmm0, xmm1, [ecx], 0x04
        #   vblendpd ymm0, ymm1, ymm2, 0x04
        #   vblendpd ymm0, ymm1, [ecx], 0x04
        def vblendpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VBLENDPD,operand1,operand2,operand3,operand4,**kwargs)
        #  Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VBLENDPS]
        # @example
        #   vblendps xmm0, xmm1, xmm2, 0x04
        #   vblendps xmm0, xmm1, [ecx], 0x04
        #   vblendps ymm0, ymm1, ymm2, 0x04
        #   vblendps ymm0, ymm1, [ecx], 0x04
        def vblendps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VBLENDPS,operand1,operand2,operand3,operand4,**kwargs)
        #  Variable Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VBLENDVPD]
        # @example
        #   vblendvpd xmm0, xmm1, xmm2, xmm3
        #   vblendvpd xmm0, xmm1, [ecx], xmm3
        #   vblendvpd ymm0, ymm1, ymm2, ymm3
        #   vblendvpd ymm0, ymm1, [ecx], ymm3
        def vblendvpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VBLENDVPD,operand1,operand2,operand3,operand4,**kwargs)
        #  Variable Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VBLENDVPS]
        # @example
        #   vblendvps xmm0, xmm1, xmm2, xmm3
        #   vblendvps xmm0, xmm1, [ecx], xmm3
        #   vblendvps ymm0, ymm1, ymm2, ymm3
        #   vblendvps ymm0, ymm1, [ecx], ymm3
        def vblendvps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VBLENDVPS,operand1,operand2,operand3,operand4,**kwargs)
        # Broadcast 128 Bit of Floating-Point Data
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTF128]
        # @example
        #   vbroadcastf128 ymm0, [ebx]
        def vbroadcastf128(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTF128,operand1,operand2,**kwargs)
        # Broadcast Two Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTF32X2]
        # @example
        #   vbroadcastf32x2 opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcastf32x2 opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcastf32x2 opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcastf32x2 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcastf32x2 ymm0, xmm1
        #   vbroadcastf32x2 ymm0, [ebx]
        #   vbroadcastf32x2 zmm0, xmm1
        #   vbroadcastf32x2 zmm0, [ebx]
        def vbroadcastf32x2(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTF32X2,operand1,operand2,**kwargs)
        # Broadcast Four Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTF32X4]
        # @example
        #   vbroadcastf32x4 opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcastf32x4 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcastf32x4 ymm0, [ebx]
        #   vbroadcastf32x4 zmm0, [ebx]
        def vbroadcastf32x4(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTF32X4,operand1,operand2,**kwargs)
        # Broadcast Eight Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTF32X8]
        # @example
        #   vbroadcastf32x8 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcastf32x8 zmm0, [ebx]
        def vbroadcastf32x8(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTF32X8,operand1,operand2,**kwargs)
        # Broadcast Two Double-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTF64X2]
        # @example
        #   vbroadcastf64x2 opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcastf64x2 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcastf64x2 ymm0, [ebx]
        #   vbroadcastf64x2 zmm0, [ebx]
        def vbroadcastf64x2(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTF64X2,operand1,operand2,**kwargs)
        # Broadcast Four Double-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTF64X4]
        # @example
        #   vbroadcastf64x4 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcastf64x4 zmm0, [ebx]
        def vbroadcastf64x4(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTF64X4,operand1,operand2,**kwargs)
        # Broadcast 128 Bits of Integer Data
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTI128]
        # @example
        #   vbroadcasti128 ymm0, [ebx]
        def vbroadcasti128(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTI128,operand1,operand2,**kwargs)
        # Broadcast Two Doubleword Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTI32X2]
        # @example
        #   vbroadcasti32x2 opmask(xmm0, k1, zero: true), xmm1
        #   vbroadcasti32x2 opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcasti32x2 opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcasti32x2 opmask(xmm0, k1, zero: true), [ebx]
        #   vbroadcasti32x2 opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcasti32x2 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcasti32x2 xmm0, xmm1
        #   vbroadcasti32x2 xmm0, [ebx]
        #   vbroadcasti32x2 ymm0, xmm1
        #   vbroadcasti32x2 ymm0, [ebx]
        #   vbroadcasti32x2 zmm0, xmm1
        #   vbroadcasti32x2 zmm0, [ebx]
        def vbroadcasti32x2(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTI32X2,operand1,operand2,**kwargs)
        # Broadcast Four Doubleword Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTI32X4]
        # @example
        #   vbroadcasti32x4 opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcasti32x4 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcasti32x4 ymm0, [ebx]
        #   vbroadcasti32x4 zmm0, [ebx]
        def vbroadcasti32x4(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTI32X4,operand1,operand2,**kwargs)
        # Broadcast Eight Doubleword Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTI32X8]
        # @example
        #   vbroadcasti32x8 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcasti32x8 zmm0, [ebx]
        def vbroadcasti32x8(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTI32X8,operand1,operand2,**kwargs)
        # Broadcast Two Quadword Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTI64X2]
        # @example
        #   vbroadcasti64x2 opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcasti64x2 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcasti64x2 ymm0, [ebx]
        #   vbroadcasti64x2 zmm0, [ebx]
        def vbroadcasti64x2(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTI64X2,operand1,operand2,**kwargs)
        # Broadcast Four Quadword Elements
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTI64X4]
        # @example
        #   vbroadcasti64x4 opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcasti64x4 zmm0, [ebx]
        def vbroadcasti64x4(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTI64X4,operand1,operand2,**kwargs)
        # Broadcast Double-Precision Floating-Point Element
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTSD]
        # @example
        #   vbroadcastsd opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcastsd opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcastsd opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcastsd opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcastsd ymm0, xmm1
        #   vbroadcastsd ymm0, [ebx]
        #   vbroadcastsd zmm0, xmm1
        #   vbroadcastsd zmm0, [ebx]
        def vbroadcastsd(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTSD,operand1,operand2,**kwargs)
        # Broadcast Single-Precision Floating-Point Element
        # @return [Ronin::ASM::X86::Instructions::VBROADCASTSS]
        # @example
        #   vbroadcastss opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcastss opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcastss opmask(ymm0, k1, zero: true), [ebx]
        #   vbroadcastss opmask(zmm0, k1, zero: true), [ebx]
        #   vbroadcastss xmm0, xmm1
        #   vbroadcastss xmm0, [ebx]
        #   vbroadcastss ymm0, xmm1
        #   vbroadcastss ymm0, [ebx]
        #   vbroadcastss zmm0, xmm1
        #   vbroadcastss zmm0, [ebx]
        def vbroadcastss(operand1,operand2,**kwargs) = add_instruction(Instructions::VBROADCASTSS,operand1,operand2,**kwargs)
        # Compare Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCMPPD]
        # @example
        #   vcmppd opmask(k1, k2), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vcmppd k1, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vcmppd opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmppd k1, xmm1, xmm2, 0x04
        #   vcmppd opmask(k1, k2), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vcmppd k1, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vcmppd opmask(k1, k2), ymm1, ymm2, 0x04
        #   vcmppd k1, ymm1, ymm2, 0x04
        #   vcmppd opmask(k1, k2), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vcmppd k1, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vcmppd opmask(k1, k2), zmm1, zmm2, 0x04
        #   vcmppd k1, zmm1, zmm2, 0x04
        #   vcmppd xmm0, xmm1, xmm2, 0x04
        #   vcmppd xmm0, xmm1, [ecx], 0x04
        #   vcmppd ymm0, ymm1, ymm2, 0x04
        #   vcmppd ymm0, ymm1, [ecx], 0x04
        #   vcmppd opmask(k1, k2), zmm1, zmm2, sae, 0x05
        #   vcmppd k1, zmm1, zmm2, sae, 0x05
        def vcmppd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VCMPPD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Compare Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCMPPH]
        # @example
        #   vcmpph opmask(k1, k2), xmm1, bcst([ecx], {1=>8}), 0x04
        #   vcmpph k1, xmm1, bcst([ecx], {1=>8}), 0x04
        #   vcmpph opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpph k1, xmm1, xmm2, 0x04
        #   vcmpph opmask(k1, k2), ymm1, bcst([ecx], {1=>16}), 0x04
        #   vcmpph k1, ymm1, bcst([ecx], {1=>16}), 0x04
        #   vcmpph opmask(k1, k2), ymm1, ymm2, 0x04
        #   vcmpph k1, ymm1, ymm2, 0x04
        #   vcmpph opmask(k1, k2), zmm1, bcst([ecx], {1=>32}), 0x04
        #   vcmpph k1, zmm1, bcst([ecx], {1=>32}), 0x04
        #   vcmpph opmask(k1, k2), zmm1, zmm2, 0x04
        #   vcmpph k1, zmm1, zmm2, 0x04
        #   vcmpph opmask(k1, k2), zmm1, zmm2, sae, 0x05
        #   vcmpph k1, zmm1, zmm2, sae, 0x05
        def vcmpph(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VCMPPH,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Compare Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCMPPS]
        # @example
        #   vcmpps opmask(k1, k2), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vcmpps k1, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vcmpps opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpps k1, xmm1, xmm2, 0x04
        #   vcmpps opmask(k1, k2), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vcmpps k1, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vcmpps opmask(k1, k2), ymm1, ymm2, 0x04
        #   vcmpps k1, ymm1, ymm2, 0x04
        #   vcmpps opmask(k1, k2), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vcmpps k1, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vcmpps opmask(k1, k2), zmm1, zmm2, 0x04
        #   vcmpps k1, zmm1, zmm2, 0x04
        #   vcmpps xmm0, xmm1, xmm2, 0x04
        #   vcmpps xmm0, xmm1, [ecx], 0x04
        #   vcmpps ymm0, ymm1, ymm2, 0x04
        #   vcmpps ymm0, ymm1, [ecx], 0x04
        #   vcmpps opmask(k1, k2), zmm1, zmm2, sae, 0x05
        #   vcmpps k1, zmm1, zmm2, sae, 0x05
        def vcmpps(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VCMPPS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Compare Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCMPSD]
        # @example
        #   vcmpsd opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpsd k1, xmm1, xmm2, 0x04
        #   vcmpsd opmask(k1, k2), xmm1, [ecx], 0x04
        #   vcmpsd k1, xmm1, [ecx], 0x04
        #   vcmpsd xmm0, xmm1, xmm2, 0x04
        #   vcmpsd xmm0, xmm1, [ecx], 0x04
        #   vcmpsd opmask(k1, k2), xmm1, xmm2, sae, 0x05
        #   vcmpsd k1, xmm1, xmm2, sae, 0x05
        def vcmpsd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VCMPSD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Compare Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCMPSH]
        # @example
        #   vcmpsh opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpsh k1, xmm1, xmm2, 0x04
        #   vcmpsh opmask(k1, k2), xmm1, [ecx], 0x04
        #   vcmpsh k1, xmm1, [ecx], 0x04
        #   vcmpsh opmask(k1, k2), xmm1, xmm2, sae, 0x05
        #   vcmpsh k1, xmm1, xmm2, sae, 0x05
        def vcmpsh(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VCMPSH,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Compare Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCMPSS]
        # @example
        #   vcmpss opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpss k1, xmm1, xmm2, 0x04
        #   vcmpss opmask(k1, k2), xmm1, [ecx], 0x04
        #   vcmpss k1, xmm1, [ecx], 0x04
        #   vcmpss xmm0, xmm1, xmm2, 0x04
        #   vcmpss xmm0, xmm1, [ecx], 0x04
        #   vcmpss opmask(k1, k2), xmm1, xmm2, sae, 0x05
        #   vcmpss k1, xmm1, xmm2, sae, 0x05
        def vcmpss(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VCMPSS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Compare Scalar Ordered Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::VCOMISD]
        # @example
        #   vcomisd xmm0, xmm1
        #   vcomisd xmm0, [ebx]
        #   vcomisd xmm0, xmm1, sae
        def vcomisd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCOMISD,operand1,operand2,*operands,**kwargs)
        # Compare Scalar Ordered Half-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::VCOMISH]
        # @example
        #   vcomish xmm0, xmm1
        #   vcomish xmm0, [ebx]
        #   vcomish xmm0, xmm1, sae
        def vcomish(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCOMISH,operand1,operand2,*operands,**kwargs)
        # Compare Scalar Ordered Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::VCOMISS]
        # @example
        #   vcomiss xmm0, xmm1
        #   vcomiss xmm0, [ebx]
        #   vcomiss xmm0, xmm1, sae
        def vcomiss(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCOMISS,operand1,operand2,*operands,**kwargs)
        # Store Sparse Packed Double-Precision Floating-Point Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VCOMPRESSPD]
        # @example
        #   vcompresspd opmask(xmm0, k1, zero: true), xmm1
        #   vcompresspd opmask([eax], k1), xmm1
        #   vcompresspd opmask(ymm0, k1, zero: true), ymm1
        #   vcompresspd opmask([eax], k1), ymm1
        #   vcompresspd opmask(zmm0, k1, zero: true), zmm1
        #   vcompresspd opmask([eax], k1), zmm1
        #   vcompresspd xmm0, xmm1
        #   vcompresspd ymm0, ymm1
        #   vcompresspd zmm0, zmm1
        #   vcompresspd [eax], xmm1
        #   vcompresspd [eax], ymm1
        #   vcompresspd [eax], zmm1
        def vcompresspd(operand1,operand2,**kwargs) = add_instruction(Instructions::VCOMPRESSPD,operand1,operand2,**kwargs)
        # Store Sparse Packed Single-Precision Floating-Point Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VCOMPRESSPS]
        # @example
        #   vcompressps opmask(xmm0, k1, zero: true), xmm1
        #   vcompressps opmask([eax], k1), xmm1
        #   vcompressps opmask(ymm0, k1, zero: true), ymm1
        #   vcompressps opmask([eax], k1), ymm1
        #   vcompressps opmask(zmm0, k1, zero: true), zmm1
        #   vcompressps opmask([eax], k1), zmm1
        #   vcompressps xmm0, xmm1
        #   vcompressps ymm0, ymm1
        #   vcompressps zmm0, zmm1
        #   vcompressps [eax], xmm1
        #   vcompressps [eax], ymm1
        #   vcompressps [eax], zmm1
        def vcompressps(operand1,operand2,**kwargs) = add_instruction(Instructions::VCOMPRESSPS,operand1,operand2,**kwargs)
        # Convert Packed Dword Integers to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTDQ2PD]
        # @example
        #   vcvtdq2pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtdq2pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtdq2pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtdq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtdq2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtdq2pd opmask(zmm0, k1, zero: true), ymm1
        #   vcvtdq2pd xmm0, bcst([ebx], {1=>2})
        #   vcvtdq2pd xmm0, xmm1
        #   vcvtdq2pd xmm0, [ebx]
        #   vcvtdq2pd ymm0, bcst([ebx], {1=>4})
        #   vcvtdq2pd ymm0, xmm1
        #   vcvtdq2pd ymm0, [ebx]
        #   vcvtdq2pd zmm0, bcst([ebx], {1=>8})
        #   vcvtdq2pd zmm0, ymm1
        def vcvtdq2pd(operand1,operand2,**kwargs) = add_instruction(Instructions::VCVTDQ2PD,operand1,operand2,**kwargs)
        # Convert Packed Dword Integers to Packed Half-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTDQ2PH]
        # @example
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtdq2ph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtdq2ph opmask(ymm0, k1, zero: true), zmm1
        #   vcvtdq2ph xmm0, bcst([ebx], {1=>4})
        #   vcvtdq2ph xmm0, bcst([ebx], {1=>8})
        #   vcvtdq2ph xmm0, xmm1
        #   vcvtdq2ph xmm0, ymm1
        #   vcvtdq2ph ymm0, bcst([ebx], {1=>16})
        #   vcvtdq2ph ymm0, zmm1
        #   vcvtdq2ph opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtdq2ph ymm0, zmm1, er
        def vcvtdq2ph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PH,operand1,operand2,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTDQ2PS]
        # @example
        #   vcvtdq2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtdq2ps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtdq2ps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtdq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtdq2ps opmask(ymm0, k1, zero: true), ymm1
        #   vcvtdq2ps opmask(zmm0, k1, zero: true), zmm1
        #   vcvtdq2ps xmm0, bcst([ebx], {1=>4})
        #   vcvtdq2ps xmm0, xmm1
        #   vcvtdq2ps xmm0, [ebx]
        #   vcvtdq2ps ymm0, bcst([ebx], {1=>8})
        #   vcvtdq2ps ymm0, ymm1
        #   vcvtdq2ps ymm0, [ebx]
        #   vcvtdq2ps zmm0, bcst([ebx], {1=>16})
        #   vcvtdq2ps zmm0, zmm1
        #   vcvtdq2ps opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtdq2ps zmm0, zmm1, er
        def vcvtdq2ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PS,operand1,operand2,*operands,**kwargs)
        # Convert with Nearest-Even rounding 2 Single-Precision FP vectors into BFloat16 FP vector
        # @return [Ronin::ASM::X86::Instructions::VCVTNE2PS2BF16]
        # @example
        #   vcvtne2ps2bf16 opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vcvtne2ps2bf16 opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtne2ps2bf16 opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vcvtne2ps2bf16 opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vcvtne2ps2bf16 opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vcvtne2ps2bf16 opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vcvtne2ps2bf16 xmm0, xmm1, bcst([ecx], {1=>4})
        #   vcvtne2ps2bf16 xmm0, xmm1, xmm2
        #   vcvtne2ps2bf16 ymm0, ymm1, bcst([ecx], {1=>8})
        #   vcvtne2ps2bf16 ymm0, ymm1, ymm2
        #   vcvtne2ps2bf16 zmm0, zmm1, bcst([ecx], {1=>16})
        #   vcvtne2ps2bf16 zmm0, zmm1, zmm2
        def vcvtne2ps2bf16(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VCVTNE2PS2BF16,operand1,operand2,operand3,**kwargs)
        # Convert Even Elements of Packed BF16 Values to FP32 Values
        # @return [Ronin::ASM::X86::Instructions::VCVTNEEBF162PS]
        # @example
        #   vcvtneebf162ps xmm0, [ebx]
        #   vcvtneebf162ps ymm0, [ebx]
        def vcvtneebf162ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VCVTNEEBF162PS,operand1,operand2,**kwargs)
        # Convert Even Elements of Packed FP16 Values to FP32 Values
        # @return [Ronin::ASM::X86::Instructions::VCVTNEEPH2PS]
        # @example
        #   vcvtneeph2ps xmm0, [ebx]
        #   vcvtneeph2ps ymm0, [ebx]
        def vcvtneeph2ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VCVTNEEPH2PS,operand1,operand2,**kwargs)
        # Convert Odd Elements of Packed BF16 Values to FP32 Values
        # @return [Ronin::ASM::X86::Instructions::VCVTNEOBF162PS]
        # @example
        #   vcvtneobf162ps xmm0, [ebx]
        #   vcvtneobf162ps ymm0, [ebx]
        def vcvtneobf162ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VCVTNEOBF162PS,operand1,operand2,**kwargs)
        # Convert Odd Elements of Packed FP16 Values to FP32 Values
        # @return [Ronin::ASM::X86::Instructions::VCVTNEOPH2PS]
        # @example
        #   vcvtneoph2ps xmm0, [ebx]
        #   vcvtneoph2ps ymm0, [ebx]
        def vcvtneoph2ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VCVTNEOPH2PS,operand1,operand2,**kwargs)
        # Convert with Nearest-Even rounding a Single-Precision FP vector into a BFloat16 FP vector
        # @return [Ronin::ASM::X86::Instructions::VCVTNEPS2BF16]
        # @example
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtneps2bf16 opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), xmm1
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), ymm1
        #   vcvtneps2bf16 opmask(ymm0, k1, zero: true), zmm1
        #   vcvtneps2bf16 xmm0, bcst([ebx], {1=>4})
        #   vcvtneps2bf16 xmm0, bcst([ebx], {1=>8})
        #   vcvtneps2bf16 xmm0, xmm1
        #   vcvtneps2bf16 xmm0, ymm1
        #   vcvtneps2bf16 xmm0, [ebx]
        #   vcvtneps2bf16 ymm0, bcst([ebx], {1=>16})
        #   vcvtneps2bf16 ymm0, zmm1
        def vcvtneps2bf16(operand1,operand2,**kwargs) = add_instruction(Instructions::VCVTNEPS2BF16,operand1,operand2,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTPD2DQ]
        # @example
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtpd2dq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2dq opmask(ymm0, k1, zero: true), zmm1
        #   vcvtpd2dq xmm0, bcst([ebx], {1=>2})
        #   vcvtpd2dq xmm0, bcst([ebx], {1=>4})
        #   vcvtpd2dq xmm0, xmm1
        #   vcvtpd2dq xmm0, ymm1
        #   vcvtpd2dq xmm0, [ebx]
        #   vcvtpd2dq ymm0, bcst([ebx], {1=>8})
        #   vcvtpd2dq ymm0, zmm1
        #   vcvtpd2dq opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtpd2dq ymm0, zmm1, er
        def vcvtpd2dq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPD2DQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Half-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPD2PH]
        # @example
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), zmm1
        #   vcvtpd2ph xmm0, bcst([ebx], {1=>2})
        #   vcvtpd2ph xmm0, bcst([ebx], {1=>4})
        #   vcvtpd2ph xmm0, bcst([ebx], {1=>8})
        #   vcvtpd2ph xmm0, xmm1
        #   vcvtpd2ph xmm0, ymm1
        #   vcvtpd2ph xmm0, zmm1
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), zmm1, er
        #   vcvtpd2ph xmm0, zmm1, er
        def vcvtpd2ph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPD2PH,operand1,operand2,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPD2PS]
        # @example
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtpd2ps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2ps opmask(ymm0, k1, zero: true), zmm1
        #   vcvtpd2ps xmm0, bcst([ebx], {1=>2})
        #   vcvtpd2ps xmm0, bcst([ebx], {1=>4})
        #   vcvtpd2ps xmm0, xmm1
        #   vcvtpd2ps xmm0, ymm1
        #   vcvtpd2ps xmm0, [ebx]
        #   vcvtpd2ps ymm0, bcst([ebx], {1=>8})
        #   vcvtpd2ps ymm0, zmm1
        #   vcvtpd2ps opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtpd2ps ymm0, zmm1, er
        def vcvtpd2ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPD2PS,operand1,operand2,*operands,**kwargs)
        # Convert Packed Double-Precision Floating-Point Values to Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTPD2QQ]
        # @example
        #   vcvtpd2qq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtpd2qq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtpd2qq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtpd2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2qq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtpd2qq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtpd2qq xmm0, bcst([ebx], {1=>2})
        #   vcvtpd2qq xmm0, xmm1
        #   vcvtpd2qq ymm0, bcst([ebx], {1=>4})
        #   vcvtpd2qq ymm0, ymm1
        #   vcvtpd2qq zmm0, bcst([ebx], {1=>8})
        #   vcvtpd2qq zmm0, zmm1
        #   vcvtpd2qq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtpd2qq zmm0, zmm1, er
        def vcvtpd2qq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPD2QQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Double-Precision Floating-Point Values to Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTPD2UDQ]
        # @example
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtpd2udq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2udq opmask(ymm0, k1, zero: true), zmm1
        #   vcvtpd2udq xmm0, bcst([ebx], {1=>2})
        #   vcvtpd2udq xmm0, bcst([ebx], {1=>4})
        #   vcvtpd2udq xmm0, xmm1
        #   vcvtpd2udq xmm0, ymm1
        #   vcvtpd2udq ymm0, bcst([ebx], {1=>8})
        #   vcvtpd2udq ymm0, zmm1
        #   vcvtpd2udq opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtpd2udq ymm0, zmm1, er
        def vcvtpd2udq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPD2UDQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Double-Precision Floating-Point Values to Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTPD2UQQ]
        # @example
        #   vcvtpd2uqq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtpd2uqq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtpd2uqq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtpd2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2uqq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtpd2uqq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtpd2uqq xmm0, bcst([ebx], {1=>2})
        #   vcvtpd2uqq xmm0, xmm1
        #   vcvtpd2uqq ymm0, bcst([ebx], {1=>4})
        #   vcvtpd2uqq ymm0, ymm1
        #   vcvtpd2uqq zmm0, bcst([ebx], {1=>8})
        #   vcvtpd2uqq zmm0, zmm1
        #   vcvtpd2uqq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtpd2uqq zmm0, zmm1, er
        def vcvtpd2uqq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPD2UQQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Half-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2DQ]
        # @example
        #   vcvtph2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtph2dq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2dq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtph2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2dq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2dq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2dq xmm0, bcst([ebx], {1=>4})
        #   vcvtph2dq xmm0, xmm1
        #   vcvtph2dq ymm0, bcst([ebx], {1=>8})
        #   vcvtph2dq ymm0, xmm1
        #   vcvtph2dq zmm0, bcst([ebx], {1=>16})
        #   vcvtph2dq zmm0, ymm1
        #   vcvtph2dq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtph2dq zmm0, ymm1, er
        def vcvtph2dq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2DQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Half-Precision FP Values to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2PD]
        # @example
        #   vcvtph2pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtph2pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtph2pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2pd opmask(zmm0, k1, zero: true), xmm1
        #   vcvtph2pd xmm0, bcst([ebx], {1=>2})
        #   vcvtph2pd xmm0, xmm1
        #   vcvtph2pd ymm0, bcst([ebx], {1=>4})
        #   vcvtph2pd ymm0, xmm1
        #   vcvtph2pd zmm0, bcst([ebx], {1=>8})
        #   vcvtph2pd zmm0, xmm1
        #   vcvtph2pd opmask(zmm0, k1, zero: true), xmm1, sae
        #   vcvtph2pd zmm0, xmm1, sae
        def vcvtph2pd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PD,operand1,operand2,*operands,**kwargs)
        # Convert Half-Precision FP Values to Single-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2PS]
        # @example
        #   vcvtph2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2ps opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2ps opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2ps opmask(xmm0, k1, zero: true), [ebx]
        #   vcvtph2ps opmask(ymm0, k1, zero: true), [ebx]
        #   vcvtph2ps opmask(zmm0, k1, zero: true), [ebx]
        #   vcvtph2ps xmm0, xmm1
        #   vcvtph2ps xmm0, [ebx]
        #   vcvtph2ps ymm0, xmm1
        #   vcvtph2ps ymm0, [ebx]
        #   vcvtph2ps zmm0, ymm1
        #   vcvtph2ps zmm0, [ebx]
        #   vcvtph2ps opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvtph2ps zmm0, ymm1, sae
        def vcvtph2ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PS,operand1,operand2,*operands,**kwargs)
        # Convert Half-Precision FP Values to Single-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2PSX]
        # @example
        #   vcvtph2psx opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtph2psx opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2psx opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtph2psx opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2psx opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2psx opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2psx xmm0, bcst([ebx], {1=>4})
        #   vcvtph2psx xmm0, xmm1
        #   vcvtph2psx ymm0, bcst([ebx], {1=>8})
        #   vcvtph2psx ymm0, xmm1
        #   vcvtph2psx zmm0, bcst([ebx], {1=>16})
        #   vcvtph2psx zmm0, ymm1
        #   vcvtph2psx opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvtph2psx zmm0, ymm1, sae
        def vcvtph2psx(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PSX,operand1,operand2,*operands,**kwargs)
        # Convert Packed Half Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2QQ]
        # @example
        #   vcvtph2qq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtph2qq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtph2qq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2qq opmask(zmm0, k1, zero: true), xmm1
        #   vcvtph2qq xmm0, bcst([ebx], {1=>2})
        #   vcvtph2qq xmm0, xmm1
        #   vcvtph2qq ymm0, bcst([ebx], {1=>4})
        #   vcvtph2qq ymm0, xmm1
        #   vcvtph2qq zmm0, bcst([ebx], {1=>8})
        #   vcvtph2qq zmm0, xmm1
        #   vcvtph2qq opmask(zmm0, k1, zero: true), xmm1, er
        #   vcvtph2qq zmm0, xmm1, er
        def vcvtph2qq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2QQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Half-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2UDQ]
        # @example
        #   vcvtph2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtph2udq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2udq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtph2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2udq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2udq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2udq xmm0, bcst([ebx], {1=>4})
        #   vcvtph2udq xmm0, xmm1
        #   vcvtph2udq ymm0, bcst([ebx], {1=>8})
        #   vcvtph2udq ymm0, xmm1
        #   vcvtph2udq zmm0, bcst([ebx], {1=>16})
        #   vcvtph2udq zmm0, ymm1
        #   vcvtph2udq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtph2udq zmm0, ymm1, er
        def vcvtph2udq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UDQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Half Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2UQQ]
        # @example
        #   vcvtph2uqq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtph2uqq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtph2uqq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2uqq opmask(zmm0, k1, zero: true), xmm1
        #   vcvtph2uqq xmm0, bcst([ebx], {1=>2})
        #   vcvtph2uqq xmm0, xmm1
        #   vcvtph2uqq ymm0, bcst([ebx], {1=>4})
        #   vcvtph2uqq ymm0, xmm1
        #   vcvtph2uqq zmm0, bcst([ebx], {1=>8})
        #   vcvtph2uqq zmm0, xmm1
        #   vcvtph2uqq opmask(zmm0, k1, zero: true), xmm1, er
        #   vcvtph2uqq zmm0, xmm1, er
        def vcvtph2uqq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UQQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Half-Precision Floating-Point Values to Packed Unsigned Word Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2UW]
        # @example
        #   vcvtph2uw opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2uw opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtph2uw opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vcvtph2uw opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2uw opmask(ymm0, k1, zero: true), ymm1
        #   vcvtph2uw opmask(zmm0, k1, zero: true), zmm1
        #   vcvtph2uw xmm0, bcst([ebx], {1=>8})
        #   vcvtph2uw xmm0, xmm1
        #   vcvtph2uw ymm0, bcst([ebx], {1=>16})
        #   vcvtph2uw ymm0, ymm1
        #   vcvtph2uw zmm0, bcst([ebx], {1=>32})
        #   vcvtph2uw zmm0, zmm1
        #   vcvtph2uw opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtph2uw zmm0, zmm1, er
        def vcvtph2uw(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UW,operand1,operand2,*operands,**kwargs)
        # Convert Packed Half-Precision Floating-Point Values to Packed Word Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPH2W]
        # @example
        #   vcvtph2w opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtph2w opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtph2w opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vcvtph2w opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2w opmask(ymm0, k1, zero: true), ymm1
        #   vcvtph2w opmask(zmm0, k1, zero: true), zmm1
        #   vcvtph2w xmm0, bcst([ebx], {1=>8})
        #   vcvtph2w xmm0, xmm1
        #   vcvtph2w ymm0, bcst([ebx], {1=>16})
        #   vcvtph2w ymm0, ymm1
        #   vcvtph2w zmm0, bcst([ebx], {1=>32})
        #   vcvtph2w zmm0, zmm1
        #   vcvtph2w opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtph2w zmm0, zmm1, er
        def vcvtph2w(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPH2W,operand1,operand2,*operands,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTPS2DQ]
        # @example
        #   vcvtps2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtps2dq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtps2dq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtps2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2dq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtps2dq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtps2dq xmm0, bcst([ebx], {1=>4})
        #   vcvtps2dq xmm0, xmm1
        #   vcvtps2dq xmm0, [ebx]
        #   vcvtps2dq ymm0, bcst([ebx], {1=>8})
        #   vcvtps2dq ymm0, ymm1
        #   vcvtps2dq ymm0, [ebx]
        #   vcvtps2dq zmm0, bcst([ebx], {1=>16})
        #   vcvtps2dq zmm0, zmm1
        #   vcvtps2dq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtps2dq zmm0, zmm1, er
        def vcvtps2dq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPS2DQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPS2PD]
        # @example
        #   vcvtps2pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtps2pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtps2pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtps2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtps2pd opmask(zmm0, k1, zero: true), ymm1
        #   vcvtps2pd xmm0, bcst([ebx], {1=>2})
        #   vcvtps2pd xmm0, xmm1
        #   vcvtps2pd xmm0, [ebx]
        #   vcvtps2pd ymm0, bcst([ebx], {1=>4})
        #   vcvtps2pd ymm0, xmm1
        #   vcvtps2pd ymm0, [ebx]
        #   vcvtps2pd zmm0, bcst([ebx], {1=>8})
        #   vcvtps2pd zmm0, ymm1
        #   vcvtps2pd opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvtps2pd zmm0, ymm1, sae
        def vcvtps2pd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PD,operand1,operand2,*operands,**kwargs)
        # Convert Single-Precision FP value to Half-Precision FP value
        # @return [Ronin::ASM::X86::Instructions::VCVTPS2PH]
        # @example
        #   vcvtps2ph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vcvtps2ph opmask([eax], k1), xmm1, 0x03
        #   vcvtps2ph opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vcvtps2ph opmask([eax], k1), ymm1, 0x03
        #   vcvtps2ph opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vcvtps2ph opmask([eax], k1), zmm1, 0x03
        #   vcvtps2ph xmm0, xmm1, 0x03
        #   vcvtps2ph xmm0, ymm1, 0x03
        #   vcvtps2ph ymm0, zmm1, 0x03
        #   vcvtps2ph [eax], xmm1, 0x03
        #   vcvtps2ph [eax], ymm1, 0x03
        #   vcvtps2ph [eax], zmm1, 0x03
        #   vcvtps2ph opmask(ymm0, k1, zero: true), zmm1, sae, 0x04
        #   vcvtps2ph ymm0, zmm1, sae, 0x04
        def vcvtps2ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PH,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Single-Precision FP value to Half-Precision FP value
        # @return [Ronin::ASM::X86::Instructions::VCVTPS2PHX]
        # @example
        #   vcvtps2phx opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtps2phx opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtps2phx opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtps2phx opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2phx opmask(xmm0, k1, zero: true), ymm1
        #   vcvtps2phx opmask(ymm0, k1, zero: true), zmm1
        #   vcvtps2phx xmm0, bcst([ebx], {1=>4})
        #   vcvtps2phx xmm0, bcst([ebx], {1=>8})
        #   vcvtps2phx xmm0, xmm1
        #   vcvtps2phx xmm0, ymm1
        #   vcvtps2phx ymm0, bcst([ebx], {1=>16})
        #   vcvtps2phx ymm0, zmm1
        #   vcvtps2phx opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtps2phx ymm0, zmm1, er
        def vcvtps2phx(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PHX,operand1,operand2,*operands,**kwargs)
        # Convert Packed Single Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPS2QQ]
        # @example
        #   vcvtps2qq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtps2qq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtps2qq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtps2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtps2qq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtps2qq xmm0, bcst([ebx], {1=>2})
        #   vcvtps2qq xmm0, xmm1
        #   vcvtps2qq ymm0, bcst([ebx], {1=>4})
        #   vcvtps2qq ymm0, xmm1
        #   vcvtps2qq zmm0, bcst([ebx], {1=>8})
        #   vcvtps2qq zmm0, ymm1
        #   vcvtps2qq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtps2qq zmm0, ymm1, er
        def vcvtps2qq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPS2QQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Single-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPS2UDQ]
        # @example
        #   vcvtps2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtps2udq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtps2udq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtps2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2udq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtps2udq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtps2udq xmm0, bcst([ebx], {1=>4})
        #   vcvtps2udq xmm0, xmm1
        #   vcvtps2udq ymm0, bcst([ebx], {1=>8})
        #   vcvtps2udq ymm0, ymm1
        #   vcvtps2udq zmm0, bcst([ebx], {1=>16})
        #   vcvtps2udq zmm0, zmm1
        #   vcvtps2udq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtps2udq zmm0, zmm1, er
        def vcvtps2udq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPS2UDQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Single Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTPS2UQQ]
        # @example
        #   vcvtps2uqq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtps2uqq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtps2uqq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtps2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtps2uqq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtps2uqq xmm0, bcst([ebx], {1=>2})
        #   vcvtps2uqq xmm0, xmm1
        #   vcvtps2uqq ymm0, bcst([ebx], {1=>4})
        #   vcvtps2uqq ymm0, xmm1
        #   vcvtps2uqq zmm0, bcst([ebx], {1=>8})
        #   vcvtps2uqq zmm0, ymm1
        #   vcvtps2uqq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtps2uqq zmm0, ymm1, er
        def vcvtps2uqq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTPS2UQQ,operand1,operand2,*operands,**kwargs)
        # Convert Packed Quadword Integers to Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTQQ2PD]
        # @example
        #   vcvtqq2pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtqq2pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtqq2pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtqq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtqq2pd opmask(ymm0, k1, zero: true), ymm1
        #   vcvtqq2pd opmask(zmm0, k1, zero: true), zmm1
        #   vcvtqq2pd xmm0, bcst([ebx], {1=>2})
        #   vcvtqq2pd xmm0, xmm1
        #   vcvtqq2pd ymm0, bcst([ebx], {1=>4})
        #   vcvtqq2pd ymm0, ymm1
        #   vcvtqq2pd zmm0, bcst([ebx], {1=>8})
        #   vcvtqq2pd zmm0, zmm1
        #   vcvtqq2pd opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtqq2pd zmm0, zmm1, er
        def vcvtqq2pd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PD,operand1,operand2,*operands,**kwargs)
        # Convert Packed Quadword Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTQQ2PH]
        # @example
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), zmm1
        #   vcvtqq2ph xmm0, bcst([ebx], {1=>2})
        #   vcvtqq2ph xmm0, bcst([ebx], {1=>4})
        #   vcvtqq2ph xmm0, bcst([ebx], {1=>8})
        #   vcvtqq2ph xmm0, xmm1
        #   vcvtqq2ph xmm0, ymm1
        #   vcvtqq2ph xmm0, zmm1
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), zmm1, er
        #   vcvtqq2ph xmm0, zmm1, er
        def vcvtqq2ph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PH,operand1,operand2,*operands,**kwargs)
        # Convert Packed Quadword Integers to Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTQQ2PS]
        # @example
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtqq2ps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), ymm1
        #   vcvtqq2ps opmask(ymm0, k1, zero: true), zmm1
        #   vcvtqq2ps xmm0, bcst([ebx], {1=>2})
        #   vcvtqq2ps xmm0, bcst([ebx], {1=>4})
        #   vcvtqq2ps xmm0, xmm1
        #   vcvtqq2ps xmm0, ymm1
        #   vcvtqq2ps ymm0, bcst([ebx], {1=>8})
        #   vcvtqq2ps ymm0, zmm1
        #   vcvtqq2ps opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtqq2ps ymm0, zmm1, er
        def vcvtqq2ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PS,operand1,operand2,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Scalar Half-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSD2SH]
        # @example
        #   vcvtsd2sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsd2sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vcvtsd2sh xmm0, xmm1, xmm2
        #   vcvtsd2sh xmm0, xmm1, [ecx]
        #   vcvtsd2sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vcvtsd2sh xmm0, xmm1, xmm2, er
        def vcvtsd2sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SH,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTSD2SI]
        # @example
        #   vcvtsd2si eax, xmm1
        #   vcvtsd2si eax, [ebx]
        #   vcvtsd2si eax, xmm1, er
        def vcvtsd2si(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SI,operand1,operand2,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSD2SS]
        # @example
        #   vcvtsd2ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsd2ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vcvtsd2ss xmm0, xmm1, xmm2
        #   vcvtsd2ss xmm0, xmm1, [ecx]
        #   vcvtsd2ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vcvtsd2ss xmm0, xmm1, xmm2, er
        def vcvtsd2ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SS,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Scalar Double-Precision Floating-Point Value to Unsigned Doubleword Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTSD2USI]
        # @example
        #   vcvtsd2usi eax, xmm1
        #   vcvtsd2usi eax, [ebx]
        #   vcvtsd2usi eax, xmm1, er
        def vcvtsd2usi(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTSD2USI,operand1,operand2,*operands,**kwargs)
        # Convert Scalar Half-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSH2SD]
        # @example
        #   vcvtsh2sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsh2sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vcvtsh2sd xmm0, xmm1, xmm2
        #   vcvtsh2sd xmm0, xmm1, [ecx]
        #   vcvtsh2sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vcvtsh2sd xmm0, xmm1, xmm2, sae
        def vcvtsh2sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SD,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Scalar Half-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTSH2SI]
        # @example
        #   vcvtsh2si eax, xmm1
        #   vcvtsh2si eax, [ebx]
        #   vcvtsh2si eax, xmm1, er
        def vcvtsh2si(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SI,operand1,operand2,*operands,**kwargs)
        # Convert Scalar Half-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSH2SS]
        # @example
        #   vcvtsh2ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsh2ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vcvtsh2ss xmm0, xmm1, xmm2
        #   vcvtsh2ss xmm0, xmm1, [ecx]
        #   vcvtsh2ss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vcvtsh2ss xmm0, xmm1, xmm2, sae
        def vcvtsh2ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SS,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Scalar Half-Precision Floating-Point Value to Unsigned Doubleword Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTSH2USI]
        # @example
        #   vcvtsh2usi eax, xmm1
        #   vcvtsh2usi eax, [ebx]
        #   vcvtsh2usi eax, xmm1, er
        def vcvtsh2usi(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTSH2USI,operand1,operand2,*operands,**kwargs)
        # Convert Dword Integer to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSI2SD]
        # @example
        #   vcvtsi2sd xmm0, xmm1, ecx
        #   vcvtsi2sd xmm0, xmm1, [ecx]
        def vcvtsi2sd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VCVTSI2SD,operand1,operand2,operand3,**kwargs)
        # Convert Dword Integer to Scalar Half-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSI2SH]
        # @example
        #   vcvtsi2sh xmm0, xmm1, ecx
        #   vcvtsi2sh xmm0, xmm1, [ecx]
        #   vcvtsi2sh xmm0, xmm1, er, edx
        def vcvtsi2sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SH,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Dword Integer to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSI2SS]
        # @example
        #   vcvtsi2ss xmm0, xmm1, ecx
        #   vcvtsi2ss xmm0, xmm1, [ecx]
        #   vcvtsi2ss xmm0, xmm1, er, edx
        def vcvtsi2ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SS,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSS2SD]
        # @example
        #   vcvtss2sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtss2sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vcvtss2sd xmm0, xmm1, xmm2
        #   vcvtss2sd xmm0, xmm1, [ecx]
        #   vcvtss2sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vcvtss2sd xmm0, xmm1, xmm2, sae
        def vcvtss2sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SD,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Scalar Half-Precision FP Value
        # @return [Ronin::ASM::X86::Instructions::VCVTSS2SH]
        # @example
        #   vcvtss2sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtss2sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vcvtss2sh xmm0, xmm1, xmm2
        #   vcvtss2sh xmm0, xmm1, [ecx]
        #   vcvtss2sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vcvtss2sh xmm0, xmm1, xmm2, er
        def vcvtss2sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SH,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTSS2SI]
        # @example
        #   vcvtss2si eax, xmm1
        #   vcvtss2si eax, [ebx]
        #   vcvtss2si eax, xmm1, er
        def vcvtss2si(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SI,operand1,operand2,*operands,**kwargs)
        # Convert Scalar Single-Precision Floating-Point Value to Unsigned Doubleword Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTSS2USI]
        # @example
        #   vcvtss2usi eax, xmm1
        #   vcvtss2usi eax, [ebx]
        #   vcvtss2usi eax, xmm1, er
        def vcvtss2usi(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTSS2USI,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTTPD2DQ]
        # @example
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttpd2dq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), ymm1
        #   vcvttpd2dq opmask(ymm0, k1, zero: true), zmm1
        #   vcvttpd2dq xmm0, bcst([ebx], {1=>2})
        #   vcvttpd2dq xmm0, bcst([ebx], {1=>4})
        #   vcvttpd2dq xmm0, xmm1
        #   vcvttpd2dq xmm0, ymm1
        #   vcvttpd2dq xmm0, [ebx]
        #   vcvttpd2dq ymm0, bcst([ebx], {1=>8})
        #   vcvttpd2dq ymm0, zmm1
        #   vcvttpd2dq opmask(ymm0, k1, zero: true), zmm1, sae
        #   vcvttpd2dq ymm0, zmm1, sae
        def vcvttpd2dq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2DQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision Floating-Point Values to Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTTPD2QQ]
        # @example
        #   vcvttpd2qq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttpd2qq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttpd2qq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttpd2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2qq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttpd2qq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttpd2qq xmm0, bcst([ebx], {1=>2})
        #   vcvttpd2qq xmm0, xmm1
        #   vcvttpd2qq ymm0, bcst([ebx], {1=>4})
        #   vcvttpd2qq ymm0, ymm1
        #   vcvttpd2qq zmm0, bcst([ebx], {1=>8})
        #   vcvttpd2qq zmm0, zmm1
        #   vcvttpd2qq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttpd2qq zmm0, zmm1, sae
        def vcvttpd2qq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2QQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision Floating-Point Values to Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTTPD2UDQ]
        # @example
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttpd2udq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), ymm1
        #   vcvttpd2udq opmask(ymm0, k1, zero: true), zmm1
        #   vcvttpd2udq xmm0, bcst([ebx], {1=>2})
        #   vcvttpd2udq xmm0, bcst([ebx], {1=>4})
        #   vcvttpd2udq xmm0, xmm1
        #   vcvttpd2udq xmm0, ymm1
        #   vcvttpd2udq ymm0, bcst([ebx], {1=>8})
        #   vcvttpd2udq ymm0, zmm1
        #   vcvttpd2udq opmask(ymm0, k1, zero: true), zmm1, sae
        #   vcvttpd2udq ymm0, zmm1, sae
        def vcvttpd2udq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2UDQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision Floating-Point Values to Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTTPD2UQQ]
        # @example
        #   vcvttpd2uqq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttpd2uqq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttpd2uqq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttpd2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2uqq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttpd2uqq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttpd2uqq xmm0, bcst([ebx], {1=>2})
        #   vcvttpd2uqq xmm0, xmm1
        #   vcvttpd2uqq ymm0, bcst([ebx], {1=>4})
        #   vcvttpd2uqq ymm0, ymm1
        #   vcvttpd2uqq zmm0, bcst([ebx], {1=>8})
        #   vcvttpd2uqq zmm0, zmm1
        #   vcvttpd2uqq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttpd2uqq zmm0, zmm1, sae
        def vcvttpd2uqq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2UQQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTTPH2DQ]
        # @example
        #   vcvttph2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttph2dq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttph2dq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvttph2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2dq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2dq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttph2dq xmm0, bcst([ebx], {1=>4})
        #   vcvttph2dq xmm0, xmm1
        #   vcvttph2dq ymm0, bcst([ebx], {1=>8})
        #   vcvttph2dq ymm0, xmm1
        #   vcvttph2dq zmm0, bcst([ebx], {1=>16})
        #   vcvttph2dq zmm0, ymm1
        #   vcvttph2dq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttph2dq zmm0, ymm1, sae
        def vcvttph2dq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2DQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Half Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPH2QQ]
        # @example
        #   vcvttph2qq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttph2qq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttph2qq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttph2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2qq opmask(zmm0, k1, zero: true), xmm1
        #   vcvttph2qq xmm0, bcst([ebx], {1=>2})
        #   vcvttph2qq xmm0, xmm1
        #   vcvttph2qq ymm0, bcst([ebx], {1=>4})
        #   vcvttph2qq ymm0, xmm1
        #   vcvttph2qq zmm0, bcst([ebx], {1=>8})
        #   vcvttph2qq zmm0, xmm1
        #   vcvttph2qq opmask(zmm0, k1, zero: true), xmm1, sae
        #   vcvttph2qq zmm0, xmm1, sae
        def vcvttph2qq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2QQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPH2UDQ]
        # @example
        #   vcvttph2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttph2udq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttph2udq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvttph2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2udq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2udq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttph2udq xmm0, bcst([ebx], {1=>4})
        #   vcvttph2udq xmm0, xmm1
        #   vcvttph2udq ymm0, bcst([ebx], {1=>8})
        #   vcvttph2udq ymm0, xmm1
        #   vcvttph2udq zmm0, bcst([ebx], {1=>16})
        #   vcvttph2udq zmm0, ymm1
        #   vcvttph2udq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttph2udq zmm0, ymm1, sae
        def vcvttph2udq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UDQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Half Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPH2UQQ]
        # @example
        #   vcvttph2uqq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttph2uqq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttph2uqq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttph2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2uqq opmask(zmm0, k1, zero: true), xmm1
        #   vcvttph2uqq xmm0, bcst([ebx], {1=>2})
        #   vcvttph2uqq xmm0, xmm1
        #   vcvttph2uqq ymm0, bcst([ebx], {1=>4})
        #   vcvttph2uqq ymm0, xmm1
        #   vcvttph2uqq zmm0, bcst([ebx], {1=>8})
        #   vcvttph2uqq zmm0, xmm1
        #   vcvttph2uqq opmask(zmm0, k1, zero: true), xmm1, sae
        #   vcvttph2uqq zmm0, xmm1, sae
        def vcvttph2uqq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UQQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision Floating-Point Values to Packed Unsigned Word Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPH2UW]
        # @example
        #   vcvttph2uw opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttph2uw opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvttph2uw opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vcvttph2uw opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2uw opmask(ymm0, k1, zero: true), ymm1
        #   vcvttph2uw opmask(zmm0, k1, zero: true), zmm1
        #   vcvttph2uw xmm0, bcst([ebx], {1=>8})
        #   vcvttph2uw xmm0, xmm1
        #   vcvttph2uw ymm0, bcst([ebx], {1=>16})
        #   vcvttph2uw ymm0, ymm1
        #   vcvttph2uw zmm0, bcst([ebx], {1=>32})
        #   vcvttph2uw zmm0, zmm1
        #   vcvttph2uw opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttph2uw zmm0, zmm1, sae
        def vcvttph2uw(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UW,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision Floating-Point Values to Packed Word Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPH2W]
        # @example
        #   vcvttph2w opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttph2w opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvttph2w opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vcvttph2w opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2w opmask(ymm0, k1, zero: true), ymm1
        #   vcvttph2w opmask(zmm0, k1, zero: true), zmm1
        #   vcvttph2w xmm0, bcst([ebx], {1=>8})
        #   vcvttph2w xmm0, xmm1
        #   vcvttph2w ymm0, bcst([ebx], {1=>16})
        #   vcvttph2w ymm0, ymm1
        #   vcvttph2w zmm0, bcst([ebx], {1=>32})
        #   vcvttph2w zmm0, zmm1
        #   vcvttph2w opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttph2w zmm0, zmm1, sae
        def vcvttph2w(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2W,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86::Instructions::VCVTTPS2DQ]
        # @example
        #   vcvttps2dq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttps2dq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttps2dq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvttps2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2dq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttps2dq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttps2dq xmm0, bcst([ebx], {1=>4})
        #   vcvttps2dq xmm0, xmm1
        #   vcvttps2dq xmm0, [ebx]
        #   vcvttps2dq ymm0, bcst([ebx], {1=>8})
        #   vcvttps2dq ymm0, ymm1
        #   vcvttps2dq ymm0, [ebx]
        #   vcvttps2dq zmm0, bcst([ebx], {1=>16})
        #   vcvttps2dq zmm0, zmm1
        #   vcvttps2dq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttps2dq zmm0, zmm1, sae
        def vcvttps2dq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2DQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Single Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPS2QQ]
        # @example
        #   vcvttps2qq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttps2qq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttps2qq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttps2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttps2qq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttps2qq xmm0, bcst([ebx], {1=>2})
        #   vcvttps2qq xmm0, xmm1
        #   vcvttps2qq ymm0, bcst([ebx], {1=>4})
        #   vcvttps2qq ymm0, xmm1
        #   vcvttps2qq zmm0, bcst([ebx], {1=>8})
        #   vcvttps2qq zmm0, ymm1
        #   vcvttps2qq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttps2qq zmm0, ymm1, sae
        def vcvttps2qq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2QQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Single-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPS2UDQ]
        # @example
        #   vcvttps2udq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttps2udq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttps2udq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvttps2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2udq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttps2udq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttps2udq xmm0, bcst([ebx], {1=>4})
        #   vcvttps2udq xmm0, xmm1
        #   vcvttps2udq ymm0, bcst([ebx], {1=>8})
        #   vcvttps2udq ymm0, ymm1
        #   vcvttps2udq zmm0, bcst([ebx], {1=>16})
        #   vcvttps2udq zmm0, zmm1
        #   vcvttps2udq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttps2udq zmm0, zmm1, sae
        def vcvttps2udq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2UDQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Packed Single Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VCVTTPS2UQQ]
        # @example
        #   vcvttps2uqq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvttps2uqq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvttps2uqq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvttps2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttps2uqq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttps2uqq xmm0, bcst([ebx], {1=>2})
        #   vcvttps2uqq xmm0, xmm1
        #   vcvttps2uqq ymm0, bcst([ebx], {1=>4})
        #   vcvttps2uqq ymm0, xmm1
        #   vcvttps2uqq zmm0, bcst([ebx], {1=>8})
        #   vcvttps2uqq zmm0, ymm1
        #   vcvttps2uqq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttps2uqq zmm0, ymm1, sae
        def vcvttps2uqq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2UQQ,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Scalar Double-Precision FP Value to Signed Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTTSD2SI]
        # @example
        #   vcvttsd2si eax, xmm1
        #   vcvttsd2si eax, [ebx]
        #   vcvttsd2si eax, xmm1, sae
        def vcvttsd2si(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTSD2SI,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Scalar Double-Precision Floating-Point Value to Unsigned Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTTSD2USI]
        # @example
        #   vcvttsd2usi eax, xmm1
        #   vcvttsd2usi eax, [ebx]
        #   vcvttsd2usi eax, xmm1, sae
        def vcvttsd2usi(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTSD2USI,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Scalar Half-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTTSH2SI]
        # @example
        #   vcvttsh2si eax, xmm1
        #   vcvttsh2si eax, [ebx]
        #   vcvttsh2si eax, xmm1, sae
        def vcvttsh2si(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTSH2SI,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Scalar Half-Precision Floating-Point Value to Unsigned Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTTSH2USI]
        # @example
        #   vcvttsh2usi eax, xmm1
        #   vcvttsh2usi eax, [ebx]
        #   vcvttsh2usi eax, xmm1, sae
        def vcvttsh2usi(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTSH2USI,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTTSS2SI]
        # @example
        #   vcvttss2si eax, xmm1
        #   vcvttss2si eax, [ebx]
        #   vcvttss2si eax, xmm1, sae
        def vcvttss2si(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTSS2SI,operand1,operand2,*operands,**kwargs)
        # Convert with Truncation Scalar Single-Precision Floating-Point Value to Unsigned Integer
        # @return [Ronin::ASM::X86::Instructions::VCVTTSS2USI]
        # @example
        #   vcvttss2usi eax, xmm1
        #   vcvttss2usi eax, [ebx]
        #   vcvttss2usi eax, xmm1, sae
        def vcvttss2usi(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTTSS2USI,operand1,operand2,*operands,**kwargs)
        # Convert Packed Unsigned Doubleword Integers to Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTUDQ2PD]
        # @example
        #   vcvtudq2pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtudq2pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtudq2pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtudq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtudq2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtudq2pd opmask(zmm0, k1, zero: true), ymm1
        #   vcvtudq2pd xmm0, bcst([ebx], {1=>2})
        #   vcvtudq2pd xmm0, xmm1
        #   vcvtudq2pd ymm0, bcst([ebx], {1=>4})
        #   vcvtudq2pd ymm0, xmm1
        #   vcvtudq2pd zmm0, bcst([ebx], {1=>8})
        #   vcvtudq2pd zmm0, ymm1
        def vcvtudq2pd(operand1,operand2,**kwargs) = add_instruction(Instructions::VCVTUDQ2PD,operand1,operand2,**kwargs)
        # Convert Packed Unsigned Doubleword Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTUDQ2PH]
        # @example
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtudq2ph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtudq2ph opmask(ymm0, k1, zero: true), zmm1
        #   vcvtudq2ph xmm0, bcst([ebx], {1=>4})
        #   vcvtudq2ph xmm0, bcst([ebx], {1=>8})
        #   vcvtudq2ph xmm0, xmm1
        #   vcvtudq2ph xmm0, ymm1
        #   vcvtudq2ph ymm0, bcst([ebx], {1=>16})
        #   vcvtudq2ph ymm0, zmm1
        #   vcvtudq2ph opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtudq2ph ymm0, zmm1, er
        def vcvtudq2ph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PH,operand1,operand2,*operands,**kwargs)
        # Convert Packed Unsigned Doubleword Integers to Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTUDQ2PS]
        # @example
        #   vcvtudq2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtudq2ps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtudq2ps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtudq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtudq2ps opmask(ymm0, k1, zero: true), ymm1
        #   vcvtudq2ps opmask(zmm0, k1, zero: true), zmm1
        #   vcvtudq2ps xmm0, bcst([ebx], {1=>4})
        #   vcvtudq2ps xmm0, xmm1
        #   vcvtudq2ps ymm0, bcst([ebx], {1=>8})
        #   vcvtudq2ps ymm0, ymm1
        #   vcvtudq2ps zmm0, bcst([ebx], {1=>16})
        #   vcvtudq2ps zmm0, zmm1
        #   vcvtudq2ps opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtudq2ps zmm0, zmm1, er
        def vcvtudq2ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PS,operand1,operand2,*operands,**kwargs)
        # Convert Packed Unsigned Quadword Integers to Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTUQQ2PD]
        # @example
        #   vcvtuqq2pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtuqq2pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtuqq2pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtuqq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuqq2pd opmask(ymm0, k1, zero: true), ymm1
        #   vcvtuqq2pd opmask(zmm0, k1, zero: true), zmm1
        #   vcvtuqq2pd xmm0, bcst([ebx], {1=>2})
        #   vcvtuqq2pd xmm0, xmm1
        #   vcvtuqq2pd ymm0, bcst([ebx], {1=>4})
        #   vcvtuqq2pd ymm0, ymm1
        #   vcvtuqq2pd zmm0, bcst([ebx], {1=>8})
        #   vcvtuqq2pd zmm0, zmm1
        #   vcvtuqq2pd opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtuqq2pd zmm0, zmm1, er
        def vcvtuqq2pd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PD,operand1,operand2,*operands,**kwargs)
        # Convert Packed Unsigned Quadword Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTUQQ2PH]
        # @example
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), zmm1
        #   vcvtuqq2ph xmm0, bcst([ebx], {1=>2})
        #   vcvtuqq2ph xmm0, bcst([ebx], {1=>4})
        #   vcvtuqq2ph xmm0, bcst([ebx], {1=>8})
        #   vcvtuqq2ph xmm0, xmm1
        #   vcvtuqq2ph xmm0, ymm1
        #   vcvtuqq2ph xmm0, zmm1
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), zmm1, er
        #   vcvtuqq2ph xmm0, zmm1, er
        def vcvtuqq2ph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PH,operand1,operand2,*operands,**kwargs)
        # Convert Packed Unsigned Quadword Integers to Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTUQQ2PS]
        # @example
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vcvtuqq2ps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), ymm1
        #   vcvtuqq2ps opmask(ymm0, k1, zero: true), zmm1
        #   vcvtuqq2ps xmm0, bcst([ebx], {1=>2})
        #   vcvtuqq2ps xmm0, bcst([ebx], {1=>4})
        #   vcvtuqq2ps xmm0, xmm1
        #   vcvtuqq2ps xmm0, ymm1
        #   vcvtuqq2ps ymm0, bcst([ebx], {1=>8})
        #   vcvtuqq2ps ymm0, zmm1
        #   vcvtuqq2ps opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtuqq2ps ymm0, zmm1, er
        def vcvtuqq2ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PS,operand1,operand2,*operands,**kwargs)
        # Convert Unsigned Integer to Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VCVTUSI2SD]
        # @example
        #   vcvtusi2sd xmm0, xmm1, ecx
        #   vcvtusi2sd xmm0, xmm1, [ecx]
        def vcvtusi2sd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VCVTUSI2SD,operand1,operand2,operand3,**kwargs)
        # Convert Unsigned Integer to Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VCVTUSI2SH]
        # @example
        #   vcvtusi2sh xmm0, xmm1, ecx
        #   vcvtusi2sh xmm0, xmm1, [ecx]
        #   vcvtusi2sh xmm0, xmm1, er, edx
        def vcvtusi2sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SH,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Unsigned Integer to Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VCVTUSI2SS]
        # @example
        #   vcvtusi2ss xmm0, xmm1, ecx
        #   vcvtusi2ss xmm0, xmm1, [ecx]
        #   vcvtusi2ss xmm0, xmm1, er, edx
        def vcvtusi2ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SS,operand1,operand2,operand3,*operands,**kwargs)
        # Convert Packed Unsigned Word Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTUW2PH]
        # @example
        #   vcvtuw2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtuw2ph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtuw2ph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vcvtuw2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuw2ph opmask(ymm0, k1, zero: true), ymm1
        #   vcvtuw2ph opmask(zmm0, k1, zero: true), zmm1
        #   vcvtuw2ph xmm0, bcst([ebx], {1=>8})
        #   vcvtuw2ph xmm0, xmm1
        #   vcvtuw2ph ymm0, bcst([ebx], {1=>16})
        #   vcvtuw2ph ymm0, ymm1
        #   vcvtuw2ph zmm0, bcst([ebx], {1=>32})
        #   vcvtuw2ph zmm0, zmm1
        #   vcvtuw2ph opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtuw2ph zmm0, zmm1, er
        def vcvtuw2ph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTUW2PH,operand1,operand2,*operands,**kwargs)
        # Convert Packed Word Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VCVTW2PH]
        # @example
        #   vcvtw2ph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vcvtw2ph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vcvtw2ph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vcvtw2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtw2ph opmask(ymm0, k1, zero: true), ymm1
        #   vcvtw2ph opmask(zmm0, k1, zero: true), zmm1
        #   vcvtw2ph xmm0, bcst([ebx], {1=>8})
        #   vcvtw2ph xmm0, xmm1
        #   vcvtw2ph ymm0, bcst([ebx], {1=>16})
        #   vcvtw2ph ymm0, ymm1
        #   vcvtw2ph zmm0, bcst([ebx], {1=>32})
        #   vcvtw2ph zmm0, zmm1
        #   vcvtw2ph opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtw2ph zmm0, zmm1, er
        def vcvtw2ph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VCVTW2PH,operand1,operand2,*operands,**kwargs)
        # Double Block Packed Sum-Absolute-Differences on Unsigned Bytes
        # @return [Ronin::ASM::X86::Instructions::VDBPSADBW]
        # @example
        #   vdbpsadbw opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vdbpsadbw opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vdbpsadbw opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vdbpsadbw opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vdbpsadbw opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vdbpsadbw opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vdbpsadbw xmm0, xmm1, xmm2, 0x04
        #   vdbpsadbw xmm0, xmm1, [ecx], 0x04
        #   vdbpsadbw ymm0, ymm1, ymm2, 0x04
        #   vdbpsadbw ymm0, ymm1, [ecx], 0x04
        #   vdbpsadbw zmm0, zmm1, zmm2, 0x04
        #   vdbpsadbw zmm0, zmm1, [ecx], 0x04
        def vdbpsadbw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VDBPSADBW,operand1,operand2,operand3,operand4,**kwargs)
        # Divide Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDIVPD]
        # @example
        #   vdivpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vdivpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vdivpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdivpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vdivpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdivpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vdivpd xmm0, xmm1, xmm2
        #   vdivpd xmm0, xmm1, [ecx]
        #   vdivpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vdivpd ymm0, ymm1, ymm2
        #   vdivpd ymm0, ymm1, [ecx]
        #   vdivpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vdivpd zmm0, zmm1, zmm2
        #   vdivpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vdivpd zmm0, zmm1, zmm2, er
        def vdivpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VDIVPD,operand1,operand2,operand3,*operands,**kwargs)
        # Divide Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDIVPH]
        # @example
        #   vdivph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vdivph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vdivph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdivph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vdivph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdivph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vdivph xmm0, xmm1, xmm2
        #   vdivph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vdivph ymm0, ymm1, ymm2
        #   vdivph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vdivph zmm0, zmm1, zmm2
        #   vdivph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vdivph zmm0, zmm1, zmm2, er
        def vdivph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VDIVPH,operand1,operand2,operand3,*operands,**kwargs)
        # Divide Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDIVPS]
        # @example
        #   vdivps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vdivps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vdivps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdivps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vdivps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdivps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vdivps xmm0, xmm1, xmm2
        #   vdivps xmm0, xmm1, [ecx]
        #   vdivps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vdivps ymm0, ymm1, ymm2
        #   vdivps ymm0, ymm1, [ecx]
        #   vdivps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vdivps zmm0, zmm1, zmm2
        #   vdivps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vdivps zmm0, zmm1, zmm2, er
        def vdivps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VDIVPS,operand1,operand2,operand3,*operands,**kwargs)
        # Divide Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDIVSD]
        # @example
        #   vdivsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vdivsd xmm0, xmm1, xmm2
        #   vdivsd xmm0, xmm1, [ecx]
        #   vdivsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vdivsd xmm0, xmm1, xmm2, er
        def vdivsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VDIVSD,operand1,operand2,operand3,*operands,**kwargs)
        # Divide Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDIVSH]
        # @example
        #   vdivsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vdivsh xmm0, xmm1, xmm2
        #   vdivsh xmm0, xmm1, [ecx]
        #   vdivsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vdivsh xmm0, xmm1, xmm2, er
        def vdivsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VDIVSH,operand1,operand2,operand3,*operands,**kwargs)
        # Divide Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDIVSS]
        # @example
        #   vdivss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vdivss xmm0, xmm1, xmm2
        #   vdivss xmm0, xmm1, [ecx]
        #   vdivss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vdivss xmm0, xmm1, xmm2, er
        def vdivss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VDIVSS,operand1,operand2,operand3,*operands,**kwargs)
        # Packed Dot Product of BFloat16 FP subvectors into Single-Precision FP values
        # @return [Ronin::ASM::X86::Instructions::VDPBF16PS]
        # @example
        #   vdpbf16ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vdpbf16ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdpbf16ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vdpbf16ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdpbf16ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vdpbf16ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdpbf16ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vdpbf16ps xmm0, xmm1, xmm2
        #   vdpbf16ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vdpbf16ps ymm0, ymm1, ymm2
        #   vdpbf16ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vdpbf16ps zmm0, zmm1, zmm2
        def vdpbf16ps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VDPBF16PS,operand1,operand2,operand3,**kwargs)
        # Dot Product of Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDPPD]
        # @example
        #   vdppd xmm0, xmm1, xmm2, 0x04
        #   vdppd xmm0, xmm1, [ecx], 0x04
        def vdppd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VDPPD,operand1,operand2,operand3,operand4,**kwargs)
        # Dot Product of Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VDPPS]
        # @example
        #   vdpps xmm0, xmm1, xmm2, 0x04
        #   vdpps xmm0, xmm1, [ecx], 0x04
        #   vdpps ymm0, ymm1, ymm2, 0x04
        #   vdpps ymm0, ymm1, [ecx], 0x04
        def vdpps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VDPPS,operand1,operand2,operand3,operand4,**kwargs)
        # Approximation to the Exponential 2^x of Packed Double-Precision Floating-Point Values with Less Than 2^-23 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VEXP2PD]
        # @example
        #   vexp2pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vexp2pd opmask(zmm0, k1, zero: true), zmm1
        #   vexp2pd zmm0, bcst([ebx], {1=>8})
        #   vexp2pd zmm0, zmm1
        #   vexp2pd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vexp2pd zmm0, zmm1, sae
        def vexp2pd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VEXP2PD,operand1,operand2,*operands,**kwargs)
        # Approximation to the Exponential 2^x of Packed Single-Precision Floating-Point Values with Less Than 2^-23 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VEXP2PS]
        # @example
        #   vexp2ps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vexp2ps opmask(zmm0, k1, zero: true), zmm1
        #   vexp2ps zmm0, bcst([ebx], {1=>16})
        #   vexp2ps zmm0, zmm1
        #   vexp2ps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vexp2ps zmm0, zmm1, sae
        def vexp2ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VEXP2PS,operand1,operand2,*operands,**kwargs)
        # Load Sparse Packed Double-Precision Floating-Point Values from Dense Memory
        # @return [Ronin::ASM::X86::Instructions::VEXPANDPD]
        # @example
        #   vexpandpd opmask(xmm0, k1, zero: true), xmm1
        #   vexpandpd opmask(ymm0, k1, zero: true), ymm1
        #   vexpandpd opmask(zmm0, k1, zero: true), zmm1
        #   vexpandpd opmask(xmm0, k1, zero: true), [ebx]
        #   vexpandpd opmask(ymm0, k1, zero: true), [ebx]
        #   vexpandpd opmask(zmm0, k1, zero: true), [ebx]
        #   vexpandpd xmm0, xmm1
        #   vexpandpd xmm0, [ebx]
        #   vexpandpd ymm0, ymm1
        #   vexpandpd ymm0, [ebx]
        #   vexpandpd zmm0, zmm1
        #   vexpandpd zmm0, [ebx]
        def vexpandpd(operand1,operand2,**kwargs) = add_instruction(Instructions::VEXPANDPD,operand1,operand2,**kwargs)
        # Load Sparse Packed Single-Precision Floating-Point Values from Dense Memory
        # @return [Ronin::ASM::X86::Instructions::VEXPANDPS]
        # @example
        #   vexpandps opmask(xmm0, k1, zero: true), xmm1
        #   vexpandps opmask(ymm0, k1, zero: true), ymm1
        #   vexpandps opmask(zmm0, k1, zero: true), zmm1
        #   vexpandps opmask(xmm0, k1, zero: true), [ebx]
        #   vexpandps opmask(ymm0, k1, zero: true), [ebx]
        #   vexpandps opmask(zmm0, k1, zero: true), [ebx]
        #   vexpandps xmm0, xmm1
        #   vexpandps xmm0, [ebx]
        #   vexpandps ymm0, ymm1
        #   vexpandps ymm0, [ebx]
        #   vexpandps zmm0, zmm1
        #   vexpandps zmm0, [ebx]
        def vexpandps(operand1,operand2,**kwargs) = add_instruction(Instructions::VEXPANDPS,operand1,operand2,**kwargs)
        # Extract Packed Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTF128]
        # @example
        #   vextractf128 xmm0, ymm1, 0x03
        #   vextractf128 [eax], ymm1, 0x03
        def vextractf128(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTF128,operand1,operand2,operand3,**kwargs)
        # Extract 128 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTF32X4]
        # @example
        #   vextractf32x4 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextractf32x4 opmask([eax], k1), ymm1, 0x03
        #   vextractf32x4 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextractf32x4 opmask([eax], k1), zmm1, 0x03
        #   vextractf32x4 xmm0, ymm1, 0x03
        #   vextractf32x4 xmm0, zmm1, 0x03
        #   vextractf32x4 [eax], ymm1, 0x03
        #   vextractf32x4 [eax], zmm1, 0x03
        def vextractf32x4(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTF32X4,operand1,operand2,operand3,**kwargs)
        # Extract 256 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTF32X8]
        # @example
        #   vextractf32x8 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextractf32x8 opmask([eax], k1), zmm1, 0x03
        #   vextractf32x8 ymm0, zmm1, 0x03
        #   vextractf32x8 [eax], zmm1, 0x03
        def vextractf32x8(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTF32X8,operand1,operand2,operand3,**kwargs)
        # Extract 128 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTF64X2]
        # @example
        #   vextractf64x2 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextractf64x2 opmask([eax], k1), ymm1, 0x03
        #   vextractf64x2 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextractf64x2 opmask([eax], k1), zmm1, 0x03
        #   vextractf64x2 xmm0, ymm1, 0x03
        #   vextractf64x2 xmm0, zmm1, 0x03
        #   vextractf64x2 [eax], ymm1, 0x03
        #   vextractf64x2 [eax], zmm1, 0x03
        def vextractf64x2(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTF64X2,operand1,operand2,operand3,**kwargs)
        # Extract 256 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTF64X4]
        # @example
        #   vextractf64x4 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextractf64x4 opmask([eax], k1), zmm1, 0x03
        #   vextractf64x4 ymm0, zmm1, 0x03
        #   vextractf64x4 [eax], zmm1, 0x03
        def vextractf64x4(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTF64X4,operand1,operand2,operand3,**kwargs)
        # Extract Packed Integer Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTI128]
        # @example
        #   vextracti128 xmm0, ymm1, 0x03
        #   vextracti128 [eax], ymm1, 0x03
        def vextracti128(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTI128,operand1,operand2,operand3,**kwargs)
        # Extract 128 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTI32X4]
        # @example
        #   vextracti32x4 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextracti32x4 opmask([eax], k1), ymm1, 0x03
        #   vextracti32x4 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextracti32x4 opmask([eax], k1), zmm1, 0x03
        #   vextracti32x4 xmm0, ymm1, 0x03
        #   vextracti32x4 xmm0, zmm1, 0x03
        #   vextracti32x4 [eax], ymm1, 0x03
        #   vextracti32x4 [eax], zmm1, 0x03
        def vextracti32x4(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTI32X4,operand1,operand2,operand3,**kwargs)
        # Extract 256 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTI32X8]
        # @example
        #   vextracti32x8 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextracti32x8 opmask([eax], k1), zmm1, 0x03
        #   vextracti32x8 ymm0, zmm1, 0x03
        #   vextracti32x8 [eax], zmm1, 0x03
        def vextracti32x8(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTI32X8,operand1,operand2,operand3,**kwargs)
        # Extract 128 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTI64X2]
        # @example
        #   vextracti64x2 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextracti64x2 opmask([eax], k1), ymm1, 0x03
        #   vextracti64x2 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextracti64x2 opmask([eax], k1), zmm1, 0x03
        #   vextracti64x2 xmm0, ymm1, 0x03
        #   vextracti64x2 xmm0, zmm1, 0x03
        #   vextracti64x2 [eax], ymm1, 0x03
        #   vextracti64x2 [eax], zmm1, 0x03
        def vextracti64x2(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTI64X2,operand1,operand2,operand3,**kwargs)
        # Extract 256 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTI64X4]
        # @example
        #   vextracti64x4 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextracti64x4 opmask([eax], k1), zmm1, 0x03
        #   vextracti64x4 ymm0, zmm1, 0x03
        #   vextracti64x4 [eax], zmm1, 0x03
        def vextracti64x4(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTI64X4,operand1,operand2,operand3,**kwargs)
        # Extract Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VEXTRACTPS]
        # @example
        #   vextractps eax, xmm1, 0x03
        #   vextractps [eax], xmm1, 0x03
        def vextractps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VEXTRACTPS,operand1,operand2,operand3,**kwargs)
        # Fused Conjugate Multiply-Add of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFCMADDCPH]
        # @example
        #   vfcmaddcph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfcmaddcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmaddcph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfcmaddcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfcmaddcph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfcmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfcmaddcph xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfcmaddcph xmm0, xmm1, xmm2
        #   vfcmaddcph ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfcmaddcph ymm0, ymm1, ymm2
        #   vfcmaddcph zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfcmaddcph zmm0, zmm1, zmm2
        #   vfcmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfcmaddcph zmm0, zmm1, zmm2, er
        def vfcmaddcph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFCMADDCPH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Conjugate Multiply-Add of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFCMADDCSH]
        # @example
        #   vfcmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmaddcsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfcmaddcsh xmm0, xmm1, xmm2
        #   vfcmaddcsh xmm0, xmm1, [ecx]
        #   vfcmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfcmaddcsh xmm0, xmm1, xmm2, er
        def vfcmaddcsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFCMADDCSH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Conjugate Multiply of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFCMULCPH]
        # @example
        #   vfcmulcph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfcmulcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmulcph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfcmulcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfcmulcph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfcmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfcmulcph xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfcmulcph xmm0, xmm1, xmm2
        #   vfcmulcph ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfcmulcph ymm0, ymm1, ymm2
        #   vfcmulcph zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfcmulcph zmm0, zmm1, zmm2
        #   vfcmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfcmulcph zmm0, zmm1, zmm2, er
        def vfcmulcph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFCMULCPH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Conjugate Multiply of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFCMULCSH]
        # @example
        #   vfcmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmulcsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfcmulcsh xmm0, xmm1, xmm2
        #   vfcmulcsh xmm0, xmm1, [ecx]
        #   vfcmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfcmulcsh xmm0, xmm1, xmm2, er
        def vfcmulcsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFCMULCSH,operand1,operand2,operand3,*operands,**kwargs)
        # Fix Up Special Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFIXUPIMMPD]
        # @example
        #   vfixupimmpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vfixupimmpd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vfixupimmpd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vfixupimmpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vfixupimmpd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vfixupimmpd xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vfixupimmpd xmm0, xmm1, xmm2, 0x04
        #   vfixupimmpd ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vfixupimmpd ymm0, ymm1, ymm2, 0x04
        #   vfixupimmpd zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vfixupimmpd zmm0, zmm1, zmm2, 0x04
        #   vfixupimmpd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vfixupimmpd zmm0, zmm1, zmm2, sae, 0x05
        def vfixupimmpd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMPD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Fix Up Special Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFIXUPIMMPS]
        # @example
        #   vfixupimmps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vfixupimmps opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vfixupimmps opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vfixupimmps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vfixupimmps opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vfixupimmps xmm0, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vfixupimmps xmm0, xmm1, xmm2, 0x04
        #   vfixupimmps ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vfixupimmps ymm0, ymm1, ymm2, 0x04
        #   vfixupimmps zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vfixupimmps zmm0, zmm1, zmm2, 0x04
        #   vfixupimmps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vfixupimmps zmm0, zmm1, zmm2, sae, 0x05
        def vfixupimmps(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMPS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Fix Up Special Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VFIXUPIMMSD]
        # @example
        #   vfixupimmsd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmsd opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vfixupimmsd xmm0, xmm1, xmm2, 0x04
        #   vfixupimmsd xmm0, xmm1, [ecx], 0x04
        #   vfixupimmsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vfixupimmsd xmm0, xmm1, xmm2, sae, 0x05
        def vfixupimmsd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMSD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Fix Up Special Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VFIXUPIMMSS]
        # @example
        #   vfixupimmss opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmss opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vfixupimmss xmm0, xmm1, xmm2, 0x04
        #   vfixupimmss xmm0, xmm1, [ecx], 0x04
        #   vfixupimmss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vfixupimmss xmm0, xmm1, xmm2, sae, 0x05
        def vfixupimmss(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMSS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD132PD]
        # @example
        #   vfmadd132pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmadd132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmadd132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd132pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd132pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmadd132pd xmm0, xmm1, xmm2
        #   vfmadd132pd xmm0, xmm1, [ecx]
        #   vfmadd132pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmadd132pd ymm0, ymm1, ymm2
        #   vfmadd132pd ymm0, ymm1, [ecx]
        #   vfmadd132pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmadd132pd zmm0, zmm1, zmm2
        #   vfmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd132pd zmm0, zmm1, zmm2, er
        def vfmadd132pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD132PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD132PH]
        # @example
        #   vfmadd132ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmadd132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmadd132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd132ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd132ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmadd132ph xmm0, xmm1, xmm2
        #   vfmadd132ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmadd132ph ymm0, ymm1, ymm2
        #   vfmadd132ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmadd132ph zmm0, zmm1, zmm2
        #   vfmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd132ph zmm0, zmm1, zmm2, er
        def vfmadd132ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD132PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD132PS]
        # @example
        #   vfmadd132ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmadd132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmadd132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd132ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd132ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmadd132ps xmm0, xmm1, xmm2
        #   vfmadd132ps xmm0, xmm1, [ecx]
        #   vfmadd132ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmadd132ps ymm0, ymm1, ymm2
        #   vfmadd132ps ymm0, ymm1, [ecx]
        #   vfmadd132ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmadd132ps zmm0, zmm1, zmm2
        #   vfmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd132ps zmm0, zmm1, zmm2, er
        def vfmadd132ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD132PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD132SD]
        # @example
        #   vfmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmadd132sd xmm0, xmm1, xmm2
        #   vfmadd132sd xmm0, xmm1, [ecx]
        #   vfmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd132sd xmm0, xmm1, xmm2, er
        def vfmadd132sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD132SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD132SS]
        # @example
        #   vfmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmadd132ss xmm0, xmm1, xmm2
        #   vfmadd132ss xmm0, xmm1, [ecx]
        #   vfmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd132ss xmm0, xmm1, xmm2, er
        def vfmadd132ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD132SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD213PD]
        # @example
        #   vfmadd213pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmadd213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmadd213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd213pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd213pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmadd213pd xmm0, xmm1, xmm2
        #   vfmadd213pd xmm0, xmm1, [ecx]
        #   vfmadd213pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmadd213pd ymm0, ymm1, ymm2
        #   vfmadd213pd ymm0, ymm1, [ecx]
        #   vfmadd213pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmadd213pd zmm0, zmm1, zmm2
        #   vfmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd213pd zmm0, zmm1, zmm2, er
        def vfmadd213pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD213PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD213PH]
        # @example
        #   vfmadd213ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmadd213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmadd213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd213ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd213ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmadd213ph xmm0, xmm1, xmm2
        #   vfmadd213ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmadd213ph ymm0, ymm1, ymm2
        #   vfmadd213ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmadd213ph zmm0, zmm1, zmm2
        #   vfmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd213ph zmm0, zmm1, zmm2, er
        def vfmadd213ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD213PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD213PS]
        # @example
        #   vfmadd213ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmadd213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmadd213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd213ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd213ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmadd213ps xmm0, xmm1, xmm2
        #   vfmadd213ps xmm0, xmm1, [ecx]
        #   vfmadd213ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmadd213ps ymm0, ymm1, ymm2
        #   vfmadd213ps ymm0, ymm1, [ecx]
        #   vfmadd213ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmadd213ps zmm0, zmm1, zmm2
        #   vfmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd213ps zmm0, zmm1, zmm2, er
        def vfmadd213ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD213PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD213SD]
        # @example
        #   vfmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmadd213sd xmm0, xmm1, xmm2
        #   vfmadd213sd xmm0, xmm1, [ecx]
        #   vfmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd213sd xmm0, xmm1, xmm2, er
        def vfmadd213sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD213SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD213SS]
        # @example
        #   vfmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmadd213ss xmm0, xmm1, xmm2
        #   vfmadd213ss xmm0, xmm1, [ecx]
        #   vfmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd213ss xmm0, xmm1, xmm2, er
        def vfmadd213ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD213SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD231PD]
        # @example
        #   vfmadd231pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmadd231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmadd231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd231pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd231pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmadd231pd xmm0, xmm1, xmm2
        #   vfmadd231pd xmm0, xmm1, [ecx]
        #   vfmadd231pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmadd231pd ymm0, ymm1, ymm2
        #   vfmadd231pd ymm0, ymm1, [ecx]
        #   vfmadd231pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmadd231pd zmm0, zmm1, zmm2
        #   vfmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd231pd zmm0, zmm1, zmm2, er
        def vfmadd231pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD231PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD231PH]
        # @example
        #   vfmadd231ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmadd231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmadd231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd231ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd231ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmadd231ph xmm0, xmm1, xmm2
        #   vfmadd231ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmadd231ph ymm0, ymm1, ymm2
        #   vfmadd231ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmadd231ph zmm0, zmm1, zmm2
        #   vfmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd231ph zmm0, zmm1, zmm2, er
        def vfmadd231ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD231PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD231PS]
        # @example
        #   vfmadd231ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmadd231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmadd231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd231ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd231ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmadd231ps xmm0, xmm1, xmm2
        #   vfmadd231ps xmm0, xmm1, [ecx]
        #   vfmadd231ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmadd231ps ymm0, ymm1, ymm2
        #   vfmadd231ps ymm0, ymm1, [ecx]
        #   vfmadd231ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmadd231ps zmm0, zmm1, zmm2
        #   vfmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd231ps zmm0, zmm1, zmm2, er
        def vfmadd231ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD231PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD231SD]
        # @example
        #   vfmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmadd231sd xmm0, xmm1, xmm2
        #   vfmadd231sd xmm0, xmm1, [ecx]
        #   vfmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd231sd xmm0, xmm1, xmm2, er
        def vfmadd231sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD231SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADD231SS]
        # @example
        #   vfmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmadd231ss xmm0, xmm1, xmm2
        #   vfmadd231ss xmm0, xmm1, [ecx]
        #   vfmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd231ss xmm0, xmm1, xmm2, er
        def vfmadd231ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADD231SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDCPH]
        # @example
        #   vfmaddcph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmaddcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddcph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmaddcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddcph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddcph xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmaddcph xmm0, xmm1, xmm2
        #   vfmaddcph ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmaddcph ymm0, ymm1, ymm2
        #   vfmaddcph zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmaddcph zmm0, zmm1, zmm2
        #   vfmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddcph zmm0, zmm1, zmm2, er
        def vfmaddcph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDCPH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDCSH]
        # @example
        #   vfmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddcsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmaddcsh xmm0, xmm1, xmm2
        #   vfmaddcsh xmm0, xmm1, [ecx]
        #   vfmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmaddcsh xmm0, xmm1, xmm2, er
        def vfmaddcsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDCSH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDPD]
        # @example
        #   vfmaddpd xmm0, xmm1, xmm2, xmm3
        #   vfmaddpd xmm0, xmm1, xmm2, [edx]
        #   vfmaddpd xmm0, xmm1, [ecx], xmm3
        #   vfmaddpd ymm0, ymm1, ymm2, ymm3
        #   vfmaddpd ymm0, ymm1, ymm2, [edx]
        #   vfmaddpd ymm0, ymm1, [ecx], ymm3
        def vfmaddpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMADDPD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDPS]
        # @example
        #   vfmaddps xmm0, xmm1, xmm2, xmm3
        #   vfmaddps xmm0, xmm1, xmm2, [edx]
        #   vfmaddps xmm0, xmm1, [ecx], xmm3
        #   vfmaddps ymm0, ymm1, ymm2, ymm3
        #   vfmaddps ymm0, ymm1, ymm2, [edx]
        #   vfmaddps ymm0, ymm1, [ecx], ymm3
        def vfmaddps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMADDPS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSD]
        # @example
        #   vfmaddsd xmm0, xmm1, xmm2, xmm3
        #   vfmaddsd xmm0, xmm1, xmm2, [edx]
        #   vfmaddsd xmm0, xmm1, [ecx], xmm3
        def vfmaddsd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMADDSD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSS]
        # @example
        #   vfmaddss xmm0, xmm1, xmm2, xmm3
        #   vfmaddss xmm0, xmm1, xmm2, [edx]
        #   vfmaddss xmm0, xmm1, [ecx], xmm3
        def vfmaddss(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMADDSS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB132PD]
        # @example
        #   vfmaddsub132pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmaddsub132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub132pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmaddsub132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub132pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmaddsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub132pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmaddsub132pd xmm0, xmm1, xmm2
        #   vfmaddsub132pd xmm0, xmm1, [ecx]
        #   vfmaddsub132pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmaddsub132pd ymm0, ymm1, ymm2
        #   vfmaddsub132pd ymm0, ymm1, [ecx]
        #   vfmaddsub132pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmaddsub132pd zmm0, zmm1, zmm2
        #   vfmaddsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub132pd zmm0, zmm1, zmm2, er
        def vfmaddsub132pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB132PH]
        # @example
        #   vfmaddsub132ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmaddsub132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub132ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmaddsub132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub132ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmaddsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub132ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmaddsub132ph xmm0, xmm1, xmm2
        #   vfmaddsub132ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmaddsub132ph ymm0, ymm1, ymm2
        #   vfmaddsub132ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmaddsub132ph zmm0, zmm1, zmm2
        #   vfmaddsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub132ph zmm0, zmm1, zmm2, er
        def vfmaddsub132ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB132PS]
        # @example
        #   vfmaddsub132ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmaddsub132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub132ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmaddsub132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub132ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmaddsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub132ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmaddsub132ps xmm0, xmm1, xmm2
        #   vfmaddsub132ps xmm0, xmm1, [ecx]
        #   vfmaddsub132ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmaddsub132ps ymm0, ymm1, ymm2
        #   vfmaddsub132ps ymm0, ymm1, [ecx]
        #   vfmaddsub132ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmaddsub132ps zmm0, zmm1, zmm2
        #   vfmaddsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub132ps zmm0, zmm1, zmm2, er
        def vfmaddsub132ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB213PD]
        # @example
        #   vfmaddsub213pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmaddsub213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub213pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmaddsub213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub213pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmaddsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub213pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmaddsub213pd xmm0, xmm1, xmm2
        #   vfmaddsub213pd xmm0, xmm1, [ecx]
        #   vfmaddsub213pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmaddsub213pd ymm0, ymm1, ymm2
        #   vfmaddsub213pd ymm0, ymm1, [ecx]
        #   vfmaddsub213pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmaddsub213pd zmm0, zmm1, zmm2
        #   vfmaddsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub213pd zmm0, zmm1, zmm2, er
        def vfmaddsub213pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB213PH]
        # @example
        #   vfmaddsub213ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmaddsub213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub213ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmaddsub213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub213ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmaddsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub213ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmaddsub213ph xmm0, xmm1, xmm2
        #   vfmaddsub213ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmaddsub213ph ymm0, ymm1, ymm2
        #   vfmaddsub213ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmaddsub213ph zmm0, zmm1, zmm2
        #   vfmaddsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub213ph zmm0, zmm1, zmm2, er
        def vfmaddsub213ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB213PS]
        # @example
        #   vfmaddsub213ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmaddsub213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub213ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmaddsub213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub213ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmaddsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub213ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmaddsub213ps xmm0, xmm1, xmm2
        #   vfmaddsub213ps xmm0, xmm1, [ecx]
        #   vfmaddsub213ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmaddsub213ps ymm0, ymm1, ymm2
        #   vfmaddsub213ps ymm0, ymm1, [ecx]
        #   vfmaddsub213ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmaddsub213ps zmm0, zmm1, zmm2
        #   vfmaddsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub213ps zmm0, zmm1, zmm2, er
        def vfmaddsub213ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB231PD]
        # @example
        #   vfmaddsub231pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmaddsub231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub231pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmaddsub231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub231pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmaddsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub231pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmaddsub231pd xmm0, xmm1, xmm2
        #   vfmaddsub231pd xmm0, xmm1, [ecx]
        #   vfmaddsub231pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmaddsub231pd ymm0, ymm1, ymm2
        #   vfmaddsub231pd ymm0, ymm1, [ecx]
        #   vfmaddsub231pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmaddsub231pd zmm0, zmm1, zmm2
        #   vfmaddsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub231pd zmm0, zmm1, zmm2, er
        def vfmaddsub231pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB231PH]
        # @example
        #   vfmaddsub231ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmaddsub231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub231ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmaddsub231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub231ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmaddsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub231ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmaddsub231ph xmm0, xmm1, xmm2
        #   vfmaddsub231ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmaddsub231ph ymm0, ymm1, ymm2
        #   vfmaddsub231ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmaddsub231ph zmm0, zmm1, zmm2
        #   vfmaddsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub231ph zmm0, zmm1, zmm2, er
        def vfmaddsub231ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUB231PS]
        # @example
        #   vfmaddsub231ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmaddsub231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub231ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmaddsub231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub231ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmaddsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub231ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmaddsub231ps xmm0, xmm1, xmm2
        #   vfmaddsub231ps xmm0, xmm1, [ecx]
        #   vfmaddsub231ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmaddsub231ps ymm0, ymm1, ymm2
        #   vfmaddsub231ps ymm0, ymm1, [ecx]
        #   vfmaddsub231ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmaddsub231ps zmm0, zmm1, zmm2
        #   vfmaddsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub231ps zmm0, zmm1, zmm2, er
        def vfmaddsub231ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUBPD]
        # @example
        #   vfmaddsubpd xmm0, xmm1, xmm2, xmm3
        #   vfmaddsubpd xmm0, xmm1, xmm2, [edx]
        #   vfmaddsubpd xmm0, xmm1, [ecx], xmm3
        #   vfmaddsubpd ymm0, ymm1, ymm2, ymm3
        #   vfmaddsubpd ymm0, ymm1, ymm2, [edx]
        #   vfmaddsubpd ymm0, ymm1, [ecx], ymm3
        def vfmaddsubpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMADDSUBPD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMADDSUBPS]
        # @example
        #   vfmaddsubps xmm0, xmm1, xmm2, xmm3
        #   vfmaddsubps xmm0, xmm1, xmm2, [edx]
        #   vfmaddsubps xmm0, xmm1, [ecx], xmm3
        #   vfmaddsubps ymm0, ymm1, ymm2, ymm3
        #   vfmaddsubps ymm0, ymm1, ymm2, [edx]
        #   vfmaddsubps ymm0, ymm1, [ecx], ymm3
        def vfmaddsubps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMADDSUBPS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB132PD]
        # @example
        #   vfmsub132pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmsub132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmsub132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub132pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub132pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmsub132pd xmm0, xmm1, xmm2
        #   vfmsub132pd xmm0, xmm1, [ecx]
        #   vfmsub132pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmsub132pd ymm0, ymm1, ymm2
        #   vfmsub132pd ymm0, ymm1, [ecx]
        #   vfmsub132pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmsub132pd zmm0, zmm1, zmm2
        #   vfmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub132pd zmm0, zmm1, zmm2, er
        def vfmsub132pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB132PH]
        # @example
        #   vfmsub132ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmsub132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmsub132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub132ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub132ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmsub132ph xmm0, xmm1, xmm2
        #   vfmsub132ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmsub132ph ymm0, ymm1, ymm2
        #   vfmsub132ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmsub132ph zmm0, zmm1, zmm2
        #   vfmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub132ph zmm0, zmm1, zmm2, er
        def vfmsub132ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB132PS]
        # @example
        #   vfmsub132ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmsub132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmsub132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub132ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub132ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmsub132ps xmm0, xmm1, xmm2
        #   vfmsub132ps xmm0, xmm1, [ecx]
        #   vfmsub132ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmsub132ps ymm0, ymm1, ymm2
        #   vfmsub132ps ymm0, ymm1, [ecx]
        #   vfmsub132ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmsub132ps zmm0, zmm1, zmm2
        #   vfmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub132ps zmm0, zmm1, zmm2, er
        def vfmsub132ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB132SD]
        # @example
        #   vfmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub132sd xmm0, xmm1, xmm2
        #   vfmsub132sd xmm0, xmm1, [ecx]
        #   vfmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub132sd xmm0, xmm1, xmm2, er
        def vfmsub132sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB132SH]
        # @example
        #   vfmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub132sh xmm0, xmm1, xmm2
        #   vfmsub132sh xmm0, xmm1, [ecx]
        #   vfmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub132sh xmm0, xmm1, xmm2, er
        def vfmsub132sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB132SS]
        # @example
        #   vfmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub132ss xmm0, xmm1, xmm2
        #   vfmsub132ss xmm0, xmm1, [ecx]
        #   vfmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub132ss xmm0, xmm1, xmm2, er
        def vfmsub132ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB213PD]
        # @example
        #   vfmsub213pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmsub213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmsub213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub213pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub213pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmsub213pd xmm0, xmm1, xmm2
        #   vfmsub213pd xmm0, xmm1, [ecx]
        #   vfmsub213pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmsub213pd ymm0, ymm1, ymm2
        #   vfmsub213pd ymm0, ymm1, [ecx]
        #   vfmsub213pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmsub213pd zmm0, zmm1, zmm2
        #   vfmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub213pd zmm0, zmm1, zmm2, er
        def vfmsub213pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB213PH]
        # @example
        #   vfmsub213ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmsub213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmsub213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub213ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub213ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmsub213ph xmm0, xmm1, xmm2
        #   vfmsub213ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmsub213ph ymm0, ymm1, ymm2
        #   vfmsub213ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmsub213ph zmm0, zmm1, zmm2
        #   vfmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub213ph zmm0, zmm1, zmm2, er
        def vfmsub213ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB213PS]
        # @example
        #   vfmsub213ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmsub213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmsub213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub213ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub213ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmsub213ps xmm0, xmm1, xmm2
        #   vfmsub213ps xmm0, xmm1, [ecx]
        #   vfmsub213ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmsub213ps ymm0, ymm1, ymm2
        #   vfmsub213ps ymm0, ymm1, [ecx]
        #   vfmsub213ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmsub213ps zmm0, zmm1, zmm2
        #   vfmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub213ps zmm0, zmm1, zmm2, er
        def vfmsub213ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB213SD]
        # @example
        #   vfmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub213sd xmm0, xmm1, xmm2
        #   vfmsub213sd xmm0, xmm1, [ecx]
        #   vfmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub213sd xmm0, xmm1, xmm2, er
        def vfmsub213sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB213SH]
        # @example
        #   vfmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub213sh xmm0, xmm1, xmm2
        #   vfmsub213sh xmm0, xmm1, [ecx]
        #   vfmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub213sh xmm0, xmm1, xmm2, er
        def vfmsub213sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB213SS]
        # @example
        #   vfmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub213ss xmm0, xmm1, xmm2
        #   vfmsub213ss xmm0, xmm1, [ecx]
        #   vfmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub213ss xmm0, xmm1, xmm2, er
        def vfmsub213ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB231PD]
        # @example
        #   vfmsub231pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmsub231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmsub231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub231pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub231pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmsub231pd xmm0, xmm1, xmm2
        #   vfmsub231pd xmm0, xmm1, [ecx]
        #   vfmsub231pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmsub231pd ymm0, ymm1, ymm2
        #   vfmsub231pd ymm0, ymm1, [ecx]
        #   vfmsub231pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmsub231pd zmm0, zmm1, zmm2
        #   vfmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub231pd zmm0, zmm1, zmm2, er
        def vfmsub231pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB231PH]
        # @example
        #   vfmsub231ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmsub231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmsub231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub231ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub231ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmsub231ph xmm0, xmm1, xmm2
        #   vfmsub231ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmsub231ph ymm0, ymm1, ymm2
        #   vfmsub231ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmsub231ph zmm0, zmm1, zmm2
        #   vfmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub231ph zmm0, zmm1, zmm2, er
        def vfmsub231ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB231PS]
        # @example
        #   vfmsub231ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmsub231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmsub231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub231ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub231ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmsub231ps xmm0, xmm1, xmm2
        #   vfmsub231ps xmm0, xmm1, [ecx]
        #   vfmsub231ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmsub231ps ymm0, ymm1, ymm2
        #   vfmsub231ps ymm0, ymm1, [ecx]
        #   vfmsub231ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmsub231ps zmm0, zmm1, zmm2
        #   vfmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub231ps zmm0, zmm1, zmm2, er
        def vfmsub231ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB231SD]
        # @example
        #   vfmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub231sd xmm0, xmm1, xmm2
        #   vfmsub231sd xmm0, xmm1, [ecx]
        #   vfmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub231sd xmm0, xmm1, xmm2, er
        def vfmsub231sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB231SH]
        # @example
        #   vfmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub231sh xmm0, xmm1, xmm2
        #   vfmsub231sh xmm0, xmm1, [ecx]
        #   vfmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub231sh xmm0, xmm1, xmm2, er
        def vfmsub231sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUB231SS]
        # @example
        #   vfmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmsub231ss xmm0, xmm1, xmm2
        #   vfmsub231ss xmm0, xmm1, [ecx]
        #   vfmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub231ss xmm0, xmm1, xmm2, er
        def vfmsub231ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD132PD]
        # @example
        #   vfmsubadd132pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmsubadd132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd132pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmsubadd132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd132pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmsubadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd132pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmsubadd132pd xmm0, xmm1, xmm2
        #   vfmsubadd132pd xmm0, xmm1, [ecx]
        #   vfmsubadd132pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmsubadd132pd ymm0, ymm1, ymm2
        #   vfmsubadd132pd ymm0, ymm1, [ecx]
        #   vfmsubadd132pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmsubadd132pd zmm0, zmm1, zmm2
        #   vfmsubadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd132pd zmm0, zmm1, zmm2, er
        def vfmsubadd132pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD132PH]
        # @example
        #   vfmsubadd132ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmsubadd132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd132ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmsubadd132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd132ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmsubadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd132ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmsubadd132ph xmm0, xmm1, xmm2
        #   vfmsubadd132ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmsubadd132ph ymm0, ymm1, ymm2
        #   vfmsubadd132ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmsubadd132ph zmm0, zmm1, zmm2
        #   vfmsubadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd132ph zmm0, zmm1, zmm2, er
        def vfmsubadd132ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD132PS]
        # @example
        #   vfmsubadd132ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmsubadd132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd132ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmsubadd132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd132ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmsubadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd132ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmsubadd132ps xmm0, xmm1, xmm2
        #   vfmsubadd132ps xmm0, xmm1, [ecx]
        #   vfmsubadd132ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmsubadd132ps ymm0, ymm1, ymm2
        #   vfmsubadd132ps ymm0, ymm1, [ecx]
        #   vfmsubadd132ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmsubadd132ps zmm0, zmm1, zmm2
        #   vfmsubadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd132ps zmm0, zmm1, zmm2, er
        def vfmsubadd132ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD213PD]
        # @example
        #   vfmsubadd213pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmsubadd213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd213pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmsubadd213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd213pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmsubadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd213pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmsubadd213pd xmm0, xmm1, xmm2
        #   vfmsubadd213pd xmm0, xmm1, [ecx]
        #   vfmsubadd213pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmsubadd213pd ymm0, ymm1, ymm2
        #   vfmsubadd213pd ymm0, ymm1, [ecx]
        #   vfmsubadd213pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmsubadd213pd zmm0, zmm1, zmm2
        #   vfmsubadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd213pd zmm0, zmm1, zmm2, er
        def vfmsubadd213pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD213PH]
        # @example
        #   vfmsubadd213ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmsubadd213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd213ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmsubadd213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd213ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmsubadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd213ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmsubadd213ph xmm0, xmm1, xmm2
        #   vfmsubadd213ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmsubadd213ph ymm0, ymm1, ymm2
        #   vfmsubadd213ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmsubadd213ph zmm0, zmm1, zmm2
        #   vfmsubadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd213ph zmm0, zmm1, zmm2, er
        def vfmsubadd213ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD213PS]
        # @example
        #   vfmsubadd213ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmsubadd213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd213ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmsubadd213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd213ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmsubadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd213ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmsubadd213ps xmm0, xmm1, xmm2
        #   vfmsubadd213ps xmm0, xmm1, [ecx]
        #   vfmsubadd213ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmsubadd213ps ymm0, ymm1, ymm2
        #   vfmsubadd213ps ymm0, ymm1, [ecx]
        #   vfmsubadd213ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmsubadd213ps zmm0, zmm1, zmm2
        #   vfmsubadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd213ps zmm0, zmm1, zmm2, er
        def vfmsubadd213ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD231PD]
        # @example
        #   vfmsubadd231pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfmsubadd231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd231pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfmsubadd231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd231pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfmsubadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd231pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfmsubadd231pd xmm0, xmm1, xmm2
        #   vfmsubadd231pd xmm0, xmm1, [ecx]
        #   vfmsubadd231pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfmsubadd231pd ymm0, ymm1, ymm2
        #   vfmsubadd231pd ymm0, ymm1, [ecx]
        #   vfmsubadd231pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfmsubadd231pd zmm0, zmm1, zmm2
        #   vfmsubadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd231pd zmm0, zmm1, zmm2, er
        def vfmsubadd231pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD231PH]
        # @example
        #   vfmsubadd231ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfmsubadd231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd231ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfmsubadd231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd231ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfmsubadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd231ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfmsubadd231ph xmm0, xmm1, xmm2
        #   vfmsubadd231ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfmsubadd231ph ymm0, ymm1, ymm2
        #   vfmsubadd231ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfmsubadd231ph zmm0, zmm1, zmm2
        #   vfmsubadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd231ph zmm0, zmm1, zmm2, er
        def vfmsubadd231ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADD231PS]
        # @example
        #   vfmsubadd231ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmsubadd231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd231ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmsubadd231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd231ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmsubadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd231ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmsubadd231ps xmm0, xmm1, xmm2
        #   vfmsubadd231ps xmm0, xmm1, [ecx]
        #   vfmsubadd231ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmsubadd231ps ymm0, ymm1, ymm2
        #   vfmsubadd231ps ymm0, ymm1, [ecx]
        #   vfmsubadd231ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmsubadd231ps zmm0, zmm1, zmm2
        #   vfmsubadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd231ps zmm0, zmm1, zmm2, er
        def vfmsubadd231ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADDPD]
        # @example
        #   vfmsubaddpd xmm0, xmm1, xmm2, xmm3
        #   vfmsubaddpd xmm0, xmm1, xmm2, [edx]
        #   vfmsubaddpd xmm0, xmm1, [ecx], xmm3
        #   vfmsubaddpd ymm0, ymm1, ymm2, ymm3
        #   vfmsubaddpd ymm0, ymm1, ymm2, [edx]
        #   vfmsubaddpd ymm0, ymm1, [ecx], ymm3
        def vfmsubaddpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMSUBADDPD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBADDPS]
        # @example
        #   vfmsubaddps xmm0, xmm1, xmm2, xmm3
        #   vfmsubaddps xmm0, xmm1, xmm2, [edx]
        #   vfmsubaddps xmm0, xmm1, [ecx], xmm3
        #   vfmsubaddps ymm0, ymm1, ymm2, ymm3
        #   vfmsubaddps ymm0, ymm1, ymm2, [edx]
        #   vfmsubaddps ymm0, ymm1, [ecx], ymm3
        def vfmsubaddps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMSUBADDPS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBPD]
        # @example
        #   vfmsubpd xmm0, xmm1, xmm2, xmm3
        #   vfmsubpd xmm0, xmm1, xmm2, [edx]
        #   vfmsubpd xmm0, xmm1, [ecx], xmm3
        #   vfmsubpd ymm0, ymm1, ymm2, ymm3
        #   vfmsubpd ymm0, ymm1, ymm2, [edx]
        #   vfmsubpd ymm0, ymm1, [ecx], ymm3
        def vfmsubpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMSUBPD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBPS]
        # @example
        #   vfmsubps xmm0, xmm1, xmm2, xmm3
        #   vfmsubps xmm0, xmm1, xmm2, [edx]
        #   vfmsubps xmm0, xmm1, [ecx], xmm3
        #   vfmsubps ymm0, ymm1, ymm2, ymm3
        #   vfmsubps ymm0, ymm1, ymm2, [edx]
        #   vfmsubps ymm0, ymm1, [ecx], ymm3
        def vfmsubps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMSUBPS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBSD]
        # @example
        #   vfmsubsd xmm0, xmm1, xmm2, xmm3
        #   vfmsubsd xmm0, xmm1, xmm2, [edx]
        #   vfmsubsd xmm0, xmm1, [ecx], xmm3
        def vfmsubsd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMSUBSD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMSUBSS]
        # @example
        #   vfmsubss xmm0, xmm1, xmm2, xmm3
        #   vfmsubss xmm0, xmm1, xmm2, [edx]
        #   vfmsubss xmm0, xmm1, [ecx], xmm3
        def vfmsubss(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFMSUBSS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Fused Multiply of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMULCPH]
        # @example
        #   vfmulcph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfmulcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmulcph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfmulcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmulcph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmulcph xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfmulcph xmm0, xmm1, xmm2
        #   vfmulcph ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfmulcph ymm0, ymm1, ymm2
        #   vfmulcph zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfmulcph zmm0, zmm1, zmm2
        #   vfmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmulcph zmm0, zmm1, zmm2, er
        def vfmulcph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMULCPH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFMULCSH]
        # @example
        #   vfmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmulcsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfmulcsh xmm0, xmm1, xmm2
        #   vfmulcsh xmm0, xmm1, [ecx]
        #   vfmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmulcsh xmm0, xmm1, xmm2, er
        def vfmulcsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFMULCSH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD132PD]
        # @example
        #   vfnmadd132pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfnmadd132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfnmadd132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd132pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfnmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd132pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfnmadd132pd xmm0, xmm1, xmm2
        #   vfnmadd132pd xmm0, xmm1, [ecx]
        #   vfnmadd132pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfnmadd132pd ymm0, ymm1, ymm2
        #   vfnmadd132pd ymm0, ymm1, [ecx]
        #   vfnmadd132pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfnmadd132pd zmm0, zmm1, zmm2
        #   vfnmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd132pd zmm0, zmm1, zmm2, er
        def vfnmadd132pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD132PH]
        # @example
        #   vfnmadd132ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfnmadd132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfnmadd132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd132ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfnmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd132ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfnmadd132ph xmm0, xmm1, xmm2
        #   vfnmadd132ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfnmadd132ph ymm0, ymm1, ymm2
        #   vfnmadd132ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfnmadd132ph zmm0, zmm1, zmm2
        #   vfnmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd132ph zmm0, zmm1, zmm2, er
        def vfnmadd132ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD132PS]
        # @example
        #   vfnmadd132ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfnmadd132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfnmadd132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd132ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfnmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd132ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfnmadd132ps xmm0, xmm1, xmm2
        #   vfnmadd132ps xmm0, xmm1, [ecx]
        #   vfnmadd132ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfnmadd132ps ymm0, ymm1, ymm2
        #   vfnmadd132ps ymm0, ymm1, [ecx]
        #   vfnmadd132ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfnmadd132ps zmm0, zmm1, zmm2
        #   vfnmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd132ps zmm0, zmm1, zmm2, er
        def vfnmadd132ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD132SD]
        # @example
        #   vfnmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmadd132sd xmm0, xmm1, xmm2
        #   vfnmadd132sd xmm0, xmm1, [ecx]
        #   vfnmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd132sd xmm0, xmm1, xmm2, er
        def vfnmadd132sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD132SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD132SS]
        # @example
        #   vfnmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmadd132ss xmm0, xmm1, xmm2
        #   vfnmadd132ss xmm0, xmm1, [ecx]
        #   vfnmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd132ss xmm0, xmm1, xmm2, er
        def vfnmadd132ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD132SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD213PD]
        # @example
        #   vfnmadd213pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfnmadd213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfnmadd213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd213pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfnmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd213pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfnmadd213pd xmm0, xmm1, xmm2
        #   vfnmadd213pd xmm0, xmm1, [ecx]
        #   vfnmadd213pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfnmadd213pd ymm0, ymm1, ymm2
        #   vfnmadd213pd ymm0, ymm1, [ecx]
        #   vfnmadd213pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfnmadd213pd zmm0, zmm1, zmm2
        #   vfnmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd213pd zmm0, zmm1, zmm2, er
        def vfnmadd213pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD213PH]
        # @example
        #   vfnmadd213ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfnmadd213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfnmadd213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd213ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfnmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd213ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfnmadd213ph xmm0, xmm1, xmm2
        #   vfnmadd213ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfnmadd213ph ymm0, ymm1, ymm2
        #   vfnmadd213ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfnmadd213ph zmm0, zmm1, zmm2
        #   vfnmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd213ph zmm0, zmm1, zmm2, er
        def vfnmadd213ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD213PS]
        # @example
        #   vfnmadd213ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfnmadd213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfnmadd213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd213ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfnmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd213ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfnmadd213ps xmm0, xmm1, xmm2
        #   vfnmadd213ps xmm0, xmm1, [ecx]
        #   vfnmadd213ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfnmadd213ps ymm0, ymm1, ymm2
        #   vfnmadd213ps ymm0, ymm1, [ecx]
        #   vfnmadd213ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfnmadd213ps zmm0, zmm1, zmm2
        #   vfnmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd213ps zmm0, zmm1, zmm2, er
        def vfnmadd213ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD213SD]
        # @example
        #   vfnmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmadd213sd xmm0, xmm1, xmm2
        #   vfnmadd213sd xmm0, xmm1, [ecx]
        #   vfnmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd213sd xmm0, xmm1, xmm2, er
        def vfnmadd213sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD213SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD213SS]
        # @example
        #   vfnmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmadd213ss xmm0, xmm1, xmm2
        #   vfnmadd213ss xmm0, xmm1, [ecx]
        #   vfnmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd213ss xmm0, xmm1, xmm2, er
        def vfnmadd213ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD213SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD231PD]
        # @example
        #   vfnmadd231pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfnmadd231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfnmadd231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd231pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfnmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd231pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfnmadd231pd xmm0, xmm1, xmm2
        #   vfnmadd231pd xmm0, xmm1, [ecx]
        #   vfnmadd231pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfnmadd231pd ymm0, ymm1, ymm2
        #   vfnmadd231pd ymm0, ymm1, [ecx]
        #   vfnmadd231pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfnmadd231pd zmm0, zmm1, zmm2
        #   vfnmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd231pd zmm0, zmm1, zmm2, er
        def vfnmadd231pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD231PH]
        # @example
        #   vfnmadd231ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfnmadd231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfnmadd231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd231ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfnmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd231ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfnmadd231ph xmm0, xmm1, xmm2
        #   vfnmadd231ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfnmadd231ph ymm0, ymm1, ymm2
        #   vfnmadd231ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfnmadd231ph zmm0, zmm1, zmm2
        #   vfnmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd231ph zmm0, zmm1, zmm2, er
        def vfnmadd231ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD231PS]
        # @example
        #   vfnmadd231ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfnmadd231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfnmadd231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd231ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfnmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd231ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfnmadd231ps xmm0, xmm1, xmm2
        #   vfnmadd231ps xmm0, xmm1, [ecx]
        #   vfnmadd231ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfnmadd231ps ymm0, ymm1, ymm2
        #   vfnmadd231ps ymm0, ymm1, [ecx]
        #   vfnmadd231ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfnmadd231ps zmm0, zmm1, zmm2
        #   vfnmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd231ps zmm0, zmm1, zmm2, er
        def vfnmadd231ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD231SD]
        # @example
        #   vfnmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmadd231sd xmm0, xmm1, xmm2
        #   vfnmadd231sd xmm0, xmm1, [ecx]
        #   vfnmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd231sd xmm0, xmm1, xmm2, er
        def vfnmadd231sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD231SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADD231SS]
        # @example
        #   vfnmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmadd231ss xmm0, xmm1, xmm2
        #   vfnmadd231ss xmm0, xmm1, [ecx]
        #   vfnmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd231ss xmm0, xmm1, xmm2, er
        def vfnmadd231ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMADD231SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADDPD]
        # @example
        #   vfnmaddpd xmm0, xmm1, xmm2, xmm3
        #   vfnmaddpd xmm0, xmm1, xmm2, [edx]
        #   vfnmaddpd xmm0, xmm1, [ecx], xmm3
        #   vfnmaddpd ymm0, ymm1, ymm2, ymm3
        #   vfnmaddpd ymm0, ymm1, ymm2, [edx]
        #   vfnmaddpd ymm0, ymm1, [ecx], ymm3
        def vfnmaddpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMADDPD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADDPS]
        # @example
        #   vfnmaddps xmm0, xmm1, xmm2, xmm3
        #   vfnmaddps xmm0, xmm1, xmm2, [edx]
        #   vfnmaddps xmm0, xmm1, [ecx], xmm3
        #   vfnmaddps ymm0, ymm1, ymm2, ymm3
        #   vfnmaddps ymm0, ymm1, ymm2, [edx]
        #   vfnmaddps ymm0, ymm1, [ecx], ymm3
        def vfnmaddps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMADDPS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADDSD]
        # @example
        #   vfnmaddsd xmm0, xmm1, xmm2, xmm3
        #   vfnmaddsd xmm0, xmm1, xmm2, [edx]
        #   vfnmaddsd xmm0, xmm1, [ecx], xmm3
        def vfnmaddsd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMADDSD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMADDSS]
        # @example
        #   vfnmaddss xmm0, xmm1, xmm2, xmm3
        #   vfnmaddss xmm0, xmm1, xmm2, [edx]
        #   vfnmaddss xmm0, xmm1, [ecx], xmm3
        def vfnmaddss(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMADDSS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB132PD]
        # @example
        #   vfnmsub132pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfnmsub132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfnmsub132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub132pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfnmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub132pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfnmsub132pd xmm0, xmm1, xmm2
        #   vfnmsub132pd xmm0, xmm1, [ecx]
        #   vfnmsub132pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfnmsub132pd ymm0, ymm1, ymm2
        #   vfnmsub132pd ymm0, ymm1, [ecx]
        #   vfnmsub132pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfnmsub132pd zmm0, zmm1, zmm2
        #   vfnmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub132pd zmm0, zmm1, zmm2, er
        def vfnmsub132pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB132PH]
        # @example
        #   vfnmsub132ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfnmsub132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfnmsub132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub132ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfnmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub132ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfnmsub132ph xmm0, xmm1, xmm2
        #   vfnmsub132ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfnmsub132ph ymm0, ymm1, ymm2
        #   vfnmsub132ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfnmsub132ph zmm0, zmm1, zmm2
        #   vfnmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub132ph zmm0, zmm1, zmm2, er
        def vfnmsub132ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB132PS]
        # @example
        #   vfnmsub132ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfnmsub132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfnmsub132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub132ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfnmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub132ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfnmsub132ps xmm0, xmm1, xmm2
        #   vfnmsub132ps xmm0, xmm1, [ecx]
        #   vfnmsub132ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfnmsub132ps ymm0, ymm1, ymm2
        #   vfnmsub132ps ymm0, ymm1, [ecx]
        #   vfnmsub132ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfnmsub132ps zmm0, zmm1, zmm2
        #   vfnmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub132ps zmm0, zmm1, zmm2, er
        def vfnmsub132ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB132SD]
        # @example
        #   vfnmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub132sd xmm0, xmm1, xmm2
        #   vfnmsub132sd xmm0, xmm1, [ecx]
        #   vfnmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub132sd xmm0, xmm1, xmm2, er
        def vfnmsub132sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB132SH]
        # @example
        #   vfnmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub132sh xmm0, xmm1, xmm2
        #   vfnmsub132sh xmm0, xmm1, [ecx]
        #   vfnmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub132sh xmm0, xmm1, xmm2, er
        def vfnmsub132sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB132SS]
        # @example
        #   vfnmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub132ss xmm0, xmm1, xmm2
        #   vfnmsub132ss xmm0, xmm1, [ecx]
        #   vfnmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub132ss xmm0, xmm1, xmm2, er
        def vfnmsub132ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB213PD]
        # @example
        #   vfnmsub213pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfnmsub213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfnmsub213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub213pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfnmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub213pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfnmsub213pd xmm0, xmm1, xmm2
        #   vfnmsub213pd xmm0, xmm1, [ecx]
        #   vfnmsub213pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfnmsub213pd ymm0, ymm1, ymm2
        #   vfnmsub213pd ymm0, ymm1, [ecx]
        #   vfnmsub213pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfnmsub213pd zmm0, zmm1, zmm2
        #   vfnmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub213pd zmm0, zmm1, zmm2, er
        def vfnmsub213pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB213PH]
        # @example
        #   vfnmsub213ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfnmsub213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfnmsub213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub213ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfnmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub213ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfnmsub213ph xmm0, xmm1, xmm2
        #   vfnmsub213ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfnmsub213ph ymm0, ymm1, ymm2
        #   vfnmsub213ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfnmsub213ph zmm0, zmm1, zmm2
        #   vfnmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub213ph zmm0, zmm1, zmm2, er
        def vfnmsub213ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB213PS]
        # @example
        #   vfnmsub213ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfnmsub213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfnmsub213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub213ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfnmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub213ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfnmsub213ps xmm0, xmm1, xmm2
        #   vfnmsub213ps xmm0, xmm1, [ecx]
        #   vfnmsub213ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfnmsub213ps ymm0, ymm1, ymm2
        #   vfnmsub213ps ymm0, ymm1, [ecx]
        #   vfnmsub213ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfnmsub213ps zmm0, zmm1, zmm2
        #   vfnmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub213ps zmm0, zmm1, zmm2, er
        def vfnmsub213ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB213SD]
        # @example
        #   vfnmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub213sd xmm0, xmm1, xmm2
        #   vfnmsub213sd xmm0, xmm1, [ecx]
        #   vfnmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub213sd xmm0, xmm1, xmm2, er
        def vfnmsub213sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB213SH]
        # @example
        #   vfnmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub213sh xmm0, xmm1, xmm2
        #   vfnmsub213sh xmm0, xmm1, [ecx]
        #   vfnmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub213sh xmm0, xmm1, xmm2, er
        def vfnmsub213sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB213SS]
        # @example
        #   vfnmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub213ss xmm0, xmm1, xmm2
        #   vfnmsub213ss xmm0, xmm1, [ecx]
        #   vfnmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub213ss xmm0, xmm1, xmm2, er
        def vfnmsub213ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB231PD]
        # @example
        #   vfnmsub231pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vfnmsub231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vfnmsub231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub231pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vfnmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub231pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vfnmsub231pd xmm0, xmm1, xmm2
        #   vfnmsub231pd xmm0, xmm1, [ecx]
        #   vfnmsub231pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vfnmsub231pd ymm0, ymm1, ymm2
        #   vfnmsub231pd ymm0, ymm1, [ecx]
        #   vfnmsub231pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vfnmsub231pd zmm0, zmm1, zmm2
        #   vfnmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub231pd zmm0, zmm1, zmm2, er
        def vfnmsub231pd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB231PH]
        # @example
        #   vfnmsub231ph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vfnmsub231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231ph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vfnmsub231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub231ph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vfnmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub231ph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vfnmsub231ph xmm0, xmm1, xmm2
        #   vfnmsub231ph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vfnmsub231ph ymm0, ymm1, ymm2
        #   vfnmsub231ph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vfnmsub231ph zmm0, zmm1, zmm2
        #   vfnmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub231ph zmm0, zmm1, zmm2, er
        def vfnmsub231ph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB231PS]
        # @example
        #   vfnmsub231ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vfnmsub231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vfnmsub231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub231ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vfnmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub231ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vfnmsub231ps xmm0, xmm1, xmm2
        #   vfnmsub231ps xmm0, xmm1, [ecx]
        #   vfnmsub231ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vfnmsub231ps ymm0, ymm1, ymm2
        #   vfnmsub231ps ymm0, ymm1, [ecx]
        #   vfnmsub231ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vfnmsub231ps zmm0, zmm1, zmm2
        #   vfnmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub231ps zmm0, zmm1, zmm2, er
        def vfnmsub231ps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB231SD]
        # @example
        #   vfnmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub231sd xmm0, xmm1, xmm2
        #   vfnmsub231sd xmm0, xmm1, [ecx]
        #   vfnmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub231sd xmm0, xmm1, xmm2, er
        def vfnmsub231sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB231SH]
        # @example
        #   vfnmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231sh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub231sh xmm0, xmm1, xmm2
        #   vfnmsub231sh xmm0, xmm1, [ecx]
        #   vfnmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub231sh xmm0, xmm1, xmm2, er
        def vfnmsub231sh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SH,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUB231SS]
        # @example
        #   vfnmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vfnmsub231ss xmm0, xmm1, xmm2
        #   vfnmsub231ss xmm0, xmm1, [ecx]
        #   vfnmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub231ss xmm0, xmm1, xmm2, er
        def vfnmsub231ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SS,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUBPD]
        # @example
        #   vfnmsubpd xmm0, xmm1, xmm2, xmm3
        #   vfnmsubpd xmm0, xmm1, xmm2, [edx]
        #   vfnmsubpd xmm0, xmm1, [ecx], xmm3
        #   vfnmsubpd ymm0, ymm1, ymm2, ymm3
        #   vfnmsubpd ymm0, ymm1, ymm2, [edx]
        #   vfnmsubpd ymm0, ymm1, [ecx], ymm3
        def vfnmsubpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMSUBPD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUBPS]
        # @example
        #   vfnmsubps xmm0, xmm1, xmm2, xmm3
        #   vfnmsubps xmm0, xmm1, xmm2, [edx]
        #   vfnmsubps xmm0, xmm1, [ecx], xmm3
        #   vfnmsubps ymm0, ymm1, ymm2, ymm3
        #   vfnmsubps ymm0, ymm1, ymm2, [edx]
        #   vfnmsubps ymm0, ymm1, [ecx], ymm3
        def vfnmsubps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMSUBPS,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUBSD]
        # @example
        #   vfnmsubsd xmm0, xmm1, xmm2, xmm3
        #   vfnmsubsd xmm0, xmm1, xmm2, [edx]
        #   vfnmsubsd xmm0, xmm1, [ecx], xmm3
        def vfnmsubsd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMSUBSD,operand1,operand2,operand3,operand4,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFNMSUBSS]
        # @example
        #   vfnmsubss xmm0, xmm1, xmm2, xmm3
        #   vfnmsubss xmm0, xmm1, xmm2, [edx]
        #   vfnmsubss xmm0, xmm1, [ecx], xmm3
        def vfnmsubss(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VFNMSUBSS,operand1,operand2,operand3,operand4,**kwargs)
        # Test Class of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFPCLASSPD]
        # @example
        #   vfpclasspd opmask(k1, k2), bcst([ebx], {1=>2}), 0x03
        #   vfpclasspd k1, bcst([ebx], {1=>2}), 0x03
        #   vfpclasspd opmask(k1, k2), bcst([ebx], {1=>4}), 0x03
        #   vfpclasspd k1, bcst([ebx], {1=>4}), 0x03
        #   vfpclasspd opmask(k1, k2), bcst([ebx], {1=>8}), 0x03
        #   vfpclasspd k1, bcst([ebx], {1=>8}), 0x03
        #   vfpclasspd opmask(k1, k2), xmm1, 0x03
        #   vfpclasspd k1, xmm1, 0x03
        #   vfpclasspd opmask(k1, k2), ymm1, 0x03
        #   vfpclasspd k1, ymm1, 0x03
        #   vfpclasspd opmask(k1, k2), zmm1, 0x03
        #   vfpclasspd k1, zmm1, 0x03
        def vfpclasspd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VFPCLASSPD,operand1,operand2,operand3,**kwargs)
        # Test Class of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFPCLASSPH]
        # @example
        #   vfpclassph opmask(k1, k2), bcst([ebx], {1=>8}), 0x03
        #   vfpclassph k1, bcst([ebx], {1=>8}), 0x03
        #   vfpclassph opmask(k1, k2), bcst([ebx], {1=>16}), 0x03
        #   vfpclassph k1, bcst([ebx], {1=>16}), 0x03
        #   vfpclassph opmask(k1, k2), bcst([ebx], {1=>32}), 0x03
        #   vfpclassph k1, bcst([ebx], {1=>32}), 0x03
        #   vfpclassph opmask(k1, k2), xmm1, 0x03
        #   vfpclassph k1, xmm1, 0x03
        #   vfpclassph opmask(k1, k2), ymm1, 0x03
        #   vfpclassph k1, ymm1, 0x03
        #   vfpclassph opmask(k1, k2), zmm1, 0x03
        #   vfpclassph k1, zmm1, 0x03
        def vfpclassph(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VFPCLASSPH,operand1,operand2,operand3,**kwargs)
        # Test Class of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VFPCLASSPS]
        # @example
        #   vfpclassps opmask(k1, k2), bcst([ebx], {1=>4}), 0x03
        #   vfpclassps k1, bcst([ebx], {1=>4}), 0x03
        #   vfpclassps opmask(k1, k2), bcst([ebx], {1=>8}), 0x03
        #   vfpclassps k1, bcst([ebx], {1=>8}), 0x03
        #   vfpclassps opmask(k1, k2), bcst([ebx], {1=>16}), 0x03
        #   vfpclassps k1, bcst([ebx], {1=>16}), 0x03
        #   vfpclassps opmask(k1, k2), xmm1, 0x03
        #   vfpclassps k1, xmm1, 0x03
        #   vfpclassps opmask(k1, k2), ymm1, 0x03
        #   vfpclassps k1, ymm1, 0x03
        #   vfpclassps opmask(k1, k2), zmm1, 0x03
        #   vfpclassps k1, zmm1, 0x03
        def vfpclassps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VFPCLASSPS,operand1,operand2,operand3,**kwargs)
        # Test Class of Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VFPCLASSSD]
        # @example
        #   vfpclasssd opmask(k1, k2), xmm1, 0x03
        #   vfpclasssd k1, xmm1, 0x03
        #   vfpclasssd opmask(k1, k2), [ebx], 0x03
        #   vfpclasssd k1, [ebx], 0x03
        def vfpclasssd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VFPCLASSSD,operand1,operand2,operand3,**kwargs)
        # Test Class of Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VFPCLASSSH]
        # @example
        #   vfpclasssh opmask(k1, k2), xmm1, 0x03
        #   vfpclasssh k1, xmm1, 0x03
        #   vfpclasssh opmask(k1, k2), [ebx], 0x03
        #   vfpclasssh k1, [ebx], 0x03
        def vfpclasssh(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VFPCLASSSH,operand1,operand2,operand3,**kwargs)
        # Test Class of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VFPCLASSSS]
        # @example
        #   vfpclassss opmask(k1, k2), xmm1, 0x03
        #   vfpclassss k1, xmm1, 0x03
        #   vfpclassss opmask(k1, k2), [ebx], 0x03
        #   vfpclassss k1, [ebx], 0x03
        def vfpclassss(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VFPCLASSSS,operand1,operand2,operand3,**kwargs)
        # Extract Fraction Packed Double-Precision Floating-Point
        # @return [Ronin::ASM::X86::Instructions::VFRCZPD]
        # @example
        #   vfrczpd xmm0, xmm1
        #   vfrczpd xmm0, [ebx]
        #   vfrczpd ymm0, ymm1
        #   vfrczpd ymm0, [ebx]
        def vfrczpd(operand1,operand2,**kwargs) = add_instruction(Instructions::VFRCZPD,operand1,operand2,**kwargs)
        # Extract Fraction Packed Single-Precision Floating-Point
        # @return [Ronin::ASM::X86::Instructions::VFRCZPS]
        # @example
        #   vfrczps xmm0, xmm1
        #   vfrczps xmm0, [ebx]
        #   vfrczps ymm0, ymm1
        #   vfrczps ymm0, [ebx]
        def vfrczps(operand1,operand2,**kwargs) = add_instruction(Instructions::VFRCZPS,operand1,operand2,**kwargs)
        # Extract Fraction Scalar Double-Precision Floating-Point
        # @return [Ronin::ASM::X86::Instructions::VFRCZSD]
        # @example
        #   vfrczsd xmm0, xmm1
        #   vfrczsd xmm0, [ebx]
        def vfrczsd(operand1,operand2,**kwargs) = add_instruction(Instructions::VFRCZSD,operand1,operand2,**kwargs)
        # Extract Fraction Scalar Single-Precision Floating Point
        # @return [Ronin::ASM::X86::Instructions::VFRCZSS]
        # @example
        #   vfrczss xmm0, xmm1
        #   vfrczss xmm0, [ebx]
        def vfrczss(operand1,operand2,**kwargs) = add_instruction(Instructions::VFRCZSS,operand1,operand2,**kwargs)
        # Gather Packed Double-Precision Floating-Point Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VGATHERDPD]
        # @example
        #   vgatherdpd opmask(xmm0, k1), [ebx+xmm1*4]
        #   vgatherdpd opmask(ymm0, k1), [ebx+xmm1*4]
        #   vgatherdpd opmask(zmm0, k1), [ebx+ymm1*4]
        #   vgatherdpd xmm0, [ebx+xmm1*4], xmm2
        #   vgatherdpd ymm0, [ebx+xmm1*4], ymm2
        def vgatherdpd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VGATHERDPD,operand1,operand2,*operands,**kwargs)
        # Gather Packed Single-Precision Floating-Point Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VGATHERDPS]
        # @example
        #   vgatherdps opmask(xmm0, k1), [ebx+xmm1*4]
        #   vgatherdps opmask(ymm0, k1), [ebx+ymm1*4]
        #   vgatherdps opmask(zmm0, k1), [ebx+zmm1*4]
        #   vgatherdps xmm0, [ebx+xmm1*4], xmm2
        #   vgatherdps ymm0, [ebx+ymm1*4], ymm2
        def vgatherdps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VGATHERDPS,operand1,operand2,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF0DPD]
        # @example
        #   vgatherpf0dpd opmask([eax+ymm0*4], k1)
        def vgatherpf0dpd(operand,**kwargs) = add_instruction(Instructions::VGATHERPF0DPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF0DPS]
        # @example
        #   vgatherpf0dps opmask([eax+zmm0*4], k1)
        def vgatherpf0dps(operand,**kwargs) = add_instruction(Instructions::VGATHERPF0DPS,operand,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF0QPD]
        # @example
        #   vgatherpf0qpd opmask([eax+zmm0*8], k1)
        def vgatherpf0qpd(operand,**kwargs) = add_instruction(Instructions::VGATHERPF0QPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF0QPS]
        # @example
        #   vgatherpf0qps opmask([eax+zmm0*8], k1)
        def vgatherpf0qps(operand,**kwargs) = add_instruction(Instructions::VGATHERPF0QPS,operand,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF1DPD]
        # @example
        #   vgatherpf1dpd opmask([eax+ymm0*4], k1)
        def vgatherpf1dpd(operand,**kwargs) = add_instruction(Instructions::VGATHERPF1DPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF1DPS]
        # @example
        #   vgatherpf1dps opmask([eax+zmm0*4], k1)
        def vgatherpf1dps(operand,**kwargs) = add_instruction(Instructions::VGATHERPF1DPS,operand,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF1QPD]
        # @example
        #   vgatherpf1qpd opmask([eax+zmm0*8], k1)
        def vgatherpf1qpd(operand,**kwargs) = add_instruction(Instructions::VGATHERPF1QPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint
        # @return [Ronin::ASM::X86::Instructions::VGATHERPF1QPS]
        # @example
        #   vgatherpf1qps opmask([eax+zmm0*8], k1)
        def vgatherpf1qps(operand,**kwargs) = add_instruction(Instructions::VGATHERPF1QPS,operand,**kwargs)
        # Gather Packed Double-Precision Floating-Point Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VGATHERQPD]
        # @example
        #   vgatherqpd opmask(xmm0, k1), [ebx+xmm1*8]
        #   vgatherqpd opmask(ymm0, k1), [ebx+ymm1*8]
        #   vgatherqpd opmask(zmm0, k1), [ebx+zmm1*8]
        #   vgatherqpd xmm0, [ebx+xmm1*8], xmm2
        #   vgatherqpd ymm0, [ebx+ymm1*8], ymm2
        def vgatherqpd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VGATHERQPD,operand1,operand2,*operands,**kwargs)
        # Gather Packed Single-Precision Floating-Point Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VGATHERQPS]
        # @example
        #   vgatherqps opmask(xmm0, k1), [ebx+xmm1*8]
        #   vgatherqps opmask(xmm0, k1), [ebx+ymm1*8]
        #   vgatherqps opmask(ymm0, k1), [ebx+zmm1*8]
        #   vgatherqps xmm0, [ebx+xmm1*8], xmm2
        #   vgatherqps xmm0, [ebx+ymm1*8], xmm2
        def vgatherqps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VGATHERQPS,operand1,operand2,*operands,**kwargs)
        # Extract Exponents of Packed Double-Precision Floating-Point Values as Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VGETEXPPD]
        # @example
        #   vgetexppd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vgetexppd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vgetexppd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vgetexppd opmask(xmm0, k1, zero: true), xmm1
        #   vgetexppd opmask(ymm0, k1, zero: true), ymm1
        #   vgetexppd opmask(zmm0, k1, zero: true), zmm1
        #   vgetexppd xmm0, bcst([ebx], {1=>2})
        #   vgetexppd xmm0, xmm1
        #   vgetexppd ymm0, bcst([ebx], {1=>4})
        #   vgetexppd ymm0, ymm1
        #   vgetexppd zmm0, bcst([ebx], {1=>8})
        #   vgetexppd zmm0, zmm1
        #   vgetexppd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vgetexppd zmm0, zmm1, sae
        def vgetexppd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VGETEXPPD,operand1,operand2,*operands,**kwargs)
        # Extract Exponents of Packed Half-Precision Floating-Point Values as Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VGETEXPPH]
        # @example
        #   vgetexpph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vgetexpph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vgetexpph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vgetexpph opmask(xmm0, k1, zero: true), xmm1
        #   vgetexpph opmask(ymm0, k1, zero: true), ymm1
        #   vgetexpph opmask(zmm0, k1, zero: true), zmm1
        #   vgetexpph xmm0, bcst([ebx], {1=>8})
        #   vgetexpph xmm0, xmm1
        #   vgetexpph ymm0, bcst([ebx], {1=>16})
        #   vgetexpph ymm0, ymm1
        #   vgetexpph zmm0, bcst([ebx], {1=>32})
        #   vgetexpph zmm0, zmm1
        #   vgetexpph opmask(zmm0, k1, zero: true), zmm1, sae
        #   vgetexpph zmm0, zmm1, sae
        def vgetexpph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VGETEXPPH,operand1,operand2,*operands,**kwargs)
        # Extract Exponents of Packed Single-Precision Floating-Point Values as Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VGETEXPPS]
        # @example
        #   vgetexpps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vgetexpps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vgetexpps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vgetexpps opmask(xmm0, k1, zero: true), xmm1
        #   vgetexpps opmask(ymm0, k1, zero: true), ymm1
        #   vgetexpps opmask(zmm0, k1, zero: true), zmm1
        #   vgetexpps xmm0, bcst([ebx], {1=>4})
        #   vgetexpps xmm0, xmm1
        #   vgetexpps ymm0, bcst([ebx], {1=>8})
        #   vgetexpps ymm0, ymm1
        #   vgetexpps zmm0, bcst([ebx], {1=>16})
        #   vgetexpps zmm0, zmm1
        #   vgetexpps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vgetexpps zmm0, zmm1, sae
        def vgetexpps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VGETEXPPS,operand1,operand2,*operands,**kwargs)
        # Extract Exponent of Scalar Double-Precision Floating-Point Value as Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VGETEXPSD]
        # @example
        #   vgetexpsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgetexpsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vgetexpsd xmm0, xmm1, xmm2
        #   vgetexpsd xmm0, xmm1, [ecx]
        #   vgetexpsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vgetexpsd xmm0, xmm1, xmm2, sae
        def vgetexpsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VGETEXPSD,operand1,operand2,operand3,*operands,**kwargs)
        # Extract Exponent of Scalar Half-Precision Floating-Point Value as Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VGETEXPSH]
        # @example
        #   vgetexpsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgetexpsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vgetexpsh xmm0, xmm1, xmm2
        #   vgetexpsh xmm0, xmm1, [ecx]
        #   vgetexpsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vgetexpsh xmm0, xmm1, xmm2, sae
        def vgetexpsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VGETEXPSH,operand1,operand2,operand3,*operands,**kwargs)
        # Extract Exponent of Scalar Single-Precision Floating-Point Value as Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VGETEXPSS]
        # @example
        #   vgetexpss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgetexpss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vgetexpss xmm0, xmm1, xmm2
        #   vgetexpss xmm0, xmm1, [ecx]
        #   vgetexpss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vgetexpss xmm0, xmm1, xmm2, sae
        def vgetexpss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VGETEXPSS,operand1,operand2,operand3,*operands,**kwargs)
        # Extract Normalized Mantissas from Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VGETMANTPD]
        # @example
        #   vgetmantpd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vgetmantpd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vgetmantpd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vgetmantpd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vgetmantpd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vgetmantpd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vgetmantpd xmm0, bcst([ebx], {1=>2}), 0x03
        #   vgetmantpd xmm0, xmm1, 0x03
        #   vgetmantpd ymm0, bcst([ebx], {1=>4}), 0x03
        #   vgetmantpd ymm0, ymm1, 0x03
        #   vgetmantpd zmm0, bcst([ebx], {1=>8}), 0x03
        #   vgetmantpd zmm0, zmm1, 0x03
        #   vgetmantpd opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vgetmantpd zmm0, zmm1, sae, 0x04
        def vgetmantpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VGETMANTPD,operand1,operand2,operand3,*operands,**kwargs)
        # Extract Normalized Mantissas from Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VGETMANTPH]
        # @example
        #   vgetmantph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vgetmantph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vgetmantph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32}), 0x03
        #   vgetmantph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vgetmantph opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vgetmantph opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vgetmantph xmm0, bcst([ebx], {1=>8}), 0x03
        #   vgetmantph xmm0, xmm1, 0x03
        #   vgetmantph ymm0, bcst([ebx], {1=>16}), 0x03
        #   vgetmantph ymm0, ymm1, 0x03
        #   vgetmantph zmm0, bcst([ebx], {1=>32}), 0x03
        #   vgetmantph zmm0, zmm1, 0x03
        #   vgetmantph opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vgetmantph zmm0, zmm1, sae, 0x04
        def vgetmantph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VGETMANTPH,operand1,operand2,operand3,*operands,**kwargs)
        # Extract Normalized Mantissas from Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VGETMANTPS]
        # @example
        #   vgetmantps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vgetmantps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vgetmantps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vgetmantps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vgetmantps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vgetmantps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vgetmantps xmm0, bcst([ebx], {1=>4}), 0x03
        #   vgetmantps xmm0, xmm1, 0x03
        #   vgetmantps ymm0, bcst([ebx], {1=>8}), 0x03
        #   vgetmantps ymm0, ymm1, 0x03
        #   vgetmantps zmm0, bcst([ebx], {1=>16}), 0x03
        #   vgetmantps zmm0, zmm1, 0x03
        #   vgetmantps opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vgetmantps zmm0, zmm1, sae, 0x04
        def vgetmantps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VGETMANTPS,operand1,operand2,operand3,*operands,**kwargs)
        # Extract Normalized Mantissa from Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VGETMANTSD]
        # @example
        #   vgetmantsd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgetmantsd opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vgetmantsd xmm0, xmm1, xmm2, 0x04
        #   vgetmantsd xmm0, xmm1, [ecx], 0x04
        #   vgetmantsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vgetmantsd xmm0, xmm1, xmm2, sae, 0x05
        def vgetmantsd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VGETMANTSD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Extract Normalized Mantissa from Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VGETMANTSH]
        # @example
        #   vgetmantsh opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgetmantsh opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vgetmantsh xmm0, xmm1, xmm2, 0x04
        #   vgetmantsh xmm0, xmm1, [ecx], 0x04
        #   vgetmantsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vgetmantsh xmm0, xmm1, xmm2, sae, 0x05
        def vgetmantsh(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VGETMANTSH,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Extract Normalized Mantissa from Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VGETMANTSS]
        # @example
        #   vgetmantss opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgetmantss opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vgetmantss xmm0, xmm1, xmm2, 0x04
        #   vgetmantss xmm0, xmm1, [ecx], 0x04
        #   vgetmantss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vgetmantss xmm0, xmm1, xmm2, sae, 0x05
        def vgetmantss(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VGETMANTSS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Galois Field (2^8) Affine Inverse Transformation
        # @return [Ronin::ASM::X86::Instructions::VGF2P8AFFINEINVQB]
        # @example
        #   vgf2p8affineinvqb opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vgf2p8affineinvqb opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgf2p8affineinvqb opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vgf2p8affineinvqb opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vgf2p8affineinvqb opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vgf2p8affineinvqb opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vgf2p8affineinvqb xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vgf2p8affineinvqb xmm0, xmm1, xmm2, 0x04
        #   vgf2p8affineinvqb xmm0, xmm1, [ecx], 0x04
        #   vgf2p8affineinvqb ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vgf2p8affineinvqb ymm0, ymm1, ymm2, 0x04
        #   vgf2p8affineinvqb ymm0, ymm1, [ecx], 0x04
        #   vgf2p8affineinvqb zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vgf2p8affineinvqb zmm0, zmm1, zmm2, 0x04
        def vgf2p8affineinvqb(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VGF2P8AFFINEINVQB,operand1,operand2,operand3,operand4,**kwargs)
        # Galois Field (2^8) Affine Transformation
        # @return [Ronin::ASM::X86::Instructions::VGF2P8AFFINEQB]
        # @example
        #   vgf2p8affineqb opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vgf2p8affineqb opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgf2p8affineqb opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vgf2p8affineqb opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vgf2p8affineqb opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vgf2p8affineqb opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vgf2p8affineqb xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vgf2p8affineqb xmm0, xmm1, xmm2, 0x04
        #   vgf2p8affineqb xmm0, xmm1, [ecx], 0x04
        #   vgf2p8affineqb ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vgf2p8affineqb ymm0, ymm1, ymm2, 0x04
        #   vgf2p8affineqb ymm0, ymm1, [ecx], 0x04
        #   vgf2p8affineqb zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vgf2p8affineqb zmm0, zmm1, zmm2, 0x04
        def vgf2p8affineqb(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VGF2P8AFFINEQB,operand1,operand2,operand3,operand4,**kwargs)
        # Galois Field Multiply Bytes
        # @return [Ronin::ASM::X86::Instructions::VGF2P8MULB]
        # @example
        #   vgf2p8mulb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgf2p8mulb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vgf2p8mulb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vgf2p8mulb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vgf2p8mulb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vgf2p8mulb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vgf2p8mulb xmm0, xmm1, xmm2
        #   vgf2p8mulb xmm0, xmm1, [ecx]
        #   vgf2p8mulb ymm0, ymm1, ymm2
        #   vgf2p8mulb ymm0, ymm1, [ecx]
        #   vgf2p8mulb zmm0, zmm1, zmm2
        #   vgf2p8mulb zmm0, zmm1, [ecx]
        def vgf2p8mulb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VGF2P8MULB,operand1,operand2,operand3,**kwargs)
        # Packed Double-FP Horizontal Add
        # @return [Ronin::ASM::X86::Instructions::VHADDPD]
        # @example
        #   vhaddpd xmm0, xmm1, xmm2
        #   vhaddpd xmm0, xmm1, [ecx]
        #   vhaddpd ymm0, ymm1, ymm2
        #   vhaddpd ymm0, ymm1, [ecx]
        def vhaddpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VHADDPD,operand1,operand2,operand3,**kwargs)
        # Packed Single-FP Horizontal Add
        # @return [Ronin::ASM::X86::Instructions::VHADDPS]
        # @example
        #   vhaddps xmm0, xmm1, xmm2
        #   vhaddps xmm0, xmm1, [ecx]
        #   vhaddps ymm0, ymm1, ymm2
        #   vhaddps ymm0, ymm1, [ecx]
        def vhaddps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VHADDPS,operand1,operand2,operand3,**kwargs)
        # Packed Double-FP Horizontal Subtract
        # @return [Ronin::ASM::X86::Instructions::VHSUBPD]
        # @example
        #   vhsubpd xmm0, xmm1, xmm2
        #   vhsubpd xmm0, xmm1, [ecx]
        #   vhsubpd ymm0, ymm1, ymm2
        #   vhsubpd ymm0, ymm1, [ecx]
        def vhsubpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VHSUBPD,operand1,operand2,operand3,**kwargs)
        # Packed Single-FP Horizontal Subtract
        # @return [Ronin::ASM::X86::Instructions::VHSUBPS]
        # @example
        #   vhsubps xmm0, xmm1, xmm2
        #   vhsubps xmm0, xmm1, [ecx]
        #   vhsubps ymm0, ymm1, ymm2
        #   vhsubps ymm0, ymm1, [ecx]
        def vhsubps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VHSUBPS,operand1,operand2,operand3,**kwargs)
        # Insert Packed Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTF128]
        # @example
        #   vinsertf128 ymm0, ymm1, xmm2, 0x04
        #   vinsertf128 ymm0, ymm1, [ecx], 0x04
        def vinsertf128(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTF128,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 128 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTF32X4]
        # @example
        #   vinsertf32x4 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinsertf32x4 opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vinsertf32x4 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinsertf32x4 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinsertf32x4 ymm0, ymm1, xmm2, 0x04
        #   vinsertf32x4 ymm0, ymm1, [ecx], 0x04
        #   vinsertf32x4 zmm0, zmm1, xmm2, 0x04
        #   vinsertf32x4 zmm0, zmm1, [ecx], 0x04
        def vinsertf32x4(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTF32X4,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 256 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTF32X8]
        # @example
        #   vinsertf32x8 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinsertf32x8 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinsertf32x8 zmm0, zmm1, ymm2, 0x04
        #   vinsertf32x8 zmm0, zmm1, [ecx], 0x04
        def vinsertf32x8(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTF32X8,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 128 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTF64X2]
        # @example
        #   vinsertf64x2 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinsertf64x2 opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vinsertf64x2 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinsertf64x2 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinsertf64x2 ymm0, ymm1, xmm2, 0x04
        #   vinsertf64x2 ymm0, ymm1, [ecx], 0x04
        #   vinsertf64x2 zmm0, zmm1, xmm2, 0x04
        #   vinsertf64x2 zmm0, zmm1, [ecx], 0x04
        def vinsertf64x2(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTF64X2,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 256 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTF64X4]
        # @example
        #   vinsertf64x4 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinsertf64x4 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinsertf64x4 zmm0, zmm1, ymm2, 0x04
        #   vinsertf64x4 zmm0, zmm1, [ecx], 0x04
        def vinsertf64x4(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTF64X4,operand1,operand2,operand3,operand4,**kwargs)
        # Insert Packed Integer Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTI128]
        # @example
        #   vinserti128 ymm0, ymm1, xmm2, 0x04
        #   vinserti128 ymm0, ymm1, [ecx], 0x04
        def vinserti128(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTI128,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 128 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTI32X4]
        # @example
        #   vinserti32x4 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinserti32x4 opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vinserti32x4 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinserti32x4 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinserti32x4 ymm0, ymm1, xmm2, 0x04
        #   vinserti32x4 ymm0, ymm1, [ecx], 0x04
        #   vinserti32x4 zmm0, zmm1, xmm2, 0x04
        #   vinserti32x4 zmm0, zmm1, [ecx], 0x04
        def vinserti32x4(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTI32X4,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 256 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTI32X8]
        # @example
        #   vinserti32x8 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinserti32x8 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinserti32x8 zmm0, zmm1, ymm2, 0x04
        #   vinserti32x8 zmm0, zmm1, [ecx], 0x04
        def vinserti32x8(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTI32X8,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 128 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTI64X2]
        # @example
        #   vinserti64x2 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinserti64x2 opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vinserti64x2 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinserti64x2 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinserti64x2 ymm0, ymm1, xmm2, 0x04
        #   vinserti64x2 ymm0, ymm1, [ecx], 0x04
        #   vinserti64x2 zmm0, zmm1, xmm2, 0x04
        #   vinserti64x2 zmm0, zmm1, [ecx], 0x04
        def vinserti64x2(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTI64X2,operand1,operand2,operand3,operand4,**kwargs)
        # Insert 256 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VINSERTI64X4]
        # @example
        #   vinserti64x4 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinserti64x4 opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vinserti64x4 zmm0, zmm1, ymm2, 0x04
        #   vinserti64x4 zmm0, zmm1, [ecx], 0x04
        def vinserti64x4(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTI64X4,operand1,operand2,operand3,operand4,**kwargs)
        # Insert Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VINSERTPS]
        # @example
        #   vinsertps xmm0, xmm1, xmm2, 0x04
        #   vinsertps xmm0, xmm1, [ecx], 0x04
        def vinsertps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VINSERTPS,operand1,operand2,operand3,operand4,**kwargs)
        # Load Unaligned Integer 128 Bits
        # @return [Ronin::ASM::X86::Instructions::VLDDQU]
        # @example
        #   vlddqu xmm0, [ebx]
        #   vlddqu ymm0, [ebx]
        def vlddqu(operand1,operand2,**kwargs) = add_instruction(Instructions::VLDDQU,operand1,operand2,**kwargs)
        # Load MXCSR Register
        # @return [Ronin::ASM::X86::Instructions::VLDMXCSR]
        # @example
        #   vldmxcsr [eax]
        def vldmxcsr(operand,**kwargs) = add_instruction(Instructions::VLDMXCSR,operand,**kwargs)
        # Store Selected Bytes of Double Quadword
        # @return [Ronin::ASM::X86::Instructions::VMASKMOVDQU]
        # @example
        #   vmaskmovdqu xmm0, xmm1
        def vmaskmovdqu(operand1,operand2,**kwargs) = add_instruction(Instructions::VMASKMOVDQU,operand1,operand2,**kwargs)
        # Conditional Move Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMASKMOVPD]
        # @example
        #   vmaskmovpd xmm0, xmm1, [ecx]
        #   vmaskmovpd ymm0, ymm1, [ecx]
        #   vmaskmovpd [eax], xmm1, xmm2
        #   vmaskmovpd [eax], ymm1, ymm2
        def vmaskmovpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VMASKMOVPD,operand1,operand2,operand3,**kwargs)
        # Conditional Move Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMASKMOVPS]
        # @example
        #   vmaskmovps xmm0, xmm1, [ecx]
        #   vmaskmovps ymm0, ymm1, [ecx]
        #   vmaskmovps [eax], xmm1, xmm2
        #   vmaskmovps [eax], ymm1, ymm2
        def vmaskmovps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VMASKMOVPS,operand1,operand2,operand3,**kwargs)
        # Return Maximum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMAXPD]
        # @example
        #   vmaxpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vmaxpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vmaxpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmaxpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vmaxpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmaxpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vmaxpd xmm0, xmm1, xmm2
        #   vmaxpd xmm0, xmm1, [ecx]
        #   vmaxpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vmaxpd ymm0, ymm1, ymm2
        #   vmaxpd ymm0, ymm1, [ecx]
        #   vmaxpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vmaxpd zmm0, zmm1, zmm2
        #   vmaxpd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vmaxpd zmm0, zmm1, zmm2, sae
        def vmaxpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMAXPD,operand1,operand2,operand3,*operands,**kwargs)
        # Return Maximum Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMAXPH]
        # @example
        #   vmaxph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vmaxph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vmaxph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmaxph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vmaxph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmaxph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vmaxph xmm0, xmm1, xmm2
        #   vmaxph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vmaxph ymm0, ymm1, ymm2
        #   vmaxph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vmaxph zmm0, zmm1, zmm2
        #   vmaxph opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vmaxph zmm0, zmm1, zmm2, sae
        def vmaxph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMAXPH,operand1,operand2,operand3,*operands,**kwargs)
        # Return Maximum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMAXPS]
        # @example
        #   vmaxps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vmaxps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vmaxps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmaxps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vmaxps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmaxps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vmaxps xmm0, xmm1, xmm2
        #   vmaxps xmm0, xmm1, [ecx]
        #   vmaxps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vmaxps ymm0, ymm1, ymm2
        #   vmaxps ymm0, ymm1, [ecx]
        #   vmaxps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vmaxps zmm0, zmm1, zmm2
        #   vmaxps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vmaxps zmm0, zmm1, zmm2, sae
        def vmaxps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMAXPS,operand1,operand2,operand3,*operands,**kwargs)
        # Return Maximum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMAXSD]
        # @example
        #   vmaxsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vmaxsd xmm0, xmm1, xmm2
        #   vmaxsd xmm0, xmm1, [ecx]
        #   vmaxsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vmaxsd xmm0, xmm1, xmm2, sae
        def vmaxsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMAXSD,operand1,operand2,operand3,*operands,**kwargs)
        # Return Maximum Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMAXSH]
        # @example
        #   vmaxsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vmaxsh xmm0, xmm1, xmm2
        #   vmaxsh xmm0, xmm1, [ecx]
        #   vmaxsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vmaxsh xmm0, xmm1, xmm2, sae
        def vmaxsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMAXSH,operand1,operand2,operand3,*operands,**kwargs)
        # Return Maximum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMAXSS]
        # @example
        #   vmaxss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vmaxss xmm0, xmm1, xmm2
        #   vmaxss xmm0, xmm1, [ecx]
        #   vmaxss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vmaxss xmm0, xmm1, xmm2, sae
        def vmaxss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMAXSS,operand1,operand2,operand3,*operands,**kwargs)
        # Return Minimum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMINPD]
        # @example
        #   vminpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vminpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vminpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vminpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vminpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vminpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vminpd xmm0, xmm1, xmm2
        #   vminpd xmm0, xmm1, [ecx]
        #   vminpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vminpd ymm0, ymm1, ymm2
        #   vminpd ymm0, ymm1, [ecx]
        #   vminpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vminpd zmm0, zmm1, zmm2
        #   vminpd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vminpd zmm0, zmm1, zmm2, sae
        def vminpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMINPD,operand1,operand2,operand3,*operands,**kwargs)
        # Return Minimum Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMINPH]
        # @example
        #   vminph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vminph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vminph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vminph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vminph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vminph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vminph xmm0, xmm1, xmm2
        #   vminph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vminph ymm0, ymm1, ymm2
        #   vminph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vminph zmm0, zmm1, zmm2
        #   vminph opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vminph zmm0, zmm1, zmm2, sae
        def vminph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMINPH,operand1,operand2,operand3,*operands,**kwargs)
        # Return Minimum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMINPS]
        # @example
        #   vminps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vminps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vminps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vminps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vminps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vminps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vminps xmm0, xmm1, xmm2
        #   vminps xmm0, xmm1, [ecx]
        #   vminps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vminps ymm0, ymm1, ymm2
        #   vminps ymm0, ymm1, [ecx]
        #   vminps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vminps zmm0, zmm1, zmm2
        #   vminps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vminps zmm0, zmm1, zmm2, sae
        def vminps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMINPS,operand1,operand2,operand3,*operands,**kwargs)
        # Return Minimum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMINSD]
        # @example
        #   vminsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vminsd xmm0, xmm1, xmm2
        #   vminsd xmm0, xmm1, [ecx]
        #   vminsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vminsd xmm0, xmm1, xmm2, sae
        def vminsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMINSD,operand1,operand2,operand3,*operands,**kwargs)
        # Return Minimum Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMINSH]
        # @example
        #   vminsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vminsh xmm0, xmm1, xmm2
        #   vminsh xmm0, xmm1, [ecx]
        #   vminsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vminsh xmm0, xmm1, xmm2, sae
        def vminsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMINSH,operand1,operand2,operand3,*operands,**kwargs)
        # Return Minimum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMINSS]
        # @example
        #   vminss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vminss xmm0, xmm1, xmm2
        #   vminss xmm0, xmm1, [ecx]
        #   vminss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vminss xmm0, xmm1, xmm2, sae
        def vminss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMINSS,operand1,operand2,operand3,*operands,**kwargs)
        # Move Aligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVAPD]
        # @example
        #   vmovapd opmask([eax], k1), xmm1
        #   vmovapd opmask(xmm0, k1, zero: true), xmm1
        #   vmovapd opmask([eax], k1), ymm1
        #   vmovapd opmask(ymm0, k1, zero: true), ymm1
        #   vmovapd opmask([eax], k1), zmm1
        #   vmovapd opmask(zmm0, k1, zero: true), zmm1
        #   vmovapd opmask(xmm0, k1, zero: true), [ebx]
        #   vmovapd opmask(ymm0, k1, zero: true), [ebx]
        #   vmovapd opmask(zmm0, k1, zero: true), [ebx]
        #   vmovapd xmm0, xmm1
        #   vmovapd xmm0, [ebx]
        #   vmovapd ymm0, ymm1
        #   vmovapd ymm0, [ebx]
        #   vmovapd zmm0, zmm1
        #   vmovapd zmm0, [ebx]
        #   vmovapd [eax], xmm1
        #   vmovapd [eax], ymm1
        #   vmovapd [eax], zmm1
        def vmovapd(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVAPD,operand1,operand2,**kwargs)
        # Move Aligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVAPS]
        # @example
        #   vmovaps opmask([eax], k1), xmm1
        #   vmovaps opmask(xmm0, k1, zero: true), xmm1
        #   vmovaps opmask([eax], k1), ymm1
        #   vmovaps opmask(ymm0, k1, zero: true), ymm1
        #   vmovaps opmask([eax], k1), zmm1
        #   vmovaps opmask(zmm0, k1, zero: true), zmm1
        #   vmovaps opmask(xmm0, k1, zero: true), [ebx]
        #   vmovaps opmask(ymm0, k1, zero: true), [ebx]
        #   vmovaps opmask(zmm0, k1, zero: true), [ebx]
        #   vmovaps xmm0, xmm1
        #   vmovaps xmm0, [ebx]
        #   vmovaps ymm0, ymm1
        #   vmovaps ymm0, [ebx]
        #   vmovaps zmm0, zmm1
        #   vmovaps zmm0, [ebx]
        #   vmovaps [eax], xmm1
        #   vmovaps [eax], ymm1
        #   vmovaps [eax], zmm1
        def vmovaps(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVAPS,operand1,operand2,**kwargs)
        # Move Doubleword
        # @return [Ronin::ASM::X86::Instructions::VMOVD]
        # @example
        #   vmovd eax, xmm1
        #   vmovd xmm0, ebx
        #   vmovd xmm0, [ebx]
        #   vmovd [eax], xmm1
        def vmovd(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVD,operand1,operand2,**kwargs)
        # Move One Double-FP and Duplicate
        # @return [Ronin::ASM::X86::Instructions::VMOVDDUP]
        # @example
        #   vmovddup opmask(xmm0, k1, zero: true), xmm1
        #   vmovddup opmask(ymm0, k1, zero: true), ymm1
        #   vmovddup opmask(zmm0, k1, zero: true), zmm1
        #   vmovddup opmask(xmm0, k1, zero: true), [ebx]
        #   vmovddup opmask(ymm0, k1, zero: true), [ebx]
        #   vmovddup opmask(zmm0, k1, zero: true), [ebx]
        #   vmovddup xmm0, xmm1
        #   vmovddup xmm0, [ebx]
        #   vmovddup ymm0, ymm1
        #   vmovddup ymm0, [ebx]
        #   vmovddup zmm0, zmm1
        #   vmovddup zmm0, [ebx]
        def vmovddup(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDDUP,operand1,operand2,**kwargs)
        # Move Aligned Double Quadword
        # @return [Ronin::ASM::X86::Instructions::VMOVDQA]
        # @example
        #   vmovdqa xmm0, xmm1
        #   vmovdqa xmm0, [ebx]
        #   vmovdqa ymm0, ymm1
        #   vmovdqa ymm0, [ebx]
        #   vmovdqa [eax], xmm1
        #   vmovdqa [eax], ymm1
        def vmovdqa(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQA,operand1,operand2,**kwargs)
        # Move Aligned Doubleword Values
        # @return [Ronin::ASM::X86::Instructions::VMOVDQA32]
        # @example
        #   vmovdqa32 opmask([eax], k1), xmm1
        #   vmovdqa32 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqa32 opmask([eax], k1), ymm1
        #   vmovdqa32 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqa32 opmask([eax], k1), zmm1
        #   vmovdqa32 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqa32 opmask(xmm0, k1, zero: true), [ebx]
        #   vmovdqa32 opmask(ymm0, k1, zero: true), [ebx]
        #   vmovdqa32 opmask(zmm0, k1, zero: true), [ebx]
        #   vmovdqa32 xmm0, xmm1
        #   vmovdqa32 xmm0, [ebx]
        #   vmovdqa32 ymm0, ymm1
        #   vmovdqa32 ymm0, [ebx]
        #   vmovdqa32 zmm0, zmm1
        #   vmovdqa32 zmm0, [ebx]
        #   vmovdqa32 [eax], xmm1
        #   vmovdqa32 [eax], ymm1
        #   vmovdqa32 [eax], zmm1
        def vmovdqa32(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQA32,operand1,operand2,**kwargs)
        # Move Aligned Quadword Values
        # @return [Ronin::ASM::X86::Instructions::VMOVDQA64]
        # @example
        #   vmovdqa64 opmask([eax], k1), xmm1
        #   vmovdqa64 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqa64 opmask([eax], k1), ymm1
        #   vmovdqa64 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqa64 opmask([eax], k1), zmm1
        #   vmovdqa64 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqa64 opmask(xmm0, k1, zero: true), [ebx]
        #   vmovdqa64 opmask(ymm0, k1, zero: true), [ebx]
        #   vmovdqa64 opmask(zmm0, k1, zero: true), [ebx]
        #   vmovdqa64 xmm0, xmm1
        #   vmovdqa64 xmm0, [ebx]
        #   vmovdqa64 ymm0, ymm1
        #   vmovdqa64 ymm0, [ebx]
        #   vmovdqa64 zmm0, zmm1
        #   vmovdqa64 zmm0, [ebx]
        #   vmovdqa64 [eax], xmm1
        #   vmovdqa64 [eax], ymm1
        #   vmovdqa64 [eax], zmm1
        def vmovdqa64(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQA64,operand1,operand2,**kwargs)
        # Move Unaligned Double Quadword
        # @return [Ronin::ASM::X86::Instructions::VMOVDQU]
        # @example
        #   vmovdqu xmm0, xmm1
        #   vmovdqu xmm0, [ebx]
        #   vmovdqu ymm0, ymm1
        #   vmovdqu ymm0, [ebx]
        #   vmovdqu [eax], xmm1
        #   vmovdqu [eax], ymm1
        def vmovdqu(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQU,operand1,operand2,**kwargs)
        # Move Unaligned Word Values
        # @return [Ronin::ASM::X86::Instructions::VMOVDQU16]
        # @example
        #   vmovdqu16 opmask([eax], k1), xmm1
        #   vmovdqu16 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu16 opmask([eax], k1), ymm1
        #   vmovdqu16 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu16 opmask([eax], k1), zmm1
        #   vmovdqu16 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu16 opmask(xmm0, k1, zero: true), [ebx]
        #   vmovdqu16 opmask(ymm0, k1, zero: true), [ebx]
        #   vmovdqu16 opmask(zmm0, k1, zero: true), [ebx]
        #   vmovdqu16 xmm0, xmm1
        #   vmovdqu16 xmm0, [ebx]
        #   vmovdqu16 ymm0, ymm1
        #   vmovdqu16 ymm0, [ebx]
        #   vmovdqu16 zmm0, zmm1
        #   vmovdqu16 zmm0, [ebx]
        #   vmovdqu16 [eax], xmm1
        #   vmovdqu16 [eax], ymm1
        #   vmovdqu16 [eax], zmm1
        def vmovdqu16(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQU16,operand1,operand2,**kwargs)
        # Move Unaligned Doubleword Values
        # @return [Ronin::ASM::X86::Instructions::VMOVDQU32]
        # @example
        #   vmovdqu32 opmask([eax], k1), xmm1
        #   vmovdqu32 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu32 opmask([eax], k1), ymm1
        #   vmovdqu32 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu32 opmask([eax], k1), zmm1
        #   vmovdqu32 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu32 opmask(xmm0, k1, zero: true), [ebx]
        #   vmovdqu32 opmask(ymm0, k1, zero: true), [ebx]
        #   vmovdqu32 opmask(zmm0, k1, zero: true), [ebx]
        #   vmovdqu32 xmm0, xmm1
        #   vmovdqu32 xmm0, [ebx]
        #   vmovdqu32 ymm0, ymm1
        #   vmovdqu32 ymm0, [ebx]
        #   vmovdqu32 zmm0, zmm1
        #   vmovdqu32 zmm0, [ebx]
        #   vmovdqu32 [eax], xmm1
        #   vmovdqu32 [eax], ymm1
        #   vmovdqu32 [eax], zmm1
        def vmovdqu32(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQU32,operand1,operand2,**kwargs)
        # Move Unaligned Quadword Values
        # @return [Ronin::ASM::X86::Instructions::VMOVDQU64]
        # @example
        #   vmovdqu64 opmask([eax], k1), xmm1
        #   vmovdqu64 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu64 opmask([eax], k1), ymm1
        #   vmovdqu64 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu64 opmask([eax], k1), zmm1
        #   vmovdqu64 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu64 opmask(xmm0, k1, zero: true), [ebx]
        #   vmovdqu64 opmask(ymm0, k1, zero: true), [ebx]
        #   vmovdqu64 opmask(zmm0, k1, zero: true), [ebx]
        #   vmovdqu64 xmm0, xmm1
        #   vmovdqu64 xmm0, [ebx]
        #   vmovdqu64 ymm0, ymm1
        #   vmovdqu64 ymm0, [ebx]
        #   vmovdqu64 zmm0, zmm1
        #   vmovdqu64 zmm0, [ebx]
        #   vmovdqu64 [eax], xmm1
        #   vmovdqu64 [eax], ymm1
        #   vmovdqu64 [eax], zmm1
        def vmovdqu64(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQU64,operand1,operand2,**kwargs)
        # Move Unaligned Byte Values
        # @return [Ronin::ASM::X86::Instructions::VMOVDQU8]
        # @example
        #   vmovdqu8 opmask([eax], k1), xmm1
        #   vmovdqu8 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu8 opmask([eax], k1), ymm1
        #   vmovdqu8 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu8 opmask([eax], k1), zmm1
        #   vmovdqu8 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu8 opmask(xmm0, k1, zero: true), [ebx]
        #   vmovdqu8 opmask(ymm0, k1, zero: true), [ebx]
        #   vmovdqu8 opmask(zmm0, k1, zero: true), [ebx]
        #   vmovdqu8 xmm0, xmm1
        #   vmovdqu8 xmm0, [ebx]
        #   vmovdqu8 ymm0, ymm1
        #   vmovdqu8 ymm0, [ebx]
        #   vmovdqu8 zmm0, zmm1
        #   vmovdqu8 zmm0, [ebx]
        #   vmovdqu8 [eax], xmm1
        #   vmovdqu8 [eax], ymm1
        #   vmovdqu8 [eax], zmm1
        def vmovdqu8(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVDQU8,operand1,operand2,**kwargs)
        # Move Packed Single-Precision Floating-Point Values High to Low
        # @return [Ronin::ASM::X86::Instructions::VMOVHLPS]
        # @example
        #   vmovhlps xmm0, xmm1, xmm2
        def vmovhlps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VMOVHLPS,operand1,operand2,operand3,**kwargs)
        # Move High Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMOVHPD]
        # @example
        #   vmovhpd [eax], xmm1
        #   vmovhpd xmm0, xmm1, [ecx]
        def vmovhpd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VMOVHPD,operand1,operand2,*operands,**kwargs)
        # Move High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVHPS]
        # @example
        #   vmovhps [eax], xmm1
        #   vmovhps xmm0, xmm1, [ecx]
        def vmovhps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VMOVHPS,operand1,operand2,*operands,**kwargs)
        # Move Packed Single-Precision Floating-Point Values Low to High
        # @return [Ronin::ASM::X86::Instructions::VMOVLHPS]
        # @example
        #   vmovlhps xmm0, xmm1, xmm2
        def vmovlhps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VMOVLHPS,operand1,operand2,operand3,**kwargs)
        # Move Low Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMOVLPD]
        # @example
        #   vmovlpd [eax], xmm1
        #   vmovlpd xmm0, xmm1, [ecx]
        def vmovlpd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VMOVLPD,operand1,operand2,*operands,**kwargs)
        # Move Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVLPS]
        # @example
        #   vmovlps [eax], xmm1
        #   vmovlps xmm0, xmm1, [ecx]
        def vmovlps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VMOVLPS,operand1,operand2,*operands,**kwargs)
        # Extract Packed Double-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86::Instructions::VMOVMSKPD]
        # @example
        #   vmovmskpd eax, xmm1
        #   vmovmskpd eax, ymm1
        def vmovmskpd(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVMSKPD,operand1,operand2,**kwargs)
        # Extract Packed Single-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86::Instructions::VMOVMSKPS]
        # @example
        #   vmovmskps eax, xmm1
        #   vmovmskps eax, ymm1
        def vmovmskps(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVMSKPS,operand1,operand2,**kwargs)
        # Store Double Quadword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::VMOVNTDQ]
        # @example
        #   vmovntdq [eax], xmm1
        #   vmovntdq [eax], ymm1
        #   vmovntdq [eax], zmm1
        def vmovntdq(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVNTDQ,operand1,operand2,**kwargs)
        # Load Double Quadword Non-Temporal Aligned Hint
        # @return [Ronin::ASM::X86::Instructions::VMOVNTDQA]
        # @example
        #   vmovntdqa xmm0, [ebx]
        #   vmovntdqa ymm0, [ebx]
        #   vmovntdqa zmm0, [ebx]
        def vmovntdqa(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVNTDQA,operand1,operand2,**kwargs)
        # Store Packed Double-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::VMOVNTPD]
        # @example
        #   vmovntpd [eax], xmm1
        #   vmovntpd [eax], ymm1
        #   vmovntpd [eax], zmm1
        def vmovntpd(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVNTPD,operand1,operand2,**kwargs)
        # Store Packed Single-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86::Instructions::VMOVNTPS]
        # @example
        #   vmovntps [eax], xmm1
        #   vmovntps [eax], ymm1
        #   vmovntps [eax], zmm1
        def vmovntps(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVNTPS,operand1,operand2,**kwargs)
        # Move Quadword
        # @return [Ronin::ASM::X86::Instructions::VMOVQ]
        # @example
        #   vmovq xmm0, xmm1
        #   vmovq xmm0, [ebx]
        #   vmovq [eax], xmm1
        def vmovq(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVQ,operand1,operand2,**kwargs)
        # Move Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VMOVSD]
        # @example
        #   vmovsd opmask([eax], k1), xmm1
        #   vmovsd opmask(xmm0, k1, zero: true), [ebx]
        #   vmovsd xmm0, [ebx]
        #   vmovsd [eax], xmm1
        #   vmovsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmovsd xmm0, xmm1, xmm2
        def vmovsd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VMOVSD,operand1,operand2,*operands,**kwargs)
        # Move Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVSH]
        # @example
        #   vmovsh opmask([eax], k1), xmm1
        #   vmovsh opmask(xmm0, k1, zero: true), [ebx]
        #   vmovsh xmm0, [ebx]
        #   vmovsh [eax], xmm1
        #   vmovsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmovsh xmm0, xmm1, xmm2
        def vmovsh(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VMOVSH,operand1,operand2,*operands,**kwargs)
        # Move Packed Single-FP High and Duplicate
        # @return [Ronin::ASM::X86::Instructions::VMOVSHDUP]
        # @example
        #   vmovshdup opmask(xmm0, k1, zero: true), xmm1
        #   vmovshdup opmask(ymm0, k1, zero: true), ymm1
        #   vmovshdup opmask(zmm0, k1, zero: true), zmm1
        #   vmovshdup opmask(xmm0, k1, zero: true), [ebx]
        #   vmovshdup opmask(ymm0, k1, zero: true), [ebx]
        #   vmovshdup opmask(zmm0, k1, zero: true), [ebx]
        #   vmovshdup xmm0, xmm1
        #   vmovshdup xmm0, [ebx]
        #   vmovshdup ymm0, ymm1
        #   vmovshdup ymm0, [ebx]
        #   vmovshdup zmm0, zmm1
        #   vmovshdup zmm0, [ebx]
        def vmovshdup(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVSHDUP,operand1,operand2,**kwargs)
        # Move Packed Single-FP Low and Duplicate
        # @return [Ronin::ASM::X86::Instructions::VMOVSLDUP]
        # @example
        #   vmovsldup opmask(xmm0, k1, zero: true), xmm1
        #   vmovsldup opmask(ymm0, k1, zero: true), ymm1
        #   vmovsldup opmask(zmm0, k1, zero: true), zmm1
        #   vmovsldup opmask(xmm0, k1, zero: true), [ebx]
        #   vmovsldup opmask(ymm0, k1, zero: true), [ebx]
        #   vmovsldup opmask(zmm0, k1, zero: true), [ebx]
        #   vmovsldup xmm0, xmm1
        #   vmovsldup xmm0, [ebx]
        #   vmovsldup ymm0, ymm1
        #   vmovsldup ymm0, [ebx]
        #   vmovsldup zmm0, zmm1
        #   vmovsldup zmm0, [ebx]
        def vmovsldup(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVSLDUP,operand1,operand2,**kwargs)
        # Move Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVSS]
        # @example
        #   vmovss opmask([eax], k1), xmm1
        #   vmovss opmask(xmm0, k1, zero: true), [ebx]
        #   vmovss xmm0, [ebx]
        #   vmovss [eax], xmm1
        #   vmovss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmovss xmm0, xmm1, xmm2
        def vmovss(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VMOVSS,operand1,operand2,*operands,**kwargs)
        # Move Unaligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVUPD]
        # @example
        #   vmovupd opmask([eax], k1), xmm1
        #   vmovupd opmask(xmm0, k1, zero: true), xmm1
        #   vmovupd opmask([eax], k1), ymm1
        #   vmovupd opmask(ymm0, k1, zero: true), ymm1
        #   vmovupd opmask([eax], k1), zmm1
        #   vmovupd opmask(zmm0, k1, zero: true), zmm1
        #   vmovupd opmask(xmm0, k1, zero: true), [ebx]
        #   vmovupd opmask(ymm0, k1, zero: true), [ebx]
        #   vmovupd opmask(zmm0, k1, zero: true), [ebx]
        #   vmovupd xmm0, xmm1
        #   vmovupd xmm0, [ebx]
        #   vmovupd ymm0, ymm1
        #   vmovupd ymm0, [ebx]
        #   vmovupd zmm0, zmm1
        #   vmovupd zmm0, [ebx]
        #   vmovupd [eax], xmm1
        #   vmovupd [eax], ymm1
        #   vmovupd [eax], zmm1
        def vmovupd(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVUPD,operand1,operand2,**kwargs)
        # Move Unaligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMOVUPS]
        # @example
        #   vmovups opmask([eax], k1), xmm1
        #   vmovups opmask(xmm0, k1, zero: true), xmm1
        #   vmovups opmask([eax], k1), ymm1
        #   vmovups opmask(ymm0, k1, zero: true), ymm1
        #   vmovups opmask([eax], k1), zmm1
        #   vmovups opmask(zmm0, k1, zero: true), zmm1
        #   vmovups opmask(xmm0, k1, zero: true), [ebx]
        #   vmovups opmask(ymm0, k1, zero: true), [ebx]
        #   vmovups opmask(zmm0, k1, zero: true), [ebx]
        #   vmovups xmm0, xmm1
        #   vmovups xmm0, [ebx]
        #   vmovups ymm0, ymm1
        #   vmovups ymm0, [ebx]
        #   vmovups zmm0, zmm1
        #   vmovups zmm0, [ebx]
        #   vmovups [eax], xmm1
        #   vmovups [eax], ymm1
        #   vmovups [eax], zmm1
        def vmovups(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVUPS,operand1,operand2,**kwargs)
        # Move Word
        # @return [Ronin::ASM::X86::Instructions::VMOVW]
        # @example
        #   vmovw eax, xmm1
        #   vmovw xmm0, ebx
        #   vmovw xmm0, [ebx]
        #   vmovw [eax], xmm1
        def vmovw(operand1,operand2,**kwargs) = add_instruction(Instructions::VMOVW,operand1,operand2,**kwargs)
        # Compute Multiple Packed Sums of Absolute Difference
        # @return [Ronin::ASM::X86::Instructions::VMPSADBW]
        # @example
        #   vmpsadbw xmm0, xmm1, xmm2, 0x04
        #   vmpsadbw xmm0, xmm1, [ecx], 0x04
        #   vmpsadbw ymm0, ymm1, ymm2, 0x04
        #   vmpsadbw ymm0, ymm1, [ecx], 0x04
        def vmpsadbw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VMPSADBW,operand1,operand2,operand3,operand4,**kwargs)
        # Multiply Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMULPD]
        # @example
        #   vmulpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vmulpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vmulpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmulpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vmulpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmulpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vmulpd xmm0, xmm1, xmm2
        #   vmulpd xmm0, xmm1, [ecx]
        #   vmulpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vmulpd ymm0, ymm1, ymm2
        #   vmulpd ymm0, ymm1, [ecx]
        #   vmulpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vmulpd zmm0, zmm1, zmm2
        #   vmulpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vmulpd zmm0, zmm1, zmm2, er
        def vmulpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMULPD,operand1,operand2,operand3,*operands,**kwargs)
        # Multiply Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMULPH]
        # @example
        #   vmulph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vmulph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vmulph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmulph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vmulph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmulph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vmulph xmm0, xmm1, xmm2
        #   vmulph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vmulph ymm0, ymm1, ymm2
        #   vmulph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vmulph zmm0, zmm1, zmm2
        #   vmulph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vmulph zmm0, zmm1, zmm2, er
        def vmulph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMULPH,operand1,operand2,operand3,*operands,**kwargs)
        # Multiply Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMULPS]
        # @example
        #   vmulps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vmulps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vmulps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmulps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vmulps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmulps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vmulps xmm0, xmm1, xmm2
        #   vmulps xmm0, xmm1, [ecx]
        #   vmulps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vmulps ymm0, ymm1, ymm2
        #   vmulps ymm0, ymm1, [ecx]
        #   vmulps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vmulps zmm0, zmm1, zmm2
        #   vmulps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vmulps zmm0, zmm1, zmm2, er
        def vmulps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMULPS,operand1,operand2,operand3,*operands,**kwargs)
        # Multiply Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMULSD]
        # @example
        #   vmulsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vmulsd xmm0, xmm1, xmm2
        #   vmulsd xmm0, xmm1, [ecx]
        #   vmulsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vmulsd xmm0, xmm1, xmm2, er
        def vmulsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMULSD,operand1,operand2,operand3,*operands,**kwargs)
        # Fused Multiply Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMULSH]
        # @example
        #   vmulsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vmulsh xmm0, xmm1, xmm2
        #   vmulsh xmm0, xmm1, [ecx]
        #   vmulsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vmulsh xmm0, xmm1, xmm2, er
        def vmulsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMULSH,operand1,operand2,operand3,*operands,**kwargs)
        # Multiply Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VMULSS]
        # @example
        #   vmulss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vmulss xmm0, xmm1, xmm2
        #   vmulss xmm0, xmm1, [ecx]
        #   vmulss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vmulss xmm0, xmm1, xmm2, er
        def vmulss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VMULSS,operand1,operand2,operand3,*operands,**kwargs)
        # Bitwise Logical OR of Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VORPD]
        # @example
        #   vorpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vorpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vorpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vorpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vorpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vorpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vorpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vorpd xmm0, xmm1, xmm2
        #   vorpd xmm0, xmm1, [ecx]
        #   vorpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vorpd ymm0, ymm1, ymm2
        #   vorpd ymm0, ymm1, [ecx]
        #   vorpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vorpd zmm0, zmm1, zmm2
        def vorpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VORPD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical OR of Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VORPS]
        # @example
        #   vorps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vorps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vorps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vorps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vorps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vorps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vorps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vorps xmm0, xmm1, xmm2
        #   vorps xmm0, xmm1, [ecx]
        #   vorps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vorps ymm0, ymm1, ymm2
        #   vorps ymm0, ymm1, [ecx]
        #   vorps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vorps zmm0, zmm1, zmm2
        def vorps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VORPS,operand1,operand2,operand3,**kwargs)
        # Packed Absolute Value of Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPABSB]
        # @example
        #   vpabsb opmask(xmm0, k1, zero: true), xmm1
        #   vpabsb opmask(ymm0, k1, zero: true), ymm1
        #   vpabsb opmask(zmm0, k1, zero: true), zmm1
        #   vpabsb opmask(xmm0, k1, zero: true), [ebx]
        #   vpabsb opmask(ymm0, k1, zero: true), [ebx]
        #   vpabsb opmask(zmm0, k1, zero: true), [ebx]
        #   vpabsb xmm0, xmm1
        #   vpabsb xmm0, [ebx]
        #   vpabsb ymm0, ymm1
        #   vpabsb ymm0, [ebx]
        #   vpabsb zmm0, zmm1
        #   vpabsb zmm0, [ebx]
        def vpabsb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPABSB,operand1,operand2,**kwargs)
        # Packed Absolute Value of Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPABSD]
        # @example
        #   vpabsd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vpabsd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vpabsd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vpabsd opmask(xmm0, k1, zero: true), xmm1
        #   vpabsd opmask(ymm0, k1, zero: true), ymm1
        #   vpabsd opmask(zmm0, k1, zero: true), zmm1
        #   vpabsd xmm0, bcst([ebx], {1=>4})
        #   vpabsd xmm0, xmm1
        #   vpabsd xmm0, [ebx]
        #   vpabsd ymm0, bcst([ebx], {1=>8})
        #   vpabsd ymm0, ymm1
        #   vpabsd ymm0, [ebx]
        #   vpabsd zmm0, bcst([ebx], {1=>16})
        #   vpabsd zmm0, zmm1
        def vpabsd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPABSD,operand1,operand2,**kwargs)
        # Packed Absolute Value of Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPABSQ]
        # @example
        #   vpabsq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vpabsq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vpabsq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vpabsq opmask(xmm0, k1, zero: true), xmm1
        #   vpabsq opmask(ymm0, k1, zero: true), ymm1
        #   vpabsq opmask(zmm0, k1, zero: true), zmm1
        #   vpabsq xmm0, bcst([ebx], {1=>2})
        #   vpabsq xmm0, xmm1
        #   vpabsq ymm0, bcst([ebx], {1=>4})
        #   vpabsq ymm0, ymm1
        #   vpabsq zmm0, bcst([ebx], {1=>8})
        #   vpabsq zmm0, zmm1
        def vpabsq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPABSQ,operand1,operand2,**kwargs)
        # Packed Absolute Value of Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPABSW]
        # @example
        #   vpabsw opmask(xmm0, k1, zero: true), xmm1
        #   vpabsw opmask(ymm0, k1, zero: true), ymm1
        #   vpabsw opmask(zmm0, k1, zero: true), zmm1
        #   vpabsw opmask(xmm0, k1, zero: true), [ebx]
        #   vpabsw opmask(ymm0, k1, zero: true), [ebx]
        #   vpabsw opmask(zmm0, k1, zero: true), [ebx]
        #   vpabsw xmm0, xmm1
        #   vpabsw xmm0, [ebx]
        #   vpabsw ymm0, ymm1
        #   vpabsw ymm0, [ebx]
        #   vpabsw zmm0, zmm1
        #   vpabsw zmm0, [ebx]
        def vpabsw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPABSW,operand1,operand2,**kwargs)
        # Pack Doublewords into Words with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPACKSSDW]
        # @example
        #   vpackssdw opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpackssdw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpackssdw opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpackssdw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpackssdw opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpackssdw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpackssdw xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpackssdw xmm0, xmm1, xmm2
        #   vpackssdw xmm0, xmm1, [ecx]
        #   vpackssdw ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpackssdw ymm0, ymm1, ymm2
        #   vpackssdw ymm0, ymm1, [ecx]
        #   vpackssdw zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpackssdw zmm0, zmm1, zmm2
        def vpackssdw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPACKSSDW,operand1,operand2,operand3,**kwargs)
        # Pack Words into Bytes with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPACKSSWB]
        # @example
        #   vpacksswb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpacksswb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpacksswb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpacksswb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpacksswb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpacksswb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpacksswb xmm0, xmm1, xmm2
        #   vpacksswb xmm0, xmm1, [ecx]
        #   vpacksswb ymm0, ymm1, ymm2
        #   vpacksswb ymm0, ymm1, [ecx]
        #   vpacksswb zmm0, zmm1, zmm2
        #   vpacksswb zmm0, zmm1, [ecx]
        def vpacksswb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPACKSSWB,operand1,operand2,operand3,**kwargs)
        # Pack Doublewords into Words with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPACKUSDW]
        # @example
        #   vpackusdw opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpackusdw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpackusdw opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpackusdw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpackusdw opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpackusdw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpackusdw xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpackusdw xmm0, xmm1, xmm2
        #   vpackusdw xmm0, xmm1, [ecx]
        #   vpackusdw ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpackusdw ymm0, ymm1, ymm2
        #   vpackusdw ymm0, ymm1, [ecx]
        #   vpackusdw zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpackusdw zmm0, zmm1, zmm2
        def vpackusdw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPACKUSDW,operand1,operand2,operand3,**kwargs)
        # Pack Words into Bytes with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPACKUSWB]
        # @example
        #   vpackuswb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpackuswb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpackuswb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpackuswb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpackuswb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpackuswb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpackuswb xmm0, xmm1, xmm2
        #   vpackuswb xmm0, xmm1, [ecx]
        #   vpackuswb ymm0, ymm1, ymm2
        #   vpackuswb ymm0, ymm1, [ecx]
        #   vpackuswb zmm0, zmm1, zmm2
        #   vpackuswb zmm0, zmm1, [ecx]
        def vpackuswb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPACKUSWB,operand1,operand2,operand3,**kwargs)
        # Add Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPADDB]
        # @example
        #   vpaddb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpaddb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpaddb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpaddb xmm0, xmm1, xmm2
        #   vpaddb xmm0, xmm1, [ecx]
        #   vpaddb ymm0, ymm1, ymm2
        #   vpaddb ymm0, ymm1, [ecx]
        #   vpaddb zmm0, zmm1, zmm2
        #   vpaddb zmm0, zmm1, [ecx]
        def vpaddb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDB,operand1,operand2,operand3,**kwargs)
        # Add Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPADDD]
        # @example
        #   vpaddd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpaddd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpaddd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpaddd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpaddd xmm0, xmm1, xmm2
        #   vpaddd xmm0, xmm1, [ecx]
        #   vpaddd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpaddd ymm0, ymm1, ymm2
        #   vpaddd ymm0, ymm1, [ecx]
        #   vpaddd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpaddd zmm0, zmm1, zmm2
        def vpaddd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDD,operand1,operand2,operand3,**kwargs)
        # Add Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPADDQ]
        # @example
        #   vpaddq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpaddq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpaddq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpaddq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpaddq xmm0, xmm1, xmm2
        #   vpaddq xmm0, xmm1, [ecx]
        #   vpaddq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpaddq ymm0, ymm1, ymm2
        #   vpaddq ymm0, ymm1, [ecx]
        #   vpaddq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpaddq zmm0, zmm1, zmm2
        def vpaddq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDQ,operand1,operand2,operand3,**kwargs)
        # Add Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPADDSB]
        # @example
        #   vpaddsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddsb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpaddsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddsb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpaddsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddsb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpaddsb xmm0, xmm1, xmm2
        #   vpaddsb xmm0, xmm1, [ecx]
        #   vpaddsb ymm0, ymm1, ymm2
        #   vpaddsb ymm0, ymm1, [ecx]
        #   vpaddsb zmm0, zmm1, zmm2
        #   vpaddsb zmm0, zmm1, [ecx]
        def vpaddsb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDSB,operand1,operand2,operand3,**kwargs)
        # Add Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPADDSW]
        # @example
        #   vpaddsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddsw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpaddsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddsw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpaddsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddsw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpaddsw xmm0, xmm1, xmm2
        #   vpaddsw xmm0, xmm1, [ecx]
        #   vpaddsw ymm0, ymm1, ymm2
        #   vpaddsw ymm0, ymm1, [ecx]
        #   vpaddsw zmm0, zmm1, zmm2
        #   vpaddsw zmm0, zmm1, [ecx]
        def vpaddsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDSW,operand1,operand2,operand3,**kwargs)
        # Add Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPADDUSB]
        # @example
        #   vpaddusb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddusb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpaddusb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddusb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpaddusb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddusb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpaddusb xmm0, xmm1, xmm2
        #   vpaddusb xmm0, xmm1, [ecx]
        #   vpaddusb ymm0, ymm1, ymm2
        #   vpaddusb ymm0, ymm1, [ecx]
        #   vpaddusb zmm0, zmm1, zmm2
        #   vpaddusb zmm0, zmm1, [ecx]
        def vpaddusb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDUSB,operand1,operand2,operand3,**kwargs)
        # Add Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPADDUSW]
        # @example
        #   vpaddusw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddusw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpaddusw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddusw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpaddusw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddusw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpaddusw xmm0, xmm1, xmm2
        #   vpaddusw xmm0, xmm1, [ecx]
        #   vpaddusw ymm0, ymm1, ymm2
        #   vpaddusw ymm0, ymm1, [ecx]
        #   vpaddusw zmm0, zmm1, zmm2
        #   vpaddusw zmm0, zmm1, [ecx]
        def vpaddusw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDUSW,operand1,operand2,operand3,**kwargs)
        # Add Packed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPADDW]
        # @example
        #   vpaddw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpaddw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpaddw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpaddw xmm0, xmm1, xmm2
        #   vpaddw xmm0, xmm1, [ecx]
        #   vpaddw ymm0, ymm1, ymm2
        #   vpaddw ymm0, ymm1, [ecx]
        #   vpaddw zmm0, zmm1, zmm2
        #   vpaddw zmm0, zmm1, [ecx]
        def vpaddw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPADDW,operand1,operand2,operand3,**kwargs)
        # Packed Align Right
        # @return [Ronin::ASM::X86::Instructions::VPALIGNR]
        # @example
        #   vpalignr opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpalignr opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vpalignr opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpalignr opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vpalignr opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpalignr opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vpalignr xmm0, xmm1, xmm2, 0x04
        #   vpalignr xmm0, xmm1, [ecx], 0x04
        #   vpalignr ymm0, ymm1, ymm2, 0x04
        #   vpalignr ymm0, ymm1, [ecx], 0x04
        #   vpalignr zmm0, zmm1, zmm2, 0x04
        #   vpalignr zmm0, zmm1, [ecx], 0x04
        def vpalignr(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPALIGNR,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Bitwise Logical AND
        # @return [Ronin::ASM::X86::Instructions::VPAND]
        # @example
        #   vpand xmm0, xmm1, xmm2
        #   vpand xmm0, xmm1, [ecx]
        #   vpand ymm0, ymm1, ymm2
        #   vpand ymm0, ymm1, [ecx]
        def vpand(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPAND,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND of Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPANDD]
        # @example
        #   vpandd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpandd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpandd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpandd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpandd xmm0, xmm1, xmm2
        #   vpandd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpandd ymm0, ymm1, ymm2
        #   vpandd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpandd zmm0, zmm1, zmm2
        def vpandd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPANDD,operand1,operand2,operand3,**kwargs)
        # Packed Bitwise Logical AND NOT
        # @return [Ronin::ASM::X86::Instructions::VPANDN]
        # @example
        #   vpandn xmm0, xmm1, xmm2
        #   vpandn xmm0, xmm1, [ecx]
        #   vpandn ymm0, ymm1, ymm2
        #   vpandn ymm0, ymm1, [ecx]
        def vpandn(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPANDN,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT of Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPANDND]
        # @example
        #   vpandnd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpandnd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandnd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpandnd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandnd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpandnd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandnd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpandnd xmm0, xmm1, xmm2
        #   vpandnd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpandnd ymm0, ymm1, ymm2
        #   vpandnd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpandnd zmm0, zmm1, zmm2
        def vpandnd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPANDND,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND NOT of Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPANDNQ]
        # @example
        #   vpandnq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpandnq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandnq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpandnq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandnq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpandnq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandnq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpandnq xmm0, xmm1, xmm2
        #   vpandnq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpandnq ymm0, ymm1, ymm2
        #   vpandnq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpandnq zmm0, zmm1, zmm2
        def vpandnq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPANDNQ,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical AND of Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPANDQ]
        # @example
        #   vpandq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpandq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpandq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpandq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpandq xmm0, xmm1, xmm2
        #   vpandq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpandq ymm0, ymm1, ymm2
        #   vpandq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpandq zmm0, zmm1, zmm2
        def vpandq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPANDQ,operand1,operand2,operand3,**kwargs)
        # Average Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPAVGB]
        # @example
        #   vpavgb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpavgb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpavgb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpavgb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpavgb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpavgb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpavgb xmm0, xmm1, xmm2
        #   vpavgb xmm0, xmm1, [ecx]
        #   vpavgb ymm0, ymm1, ymm2
        #   vpavgb ymm0, ymm1, [ecx]
        #   vpavgb zmm0, zmm1, zmm2
        #   vpavgb zmm0, zmm1, [ecx]
        def vpavgb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPAVGB,operand1,operand2,operand3,**kwargs)
        # Average Packed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPAVGW]
        # @example
        #   vpavgw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpavgw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpavgw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpavgw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpavgw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpavgw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpavgw xmm0, xmm1, xmm2
        #   vpavgw xmm0, xmm1, [ecx]
        #   vpavgw ymm0, ymm1, ymm2
        #   vpavgw ymm0, ymm1, [ecx]
        #   vpavgw zmm0, zmm1, zmm2
        #   vpavgw zmm0, zmm1, [ecx]
        def vpavgw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPAVGW,operand1,operand2,operand3,**kwargs)
        # Blend Packed Doublewords
        # @return [Ronin::ASM::X86::Instructions::VPBLENDD]
        # @example
        #   vpblendd xmm0, xmm1, xmm2, 0x04
        #   vpblendd xmm0, xmm1, [ecx], 0x04
        #   vpblendd ymm0, ymm1, ymm2, 0x04
        #   vpblendd ymm0, ymm1, [ecx], 0x04
        def vpblendd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPBLENDD,operand1,operand2,operand3,operand4,**kwargs)
        # Blend Byte Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86::Instructions::VPBLENDMB]
        # @example
        #   vpblendmb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpblendmb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpblendmb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpblendmb xmm0, xmm1, xmm2
        #   vpblendmb xmm0, xmm1, [ecx]
        #   vpblendmb ymm0, ymm1, ymm2
        #   vpblendmb ymm0, ymm1, [ecx]
        #   vpblendmb zmm0, zmm1, zmm2
        #   vpblendmb zmm0, zmm1, [ecx]
        def vpblendmb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPBLENDMB,operand1,operand2,operand3,**kwargs)
        # Blend Doubleword Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86::Instructions::VPBLENDMD]
        # @example
        #   vpblendmd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpblendmd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpblendmd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpblendmd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpblendmd xmm0, xmm1, xmm2
        #   vpblendmd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpblendmd ymm0, ymm1, ymm2
        #   vpblendmd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpblendmd zmm0, zmm1, zmm2
        def vpblendmd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPBLENDMD,operand1,operand2,operand3,**kwargs)
        # Blend Quadword Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86::Instructions::VPBLENDMQ]
        # @example
        #   vpblendmq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpblendmq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpblendmq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpblendmq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpblendmq xmm0, xmm1, xmm2
        #   vpblendmq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpblendmq ymm0, ymm1, ymm2
        #   vpblendmq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpblendmq zmm0, zmm1, zmm2
        def vpblendmq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPBLENDMQ,operand1,operand2,operand3,**kwargs)
        # Blend Word Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86::Instructions::VPBLENDMW]
        # @example
        #   vpblendmw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpblendmw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpblendmw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpblendmw xmm0, xmm1, xmm2
        #   vpblendmw xmm0, xmm1, [ecx]
        #   vpblendmw ymm0, ymm1, ymm2
        #   vpblendmw ymm0, ymm1, [ecx]
        #   vpblendmw zmm0, zmm1, zmm2
        #   vpblendmw zmm0, zmm1, [ecx]
        def vpblendmw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPBLENDMW,operand1,operand2,operand3,**kwargs)
        # Variable Blend Packed Bytes
        # @return [Ronin::ASM::X86::Instructions::VPBLENDVB]
        # @example
        #   vpblendvb xmm0, xmm1, xmm2, xmm3
        #   vpblendvb xmm0, xmm1, [ecx], xmm3
        #   vpblendvb ymm0, ymm1, ymm2, ymm3
        #   vpblendvb ymm0, ymm1, [ecx], ymm3
        def vpblendvb(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPBLENDVB,operand1,operand2,operand3,operand4,**kwargs)
        # Blend Packed Words
        # @return [Ronin::ASM::X86::Instructions::VPBLENDW]
        # @example
        #   vpblendw xmm0, xmm1, xmm2, 0x04
        #   vpblendw xmm0, xmm1, [ecx], 0x04
        #   vpblendw ymm0, ymm1, ymm2, 0x04
        #   vpblendw ymm0, ymm1, [ecx], 0x04
        def vpblendw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPBLENDW,operand1,operand2,operand3,operand4,**kwargs)
        # Broadcast Byte Integer
        # @return [Ronin::ASM::X86::Instructions::VPBROADCASTB]
        # @example
        #   vpbroadcastb opmask(xmm0, k1, zero: true), ebx
        #   vpbroadcastb opmask(ymm0, k1, zero: true), ebx
        #   vpbroadcastb opmask(zmm0, k1, zero: true), ebx
        #   vpbroadcastb opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastb opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastb opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastb opmask(xmm0, k1, zero: true), [ebx]
        #   vpbroadcastb opmask(ymm0, k1, zero: true), [ebx]
        #   vpbroadcastb opmask(zmm0, k1, zero: true), [ebx]
        #   vpbroadcastb xmm0, ebx
        #   vpbroadcastb xmm0, xmm1
        #   vpbroadcastb xmm0, [ebx]
        #   vpbroadcastb ymm0, ebx
        #   vpbroadcastb ymm0, xmm1
        #   vpbroadcastb ymm0, [ebx]
        #   vpbroadcastb zmm0, ebx
        #   vpbroadcastb zmm0, xmm1
        #   vpbroadcastb zmm0, [ebx]
        def vpbroadcastb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPBROADCASTB,operand1,operand2,**kwargs)
        # Broadcast Doubleword Integer
        # @return [Ronin::ASM::X86::Instructions::VPBROADCASTD]
        # @example
        #   vpbroadcastd opmask(xmm0, k1, zero: true), ebx
        #   vpbroadcastd opmask(ymm0, k1, zero: true), ebx
        #   vpbroadcastd opmask(zmm0, k1, zero: true), ebx
        #   vpbroadcastd opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastd opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastd opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastd opmask(xmm0, k1, zero: true), [ebx]
        #   vpbroadcastd opmask(ymm0, k1, zero: true), [ebx]
        #   vpbroadcastd opmask(zmm0, k1, zero: true), [ebx]
        #   vpbroadcastd xmm0, ebx
        #   vpbroadcastd xmm0, xmm1
        #   vpbroadcastd xmm0, [ebx]
        #   vpbroadcastd ymm0, ebx
        #   vpbroadcastd ymm0, xmm1
        #   vpbroadcastd ymm0, [ebx]
        #   vpbroadcastd zmm0, ebx
        #   vpbroadcastd zmm0, xmm1
        #   vpbroadcastd zmm0, [ebx]
        def vpbroadcastd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPBROADCASTD,operand1,operand2,**kwargs)
        # Broadcast Low Byte of Mask Register to Packed Quadword Values
        # @return [Ronin::ASM::X86::Instructions::VPBROADCASTMB2Q]
        # @example
        #   vpbroadcastmb2q xmm0, k2
        #   vpbroadcastmb2q ymm0, k2
        #   vpbroadcastmb2q zmm0, k2
        def vpbroadcastmb2q(operand1,operand2,**kwargs) = add_instruction(Instructions::VPBROADCASTMB2Q,operand1,operand2,**kwargs)
        # Broadcast Low Word of Mask Register to Packed Doubleword Values
        # @return [Ronin::ASM::X86::Instructions::VPBROADCASTMW2D]
        # @example
        #   vpbroadcastmw2d xmm0, k2
        #   vpbroadcastmw2d ymm0, k2
        #   vpbroadcastmw2d zmm0, k2
        def vpbroadcastmw2d(operand1,operand2,**kwargs) = add_instruction(Instructions::VPBROADCASTMW2D,operand1,operand2,**kwargs)
        # Broadcast Quadword Integer
        # @return [Ronin::ASM::X86::Instructions::VPBROADCASTQ]
        # @example
        #   vpbroadcastq opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastq opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastq opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastq opmask(xmm0, k1, zero: true), [ebx]
        #   vpbroadcastq opmask(ymm0, k1, zero: true), [ebx]
        #   vpbroadcastq opmask(zmm0, k1, zero: true), [ebx]
        #   vpbroadcastq xmm0, xmm1
        #   vpbroadcastq xmm0, [ebx]
        #   vpbroadcastq ymm0, xmm1
        #   vpbroadcastq ymm0, [ebx]
        #   vpbroadcastq zmm0, xmm1
        #   vpbroadcastq zmm0, [ebx]
        def vpbroadcastq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPBROADCASTQ,operand1,operand2,**kwargs)
        # Broadcast Word Integer
        # @return [Ronin::ASM::X86::Instructions::VPBROADCASTW]
        # @example
        #   vpbroadcastw opmask(xmm0, k1, zero: true), ebx
        #   vpbroadcastw opmask(ymm0, k1, zero: true), ebx
        #   vpbroadcastw opmask(zmm0, k1, zero: true), ebx
        #   vpbroadcastw opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastw opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastw opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastw opmask(xmm0, k1, zero: true), [ebx]
        #   vpbroadcastw opmask(ymm0, k1, zero: true), [ebx]
        #   vpbroadcastw opmask(zmm0, k1, zero: true), [ebx]
        #   vpbroadcastw xmm0, ebx
        #   vpbroadcastw xmm0, xmm1
        #   vpbroadcastw xmm0, [ebx]
        #   vpbroadcastw ymm0, ebx
        #   vpbroadcastw ymm0, xmm1
        #   vpbroadcastw ymm0, [ebx]
        #   vpbroadcastw zmm0, ebx
        #   vpbroadcastw zmm0, xmm1
        #   vpbroadcastw zmm0, [ebx]
        def vpbroadcastw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPBROADCASTW,operand1,operand2,**kwargs)
        # Carry-Less Quadword Multiplication
        # @return [Ronin::ASM::X86::Instructions::VPCLMULQDQ]
        # @example
        #   vpclmulqdq xmm0, xmm1, xmm2, 0x04
        #   vpclmulqdq xmm0, xmm1, [ecx], 0x04
        #   vpclmulqdq ymm0, ymm1, ymm2, 0x04
        #   vpclmulqdq ymm0, ymm1, [ecx], 0x04
        #   vpclmulqdq zmm0, zmm1, zmm2, 0x04
        #   vpclmulqdq zmm0, zmm1, [ecx], 0x04
        def vpclmulqdq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCLMULQDQ,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Conditional Move
        # @return [Ronin::ASM::X86::Instructions::VPCMOV]
        # @example
        #   vpcmov xmm0, xmm1, xmm2, xmm3
        #   vpcmov xmm0, xmm1, xmm2, [edx]
        #   vpcmov xmm0, xmm1, [ecx], xmm3
        #   vpcmov ymm0, ymm1, ymm2, ymm3
        #   vpcmov ymm0, ymm1, ymm2, [edx]
        #   vpcmov ymm0, ymm1, [ecx], ymm3
        def vpcmov(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMOV,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Signed Byte Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPB]
        # @example
        #   vpcmpb opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpb k1, xmm1, xmm2, 0x04
        #   vpcmpb opmask(k1, k2), xmm1, [ecx], 0x04
        #   vpcmpb k1, xmm1, [ecx], 0x04
        #   vpcmpb opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpb k1, ymm1, ymm2, 0x04
        #   vpcmpb opmask(k1, k2), ymm1, [ecx], 0x04
        #   vpcmpb k1, ymm1, [ecx], 0x04
        #   vpcmpb opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpb k1, zmm1, zmm2, 0x04
        #   vpcmpb opmask(k1, k2), zmm1, [ecx], 0x04
        #   vpcmpb k1, zmm1, [ecx], 0x04
        def vpcmpb(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPB,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Signed Doubleword Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPD]
        # @example
        #   vpcmpd opmask(k1, k2), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpd k1, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpd opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpd k1, xmm1, xmm2, 0x04
        #   vpcmpd opmask(k1, k2), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpd k1, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpd opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpd k1, ymm1, ymm2, 0x04
        #   vpcmpd opmask(k1, k2), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpcmpd k1, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpcmpd opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpd k1, zmm1, zmm2, 0x04
        def vpcmpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPD,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Byte Data for Equality
        # @return [Ronin::ASM::X86::Instructions::VPCMPEQB]
        # @example
        #   vpcmpeqb opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqb k1, xmm1, xmm2
        #   vpcmpeqb opmask(k1, k2), xmm1, [ecx]
        #   vpcmpeqb k1, xmm1, [ecx]
        #   vpcmpeqb opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqb k1, ymm1, ymm2
        #   vpcmpeqb opmask(k1, k2), ymm1, [ecx]
        #   vpcmpeqb k1, ymm1, [ecx]
        #   vpcmpeqb opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqb k1, zmm1, zmm2
        #   vpcmpeqb opmask(k1, k2), zmm1, [ecx]
        #   vpcmpeqb k1, zmm1, [ecx]
        #   vpcmpeqb xmm0, xmm1, xmm2
        #   vpcmpeqb xmm0, xmm1, [ecx]
        #   vpcmpeqb ymm0, ymm1, ymm2
        #   vpcmpeqb ymm0, ymm1, [ecx]
        def vpcmpeqb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPEQB,operand1,operand2,operand3,**kwargs)
        # Compare Packed Doubleword Data for Equality
        # @return [Ronin::ASM::X86::Instructions::VPCMPEQD]
        # @example
        #   vpcmpeqd opmask(k1, k2), xmm1, bcst([ecx], {1=>4})
        #   vpcmpeqd k1, xmm1, bcst([ecx], {1=>4})
        #   vpcmpeqd opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqd k1, xmm1, xmm2
        #   vpcmpeqd opmask(k1, k2), ymm1, bcst([ecx], {1=>8})
        #   vpcmpeqd k1, ymm1, bcst([ecx], {1=>8})
        #   vpcmpeqd opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqd k1, ymm1, ymm2
        #   vpcmpeqd opmask(k1, k2), zmm1, bcst([ecx], {1=>16})
        #   vpcmpeqd k1, zmm1, bcst([ecx], {1=>16})
        #   vpcmpeqd opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqd k1, zmm1, zmm2
        #   vpcmpeqd xmm0, xmm1, xmm2
        #   vpcmpeqd xmm0, xmm1, [ecx]
        #   vpcmpeqd ymm0, ymm1, ymm2
        #   vpcmpeqd ymm0, ymm1, [ecx]
        def vpcmpeqd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPEQD,operand1,operand2,operand3,**kwargs)
        # Compare Packed Quadword Data for Equality
        # @return [Ronin::ASM::X86::Instructions::VPCMPEQQ]
        # @example
        #   vpcmpeqq opmask(k1, k2), xmm1, bcst([ecx], {1=>2})
        #   vpcmpeqq k1, xmm1, bcst([ecx], {1=>2})
        #   vpcmpeqq opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqq k1, xmm1, xmm2
        #   vpcmpeqq opmask(k1, k2), ymm1, bcst([ecx], {1=>4})
        #   vpcmpeqq k1, ymm1, bcst([ecx], {1=>4})
        #   vpcmpeqq opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqq k1, ymm1, ymm2
        #   vpcmpeqq opmask(k1, k2), zmm1, bcst([ecx], {1=>8})
        #   vpcmpeqq k1, zmm1, bcst([ecx], {1=>8})
        #   vpcmpeqq opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqq k1, zmm1, zmm2
        #   vpcmpeqq xmm0, xmm1, xmm2
        #   vpcmpeqq xmm0, xmm1, [ecx]
        #   vpcmpeqq ymm0, ymm1, ymm2
        #   vpcmpeqq ymm0, ymm1, [ecx]
        def vpcmpeqq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPEQQ,operand1,operand2,operand3,**kwargs)
        # Compare Packed Word Data for Equality
        # @return [Ronin::ASM::X86::Instructions::VPCMPEQW]
        # @example
        #   vpcmpeqw opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqw k1, xmm1, xmm2
        #   vpcmpeqw opmask(k1, k2), xmm1, [ecx]
        #   vpcmpeqw k1, xmm1, [ecx]
        #   vpcmpeqw opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqw k1, ymm1, ymm2
        #   vpcmpeqw opmask(k1, k2), ymm1, [ecx]
        #   vpcmpeqw k1, ymm1, [ecx]
        #   vpcmpeqw opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqw k1, zmm1, zmm2
        #   vpcmpeqw opmask(k1, k2), zmm1, [ecx]
        #   vpcmpeqw k1, zmm1, [ecx]
        #   vpcmpeqw xmm0, xmm1, xmm2
        #   vpcmpeqw xmm0, xmm1, [ecx]
        #   vpcmpeqw ymm0, ymm1, ymm2
        #   vpcmpeqw ymm0, ymm1, [ecx]
        def vpcmpeqw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPEQW,operand1,operand2,operand3,**kwargs)
        # Packed Compare Explicit Length Strings, Return Index
        # @return [Ronin::ASM::X86::Instructions::VPCMPESTRI]
        # @example
        #   vpcmpestri xmm0, xmm1, 0x03
        #   vpcmpestri xmm0, [ebx], 0x03
        def vpcmpestri(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPESTRI,operand1,operand2,operand3,**kwargs)
        # Packed Compare Explicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86::Instructions::VPCMPESTRM]
        # @example
        #   vpcmpestrm xmm0, xmm1, 0x03
        #   vpcmpestrm xmm0, [ebx], 0x03
        def vpcmpestrm(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPESTRM,operand1,operand2,operand3,**kwargs)
        # Compare Packed Signed Byte Integers for Greater Than
        # @return [Ronin::ASM::X86::Instructions::VPCMPGTB]
        # @example
        #   vpcmpgtb opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtb k1, xmm1, xmm2
        #   vpcmpgtb opmask(k1, k2), xmm1, [ecx]
        #   vpcmpgtb k1, xmm1, [ecx]
        #   vpcmpgtb opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtb k1, ymm1, ymm2
        #   vpcmpgtb opmask(k1, k2), ymm1, [ecx]
        #   vpcmpgtb k1, ymm1, [ecx]
        #   vpcmpgtb opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtb k1, zmm1, zmm2
        #   vpcmpgtb opmask(k1, k2), zmm1, [ecx]
        #   vpcmpgtb k1, zmm1, [ecx]
        #   vpcmpgtb xmm0, xmm1, xmm2
        #   vpcmpgtb xmm0, xmm1, [ecx]
        #   vpcmpgtb ymm0, ymm1, ymm2
        #   vpcmpgtb ymm0, ymm1, [ecx]
        def vpcmpgtb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPGTB,operand1,operand2,operand3,**kwargs)
        # Compare Packed Signed Doubleword Integers for Greater Than
        # @return [Ronin::ASM::X86::Instructions::VPCMPGTD]
        # @example
        #   vpcmpgtd opmask(k1, k2), xmm1, bcst([ecx], {1=>4})
        #   vpcmpgtd k1, xmm1, bcst([ecx], {1=>4})
        #   vpcmpgtd opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtd k1, xmm1, xmm2
        #   vpcmpgtd opmask(k1, k2), ymm1, bcst([ecx], {1=>8})
        #   vpcmpgtd k1, ymm1, bcst([ecx], {1=>8})
        #   vpcmpgtd opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtd k1, ymm1, ymm2
        #   vpcmpgtd opmask(k1, k2), zmm1, bcst([ecx], {1=>16})
        #   vpcmpgtd k1, zmm1, bcst([ecx], {1=>16})
        #   vpcmpgtd opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtd k1, zmm1, zmm2
        #   vpcmpgtd xmm0, xmm1, xmm2
        #   vpcmpgtd xmm0, xmm1, [ecx]
        #   vpcmpgtd ymm0, ymm1, ymm2
        #   vpcmpgtd ymm0, ymm1, [ecx]
        def vpcmpgtd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPGTD,operand1,operand2,operand3,**kwargs)
        # Compare Packed Data for Greater Than
        # @return [Ronin::ASM::X86::Instructions::VPCMPGTQ]
        # @example
        #   vpcmpgtq opmask(k1, k2), xmm1, bcst([ecx], {1=>2})
        #   vpcmpgtq k1, xmm1, bcst([ecx], {1=>2})
        #   vpcmpgtq opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtq k1, xmm1, xmm2
        #   vpcmpgtq opmask(k1, k2), ymm1, bcst([ecx], {1=>4})
        #   vpcmpgtq k1, ymm1, bcst([ecx], {1=>4})
        #   vpcmpgtq opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtq k1, ymm1, ymm2
        #   vpcmpgtq opmask(k1, k2), zmm1, bcst([ecx], {1=>8})
        #   vpcmpgtq k1, zmm1, bcst([ecx], {1=>8})
        #   vpcmpgtq opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtq k1, zmm1, zmm2
        #   vpcmpgtq xmm0, xmm1, xmm2
        #   vpcmpgtq xmm0, xmm1, [ecx]
        #   vpcmpgtq ymm0, ymm1, ymm2
        #   vpcmpgtq ymm0, ymm1, [ecx]
        def vpcmpgtq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPGTQ,operand1,operand2,operand3,**kwargs)
        # Compare Packed Signed Word Integers for Greater Than
        # @return [Ronin::ASM::X86::Instructions::VPCMPGTW]
        # @example
        #   vpcmpgtw opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtw k1, xmm1, xmm2
        #   vpcmpgtw opmask(k1, k2), xmm1, [ecx]
        #   vpcmpgtw k1, xmm1, [ecx]
        #   vpcmpgtw opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtw k1, ymm1, ymm2
        #   vpcmpgtw opmask(k1, k2), ymm1, [ecx]
        #   vpcmpgtw k1, ymm1, [ecx]
        #   vpcmpgtw opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtw k1, zmm1, zmm2
        #   vpcmpgtw opmask(k1, k2), zmm1, [ecx]
        #   vpcmpgtw k1, zmm1, [ecx]
        #   vpcmpgtw xmm0, xmm1, xmm2
        #   vpcmpgtw xmm0, xmm1, [ecx]
        #   vpcmpgtw ymm0, ymm1, ymm2
        #   vpcmpgtw ymm0, ymm1, [ecx]
        def vpcmpgtw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPGTW,operand1,operand2,operand3,**kwargs)
        # Packed Compare Implicit Length Strings, Return Index
        # @return [Ronin::ASM::X86::Instructions::VPCMPISTRI]
        # @example
        #   vpcmpistri xmm0, xmm1, 0x03
        #   vpcmpistri xmm0, [ebx], 0x03
        def vpcmpistri(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPISTRI,operand1,operand2,operand3,**kwargs)
        # Packed Compare Implicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86::Instructions::VPCMPISTRM]
        # @example
        #   vpcmpistrm xmm0, xmm1, 0x03
        #   vpcmpistrm xmm0, [ebx], 0x03
        def vpcmpistrm(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPCMPISTRM,operand1,operand2,operand3,**kwargs)
        # Compare Packed Signed Quadword Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPQ]
        # @example
        #   vpcmpq opmask(k1, k2), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpcmpq k1, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpcmpq opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpq k1, xmm1, xmm2, 0x04
        #   vpcmpq opmask(k1, k2), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpq k1, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpq opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpq k1, ymm1, ymm2, 0x04
        #   vpcmpq opmask(k1, k2), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpq k1, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpq opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpq k1, zmm1, zmm2, 0x04
        def vpcmpq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPQ,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Byte Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPUB]
        # @example
        #   vpcmpub opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpub k1, xmm1, xmm2, 0x04
        #   vpcmpub opmask(k1, k2), xmm1, [ecx], 0x04
        #   vpcmpub k1, xmm1, [ecx], 0x04
        #   vpcmpub opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpub k1, ymm1, ymm2, 0x04
        #   vpcmpub opmask(k1, k2), ymm1, [ecx], 0x04
        #   vpcmpub k1, ymm1, [ecx], 0x04
        #   vpcmpub opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpub k1, zmm1, zmm2, 0x04
        #   vpcmpub opmask(k1, k2), zmm1, [ecx], 0x04
        #   vpcmpub k1, zmm1, [ecx], 0x04
        def vpcmpub(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPUB,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Doubleword Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPUD]
        # @example
        #   vpcmpud opmask(k1, k2), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpud k1, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpud opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpud k1, xmm1, xmm2, 0x04
        #   vpcmpud opmask(k1, k2), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpud k1, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpud opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpud k1, ymm1, ymm2, 0x04
        #   vpcmpud opmask(k1, k2), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpcmpud k1, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpcmpud opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpud k1, zmm1, zmm2, 0x04
        def vpcmpud(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPUD,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Quadword Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPUQ]
        # @example
        #   vpcmpuq opmask(k1, k2), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpcmpuq k1, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpcmpuq opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpuq k1, xmm1, xmm2, 0x04
        #   vpcmpuq opmask(k1, k2), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpuq k1, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpcmpuq opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpuq k1, ymm1, ymm2, 0x04
        #   vpcmpuq opmask(k1, k2), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpuq k1, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpcmpuq opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpuq k1, zmm1, zmm2, 0x04
        def vpcmpuq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPUQ,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Word Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPUW]
        # @example
        #   vpcmpuw opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpuw k1, xmm1, xmm2, 0x04
        #   vpcmpuw opmask(k1, k2), xmm1, [ecx], 0x04
        #   vpcmpuw k1, xmm1, [ecx], 0x04
        #   vpcmpuw opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpuw k1, ymm1, ymm2, 0x04
        #   vpcmpuw opmask(k1, k2), ymm1, [ecx], 0x04
        #   vpcmpuw k1, ymm1, [ecx], 0x04
        #   vpcmpuw opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpuw k1, zmm1, zmm2, 0x04
        #   vpcmpuw opmask(k1, k2), zmm1, [ecx], 0x04
        #   vpcmpuw k1, zmm1, [ecx], 0x04
        def vpcmpuw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPUW,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Signed Word Values
        # @return [Ronin::ASM::X86::Instructions::VPCMPW]
        # @example
        #   vpcmpw opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpw k1, xmm1, xmm2, 0x04
        #   vpcmpw opmask(k1, k2), xmm1, [ecx], 0x04
        #   vpcmpw k1, xmm1, [ecx], 0x04
        #   vpcmpw opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpw k1, ymm1, ymm2, 0x04
        #   vpcmpw opmask(k1, k2), ymm1, [ecx], 0x04
        #   vpcmpw k1, ymm1, [ecx], 0x04
        #   vpcmpw opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpw k1, zmm1, zmm2, 0x04
        #   vpcmpw opmask(k1, k2), zmm1, [ecx], 0x04
        #   vpcmpw k1, zmm1, [ecx], 0x04
        def vpcmpw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCMPW,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Signed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMB]
        # @example
        #   vpcomb xmm0, xmm1, xmm2, 0x04
        #   vpcomb xmm0, xmm1, [ecx], 0x04
        def vpcomb(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMB,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMD]
        # @example
        #   vpcomd xmm0, xmm1, xmm2, 0x04
        #   vpcomd xmm0, xmm1, [ecx], 0x04
        def vpcomd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMD,operand1,operand2,operand3,operand4,**kwargs)
        # Store Sparse Packed Byte Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPCOMPRESSB]
        # @example
        #   vpcompressb opmask([eax], k1), xmm1
        #   vpcompressb opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressb opmask([eax], k1), ymm1
        #   vpcompressb opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressb opmask([eax], k1), zmm1
        #   vpcompressb opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressb xmm0, xmm1
        #   vpcompressb ymm0, ymm1
        #   vpcompressb zmm0, zmm1
        #   vpcompressb [eax], xmm1
        #   vpcompressb [eax], ymm1
        #   vpcompressb [eax], zmm1
        def vpcompressb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPCOMPRESSB,operand1,operand2,**kwargs)
        # Store Sparse Packed Doubleword Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPCOMPRESSD]
        # @example
        #   vpcompressd opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressd opmask([eax], k1), xmm1
        #   vpcompressd opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressd opmask([eax], k1), ymm1
        #   vpcompressd opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressd opmask([eax], k1), zmm1
        #   vpcompressd xmm0, xmm1
        #   vpcompressd ymm0, ymm1
        #   vpcompressd zmm0, zmm1
        #   vpcompressd [eax], xmm1
        #   vpcompressd [eax], ymm1
        #   vpcompressd [eax], zmm1
        def vpcompressd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPCOMPRESSD,operand1,operand2,**kwargs)
        # Store Sparse Packed Quadword Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPCOMPRESSQ]
        # @example
        #   vpcompressq opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressq opmask([eax], k1), xmm1
        #   vpcompressq opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressq opmask([eax], k1), ymm1
        #   vpcompressq opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressq opmask([eax], k1), zmm1
        #   vpcompressq xmm0, xmm1
        #   vpcompressq ymm0, ymm1
        #   vpcompressq zmm0, zmm1
        #   vpcompressq [eax], xmm1
        #   vpcompressq [eax], ymm1
        #   vpcompressq [eax], zmm1
        def vpcompressq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPCOMPRESSQ,operand1,operand2,**kwargs)
        # Store Sparse Packed Word Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPCOMPRESSW]
        # @example
        #   vpcompressw opmask([eax], k1), xmm1
        #   vpcompressw opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressw opmask([eax], k1), ymm1
        #   vpcompressw opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressw opmask([eax], k1), zmm1
        #   vpcompressw opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressw xmm0, xmm1
        #   vpcompressw ymm0, ymm1
        #   vpcompressw zmm0, zmm1
        #   vpcompressw [eax], xmm1
        #   vpcompressw [eax], ymm1
        #   vpcompressw [eax], zmm1
        def vpcompressw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPCOMPRESSW,operand1,operand2,**kwargs)
        # Compare Packed Signed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMQ]
        # @example
        #   vpcomq xmm0, xmm1, xmm2, 0x04
        #   vpcomq xmm0, xmm1, [ecx], 0x04
        def vpcomq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMQ,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMUB]
        # @example
        #   vpcomub xmm0, xmm1, xmm2, 0x04
        #   vpcomub xmm0, xmm1, [ecx], 0x04
        def vpcomub(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMUB,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMUD]
        # @example
        #   vpcomud xmm0, xmm1, xmm2, 0x04
        #   vpcomud xmm0, xmm1, [ecx], 0x04
        def vpcomud(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMUD,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMUQ]
        # @example
        #   vpcomuq xmm0, xmm1, xmm2, 0x04
        #   vpcomuq xmm0, xmm1, [ecx], 0x04
        def vpcomuq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMUQ,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMUW]
        # @example
        #   vpcomuw xmm0, xmm1, xmm2, 0x04
        #   vpcomuw xmm0, xmm1, [ecx], 0x04
        def vpcomuw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMUW,operand1,operand2,operand3,operand4,**kwargs)
        # Compare Packed Signed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPCOMW]
        # @example
        #   vpcomw xmm0, xmm1, xmm2, 0x04
        #   vpcomw xmm0, xmm1, [ecx], 0x04
        def vpcomw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPCOMW,operand1,operand2,operand3,operand4,**kwargs)
        # Detect Conflicts Within a Vector of Packed Doubleword Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPCONFLICTD]
        # @example
        #   vpconflictd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vpconflictd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vpconflictd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vpconflictd opmask(xmm0, k1, zero: true), xmm1
        #   vpconflictd opmask(ymm0, k1, zero: true), ymm1
        #   vpconflictd opmask(zmm0, k1, zero: true), zmm1
        #   vpconflictd xmm0, bcst([ebx], {1=>4})
        #   vpconflictd xmm0, xmm1
        #   vpconflictd ymm0, bcst([ebx], {1=>8})
        #   vpconflictd ymm0, ymm1
        #   vpconflictd zmm0, bcst([ebx], {1=>16})
        #   vpconflictd zmm0, zmm1
        def vpconflictd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPCONFLICTD,operand1,operand2,**kwargs)
        # Detect Conflicts Within a Vector of Packed Quadword Values into Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPCONFLICTQ]
        # @example
        #   vpconflictq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vpconflictq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vpconflictq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vpconflictq opmask(xmm0, k1, zero: true), xmm1
        #   vpconflictq opmask(ymm0, k1, zero: true), ymm1
        #   vpconflictq opmask(zmm0, k1, zero: true), zmm1
        #   vpconflictq xmm0, bcst([ebx], {1=>2})
        #   vpconflictq xmm0, xmm1
        #   vpconflictq ymm0, bcst([ebx], {1=>4})
        #   vpconflictq ymm0, ymm1
        #   vpconflictq zmm0, bcst([ebx], {1=>8})
        #   vpconflictq zmm0, zmm1
        def vpconflictq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPCONFLICTQ,operand1,operand2,**kwargs)
        # Packed Dot Product of Signed-by-Singed Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPBSSD]
        # @example
        #   vpdpbssd xmm0, xmm1, xmm2
        #   vpdpbssd xmm0, xmm1, [ecx]
        #   vpdpbssd ymm0, ymm1, ymm2
        #   vpdpbssd ymm0, ymm1, [ecx]
        def vpdpbssd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBSSD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Signed-by-Singed Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPBSSDS]
        # @example
        #   vpdpbssds xmm0, xmm1, xmm2
        #   vpdpbssds xmm0, xmm1, [ecx]
        #   vpdpbssds ymm0, ymm1, ymm2
        #   vpdpbssds ymm0, ymm1, [ecx]
        def vpdpbssds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBSSDS,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Signed-by-Unsinged Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPBSUD]
        # @example
        #   vpdpbsud xmm0, xmm1, xmm2
        #   vpdpbsud xmm0, xmm1, [ecx]
        #   vpdpbsud ymm0, ymm1, ymm2
        #   vpdpbsud ymm0, ymm1, [ecx]
        def vpdpbsud(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBSUD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Signed-by-Unsinged Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPBSUDS]
        # @example
        #   vpdpbsuds xmm0, xmm1, xmm2
        #   vpdpbsuds xmm0, xmm1, [ecx]
        #   vpdpbsuds ymm0, ymm1, ymm2
        #   vpdpbsuds ymm0, ymm1, [ecx]
        def vpdpbsuds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBSUDS,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Singed Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPBUSD]
        # @example
        #   vpdpbusd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpdpbusd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpbusd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpdpbusd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpbusd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpdpbusd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpbusd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpdpbusd xmm0, xmm1, xmm2
        #   vpdpbusd xmm0, xmm1, [ecx]
        #   vpdpbusd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpdpbusd ymm0, ymm1, ymm2
        #   vpdpbusd ymm0, ymm1, [ecx]
        #   vpdpbusd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpdpbusd zmm0, zmm1, zmm2
        def vpdpbusd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBUSD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Singed Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPBUSDS]
        # @example
        #   vpdpbusds opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpdpbusds opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpbusds opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpdpbusds opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpbusds opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpdpbusds opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpbusds xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpdpbusds xmm0, xmm1, xmm2
        #   vpdpbusds xmm0, xmm1, [ecx]
        #   vpdpbusds ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpdpbusds ymm0, ymm1, ymm2
        #   vpdpbusds ymm0, ymm1, [ecx]
        #   vpdpbusds zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpdpbusds zmm0, zmm1, zmm2
        def vpdpbusds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBUSDS,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsinged Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPBUUD]
        # @example
        #   vpdpbuud xmm0, xmm1, xmm2
        #   vpdpbuud xmm0, xmm1, [ecx]
        #   vpdpbuud ymm0, ymm1, ymm2
        #   vpdpbuud ymm0, ymm1, [ecx]
        def vpdpbuud(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBUUD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsinged Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPBUUDS]
        # @example
        #   vpdpbuuds xmm0, xmm1, xmm2
        #   vpdpbuuds xmm0, xmm1, [ecx]
        #   vpdpbuuds ymm0, ymm1, ymm2
        #   vpdpbuuds ymm0, ymm1, [ecx]
        def vpdpbuuds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPBUUDS,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Signed-by-Signed Word subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPWSSD]
        # @example
        #   vpdpwssd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpdpwssd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpwssd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpdpwssd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpwssd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpdpwssd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpwssd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpdpwssd xmm0, xmm1, xmm2
        #   vpdpwssd xmm0, xmm1, [ecx]
        #   vpdpwssd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpdpwssd ymm0, ymm1, ymm2
        #   vpdpwssd ymm0, ymm1, [ecx]
        #   vpdpwssd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpdpwssd zmm0, zmm1, zmm2
        def vpdpwssd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWSSD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Signed-by-Signed Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPWSSDS]
        # @example
        #   vpdpwssds opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpdpwssds opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpwssds opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpdpwssds opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpwssds opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpdpwssds opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpwssds xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpdpwssds xmm0, xmm1, xmm2
        #   vpdpwssds xmm0, xmm1, [ecx]
        #   vpdpwssds ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpdpwssds ymm0, ymm1, ymm2
        #   vpdpwssds ymm0, ymm1, [ecx]
        #   vpdpwssds zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpdpwssds zmm0, zmm1, zmm2
        def vpdpwssds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWSSDS,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Signed-by-Unsigned Word subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPWSUD]
        # @example
        #   vpdpwsud xmm0, xmm1, xmm2
        #   vpdpwsud xmm0, xmm1, [ecx]
        #   vpdpwsud ymm0, ymm1, ymm2
        #   vpdpwsud ymm0, ymm1, [ecx]
        def vpdpwsud(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWSUD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Signed-by-Unsigned Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPWSUDS]
        # @example
        #   vpdpwsuds xmm0, xmm1, xmm2
        #   vpdpwsuds xmm0, xmm1, [ecx]
        #   vpdpwsuds ymm0, ymm1, ymm2
        #   vpdpwsuds ymm0, ymm1, [ecx]
        def vpdpwsuds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWSUDS,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Signed Word subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPWUSD]
        # @example
        #   vpdpwusd xmm0, xmm1, xmm2
        #   vpdpwusd xmm0, xmm1, [ecx]
        #   vpdpwusd ymm0, ymm1, ymm2
        #   vpdpwusd ymm0, ymm1, [ecx]
        def vpdpwusd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWUSD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Signed Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPWUSDS]
        # @example
        #   vpdpwusds xmm0, xmm1, xmm2
        #   vpdpwusds xmm0, xmm1, [ecx]
        #   vpdpwusds ymm0, ymm1, ymm2
        #   vpdpwusds ymm0, ymm1, [ecx]
        def vpdpwusds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWUSDS,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsigned Word subvectors into Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPDPWUUD]
        # @example
        #   vpdpwuud xmm0, xmm1, xmm2
        #   vpdpwuud xmm0, xmm1, [ecx]
        #   vpdpwuud ymm0, ymm1, ymm2
        #   vpdpwuud ymm0, ymm1, [ecx]
        def vpdpwuud(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWUUD,operand1,operand2,operand3,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsigned Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86::Instructions::VPDPWUUDS]
        # @example
        #   vpdpwuuds xmm0, xmm1, xmm2
        #   vpdpwuuds xmm0, xmm1, [ecx]
        #   vpdpwuuds ymm0, ymm1, ymm2
        #   vpdpwuuds ymm0, ymm1, [ecx]
        def vpdpwuuds(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPDPWUUDS,operand1,operand2,operand3,**kwargs)
        # Permute Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VPERM2F128]
        # @example
        #   vperm2f128 ymm0, ymm1, ymm2, 0x04
        #   vperm2f128 ymm0, ymm1, [ecx], 0x04
        def vperm2f128(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPERM2F128,operand1,operand2,operand3,operand4,**kwargs)
        # Permute 128-Bit Integer Values
        # @return [Ronin::ASM::X86::Instructions::VPERM2I128]
        # @example
        #   vperm2i128 ymm0, ymm1, ymm2, 0x04
        #   vperm2i128 ymm0, ymm1, [ecx], 0x04
        def vperm2i128(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPERM2I128,operand1,operand2,operand3,operand4,**kwargs)
        # Permute Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPERMB]
        # @example
        #   vpermb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpermb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpermb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpermb xmm0, xmm1, xmm2
        #   vpermb xmm0, xmm1, [ecx]
        #   vpermb ymm0, ymm1, ymm2
        #   vpermb ymm0, ymm1, [ecx]
        #   vpermb zmm0, zmm1, zmm2
        #   vpermb zmm0, zmm1, [ecx]
        def vpermb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMB,operand1,operand2,operand3,**kwargs)
        # Permute Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPERMD]
        # @example
        #   vpermd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpermd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpermd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpermd ymm0, ymm1, ymm2
        #   vpermd ymm0, ymm1, [ecx]
        #   vpermd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpermd zmm0, zmm1, zmm2
        def vpermd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMD,operand1,operand2,operand3,**kwargs)
        # Full Permute of Bytes From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86::Instructions::VPERMI2B]
        # @example
        #   vpermi2b opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2b opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpermi2b opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2b opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpermi2b opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2b opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpermi2b xmm0, xmm1, xmm2
        #   vpermi2b xmm0, xmm1, [ecx]
        #   vpermi2b ymm0, ymm1, ymm2
        #   vpermi2b ymm0, ymm1, [ecx]
        #   vpermi2b zmm0, zmm1, zmm2
        #   vpermi2b zmm0, zmm1, [ecx]
        def vpermi2b(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMI2B,operand1,operand2,operand3,**kwargs)
        # Full Permute of Doublewords From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86::Instructions::VPERMI2D]
        # @example
        #   vpermi2d opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpermi2d opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2d opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpermi2d opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2d opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpermi2d opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2d xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpermi2d xmm0, xmm1, xmm2
        #   vpermi2d ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpermi2d ymm0, ymm1, ymm2
        #   vpermi2d zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpermi2d zmm0, zmm1, zmm2
        def vpermi2d(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMI2D,operand1,operand2,operand3,**kwargs)
        # Full Permute of Double-Precision Floating-Point Values From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86::Instructions::VPERMI2PD]
        # @example
        #   vpermi2pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpermi2pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpermi2pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpermi2pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpermi2pd xmm0, xmm1, xmm2
        #   vpermi2pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpermi2pd ymm0, ymm1, ymm2
        #   vpermi2pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpermi2pd zmm0, zmm1, zmm2
        def vpermi2pd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMI2PD,operand1,operand2,operand3,**kwargs)
        # Full Permute of Single-Precision Floating-Point Values From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86::Instructions::VPERMI2PS]
        # @example
        #   vpermi2ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpermi2ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpermi2ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpermi2ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpermi2ps xmm0, xmm1, xmm2
        #   vpermi2ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpermi2ps ymm0, ymm1, ymm2
        #   vpermi2ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpermi2ps zmm0, zmm1, zmm2
        def vpermi2ps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMI2PS,operand1,operand2,operand3,**kwargs)
        # Full Permute of Quadwords From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86::Instructions::VPERMI2Q]
        # @example
        #   vpermi2q opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpermi2q opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2q opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpermi2q opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2q opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpermi2q opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2q xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpermi2q xmm0, xmm1, xmm2
        #   vpermi2q ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpermi2q ymm0, ymm1, ymm2
        #   vpermi2q zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpermi2q zmm0, zmm1, zmm2
        def vpermi2q(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMI2Q,operand1,operand2,operand3,**kwargs)
        # Full Permute of Words From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86::Instructions::VPERMI2W]
        # @example
        #   vpermi2w opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2w opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpermi2w opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2w opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpermi2w opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2w opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpermi2w xmm0, xmm1, xmm2
        #   vpermi2w xmm0, xmm1, [ecx]
        #   vpermi2w ymm0, ymm1, ymm2
        #   vpermi2w ymm0, ymm1, [ecx]
        #   vpermi2w zmm0, zmm1, zmm2
        #   vpermi2w zmm0, zmm1, [ecx]
        def vpermi2w(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMI2W,operand1,operand2,operand3,**kwargs)
        # Permute Two-Source Double-Precision Floating-Point Vectors
        # @return [Ronin::ASM::X86::Instructions::VPERMIL2PD]
        # @example
        #   vpermil2pd xmm0, xmm1, xmm2, xmm3, 0b1111
        #   vpermil2pd xmm0, xmm1, xmm2, [edx], 0b1111
        #   vpermil2pd xmm0, xmm1, [ecx], xmm3, 0b1111
        #   vpermil2pd ymm0, ymm1, ymm2, ymm3, 0b1111
        #   vpermil2pd ymm0, ymm1, ymm2, [edx], 0b1111
        #   vpermil2pd ymm0, ymm1, [ecx], ymm3, 0b1111
        def vpermil2pd(operand1,operand2,operand3,operand4,operand5,**kwargs) = add_instruction(Instructions::VPERMIL2PD,operand1,operand2,operand3,operand4,operand5,**kwargs)
        # Permute Two-Source Single-Precision Floating-Point Vectors
        # @return [Ronin::ASM::X86::Instructions::VPERMIL2PS]
        # @example
        #   vpermil2ps xmm0, xmm1, xmm2, xmm3, 0b1111
        #   vpermil2ps xmm0, xmm1, xmm2, [edx], 0b1111
        #   vpermil2ps xmm0, xmm1, [ecx], xmm3, 0b1111
        #   vpermil2ps ymm0, ymm1, ymm2, ymm3, 0b1111
        #   vpermil2ps ymm0, ymm1, ymm2, [edx], 0b1111
        #   vpermil2ps ymm0, ymm1, [ecx], ymm3, 0b1111
        def vpermil2ps(operand1,operand2,operand3,operand4,operand5,**kwargs) = add_instruction(Instructions::VPERMIL2PS,operand1,operand2,operand3,operand4,operand5,**kwargs)
        # Permute Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VPERMILPD]
        # @example
        #   vpermilpd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vpermilpd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpermilpd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpermilpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpermilpd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpermilpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermilpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpermilpd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermilpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermilpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpermilpd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermilpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermilpd xmm0, bcst([ebx], {1=>2}), 0x03
        #   vpermilpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpermilpd xmm0, xmm1, 0x03
        #   vpermilpd xmm0, xmm1, xmm2
        #   vpermilpd xmm0, xmm1, [ecx]
        #   vpermilpd xmm0, [ebx], 0x03
        #   vpermilpd ymm0, bcst([ebx], {1=>4}), 0x03
        #   vpermilpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpermilpd ymm0, ymm1, 0x03
        #   vpermilpd ymm0, ymm1, ymm2
        #   vpermilpd ymm0, ymm1, [ecx]
        #   vpermilpd ymm0, [ebx], 0x03
        #   vpermilpd zmm0, bcst([ebx], {1=>8}), 0x03
        #   vpermilpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpermilpd zmm0, zmm1, 0x03
        #   vpermilpd zmm0, zmm1, zmm2
        def vpermilpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMILPD,operand1,operand2,operand3,**kwargs)
        # Permute Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VPERMILPS]
        # @example
        #   vpermilps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpermilps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpermilps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vpermilps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpermilps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpermilps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermilps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpermilps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermilps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermilps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpermilps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermilps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermilps xmm0, bcst([ebx], {1=>4}), 0x03
        #   vpermilps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpermilps xmm0, xmm1, 0x03
        #   vpermilps xmm0, xmm1, xmm2
        #   vpermilps xmm0, xmm1, [ecx]
        #   vpermilps xmm0, [ebx], 0x03
        #   vpermilps ymm0, bcst([ebx], {1=>8}), 0x03
        #   vpermilps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpermilps ymm0, ymm1, 0x03
        #   vpermilps ymm0, ymm1, ymm2
        #   vpermilps ymm0, ymm1, [ecx]
        #   vpermilps ymm0, [ebx], 0x03
        #   vpermilps zmm0, bcst([ebx], {1=>16}), 0x03
        #   vpermilps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpermilps zmm0, zmm1, 0x03
        #   vpermilps zmm0, zmm1, zmm2
        def vpermilps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMILPS,operand1,operand2,operand3,**kwargs)
        # Permute Double-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86::Instructions::VPERMPD]
        # @example
        #   vpermpd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpermpd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpermpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpermpd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpermpd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermpd ymm0, bcst([ebx], {1=>4}), 0x03
        #   vpermpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpermpd ymm0, ymm1, 0x03
        #   vpermpd ymm0, ymm1, ymm2
        #   vpermpd ymm0, [ebx], 0x03
        #   vpermpd zmm0, bcst([ebx], {1=>8}), 0x03
        #   vpermpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpermpd zmm0, zmm1, 0x03
        #   vpermpd zmm0, zmm1, zmm2
        def vpermpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMPD,operand1,operand2,operand3,**kwargs)
        # Permute Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86::Instructions::VPERMPS]
        # @example
        #   vpermps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpermps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpermps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpermps ymm0, ymm1, ymm2
        #   vpermps ymm0, ymm1, [ecx]
        #   vpermps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpermps zmm0, zmm1, zmm2
        def vpermps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMPS,operand1,operand2,operand3,**kwargs)
        # Permute Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPERMQ]
        # @example
        #   vpermq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpermq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpermq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpermq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpermq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermq ymm0, bcst([ebx], {1=>4}), 0x03
        #   vpermq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpermq ymm0, ymm1, 0x03
        #   vpermq ymm0, ymm1, ymm2
        #   vpermq ymm0, [ebx], 0x03
        #   vpermq zmm0, bcst([ebx], {1=>8}), 0x03
        #   vpermq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpermq zmm0, zmm1, 0x03
        #   vpermq zmm0, zmm1, zmm2
        def vpermq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMQ,operand1,operand2,operand3,**kwargs)
        # Full Permute of Bytes From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86::Instructions::VPERMT2B]
        # @example
        #   vpermt2b opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2b opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpermt2b opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2b opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpermt2b opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2b opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpermt2b xmm0, xmm1, xmm2
        #   vpermt2b xmm0, xmm1, [ecx]
        #   vpermt2b ymm0, ymm1, ymm2
        #   vpermt2b ymm0, ymm1, [ecx]
        #   vpermt2b zmm0, zmm1, zmm2
        #   vpermt2b zmm0, zmm1, [ecx]
        def vpermt2b(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMT2B,operand1,operand2,operand3,**kwargs)
        # Full Permute of Doublewords From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86::Instructions::VPERMT2D]
        # @example
        #   vpermt2d opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpermt2d opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2d opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpermt2d opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2d opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpermt2d opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2d xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpermt2d xmm0, xmm1, xmm2
        #   vpermt2d ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpermt2d ymm0, ymm1, ymm2
        #   vpermt2d zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpermt2d zmm0, zmm1, zmm2
        def vpermt2d(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMT2D,operand1,operand2,operand3,**kwargs)
        # Full Permute of Double-Precision Floating-Point Values From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86::Instructions::VPERMT2PD]
        # @example
        #   vpermt2pd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpermt2pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2pd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpermt2pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2pd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpermt2pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2pd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpermt2pd xmm0, xmm1, xmm2
        #   vpermt2pd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpermt2pd ymm0, ymm1, ymm2
        #   vpermt2pd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpermt2pd zmm0, zmm1, zmm2
        def vpermt2pd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMT2PD,operand1,operand2,operand3,**kwargs)
        # Full Permute of Single-Precision Floating-Point Values From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86::Instructions::VPERMT2PS]
        # @example
        #   vpermt2ps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpermt2ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2ps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpermt2ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2ps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpermt2ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2ps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpermt2ps xmm0, xmm1, xmm2
        #   vpermt2ps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpermt2ps ymm0, ymm1, ymm2
        #   vpermt2ps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpermt2ps zmm0, zmm1, zmm2
        def vpermt2ps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMT2PS,operand1,operand2,operand3,**kwargs)
        # Full Permute of Quadwords From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86::Instructions::VPERMT2Q]
        # @example
        #   vpermt2q opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpermt2q opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2q opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpermt2q opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2q opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpermt2q opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2q xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpermt2q xmm0, xmm1, xmm2
        #   vpermt2q ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpermt2q ymm0, ymm1, ymm2
        #   vpermt2q zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpermt2q zmm0, zmm1, zmm2
        def vpermt2q(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMT2Q,operand1,operand2,operand3,**kwargs)
        # Full Permute of Words From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86::Instructions::VPERMT2W]
        # @example
        #   vpermt2w opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2w opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpermt2w opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2w opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpermt2w opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2w opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpermt2w xmm0, xmm1, xmm2
        #   vpermt2w xmm0, xmm1, [ecx]
        #   vpermt2w ymm0, ymm1, ymm2
        #   vpermt2w ymm0, ymm1, [ecx]
        #   vpermt2w zmm0, zmm1, zmm2
        #   vpermt2w zmm0, zmm1, [ecx]
        def vpermt2w(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMT2W,operand1,operand2,operand3,**kwargs)
        # Permute Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPERMW]
        # @example
        #   vpermw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpermw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpermw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpermw xmm0, xmm1, xmm2
        #   vpermw xmm0, xmm1, [ecx]
        #   vpermw ymm0, ymm1, ymm2
        #   vpermw ymm0, ymm1, [ecx]
        #   vpermw zmm0, zmm1, zmm2
        #   vpermw zmm0, zmm1, [ecx]
        def vpermw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPERMW,operand1,operand2,operand3,**kwargs)
        # Load Sparse Packed Byte Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPEXPANDB]
        # @example
        #   vpexpandb opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandb opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandb opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandb opmask(xmm0, k1, zero: true), [ebx]
        #   vpexpandb opmask(ymm0, k1, zero: true), [ebx]
        #   vpexpandb opmask(zmm0, k1, zero: true), [ebx]
        #   vpexpandb xmm0, xmm1
        #   vpexpandb xmm0, [ebx]
        #   vpexpandb ymm0, ymm1
        #   vpexpandb ymm0, [ebx]
        #   vpexpandb zmm0, zmm1
        #   vpexpandb zmm0, [ebx]
        def vpexpandb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPEXPANDB,operand1,operand2,**kwargs)
        # Load Sparse Packed Doubleword Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPEXPANDD]
        # @example
        #   vpexpandd opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandd opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandd opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandd opmask(xmm0, k1, zero: true), [ebx]
        #   vpexpandd opmask(ymm0, k1, zero: true), [ebx]
        #   vpexpandd opmask(zmm0, k1, zero: true), [ebx]
        #   vpexpandd xmm0, xmm1
        #   vpexpandd xmm0, [ebx]
        #   vpexpandd ymm0, ymm1
        #   vpexpandd ymm0, [ebx]
        #   vpexpandd zmm0, zmm1
        #   vpexpandd zmm0, [ebx]
        def vpexpandd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPEXPANDD,operand1,operand2,**kwargs)
        # Load Sparse Packed Quadword Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPEXPANDQ]
        # @example
        #   vpexpandq opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandq opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandq opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandq opmask(xmm0, k1, zero: true), [ebx]
        #   vpexpandq opmask(ymm0, k1, zero: true), [ebx]
        #   vpexpandq opmask(zmm0, k1, zero: true), [ebx]
        #   vpexpandq xmm0, xmm1
        #   vpexpandq xmm0, [ebx]
        #   vpexpandq ymm0, ymm1
        #   vpexpandq ymm0, [ebx]
        #   vpexpandq zmm0, zmm1
        #   vpexpandq zmm0, [ebx]
        def vpexpandq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPEXPANDQ,operand1,operand2,**kwargs)
        # Load Sparse Packed Word Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86::Instructions::VPEXPANDW]
        # @example
        #   vpexpandw opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandw opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandw opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandw opmask(xmm0, k1, zero: true), [ebx]
        #   vpexpandw opmask(ymm0, k1, zero: true), [ebx]
        #   vpexpandw opmask(zmm0, k1, zero: true), [ebx]
        #   vpexpandw xmm0, xmm1
        #   vpexpandw xmm0, [ebx]
        #   vpexpandw ymm0, ymm1
        #   vpexpandw ymm0, [ebx]
        #   vpexpandw zmm0, zmm1
        #   vpexpandw zmm0, [ebx]
        def vpexpandw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPEXPANDW,operand1,operand2,**kwargs)
        # Extract Byte
        # @return [Ronin::ASM::X86::Instructions::VPEXTRB]
        # @example
        #   vpextrb eax, xmm1, 0x03
        #   vpextrb [eax], xmm1, 0x03
        def vpextrb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPEXTRB,operand1,operand2,operand3,**kwargs)
        # Extract Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPEXTRD]
        # @example
        #   vpextrd eax, xmm1, 0x03
        #   vpextrd [eax], xmm1, 0x03
        def vpextrd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPEXTRD,operand1,operand2,operand3,**kwargs)
        # Extract Word
        # @return [Ronin::ASM::X86::Instructions::VPEXTRW]
        # @example
        #   vpextrw eax, xmm1, 0x03
        #   vpextrw [eax], xmm1, 0x03
        def vpextrw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPEXTRW,operand1,operand2,operand3,**kwargs)
        # Gather Packed Doubleword Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VPGATHERDD]
        # @example
        #   vpgatherdd opmask(xmm0, k1), [ebx+xmm1*4]
        #   vpgatherdd opmask(ymm0, k1), [ebx+ymm1*4]
        #   vpgatherdd opmask(zmm0, k1), [ebx+zmm1*4]
        #   vpgatherdd xmm0, [ebx+xmm1*4], xmm2
        #   vpgatherdd ymm0, [ebx+ymm1*4], ymm2
        def vpgatherdd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VPGATHERDD,operand1,operand2,*operands,**kwargs)
        # Gather Packed Quadword Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VPGATHERDQ]
        # @example
        #   vpgatherdq opmask(xmm0, k1), [ebx+xmm1*4]
        #   vpgatherdq opmask(ymm0, k1), [ebx+xmm1*4]
        #   vpgatherdq opmask(zmm0, k1), [ebx+ymm1*4]
        #   vpgatherdq xmm0, [ebx+xmm1*4], xmm2
        #   vpgatherdq ymm0, [ebx+xmm1*4], ymm2
        def vpgatherdq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VPGATHERDQ,operand1,operand2,*operands,**kwargs)
        # Gather Packed Doubleword Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VPGATHERQD]
        # @example
        #   vpgatherqd opmask(xmm0, k1), [ebx+xmm1*8]
        #   vpgatherqd opmask(xmm0, k1), [ebx+ymm1*8]
        #   vpgatherqd opmask(ymm0, k1), [ebx+zmm1*8]
        #   vpgatherqd xmm0, [ebx+xmm1*8], xmm2
        #   vpgatherqd xmm0, [ebx+ymm1*8], xmm2
        def vpgatherqd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VPGATHERQD,operand1,operand2,*operands,**kwargs)
        # Gather Packed Quadword Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VPGATHERQQ]
        # @example
        #   vpgatherqq opmask(xmm0, k1), [ebx+xmm1*8]
        #   vpgatherqq opmask(ymm0, k1), [ebx+ymm1*8]
        #   vpgatherqq opmask(zmm0, k1), [ebx+zmm1*8]
        #   vpgatherqq xmm0, [ebx+xmm1*8], xmm2
        #   vpgatherqq ymm0, [ebx+ymm1*8], ymm2
        def vpgatherqq(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VPGATHERQQ,operand1,operand2,*operands,**kwargs)
        # Packed Horizontal Add Signed Byte to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPHADDBD]
        # @example
        #   vphaddbd xmm0, xmm1
        #   vphaddbd xmm0, [ebx]
        def vphaddbd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDBD,operand1,operand2,**kwargs)
        # Packed Horizontal Add Signed Byte to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPHADDBQ]
        # @example
        #   vphaddbq xmm0, xmm1
        #   vphaddbq xmm0, [ebx]
        def vphaddbq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDBQ,operand1,operand2,**kwargs)
        # Packed Horizontal Add Signed Byte to Signed Word
        # @return [Ronin::ASM::X86::Instructions::VPHADDBW]
        # @example
        #   vphaddbw xmm0, xmm1
        #   vphaddbw xmm0, [ebx]
        def vphaddbw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDBW,operand1,operand2,**kwargs)
        # Packed Horizontal Add Doubleword Integer
        # @return [Ronin::ASM::X86::Instructions::VPHADDD]
        # @example
        #   vphaddd xmm0, xmm1, xmm2
        #   vphaddd xmm0, xmm1, [ecx]
        #   vphaddd ymm0, ymm1, ymm2
        #   vphaddd ymm0, ymm1, [ecx]
        def vphaddd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPHADDD,operand1,operand2,operand3,**kwargs)
        # Packed Horizontal Add Signed Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPHADDDQ]
        # @example
        #   vphadddq xmm0, xmm1
        #   vphadddq xmm0, [ebx]
        def vphadddq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDDQ,operand1,operand2,**kwargs)
        # Packed Horizontal Add Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPHADDSW]
        # @example
        #   vphaddsw xmm0, xmm1, xmm2
        #   vphaddsw xmm0, xmm1, [ecx]
        #   vphaddsw ymm0, ymm1, ymm2
        #   vphaddsw ymm0, ymm1, [ecx]
        def vphaddsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPHADDSW,operand1,operand2,operand3,**kwargs)
        # Packed Horizontal Add Unsigned Byte to Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPHADDUBD]
        # @example
        #   vphaddubd xmm0, xmm1
        #   vphaddubd xmm0, [ebx]
        def vphaddubd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDUBD,operand1,operand2,**kwargs)
        # Packed Horizontal Add Unsigned Byte to Quadword
        # @return [Ronin::ASM::X86::Instructions::VPHADDUBQ]
        # @example
        #   vphaddubq xmm0, xmm1
        #   vphaddubq xmm0, [ebx]
        def vphaddubq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDUBQ,operand1,operand2,**kwargs)
        # Packed Horizontal Add Unsigned Byte to Word
        # @return [Ronin::ASM::X86::Instructions::VPHADDUBW]
        # @example
        #   vphaddubw xmm0, xmm1
        #   vphaddubw xmm0, [ebx]
        def vphaddubw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDUBW,operand1,operand2,**kwargs)
        # Packed Horizontal Add Unsigned Doubleword to Quadword
        # @return [Ronin::ASM::X86::Instructions::VPHADDUDQ]
        # @example
        #   vphaddudq xmm0, xmm1
        #   vphaddudq xmm0, [ebx]
        def vphaddudq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDUDQ,operand1,operand2,**kwargs)
        # Packed Horizontal Add Unsigned Word to Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPHADDUWD]
        # @example
        #   vphadduwd xmm0, xmm1
        #   vphadduwd xmm0, [ebx]
        def vphadduwd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDUWD,operand1,operand2,**kwargs)
        # Packed Horizontal Add Unsigned Word to Quadword
        # @return [Ronin::ASM::X86::Instructions::VPHADDUWQ]
        # @example
        #   vphadduwq xmm0, xmm1
        #   vphadduwq xmm0, [ebx]
        def vphadduwq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDUWQ,operand1,operand2,**kwargs)
        # Packed Horizontal Add Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPHADDW]
        # @example
        #   vphaddw xmm0, xmm1, xmm2
        #   vphaddw xmm0, xmm1, [ecx]
        #   vphaddw ymm0, ymm1, ymm2
        #   vphaddw ymm0, ymm1, [ecx]
        def vphaddw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPHADDW,operand1,operand2,operand3,**kwargs)
        # Packed Horizontal Add Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPHADDWD]
        # @example
        #   vphaddwd xmm0, xmm1
        #   vphaddwd xmm0, [ebx]
        def vphaddwd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDWD,operand1,operand2,**kwargs)
        # Packed Horizontal Add Signed Word to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPHADDWQ]
        # @example
        #   vphaddwq xmm0, xmm1
        #   vphaddwq xmm0, [ebx]
        def vphaddwq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHADDWQ,operand1,operand2,**kwargs)
        # Packed Horizontal Minimum of Unsigned Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPHMINPOSUW]
        # @example
        #   vphminposuw xmm0, xmm1
        #   vphminposuw xmm0, [ebx]
        def vphminposuw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHMINPOSUW,operand1,operand2,**kwargs)
        # Packed Horizontal Subtract Signed Byte to Signed Word
        # @return [Ronin::ASM::X86::Instructions::VPHSUBBW]
        # @example
        #   vphsubbw xmm0, xmm1
        #   vphsubbw xmm0, [ebx]
        def vphsubbw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHSUBBW,operand1,operand2,**kwargs)
        # Packed Horizontal Subtract Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPHSUBD]
        # @example
        #   vphsubd xmm0, xmm1, xmm2
        #   vphsubd xmm0, xmm1, [ecx]
        #   vphsubd ymm0, ymm1, ymm2
        #   vphsubd ymm0, ymm1, [ecx]
        def vphsubd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPHSUBD,operand1,operand2,operand3,**kwargs)
        # Packed Horizontal Subtract Signed Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPHSUBDQ]
        # @example
        #   vphsubdq xmm0, xmm1
        #   vphsubdq xmm0, [ebx]
        def vphsubdq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHSUBDQ,operand1,operand2,**kwargs)
        # Packed Horizontal Subtract Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPHSUBSW]
        # @example
        #   vphsubsw xmm0, xmm1, xmm2
        #   vphsubsw xmm0, xmm1, [ecx]
        #   vphsubsw ymm0, ymm1, ymm2
        #   vphsubsw ymm0, ymm1, [ecx]
        def vphsubsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPHSUBSW,operand1,operand2,operand3,**kwargs)
        # Packed Horizontal Subtract Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPHSUBW]
        # @example
        #   vphsubw xmm0, xmm1, xmm2
        #   vphsubw xmm0, xmm1, [ecx]
        #   vphsubw ymm0, ymm1, ymm2
        #   vphsubw ymm0, ymm1, [ecx]
        def vphsubw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPHSUBW,operand1,operand2,operand3,**kwargs)
        # Packed Horizontal Subtract Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPHSUBWD]
        # @example
        #   vphsubwd xmm0, xmm1
        #   vphsubwd xmm0, [ebx]
        def vphsubwd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPHSUBWD,operand1,operand2,**kwargs)
        # Insert Byte
        # @return [Ronin::ASM::X86::Instructions::VPINSRB]
        # @example
        #   vpinsrb xmm0, xmm1, ecx, 0x04
        #   vpinsrb xmm0, xmm1, [ecx], 0x04
        def vpinsrb(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPINSRB,operand1,operand2,operand3,operand4,**kwargs)
        # Insert Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPINSRD]
        # @example
        #   vpinsrd xmm0, xmm1, ecx, 0x04
        #   vpinsrd xmm0, xmm1, [ecx], 0x04
        def vpinsrd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPINSRD,operand1,operand2,operand3,operand4,**kwargs)
        # Insert Word
        # @return [Ronin::ASM::X86::Instructions::VPINSRW]
        # @example
        #   vpinsrw xmm0, xmm1, ecx, 0x04
        #   vpinsrw xmm0, xmm1, [ecx], 0x04
        def vpinsrw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPINSRW,operand1,operand2,operand3,operand4,**kwargs)
        # Count the Number of Leading Zero Bits for Packed Doubleword Values
        # @return [Ronin::ASM::X86::Instructions::VPLZCNTD]
        # @example
        #   vplzcntd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vplzcntd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vplzcntd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vplzcntd opmask(xmm0, k1, zero: true), xmm1
        #   vplzcntd opmask(ymm0, k1, zero: true), ymm1
        #   vplzcntd opmask(zmm0, k1, zero: true), zmm1
        #   vplzcntd xmm0, bcst([ebx], {1=>4})
        #   vplzcntd xmm0, xmm1
        #   vplzcntd ymm0, bcst([ebx], {1=>8})
        #   vplzcntd ymm0, ymm1
        #   vplzcntd zmm0, bcst([ebx], {1=>16})
        #   vplzcntd zmm0, zmm1
        def vplzcntd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPLZCNTD,operand1,operand2,**kwargs)
        # Count the Number of Leading Zero Bits for Packed Quadword Values
        # @return [Ronin::ASM::X86::Instructions::VPLZCNTQ]
        # @example
        #   vplzcntq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vplzcntq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vplzcntq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vplzcntq opmask(xmm0, k1, zero: true), xmm1
        #   vplzcntq opmask(ymm0, k1, zero: true), ymm1
        #   vplzcntq opmask(zmm0, k1, zero: true), zmm1
        #   vplzcntq xmm0, bcst([ebx], {1=>2})
        #   vplzcntq xmm0, xmm1
        #   vplzcntq ymm0, bcst([ebx], {1=>4})
        #   vplzcntq ymm0, ymm1
        #   vplzcntq zmm0, bcst([ebx], {1=>8})
        #   vplzcntq zmm0, zmm1
        def vplzcntq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPLZCNTQ,operand1,operand2,**kwargs)
        # Packed Multiply Accumulate Signed Doubleword to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPMACSDD]
        # @example
        #   vpmacsdd xmm0, xmm1, xmm2, xmm3
        #   vpmacsdd xmm0, xmm1, [ecx], xmm3
        def vpmacsdd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSDD,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate Signed High Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPMACSDQH]
        # @example
        #   vpmacsdqh xmm0, xmm1, xmm2, xmm3
        #   vpmacsdqh xmm0, xmm1, [ecx], xmm3
        def vpmacsdqh(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSDQH,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate Signed Low Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPMACSDQL]
        # @example
        #   vpmacsdql xmm0, xmm1, xmm2, xmm3
        #   vpmacsdql xmm0, xmm1, [ecx], xmm3
        def vpmacsdql(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSDQL,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Doubleword to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPMACSSDD]
        # @example
        #   vpmacssdd xmm0, xmm1, xmm2, xmm3
        #   vpmacssdd xmm0, xmm1, [ecx], xmm3
        def vpmacssdd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSSDD,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed High Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPMACSSDQH]
        # @example
        #   vpmacssdqh xmm0, xmm1, xmm2, xmm3
        #   vpmacssdqh xmm0, xmm1, [ecx], xmm3
        def vpmacssdqh(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSSDQH,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Low Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86::Instructions::VPMACSSDQL]
        # @example
        #   vpmacssdql xmm0, xmm1, xmm2, xmm3
        #   vpmacssdql xmm0, xmm1, [ecx], xmm3
        def vpmacssdql(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSSDQL,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPMACSSWD]
        # @example
        #   vpmacsswd xmm0, xmm1, xmm2, xmm3
        #   vpmacsswd xmm0, xmm1, [ecx], xmm3
        def vpmacsswd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSSWD,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Word to Signed Word
        # @return [Ronin::ASM::X86::Instructions::VPMACSSWW]
        # @example
        #   vpmacssww xmm0, xmm1, xmm2, xmm3
        #   vpmacssww xmm0, xmm1, [ecx], xmm3
        def vpmacssww(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSSWW,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPMACSWD]
        # @example
        #   vpmacswd xmm0, xmm1, xmm2, xmm3
        #   vpmacswd xmm0, xmm1, [ecx], xmm3
        def vpmacswd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSWD,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Accumulate Signed Word to Signed Word
        # @return [Ronin::ASM::X86::Instructions::VPMACSWW]
        # @example
        #   vpmacsww xmm0, xmm1, xmm2, xmm3
        #   vpmacsww xmm0, xmm1, [ecx], xmm3
        def vpmacsww(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMACSWW,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Add Accumulate with Saturation Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPMADCSSWD]
        # @example
        #   vpmadcsswd xmm0, xmm1, xmm2, xmm3
        #   vpmadcsswd xmm0, xmm1, [ecx], xmm3
        def vpmadcsswd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMADCSSWD,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply Add Accumulate Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86::Instructions::VPMADCSWD]
        # @example
        #   vpmadcswd xmm0, xmm1, xmm2, xmm3
        #   vpmadcswd xmm0, xmm1, [ecx], xmm3
        def vpmadcswd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPMADCSWD,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Multiply of Unsigned 52-bit Unsigned Integers and Add High 52-bit Products to Quadword Accumulators
        # @return [Ronin::ASM::X86::Instructions::VPMADD52HUQ]
        # @example
        #   vpmadd52huq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmadd52huq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmadd52huq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmadd52huq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmadd52huq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmadd52huq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmadd52huq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmadd52huq xmm0, xmm1, xmm2
        #   vpmadd52huq xmm0, xmm1, [ecx]
        #   vpmadd52huq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmadd52huq ymm0, ymm1, ymm2
        #   vpmadd52huq ymm0, ymm1, [ecx]
        #   vpmadd52huq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmadd52huq zmm0, zmm1, zmm2
        def vpmadd52huq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMADD52HUQ,operand1,operand2,operand3,**kwargs)
        # Packed Multiply of Unsigned 52-bit Integers and Add the Low 52-bit Products to Quadword Accumulators
        # @return [Ronin::ASM::X86::Instructions::VPMADD52LUQ]
        # @example
        #   vpmadd52luq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmadd52luq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmadd52luq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmadd52luq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmadd52luq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmadd52luq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmadd52luq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmadd52luq xmm0, xmm1, xmm2
        #   vpmadd52luq xmm0, xmm1, [ecx]
        #   vpmadd52luq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmadd52luq ymm0, ymm1, ymm2
        #   vpmadd52luq ymm0, ymm1, [ecx]
        #   vpmadd52luq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmadd52luq zmm0, zmm1, zmm2
        def vpmadd52luq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMADD52LUQ,operand1,operand2,operand3,**kwargs)
        # Multiply and Add Packed Signed and Unsigned Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPMADDUBSW]
        # @example
        #   vpmaddubsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaddubsw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmaddubsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaddubsw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmaddubsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaddubsw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmaddubsw xmm0, xmm1, xmm2
        #   vpmaddubsw xmm0, xmm1, [ecx]
        #   vpmaddubsw ymm0, ymm1, ymm2
        #   vpmaddubsw ymm0, ymm1, [ecx]
        #   vpmaddubsw zmm0, zmm1, zmm2
        #   vpmaddubsw zmm0, zmm1, [ecx]
        def vpmaddubsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMADDUBSW,operand1,operand2,operand3,**kwargs)
        # Multiply and Add Packed Signed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPMADDWD]
        # @example
        #   vpmaddwd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaddwd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmaddwd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaddwd opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmaddwd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaddwd opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmaddwd xmm0, xmm1, xmm2
        #   vpmaddwd xmm0, xmm1, [ecx]
        #   vpmaddwd ymm0, ymm1, ymm2
        #   vpmaddwd ymm0, ymm1, [ecx]
        #   vpmaddwd zmm0, zmm1, zmm2
        #   vpmaddwd zmm0, zmm1, [ecx]
        def vpmaddwd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMADDWD,operand1,operand2,operand3,**kwargs)
        # Conditional Move Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMASKMOVD]
        # @example
        #   vpmaskmovd xmm0, xmm1, [ecx]
        #   vpmaskmovd ymm0, ymm1, [ecx]
        #   vpmaskmovd [eax], xmm1, xmm2
        #   vpmaskmovd [eax], ymm1, ymm2
        def vpmaskmovd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMASKMOVD,operand1,operand2,operand3,**kwargs)
        # Conditional Move Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMASKMOVQ]
        # @example
        #   vpmaskmovq xmm0, xmm1, [ecx]
        #   vpmaskmovq ymm0, ymm1, [ecx]
        #   vpmaskmovq [eax], xmm1, xmm2
        #   vpmaskmovq [eax], ymm1, ymm2
        def vpmaskmovq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMASKMOVQ,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXSB]
        # @example
        #   vpmaxsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmaxsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmaxsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmaxsb xmm0, xmm1, xmm2
        #   vpmaxsb xmm0, xmm1, [ecx]
        #   vpmaxsb ymm0, ymm1, ymm2
        #   vpmaxsb ymm0, ymm1, [ecx]
        #   vpmaxsb zmm0, zmm1, zmm2
        #   vpmaxsb zmm0, zmm1, [ecx]
        def vpmaxsb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXSB,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXSD]
        # @example
        #   vpmaxsd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpmaxsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpmaxsd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpmaxsd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpmaxsd xmm0, xmm1, xmm2
        #   vpmaxsd xmm0, xmm1, [ecx]
        #   vpmaxsd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpmaxsd ymm0, ymm1, ymm2
        #   vpmaxsd ymm0, ymm1, [ecx]
        #   vpmaxsd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpmaxsd zmm0, zmm1, zmm2
        def vpmaxsd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXSD,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Signed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXSQ]
        # @example
        #   vpmaxsq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmaxsq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmaxsq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmaxsq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmaxsq xmm0, xmm1, xmm2
        #   vpmaxsq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmaxsq ymm0, ymm1, ymm2
        #   vpmaxsq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmaxsq zmm0, zmm1, zmm2
        def vpmaxsq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXSQ,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXSW]
        # @example
        #   vpmaxsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmaxsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmaxsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmaxsw xmm0, xmm1, xmm2
        #   vpmaxsw xmm0, xmm1, [ecx]
        #   vpmaxsw ymm0, ymm1, ymm2
        #   vpmaxsw ymm0, ymm1, [ecx]
        #   vpmaxsw zmm0, zmm1, zmm2
        #   vpmaxsw zmm0, zmm1, [ecx]
        def vpmaxsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXSW,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXUB]
        # @example
        #   vpmaxub opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxub opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmaxub opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxub opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmaxub opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxub opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmaxub xmm0, xmm1, xmm2
        #   vpmaxub xmm0, xmm1, [ecx]
        #   vpmaxub ymm0, ymm1, ymm2
        #   vpmaxub ymm0, ymm1, [ecx]
        #   vpmaxub zmm0, zmm1, zmm2
        #   vpmaxub zmm0, zmm1, [ecx]
        def vpmaxub(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXUB,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXUD]
        # @example
        #   vpmaxud opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpmaxud opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxud opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpmaxud opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxud opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpmaxud opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxud xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpmaxud xmm0, xmm1, xmm2
        #   vpmaxud xmm0, xmm1, [ecx]
        #   vpmaxud ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpmaxud ymm0, ymm1, ymm2
        #   vpmaxud ymm0, ymm1, [ecx]
        #   vpmaxud zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpmaxud zmm0, zmm1, zmm2
        def vpmaxud(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXUD,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXUQ]
        # @example
        #   vpmaxuq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmaxuq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxuq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmaxuq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxuq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmaxuq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxuq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmaxuq xmm0, xmm1, xmm2
        #   vpmaxuq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmaxuq ymm0, ymm1, ymm2
        #   vpmaxuq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmaxuq zmm0, zmm1, zmm2
        def vpmaxuq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXUQ,operand1,operand2,operand3,**kwargs)
        # Maximum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPMAXUW]
        # @example
        #   vpmaxuw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxuw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmaxuw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxuw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmaxuw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxuw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmaxuw xmm0, xmm1, xmm2
        #   vpmaxuw xmm0, xmm1, [ecx]
        #   vpmaxuw ymm0, ymm1, ymm2
        #   vpmaxuw ymm0, ymm1, [ecx]
        #   vpmaxuw zmm0, zmm1, zmm2
        #   vpmaxuw zmm0, zmm1, [ecx]
        def vpmaxuw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMAXUW,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINSB]
        # @example
        #   vpminsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpminsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpminsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpminsb xmm0, xmm1, xmm2
        #   vpminsb xmm0, xmm1, [ecx]
        #   vpminsb ymm0, ymm1, ymm2
        #   vpminsb ymm0, ymm1, [ecx]
        #   vpminsb zmm0, zmm1, zmm2
        #   vpminsb zmm0, zmm1, [ecx]
        def vpminsb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINSB,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINSD]
        # @example
        #   vpminsd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpminsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpminsd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpminsd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpminsd xmm0, xmm1, xmm2
        #   vpminsd xmm0, xmm1, [ecx]
        #   vpminsd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpminsd ymm0, ymm1, ymm2
        #   vpminsd ymm0, ymm1, [ecx]
        #   vpminsd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpminsd zmm0, zmm1, zmm2
        def vpminsd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINSD,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Signed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINSQ]
        # @example
        #   vpminsq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpminsq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpminsq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpminsq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpminsq xmm0, xmm1, xmm2
        #   vpminsq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpminsq ymm0, ymm1, ymm2
        #   vpminsq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpminsq zmm0, zmm1, zmm2
        def vpminsq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINSQ,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINSW]
        # @example
        #   vpminsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpminsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpminsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpminsw xmm0, xmm1, xmm2
        #   vpminsw xmm0, xmm1, [ecx]
        #   vpminsw ymm0, ymm1, ymm2
        #   vpminsw ymm0, ymm1, [ecx]
        #   vpminsw zmm0, zmm1, zmm2
        #   vpminsw zmm0, zmm1, [ecx]
        def vpminsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINSW,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINUB]
        # @example
        #   vpminub opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminub opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpminub opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminub opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpminub opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminub opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpminub xmm0, xmm1, xmm2
        #   vpminub xmm0, xmm1, [ecx]
        #   vpminub ymm0, ymm1, ymm2
        #   vpminub ymm0, ymm1, [ecx]
        #   vpminub zmm0, zmm1, zmm2
        #   vpminub zmm0, zmm1, [ecx]
        def vpminub(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINUB,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINUD]
        # @example
        #   vpminud opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpminud opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminud opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpminud opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminud opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpminud opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminud xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpminud xmm0, xmm1, xmm2
        #   vpminud xmm0, xmm1, [ecx]
        #   vpminud ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpminud ymm0, ymm1, ymm2
        #   vpminud ymm0, ymm1, [ecx]
        #   vpminud zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpminud zmm0, zmm1, zmm2
        def vpminud(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINUD,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINUQ]
        # @example
        #   vpminuq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpminuq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminuq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpminuq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminuq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpminuq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminuq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpminuq xmm0, xmm1, xmm2
        #   vpminuq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpminuq ymm0, ymm1, ymm2
        #   vpminuq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpminuq zmm0, zmm1, zmm2
        def vpminuq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINUQ,operand1,operand2,operand3,**kwargs)
        # Minimum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPMINUW]
        # @example
        #   vpminuw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminuw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpminuw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminuw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpminuw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminuw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpminuw xmm0, xmm1, xmm2
        #   vpminuw xmm0, xmm1, [ecx]
        #   vpminuw ymm0, ymm1, ymm2
        #   vpminuw ymm0, ymm1, [ecx]
        #   vpminuw zmm0, zmm1, zmm2
        #   vpminuw zmm0, zmm1, [ecx]
        def vpminuw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMINUW,operand1,operand2,operand3,**kwargs)
        # Move Signs of Packed Byte Integers to Mask Register
        # @return [Ronin::ASM::X86::Instructions::VPMOVB2M]
        # @example
        #   vpmovb2m k1, xmm1
        #   vpmovb2m k1, ymm1
        #   vpmovb2m k1, zmm1
        def vpmovb2m(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVB2M,operand1,operand2,**kwargs)
        # Move Signs of Packed Doubleword Integers to Mask Register
        # @return [Ronin::ASM::X86::Instructions::VPMOVD2M]
        # @example
        #   vpmovd2m k1, xmm1
        #   vpmovd2m k1, ymm1
        #   vpmovd2m k1, zmm1
        def vpmovd2m(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVD2M,operand1,operand2,**kwargs)
        # Down Convert Packed Doubleword Values to Byte Values with Truncation
        # @return [Ronin::ASM::X86::Instructions::VPMOVDB]
        # @example
        #   vpmovdb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovdb opmask([eax], k1), xmm1
        #   vpmovdb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovdb opmask([eax], k1), ymm1
        #   vpmovdb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovdb opmask([eax], k1), zmm1
        #   vpmovdb xmm0, xmm1
        #   vpmovdb xmm0, ymm1
        #   vpmovdb xmm0, zmm1
        #   vpmovdb [eax], xmm1
        #   vpmovdb [eax], ymm1
        #   vpmovdb [eax], zmm1
        def vpmovdb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVDB,operand1,operand2,**kwargs)
        # Down Convert Packed Doubleword Values to Word Values with Truncation
        # @return [Ronin::ASM::X86::Instructions::VPMOVDW]
        # @example
        #   vpmovdw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovdw opmask([eax], k1), xmm1
        #   vpmovdw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovdw opmask([eax], k1), ymm1
        #   vpmovdw opmask(ymm0, k1, zero: true), zmm1
        #   vpmovdw opmask([eax], k1), zmm1
        #   vpmovdw xmm0, xmm1
        #   vpmovdw xmm0, ymm1
        #   vpmovdw ymm0, zmm1
        #   vpmovdw [eax], xmm1
        #   vpmovdw [eax], ymm1
        #   vpmovdw [eax], zmm1
        def vpmovdw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVDW,operand1,operand2,**kwargs)
        # Expand Bits of Mask Register to Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPMOVM2B]
        # @example
        #   vpmovm2b xmm0, k2
        #   vpmovm2b ymm0, k2
        #   vpmovm2b zmm0, k2
        def vpmovm2b(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVM2B,operand1,operand2,**kwargs)
        # Expand Bits of Mask Register to Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMOVM2D]
        # @example
        #   vpmovm2d xmm0, k2
        #   vpmovm2d ymm0, k2
        #   vpmovm2d zmm0, k2
        def vpmovm2d(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVM2D,operand1,operand2,**kwargs)
        # Expand Bits of Mask Register to Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMOVM2Q]
        # @example
        #   vpmovm2q xmm0, k2
        #   vpmovm2q ymm0, k2
        #   vpmovm2q zmm0, k2
        def vpmovm2q(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVM2Q,operand1,operand2,**kwargs)
        # Expand Bits of Mask Register to Packed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPMOVM2W]
        # @example
        #   vpmovm2w xmm0, k2
        #   vpmovm2w ymm0, k2
        #   vpmovm2w zmm0, k2
        def vpmovm2w(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVM2W,operand1,operand2,**kwargs)
        # Move Byte Mask
        # @return [Ronin::ASM::X86::Instructions::VPMOVMSKB]
        # @example
        #   vpmovmskb eax, xmm1
        #   vpmovmskb eax, ymm1
        def vpmovmskb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVMSKB,operand1,operand2,**kwargs)
        # Move Signs of Packed Quadword Integers to Mask Register
        # @return [Ronin::ASM::X86::Instructions::VPMOVQ2M]
        # @example
        #   vpmovq2m k1, xmm1
        #   vpmovq2m k1, ymm1
        #   vpmovq2m k1, zmm1
        def vpmovq2m(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVQ2M,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Byte Values with Truncation
        # @return [Ronin::ASM::X86::Instructions::VPMOVQB]
        # @example
        #   vpmovqb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovqb opmask([eax], k1), xmm1
        #   vpmovqb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovqb opmask([eax], k1), ymm1
        #   vpmovqb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovqb opmask([eax], k1), zmm1
        #   vpmovqb xmm0, xmm1
        #   vpmovqb xmm0, ymm1
        #   vpmovqb xmm0, zmm1
        #   vpmovqb [eax], xmm1
        #   vpmovqb [eax], ymm1
        #   vpmovqb [eax], zmm1
        def vpmovqb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVQB,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Doubleword Values with Truncation
        # @return [Ronin::ASM::X86::Instructions::VPMOVQD]
        # @example
        #   vpmovqd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovqd opmask([eax], k1), xmm1
        #   vpmovqd opmask(xmm0, k1, zero: true), ymm1
        #   vpmovqd opmask([eax], k1), ymm1
        #   vpmovqd opmask(ymm0, k1, zero: true), zmm1
        #   vpmovqd opmask([eax], k1), zmm1
        #   vpmovqd xmm0, xmm1
        #   vpmovqd xmm0, ymm1
        #   vpmovqd ymm0, zmm1
        #   vpmovqd [eax], xmm1
        #   vpmovqd [eax], ymm1
        #   vpmovqd [eax], zmm1
        def vpmovqd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVQD,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Word Values with Truncation
        # @return [Ronin::ASM::X86::Instructions::VPMOVQW]
        # @example
        #   vpmovqw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovqw opmask([eax], k1), xmm1
        #   vpmovqw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovqw opmask([eax], k1), ymm1
        #   vpmovqw opmask(xmm0, k1, zero: true), zmm1
        #   vpmovqw opmask([eax], k1), zmm1
        #   vpmovqw xmm0, xmm1
        #   vpmovqw xmm0, ymm1
        #   vpmovqw xmm0, zmm1
        #   vpmovqw [eax], xmm1
        #   vpmovqw [eax], ymm1
        #   vpmovqw [eax], zmm1
        def vpmovqw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVQW,operand1,operand2,**kwargs)
        # Down Convert Packed Doubleword Values to Byte Values with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVSDB]
        # @example
        #   vpmovsdb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsdb opmask([eax], k1), xmm1
        #   vpmovsdb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsdb opmask([eax], k1), ymm1
        #   vpmovsdb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovsdb opmask([eax], k1), zmm1
        #   vpmovsdb xmm0, xmm1
        #   vpmovsdb xmm0, ymm1
        #   vpmovsdb xmm0, zmm1
        #   vpmovsdb [eax], xmm1
        #   vpmovsdb [eax], ymm1
        #   vpmovsdb [eax], zmm1
        def vpmovsdb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSDB,operand1,operand2,**kwargs)
        # Down Convert Packed Doubleword Values to Word Values with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVSDW]
        # @example
        #   vpmovsdw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsdw opmask([eax], k1), xmm1
        #   vpmovsdw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsdw opmask([eax], k1), ymm1
        #   vpmovsdw opmask(ymm0, k1, zero: true), zmm1
        #   vpmovsdw opmask([eax], k1), zmm1
        #   vpmovsdw xmm0, xmm1
        #   vpmovsdw xmm0, ymm1
        #   vpmovsdw ymm0, zmm1
        #   vpmovsdw [eax], xmm1
        #   vpmovsdw [eax], ymm1
        #   vpmovsdw [eax], zmm1
        def vpmovsdw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSDW,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Byte Values with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVSQB]
        # @example
        #   vpmovsqb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsqb opmask([eax], k1), xmm1
        #   vpmovsqb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsqb opmask([eax], k1), ymm1
        #   vpmovsqb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovsqb opmask([eax], k1), zmm1
        #   vpmovsqb xmm0, xmm1
        #   vpmovsqb xmm0, ymm1
        #   vpmovsqb xmm0, zmm1
        #   vpmovsqb [eax], xmm1
        #   vpmovsqb [eax], ymm1
        #   vpmovsqb [eax], zmm1
        def vpmovsqb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSQB,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Doubleword Values with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVSQD]
        # @example
        #   vpmovsqd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsqd opmask([eax], k1), xmm1
        #   vpmovsqd opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsqd opmask([eax], k1), ymm1
        #   vpmovsqd opmask(ymm0, k1, zero: true), zmm1
        #   vpmovsqd opmask([eax], k1), zmm1
        #   vpmovsqd xmm0, xmm1
        #   vpmovsqd xmm0, ymm1
        #   vpmovsqd ymm0, zmm1
        #   vpmovsqd [eax], xmm1
        #   vpmovsqd [eax], ymm1
        #   vpmovsqd [eax], zmm1
        def vpmovsqd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSQD,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Word Values with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVSQW]
        # @example
        #   vpmovsqw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsqw opmask([eax], k1), xmm1
        #   vpmovsqw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsqw opmask([eax], k1), ymm1
        #   vpmovsqw opmask(xmm0, k1, zero: true), zmm1
        #   vpmovsqw opmask([eax], k1), zmm1
        #   vpmovsqw xmm0, xmm1
        #   vpmovsqw xmm0, ymm1
        #   vpmovsqw xmm0, zmm1
        #   vpmovsqw [eax], xmm1
        #   vpmovsqw [eax], ymm1
        #   vpmovsqw [eax], zmm1
        def vpmovsqw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSQW,operand1,operand2,**kwargs)
        # Down Convert Packed Word Values to Byte Values with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVSWB]
        # @example
        #   vpmovswb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovswb opmask([eax], k1), xmm1
        #   vpmovswb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovswb opmask([eax], k1), ymm1
        #   vpmovswb opmask(ymm0, k1, zero: true), zmm1
        #   vpmovswb opmask([eax], k1), zmm1
        #   vpmovswb xmm0, xmm1
        #   vpmovswb xmm0, ymm1
        #   vpmovswb ymm0, zmm1
        #   vpmovswb [eax], xmm1
        #   vpmovswb [eax], ymm1
        #   vpmovswb [eax], zmm1
        def vpmovswb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSWB,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVSXBD]
        # @example
        #   vpmovsxbd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxbd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxbd opmask(zmm0, k1, zero: true), xmm1
        #   vpmovsxbd opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovsxbd opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovsxbd opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovsxbd xmm0, xmm1
        #   vpmovsxbd xmm0, [ebx]
        #   vpmovsxbd ymm0, xmm1
        #   vpmovsxbd ymm0, [ebx]
        #   vpmovsxbd zmm0, xmm1
        #   vpmovsxbd zmm0, [ebx]
        def vpmovsxbd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSXBD,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVSXBQ]
        # @example
        #   vpmovsxbq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxbq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxbq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovsxbq opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovsxbq opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovsxbq opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovsxbq xmm0, xmm1
        #   vpmovsxbq xmm0, [ebx]
        #   vpmovsxbq ymm0, xmm1
        #   vpmovsxbq ymm0, [ebx]
        #   vpmovsxbq zmm0, xmm1
        #   vpmovsxbq zmm0, [ebx]
        def vpmovsxbq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSXBQ,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Word Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVSXBW]
        # @example
        #   vpmovsxbw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxbw opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxbw opmask(zmm0, k1, zero: true), ymm1
        #   vpmovsxbw opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovsxbw opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovsxbw opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovsxbw xmm0, xmm1
        #   vpmovsxbw xmm0, [ebx]
        #   vpmovsxbw ymm0, xmm1
        #   vpmovsxbw ymm0, [ebx]
        #   vpmovsxbw zmm0, ymm1
        #   vpmovsxbw zmm0, [ebx]
        def vpmovsxbw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSXBW,operand1,operand2,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVSXDQ]
        # @example
        #   vpmovsxdq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxdq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxdq opmask(zmm0, k1, zero: true), ymm1
        #   vpmovsxdq opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovsxdq opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovsxdq opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovsxdq xmm0, xmm1
        #   vpmovsxdq xmm0, [ebx]
        #   vpmovsxdq ymm0, xmm1
        #   vpmovsxdq ymm0, [ebx]
        #   vpmovsxdq zmm0, ymm1
        #   vpmovsxdq zmm0, [ebx]
        def vpmovsxdq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSXDQ,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVSXWD]
        # @example
        #   vpmovsxwd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxwd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxwd opmask(zmm0, k1, zero: true), ymm1
        #   vpmovsxwd opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovsxwd opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovsxwd opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovsxwd xmm0, xmm1
        #   vpmovsxwd xmm0, [ebx]
        #   vpmovsxwd ymm0, xmm1
        #   vpmovsxwd ymm0, [ebx]
        #   vpmovsxwd zmm0, ymm1
        #   vpmovsxwd zmm0, [ebx]
        def vpmovsxwd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSXWD,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVSXWQ]
        # @example
        #   vpmovsxwq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxwq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxwq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovsxwq opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovsxwq opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovsxwq opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovsxwq xmm0, xmm1
        #   vpmovsxwq xmm0, [ebx]
        #   vpmovsxwq ymm0, xmm1
        #   vpmovsxwq ymm0, [ebx]
        #   vpmovsxwq zmm0, xmm1
        #   vpmovsxwq zmm0, [ebx]
        def vpmovsxwq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVSXWQ,operand1,operand2,**kwargs)
        # Down Convert Packed Doubleword Values to Byte Values with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVUSDB]
        # @example
        #   vpmovusdb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusdb opmask([eax], k1), xmm1
        #   vpmovusdb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusdb opmask([eax], k1), ymm1
        #   vpmovusdb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovusdb opmask([eax], k1), zmm1
        #   vpmovusdb xmm0, xmm1
        #   vpmovusdb xmm0, ymm1
        #   vpmovusdb xmm0, zmm1
        #   vpmovusdb [eax], xmm1
        #   vpmovusdb [eax], ymm1
        #   vpmovusdb [eax], zmm1
        def vpmovusdb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVUSDB,operand1,operand2,**kwargs)
        # Down Convert Packed Doubleword Values to Word Values with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVUSDW]
        # @example
        #   vpmovusdw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusdw opmask([eax], k1), xmm1
        #   vpmovusdw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusdw opmask([eax], k1), ymm1
        #   vpmovusdw opmask(ymm0, k1, zero: true), zmm1
        #   vpmovusdw opmask([eax], k1), zmm1
        #   vpmovusdw xmm0, xmm1
        #   vpmovusdw xmm0, ymm1
        #   vpmovusdw ymm0, zmm1
        #   vpmovusdw [eax], xmm1
        #   vpmovusdw [eax], ymm1
        #   vpmovusdw [eax], zmm1
        def vpmovusdw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVUSDW,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Byte Values with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVUSQB]
        # @example
        #   vpmovusqb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusqb opmask([eax], k1), xmm1
        #   vpmovusqb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusqb opmask([eax], k1), ymm1
        #   vpmovusqb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovusqb opmask([eax], k1), zmm1
        #   vpmovusqb xmm0, xmm1
        #   vpmovusqb xmm0, ymm1
        #   vpmovusqb xmm0, zmm1
        #   vpmovusqb [eax], xmm1
        #   vpmovusqb [eax], ymm1
        #   vpmovusqb [eax], zmm1
        def vpmovusqb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVUSQB,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Doubleword Values with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVUSQD]
        # @example
        #   vpmovusqd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusqd opmask([eax], k1), xmm1
        #   vpmovusqd opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusqd opmask([eax], k1), ymm1
        #   vpmovusqd opmask(ymm0, k1, zero: true), zmm1
        #   vpmovusqd opmask([eax], k1), zmm1
        #   vpmovusqd xmm0, xmm1
        #   vpmovusqd xmm0, ymm1
        #   vpmovusqd ymm0, zmm1
        #   vpmovusqd [eax], xmm1
        #   vpmovusqd [eax], ymm1
        #   vpmovusqd [eax], zmm1
        def vpmovusqd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVUSQD,operand1,operand2,**kwargs)
        # Down Convert Packed Quadword Values to Word Values with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVUSQW]
        # @example
        #   vpmovusqw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusqw opmask([eax], k1), xmm1
        #   vpmovusqw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusqw opmask([eax], k1), ymm1
        #   vpmovusqw opmask(xmm0, k1, zero: true), zmm1
        #   vpmovusqw opmask([eax], k1), zmm1
        #   vpmovusqw xmm0, xmm1
        #   vpmovusqw xmm0, ymm1
        #   vpmovusqw xmm0, zmm1
        #   vpmovusqw [eax], xmm1
        #   vpmovusqw [eax], ymm1
        #   vpmovusqw [eax], zmm1
        def vpmovusqw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVUSQW,operand1,operand2,**kwargs)
        # Down Convert Packed Word Values to Byte Values with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPMOVUSWB]
        # @example
        #   vpmovuswb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovuswb opmask([eax], k1), xmm1
        #   vpmovuswb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovuswb opmask([eax], k1), ymm1
        #   vpmovuswb opmask(ymm0, k1, zero: true), zmm1
        #   vpmovuswb opmask([eax], k1), zmm1
        #   vpmovuswb xmm0, xmm1
        #   vpmovuswb xmm0, ymm1
        #   vpmovuswb ymm0, zmm1
        #   vpmovuswb [eax], xmm1
        #   vpmovuswb [eax], ymm1
        #   vpmovuswb [eax], zmm1
        def vpmovuswb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVUSWB,operand1,operand2,**kwargs)
        # Move Signs of Packed Word Integers to Mask Register
        # @return [Ronin::ASM::X86::Instructions::VPMOVW2M]
        # @example
        #   vpmovw2m k1, xmm1
        #   vpmovw2m k1, ymm1
        #   vpmovw2m k1, zmm1
        def vpmovw2m(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVW2M,operand1,operand2,**kwargs)
        # Down Convert Packed Word Values to Byte Values with Truncation
        # @return [Ronin::ASM::X86::Instructions::VPMOVWB]
        # @example
        #   vpmovwb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovwb opmask([eax], k1), xmm1
        #   vpmovwb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovwb opmask([eax], k1), ymm1
        #   vpmovwb opmask(ymm0, k1, zero: true), zmm1
        #   vpmovwb opmask([eax], k1), zmm1
        #   vpmovwb xmm0, xmm1
        #   vpmovwb xmm0, ymm1
        #   vpmovwb ymm0, zmm1
        #   vpmovwb [eax], xmm1
        #   vpmovwb [eax], ymm1
        #   vpmovwb [eax], zmm1
        def vpmovwb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVWB,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVZXBD]
        # @example
        #   vpmovzxbd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxbd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxbd opmask(zmm0, k1, zero: true), xmm1
        #   vpmovzxbd opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovzxbd opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovzxbd opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovzxbd xmm0, xmm1
        #   vpmovzxbd xmm0, [ebx]
        #   vpmovzxbd ymm0, xmm1
        #   vpmovzxbd ymm0, [ebx]
        #   vpmovzxbd zmm0, xmm1
        #   vpmovzxbd zmm0, [ebx]
        def vpmovzxbd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVZXBD,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVZXBQ]
        # @example
        #   vpmovzxbq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxbq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxbq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovzxbq opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovzxbq opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovzxbq opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovzxbq xmm0, xmm1
        #   vpmovzxbq xmm0, [ebx]
        #   vpmovzxbq ymm0, xmm1
        #   vpmovzxbq ymm0, [ebx]
        #   vpmovzxbq zmm0, xmm1
        #   vpmovzxbq zmm0, [ebx]
        def vpmovzxbq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVZXBQ,operand1,operand2,**kwargs)
        # Move Packed Byte Integers to Word Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVZXBW]
        # @example
        #   vpmovzxbw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxbw opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxbw opmask(zmm0, k1, zero: true), ymm1
        #   vpmovzxbw opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovzxbw opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovzxbw opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovzxbw xmm0, xmm1
        #   vpmovzxbw xmm0, [ebx]
        #   vpmovzxbw ymm0, xmm1
        #   vpmovzxbw ymm0, [ebx]
        #   vpmovzxbw zmm0, ymm1
        #   vpmovzxbw zmm0, [ebx]
        def vpmovzxbw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVZXBW,operand1,operand2,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVZXDQ]
        # @example
        #   vpmovzxdq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxdq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxdq opmask(zmm0, k1, zero: true), ymm1
        #   vpmovzxdq opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovzxdq opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovzxdq opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovzxdq xmm0, xmm1
        #   vpmovzxdq xmm0, [ebx]
        #   vpmovzxdq ymm0, xmm1
        #   vpmovzxdq ymm0, [ebx]
        #   vpmovzxdq zmm0, ymm1
        #   vpmovzxdq zmm0, [ebx]
        def vpmovzxdq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVZXDQ,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVZXWD]
        # @example
        #   vpmovzxwd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxwd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxwd opmask(zmm0, k1, zero: true), ymm1
        #   vpmovzxwd opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovzxwd opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovzxwd opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovzxwd xmm0, xmm1
        #   vpmovzxwd xmm0, [ebx]
        #   vpmovzxwd ymm0, xmm1
        #   vpmovzxwd ymm0, [ebx]
        #   vpmovzxwd zmm0, ymm1
        #   vpmovzxwd zmm0, [ebx]
        def vpmovzxwd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVZXWD,operand1,operand2,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86::Instructions::VPMOVZXWQ]
        # @example
        #   vpmovzxwq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxwq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxwq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovzxwq opmask(xmm0, k1, zero: true), [ebx]
        #   vpmovzxwq opmask(ymm0, k1, zero: true), [ebx]
        #   vpmovzxwq opmask(zmm0, k1, zero: true), [ebx]
        #   vpmovzxwq xmm0, xmm1
        #   vpmovzxwq xmm0, [ebx]
        #   vpmovzxwq ymm0, xmm1
        #   vpmovzxwq ymm0, [ebx]
        #   vpmovzxwq zmm0, xmm1
        #   vpmovzxwq zmm0, [ebx]
        def vpmovzxwq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPMOVZXWQ,operand1,operand2,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Quadword Result
        # @return [Ronin::ASM::X86::Instructions::VPMULDQ]
        # @example
        #   vpmuldq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmuldq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmuldq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmuldq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmuldq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmuldq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmuldq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmuldq xmm0, xmm1, xmm2
        #   vpmuldq xmm0, xmm1, [ecx]
        #   vpmuldq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmuldq ymm0, ymm1, ymm2
        #   vpmuldq ymm0, ymm1, [ecx]
        #   vpmuldq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmuldq zmm0, zmm1, zmm2
        def vpmuldq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULDQ,operand1,operand2,operand3,**kwargs)
        # Packed Multiply Signed Word Integers and Store High Result with Round and Scale
        # @return [Ronin::ASM::X86::Instructions::VPMULHRSW]
        # @example
        #   vpmulhrsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulhrsw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmulhrsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulhrsw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmulhrsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulhrsw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmulhrsw xmm0, xmm1, xmm2
        #   vpmulhrsw xmm0, xmm1, [ecx]
        #   vpmulhrsw ymm0, ymm1, ymm2
        #   vpmulhrsw ymm0, ymm1, [ecx]
        #   vpmulhrsw zmm0, zmm1, zmm2
        #   vpmulhrsw zmm0, zmm1, [ecx]
        def vpmulhrsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULHRSW,operand1,operand2,operand3,**kwargs)
        # Multiply Packed Unsigned Word Integers and Store High Result
        # @return [Ronin::ASM::X86::Instructions::VPMULHUW]
        # @example
        #   vpmulhuw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulhuw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmulhuw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulhuw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmulhuw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulhuw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmulhuw xmm0, xmm1, xmm2
        #   vpmulhuw xmm0, xmm1, [ecx]
        #   vpmulhuw ymm0, ymm1, ymm2
        #   vpmulhuw ymm0, ymm1, [ecx]
        #   vpmulhuw zmm0, zmm1, zmm2
        #   vpmulhuw zmm0, zmm1, [ecx]
        def vpmulhuw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULHUW,operand1,operand2,operand3,**kwargs)
        # Multiply Packed Signed Word Integers and Store High Result
        # @return [Ronin::ASM::X86::Instructions::VPMULHW]
        # @example
        #   vpmulhw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulhw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmulhw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulhw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmulhw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulhw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmulhw xmm0, xmm1, xmm2
        #   vpmulhw xmm0, xmm1, [ecx]
        #   vpmulhw ymm0, ymm1, ymm2
        #   vpmulhw ymm0, ymm1, [ecx]
        #   vpmulhw zmm0, zmm1, zmm2
        #   vpmulhw zmm0, zmm1, [ecx]
        def vpmulhw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULHW,operand1,operand2,operand3,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Low Result
        # @return [Ronin::ASM::X86::Instructions::VPMULLD]
        # @example
        #   vpmulld opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpmulld opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulld opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpmulld opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulld opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpmulld opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulld xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpmulld xmm0, xmm1, xmm2
        #   vpmulld xmm0, xmm1, [ecx]
        #   vpmulld ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpmulld ymm0, ymm1, ymm2
        #   vpmulld ymm0, ymm1, [ecx]
        #   vpmulld zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpmulld zmm0, zmm1, zmm2
        def vpmulld(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULLD,operand1,operand2,operand3,**kwargs)
        # Multiply Packed Signed Quadword Integers and Store Low Result
        # @return [Ronin::ASM::X86::Instructions::VPMULLQ]
        # @example
        #   vpmullq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmullq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmullq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmullq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmullq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmullq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmullq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmullq xmm0, xmm1, xmm2
        #   vpmullq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmullq ymm0, ymm1, ymm2
        #   vpmullq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmullq zmm0, zmm1, zmm2
        def vpmullq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULLQ,operand1,operand2,operand3,**kwargs)
        # Multiply Packed Signed Word Integers and Store Low Result
        # @return [Ronin::ASM::X86::Instructions::VPMULLW]
        # @example
        #   vpmullw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmullw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpmullw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmullw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpmullw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmullw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpmullw xmm0, xmm1, xmm2
        #   vpmullw xmm0, xmm1, [ecx]
        #   vpmullw ymm0, ymm1, ymm2
        #   vpmullw ymm0, ymm1, [ecx]
        #   vpmullw zmm0, zmm1, zmm2
        #   vpmullw zmm0, zmm1, [ecx]
        def vpmullw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULLW,operand1,operand2,operand3,**kwargs)
        # Select Packed Unaligned Bytes from Quadword Sources
        # @return [Ronin::ASM::X86::Instructions::VPMULTISHIFTQB]
        # @example
        #   vpmultishiftqb opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmultishiftqb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmultishiftqb opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmultishiftqb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmultishiftqb opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmultishiftqb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmultishiftqb xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmultishiftqb xmm0, xmm1, xmm2
        #   vpmultishiftqb ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmultishiftqb ymm0, ymm1, ymm2
        #   vpmultishiftqb zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmultishiftqb zmm0, zmm1, zmm2
        def vpmultishiftqb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULTISHIFTQB,operand1,operand2,operand3,**kwargs)
        # Multiply Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPMULUDQ]
        # @example
        #   vpmuludq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpmuludq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmuludq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpmuludq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmuludq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpmuludq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmuludq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpmuludq xmm0, xmm1, xmm2
        #   vpmuludq xmm0, xmm1, [ecx]
        #   vpmuludq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpmuludq ymm0, ymm1, ymm2
        #   vpmuludq ymm0, ymm1, [ecx]
        #   vpmuludq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpmuludq zmm0, zmm1, zmm2
        def vpmuludq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPMULUDQ,operand1,operand2,operand3,**kwargs)
        # Packed Population Count for Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPOPCNTB]
        # @example
        #   vpopcntb opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntb opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntb opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntb opmask(xmm0, k1, zero: true), [ebx]
        #   vpopcntb opmask(ymm0, k1, zero: true), [ebx]
        #   vpopcntb opmask(zmm0, k1, zero: true), [ebx]
        #   vpopcntb xmm0, xmm1
        #   vpopcntb xmm0, [ebx]
        #   vpopcntb ymm0, ymm1
        #   vpopcntb ymm0, [ebx]
        #   vpopcntb zmm0, zmm1
        #   vpopcntb zmm0, [ebx]
        def vpopcntb(operand1,operand2,**kwargs) = add_instruction(Instructions::VPOPCNTB,operand1,operand2,**kwargs)
        # Packed Population Count for Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPOPCNTD]
        # @example
        #   vpopcntd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vpopcntd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vpopcntd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vpopcntd opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntd opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntd opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntd xmm0, bcst([ebx], {1=>4})
        #   vpopcntd xmm0, xmm1
        #   vpopcntd ymm0, bcst([ebx], {1=>8})
        #   vpopcntd ymm0, ymm1
        #   vpopcntd zmm0, bcst([ebx], {1=>16})
        #   vpopcntd zmm0, zmm1
        def vpopcntd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPOPCNTD,operand1,operand2,**kwargs)
        # Packed Population Count for Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPOPCNTQ]
        # @example
        #   vpopcntq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vpopcntq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vpopcntq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vpopcntq opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntq opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntq opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntq xmm0, bcst([ebx], {1=>2})
        #   vpopcntq xmm0, xmm1
        #   vpopcntq ymm0, bcst([ebx], {1=>4})
        #   vpopcntq ymm0, ymm1
        #   vpopcntq zmm0, bcst([ebx], {1=>8})
        #   vpopcntq zmm0, zmm1
        def vpopcntq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPOPCNTQ,operand1,operand2,**kwargs)
        # Packed Population Count for Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPOPCNTW]
        # @example
        #   vpopcntw opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntw opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntw opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntw opmask(xmm0, k1, zero: true), [ebx]
        #   vpopcntw opmask(ymm0, k1, zero: true), [ebx]
        #   vpopcntw opmask(zmm0, k1, zero: true), [ebx]
        #   vpopcntw xmm0, xmm1
        #   vpopcntw xmm0, [ebx]
        #   vpopcntw ymm0, ymm1
        #   vpopcntw ymm0, [ebx]
        #   vpopcntw zmm0, zmm1
        #   vpopcntw zmm0, [ebx]
        def vpopcntw(operand1,operand2,**kwargs) = add_instruction(Instructions::VPOPCNTW,operand1,operand2,**kwargs)
        # Packed Bitwise Logical OR
        # @return [Ronin::ASM::X86::Instructions::VPOR]
        # @example
        #   vpor xmm0, xmm1, xmm2
        #   vpor xmm0, xmm1, [ecx]
        #   vpor ymm0, ymm1, ymm2
        #   vpor ymm0, ymm1, [ecx]
        def vpor(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPOR,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical OR of Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPORD]
        # @example
        #   vpord opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpord opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpord opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpord opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpord opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpord opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpord xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpord xmm0, xmm1, xmm2
        #   vpord ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpord ymm0, ymm1, ymm2
        #   vpord zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpord zmm0, zmm1, zmm2
        def vpord(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPORD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical OR of Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPORQ]
        # @example
        #   vporq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vporq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vporq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vporq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vporq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vporq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vporq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vporq xmm0, xmm1, xmm2
        #   vporq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vporq ymm0, ymm1, ymm2
        #   vporq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vporq zmm0, zmm1, zmm2
        def vporq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPORQ,operand1,operand2,operand3,**kwargs)
        # Packed Permute Bytes
        # @return [Ronin::ASM::X86::Instructions::VPPERM]
        # @example
        #   vpperm xmm0, xmm1, xmm2, xmm3
        #   vpperm xmm0, xmm1, xmm2, [edx]
        #   vpperm xmm0, xmm1, [ecx], xmm3
        def vpperm(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPPERM,operand1,operand2,operand3,operand4,**kwargs)
        # Rotate Packed Doubleword Left
        # @return [Ronin::ASM::X86::Instructions::VPROLD]
        # @example
        #   vprold opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vprold opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vprold opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vprold opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprold opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprold opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprold xmm0, bcst([ebx], {1=>4}), 0x03
        #   vprold xmm0, xmm1, 0x03
        #   vprold ymm0, bcst([ebx], {1=>8}), 0x03
        #   vprold ymm0, ymm1, 0x03
        #   vprold zmm0, bcst([ebx], {1=>16}), 0x03
        #   vprold zmm0, zmm1, 0x03
        def vprold(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROLD,operand1,operand2,operand3,**kwargs)
        # Rotate Packed Quadword Left
        # @return [Ronin::ASM::X86::Instructions::VPROLQ]
        # @example
        #   vprolq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vprolq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vprolq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vprolq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprolq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprolq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprolq xmm0, bcst([ebx], {1=>2}), 0x03
        #   vprolq xmm0, xmm1, 0x03
        #   vprolq ymm0, bcst([ebx], {1=>4}), 0x03
        #   vprolq ymm0, ymm1, 0x03
        #   vprolq zmm0, bcst([ebx], {1=>8}), 0x03
        #   vprolq zmm0, zmm1, 0x03
        def vprolq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROLQ,operand1,operand2,operand3,**kwargs)
        # Variable Rotate Packed Doubleword Left
        # @return [Ronin::ASM::X86::Instructions::VPROLVD]
        # @example
        #   vprolvd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vprolvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprolvd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vprolvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprolvd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vprolvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprolvd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vprolvd xmm0, xmm1, xmm2
        #   vprolvd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vprolvd ymm0, ymm1, ymm2
        #   vprolvd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vprolvd zmm0, zmm1, zmm2
        def vprolvd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROLVD,operand1,operand2,operand3,**kwargs)
        # Variable Rotate Packed Quadword Left
        # @return [Ronin::ASM::X86::Instructions::VPROLVQ]
        # @example
        #   vprolvq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vprolvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprolvq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vprolvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprolvq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vprolvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprolvq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vprolvq xmm0, xmm1, xmm2
        #   vprolvq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vprolvq ymm0, ymm1, ymm2
        #   vprolvq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vprolvq zmm0, zmm1, zmm2
        def vprolvq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROLVQ,operand1,operand2,operand3,**kwargs)
        # Rotate Packed Doubleword Right
        # @return [Ronin::ASM::X86::Instructions::VPRORD]
        # @example
        #   vprord opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vprord opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vprord opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vprord opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprord opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprord opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprord xmm0, bcst([ebx], {1=>4}), 0x03
        #   vprord xmm0, xmm1, 0x03
        #   vprord ymm0, bcst([ebx], {1=>8}), 0x03
        #   vprord ymm0, ymm1, 0x03
        #   vprord zmm0, bcst([ebx], {1=>16}), 0x03
        #   vprord zmm0, zmm1, 0x03
        def vprord(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPRORD,operand1,operand2,operand3,**kwargs)
        # Rotate Packed Quadword Right
        # @return [Ronin::ASM::X86::Instructions::VPRORQ]
        # @example
        #   vprorq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vprorq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vprorq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vprorq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprorq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprorq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprorq xmm0, bcst([ebx], {1=>2}), 0x03
        #   vprorq xmm0, xmm1, 0x03
        #   vprorq ymm0, bcst([ebx], {1=>4}), 0x03
        #   vprorq ymm0, ymm1, 0x03
        #   vprorq zmm0, bcst([ebx], {1=>8}), 0x03
        #   vprorq zmm0, zmm1, 0x03
        def vprorq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPRORQ,operand1,operand2,operand3,**kwargs)
        # Variable Rotate Packed Doubleword Right
        # @return [Ronin::ASM::X86::Instructions::VPRORVD]
        # @example
        #   vprorvd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vprorvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprorvd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vprorvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprorvd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vprorvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprorvd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vprorvd xmm0, xmm1, xmm2
        #   vprorvd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vprorvd ymm0, ymm1, ymm2
        #   vprorvd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vprorvd zmm0, zmm1, zmm2
        def vprorvd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPRORVD,operand1,operand2,operand3,**kwargs)
        # Variable Rotate Packed Quadword Right
        # @return [Ronin::ASM::X86::Instructions::VPRORVQ]
        # @example
        #   vprorvq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vprorvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprorvq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vprorvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprorvq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vprorvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprorvq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vprorvq xmm0, xmm1, xmm2
        #   vprorvq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vprorvq ymm0, ymm1, ymm2
        #   vprorvq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vprorvq zmm0, zmm1, zmm2
        def vprorvq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPRORVQ,operand1,operand2,operand3,**kwargs)
        # Packed Rotate Bytes
        # @return [Ronin::ASM::X86::Instructions::VPROTB]
        # @example
        #   vprotb xmm0, xmm1, 0x03
        #   vprotb xmm0, xmm1, xmm2
        #   vprotb xmm0, xmm1, [ecx]
        #   vprotb xmm0, [ebx], 0x03
        #   vprotb xmm0, [ebx], xmm2
        def vprotb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROTB,operand1,operand2,operand3,**kwargs)
        # Packed Rotate Doublewords
        # @return [Ronin::ASM::X86::Instructions::VPROTD]
        # @example
        #   vprotd xmm0, xmm1, 0x03
        #   vprotd xmm0, xmm1, xmm2
        #   vprotd xmm0, xmm1, [ecx]
        #   vprotd xmm0, [ebx], 0x03
        #   vprotd xmm0, [ebx], xmm2
        def vprotd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROTD,operand1,operand2,operand3,**kwargs)
        # Packed Rotate Quadwords
        # @return [Ronin::ASM::X86::Instructions::VPROTQ]
        # @example
        #   vprotq xmm0, xmm1, 0x03
        #   vprotq xmm0, xmm1, xmm2
        #   vprotq xmm0, xmm1, [ecx]
        #   vprotq xmm0, [ebx], 0x03
        #   vprotq xmm0, [ebx], xmm2
        def vprotq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROTQ,operand1,operand2,operand3,**kwargs)
        # Packed Rotate Words
        # @return [Ronin::ASM::X86::Instructions::VPROTW]
        # @example
        #   vprotw xmm0, xmm1, 0x03
        #   vprotw xmm0, xmm1, xmm2
        #   vprotw xmm0, xmm1, [ecx]
        #   vprotw xmm0, [ebx], 0x03
        #   vprotw xmm0, [ebx], xmm2
        def vprotw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPROTW,operand1,operand2,operand3,**kwargs)
        # Compute Sum of Absolute Differences
        # @return [Ronin::ASM::X86::Instructions::VPSADBW]
        # @example
        #   vpsadbw xmm0, xmm1, xmm2
        #   vpsadbw xmm0, xmm1, [ecx]
        #   vpsadbw ymm0, ymm1, ymm2
        #   vpsadbw ymm0, ymm1, [ecx]
        #   vpsadbw zmm0, zmm1, zmm2
        #   vpsadbw zmm0, zmm1, [ecx]
        def vpsadbw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSADBW,operand1,operand2,operand3,**kwargs)
        # Scatter Packed Doubleword Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VPSCATTERDD]
        # @example
        #   vpscatterdd opmask([eax+xmm0*4], k1), xmm1
        #   vpscatterdd opmask([eax+ymm0*4], k1), ymm1
        #   vpscatterdd opmask([eax+zmm0*4], k1), zmm1
        def vpscatterdd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPSCATTERDD,operand1,operand2,**kwargs)
        # Scatter Packed Quadword Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VPSCATTERDQ]
        # @example
        #   vpscatterdq opmask([eax+xmm0*4], k1), xmm1
        #   vpscatterdq opmask([eax+xmm0*4], k1), ymm1
        #   vpscatterdq opmask([eax+ymm0*4], k1), zmm1
        def vpscatterdq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPSCATTERDQ,operand1,operand2,**kwargs)
        # Scatter Packed Doubleword Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VPSCATTERQD]
        # @example
        #   vpscatterqd opmask([eax+xmm0*8], k1), xmm1
        #   vpscatterqd opmask([eax+ymm0*8], k1), xmm1
        #   vpscatterqd opmask([eax+zmm0*8], k1), ymm1
        def vpscatterqd(operand1,operand2,**kwargs) = add_instruction(Instructions::VPSCATTERQD,operand1,operand2,**kwargs)
        # Scatter Packed Quadword Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VPSCATTERQQ]
        # @example
        #   vpscatterqq opmask([eax+xmm0*8], k1), xmm1
        #   vpscatterqq opmask([eax+ymm0*8], k1), ymm1
        #   vpscatterqq opmask([eax+zmm0*8], k1), zmm1
        def vpscatterqq(operand1,operand2,**kwargs) = add_instruction(Instructions::VPSCATTERQQ,operand1,operand2,**kwargs)
        # Packed Shift Arithmetic Bytes
        # @return [Ronin::ASM::X86::Instructions::VPSHAB]
        # @example
        #   vpshab xmm0, xmm1, xmm2
        #   vpshab xmm0, xmm1, [ecx]
        #   vpshab xmm0, [ebx], xmm2
        def vpshab(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHAB,operand1,operand2,operand3,**kwargs)
        # Packed Shift Arithmetic Doublewords
        # @return [Ronin::ASM::X86::Instructions::VPSHAD]
        # @example
        #   vpshad xmm0, xmm1, xmm2
        #   vpshad xmm0, xmm1, [ecx]
        #   vpshad xmm0, [ebx], xmm2
        def vpshad(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHAD,operand1,operand2,operand3,**kwargs)
        # Packed Shift Arithmetic Quadwords
        # @return [Ronin::ASM::X86::Instructions::VPSHAQ]
        # @example
        #   vpshaq xmm0, xmm1, xmm2
        #   vpshaq xmm0, xmm1, [ecx]
        #   vpshaq xmm0, [ebx], xmm2
        def vpshaq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHAQ,operand1,operand2,operand3,**kwargs)
        # Packed Shift Arithmetic Words
        # @return [Ronin::ASM::X86::Instructions::VPSHAW]
        # @example
        #   vpshaw xmm0, xmm1, xmm2
        #   vpshaw xmm0, xmm1, [ecx]
        #   vpshaw xmm0, [ebx], xmm2
        def vpshaw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHAW,operand1,operand2,operand3,**kwargs)
        # Packed Shift Logical Bytes
        # @return [Ronin::ASM::X86::Instructions::VPSHLB]
        # @example
        #   vpshlb xmm0, xmm1, xmm2
        #   vpshlb xmm0, xmm1, [ecx]
        #   vpshlb xmm0, [ebx], xmm2
        def vpshlb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHLB,operand1,operand2,operand3,**kwargs)
        # Packed Shift Logical Doublewords
        # @return [Ronin::ASM::X86::Instructions::VPSHLD]
        # @example
        #   vpshld xmm0, xmm1, xmm2
        #   vpshld xmm0, xmm1, [ecx]
        #   vpshld xmm0, [ebx], xmm2
        def vpshld(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHLD,operand1,operand2,operand3,**kwargs)
        # Concatenate and Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHLDD]
        # @example
        #   vpshldd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpshldd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshldd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpshldd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshldd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpshldd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshldd xmm0, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpshldd xmm0, xmm1, xmm2, 0x04
        #   vpshldd ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpshldd ymm0, ymm1, ymm2, 0x04
        #   vpshldd zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpshldd zmm0, zmm1, zmm2, 0x04
        def vpshldd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPSHLDD,operand1,operand2,operand3,operand4,**kwargs)
        # Concatenate and Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHLDQ]
        # @example
        #   vpshldq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpshldq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshldq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpshldq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshldq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpshldq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshldq xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpshldq xmm0, xmm1, xmm2, 0x04
        #   vpshldq ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpshldq ymm0, ymm1, ymm2, 0x04
        #   vpshldq zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpshldq zmm0, zmm1, zmm2, 0x04
        def vpshldq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPSHLDQ,operand1,operand2,operand3,operand4,**kwargs)
        # Concatenate and Variable Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHLDVD]
        # @example
        #   vpshldvd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpshldvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshldvd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpshldvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshldvd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpshldvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshldvd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpshldvd xmm0, xmm1, xmm2
        #   vpshldvd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpshldvd ymm0, ymm1, ymm2
        #   vpshldvd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpshldvd zmm0, zmm1, zmm2
        def vpshldvd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHLDVD,operand1,operand2,operand3,**kwargs)
        # Concatenate and Variable Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHLDVQ]
        # @example
        #   vpshldvq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpshldvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshldvq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpshldvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshldvq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpshldvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshldvq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpshldvq xmm0, xmm1, xmm2
        #   vpshldvq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpshldvq ymm0, ymm1, ymm2
        #   vpshldvq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpshldvq zmm0, zmm1, zmm2
        def vpshldvq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHLDVQ,operand1,operand2,operand3,**kwargs)
        # Concatenate and Variable Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHLDVW]
        # @example
        #   vpshldvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshldvw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpshldvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshldvw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpshldvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshldvw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpshldvw xmm0, xmm1, xmm2
        #   vpshldvw xmm0, xmm1, [ecx]
        #   vpshldvw ymm0, ymm1, ymm2
        #   vpshldvw ymm0, ymm1, [ecx]
        #   vpshldvw zmm0, zmm1, zmm2
        #   vpshldvw zmm0, zmm1, [ecx]
        def vpshldvw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHLDVW,operand1,operand2,operand3,**kwargs)
        # Concatenate and Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHLDW]
        # @example
        #   vpshldw opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshldw opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vpshldw opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshldw opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vpshldw opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshldw opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vpshldw xmm0, xmm1, xmm2, 0x04
        #   vpshldw xmm0, xmm1, [ecx], 0x04
        #   vpshldw ymm0, ymm1, ymm2, 0x04
        #   vpshldw ymm0, ymm1, [ecx], 0x04
        #   vpshldw zmm0, zmm1, zmm2, 0x04
        #   vpshldw zmm0, zmm1, [ecx], 0x04
        def vpshldw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPSHLDW,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Shift Logical Quadwords
        # @return [Ronin::ASM::X86::Instructions::VPSHLQ]
        # @example
        #   vpshlq xmm0, xmm1, xmm2
        #   vpshlq xmm0, xmm1, [ecx]
        #   vpshlq xmm0, [ebx], xmm2
        def vpshlq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHLQ,operand1,operand2,operand3,**kwargs)
        # Packed Shift Logical Words
        # @return [Ronin::ASM::X86::Instructions::VPSHLW]
        # @example
        #   vpshlw xmm0, xmm1, xmm2
        #   vpshlw xmm0, xmm1, [ecx]
        #   vpshlw xmm0, [ebx], xmm2
        def vpshlw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHLW,operand1,operand2,operand3,**kwargs)
        # Concatenate and Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHRDD]
        # @example
        #   vpshrdd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpshrdd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshrdd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpshrdd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshrdd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpshrdd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshrdd xmm0, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpshrdd xmm0, xmm1, xmm2, 0x04
        #   vpshrdd ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpshrdd ymm0, ymm1, ymm2, 0x04
        #   vpshrdd zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpshrdd zmm0, zmm1, zmm2, 0x04
        def vpshrdd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPSHRDD,operand1,operand2,operand3,operand4,**kwargs)
        # Concatenate and Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHRDQ]
        # @example
        #   vpshrdq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpshrdq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshrdq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpshrdq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshrdq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpshrdq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshrdq xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpshrdq xmm0, xmm1, xmm2, 0x04
        #   vpshrdq ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpshrdq ymm0, ymm1, ymm2, 0x04
        #   vpshrdq zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpshrdq zmm0, zmm1, zmm2, 0x04
        def vpshrdq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPSHRDQ,operand1,operand2,operand3,operand4,**kwargs)
        # Concatenate and Variable Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHRDVD]
        # @example
        #   vpshrdvd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpshrdvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshrdvd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpshrdvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshrdvd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpshrdvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshrdvd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpshrdvd xmm0, xmm1, xmm2
        #   vpshrdvd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpshrdvd ymm0, ymm1, ymm2
        #   vpshrdvd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpshrdvd zmm0, zmm1, zmm2
        def vpshrdvd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHRDVD,operand1,operand2,operand3,**kwargs)
        # Concatenate and Variable Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHRDVQ]
        # @example
        #   vpshrdvq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpshrdvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshrdvq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpshrdvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshrdvq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpshrdvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshrdvq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpshrdvq xmm0, xmm1, xmm2
        #   vpshrdvq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpshrdvq ymm0, ymm1, ymm2
        #   vpshrdvq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpshrdvq zmm0, zmm1, zmm2
        def vpshrdvq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHRDVQ,operand1,operand2,operand3,**kwargs)
        # Concatenate and Variable Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHRDVW]
        # @example
        #   vpshrdvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshrdvw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpshrdvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshrdvw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpshrdvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshrdvw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpshrdvw xmm0, xmm1, xmm2
        #   vpshrdvw xmm0, xmm1, [ecx]
        #   vpshrdvw ymm0, ymm1, ymm2
        #   vpshrdvw ymm0, ymm1, [ecx]
        #   vpshrdvw zmm0, zmm1, zmm2
        #   vpshrdvw zmm0, zmm1, [ecx]
        def vpshrdvw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHRDVW,operand1,operand2,operand3,**kwargs)
        # Concatenate and Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSHRDW]
        # @example
        #   vpshrdw opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshrdw opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vpshrdw opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshrdw opmask(ymm0, k1, zero: true), ymm1, [ecx], 0x04
        #   vpshrdw opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshrdw opmask(zmm0, k1, zero: true), zmm1, [ecx], 0x04
        #   vpshrdw xmm0, xmm1, xmm2, 0x04
        #   vpshrdw xmm0, xmm1, [ecx], 0x04
        #   vpshrdw ymm0, ymm1, ymm2, 0x04
        #   vpshrdw ymm0, ymm1, [ecx], 0x04
        #   vpshrdw zmm0, zmm1, zmm2, 0x04
        #   vpshrdw zmm0, zmm1, [ecx], 0x04
        def vpshrdw(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPSHRDW,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Shuffle Bytes
        # @return [Ronin::ASM::X86::Instructions::VPSHUFB]
        # @example
        #   vpshufb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshufb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpshufb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshufb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpshufb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshufb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpshufb xmm0, xmm1, xmm2
        #   vpshufb xmm0, xmm1, [ecx]
        #   vpshufb ymm0, ymm1, ymm2
        #   vpshufb ymm0, ymm1, [ecx]
        #   vpshufb zmm0, zmm1, zmm2
        #   vpshufb zmm0, zmm1, [ecx]
        def vpshufb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHUFB,operand1,operand2,operand3,**kwargs)
        # Shuffle Bits From Quadword Elements Using Byte Indexes Into Mask
        # @return [Ronin::ASM::X86::Instructions::VPSHUFBITQMB]
        # @example
        #   vpshufbitqmb opmask(k1, k2), xmm1, xmm2
        #   vpshufbitqmb k1, xmm1, xmm2
        #   vpshufbitqmb opmask(k1, k2), xmm1, [ecx]
        #   vpshufbitqmb k1, xmm1, [ecx]
        #   vpshufbitqmb opmask(k1, k2), ymm1, ymm2
        #   vpshufbitqmb k1, ymm1, ymm2
        #   vpshufbitqmb opmask(k1, k2), ymm1, [ecx]
        #   vpshufbitqmb k1, ymm1, [ecx]
        #   vpshufbitqmb opmask(k1, k2), zmm1, zmm2
        #   vpshufbitqmb k1, zmm1, zmm2
        #   vpshufbitqmb opmask(k1, k2), zmm1, [ecx]
        #   vpshufbitqmb k1, zmm1, [ecx]
        def vpshufbitqmb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHUFBITQMB,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed Doublewords
        # @return [Ronin::ASM::X86::Instructions::VPSHUFD]
        # @example
        #   vpshufd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpshufd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpshufd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vpshufd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpshufd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpshufd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpshufd xmm0, bcst([ebx], {1=>4}), 0x03
        #   vpshufd xmm0, xmm1, 0x03
        #   vpshufd xmm0, [ebx], 0x03
        #   vpshufd ymm0, bcst([ebx], {1=>8}), 0x03
        #   vpshufd ymm0, ymm1, 0x03
        #   vpshufd ymm0, [ebx], 0x03
        #   vpshufd zmm0, bcst([ebx], {1=>16}), 0x03
        #   vpshufd zmm0, zmm1, 0x03
        def vpshufd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHUFD,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed High Words
        # @return [Ronin::ASM::X86::Instructions::VPSHUFHW]
        # @example
        #   vpshufhw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpshufhw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpshufhw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpshufhw opmask(xmm0, k1, zero: true), [ebx], 0x03
        #   vpshufhw opmask(ymm0, k1, zero: true), [ebx], 0x03
        #   vpshufhw opmask(zmm0, k1, zero: true), [ebx], 0x03
        #   vpshufhw xmm0, xmm1, 0x03
        #   vpshufhw xmm0, [ebx], 0x03
        #   vpshufhw ymm0, ymm1, 0x03
        #   vpshufhw ymm0, [ebx], 0x03
        #   vpshufhw zmm0, zmm1, 0x03
        #   vpshufhw zmm0, [ebx], 0x03
        def vpshufhw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHUFHW,operand1,operand2,operand3,**kwargs)
        # Shuffle Packed Low Words
        # @return [Ronin::ASM::X86::Instructions::VPSHUFLW]
        # @example
        #   vpshuflw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpshuflw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpshuflw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpshuflw opmask(xmm0, k1, zero: true), [ebx], 0x03
        #   vpshuflw opmask(ymm0, k1, zero: true), [ebx], 0x03
        #   vpshuflw opmask(zmm0, k1, zero: true), [ebx], 0x03
        #   vpshuflw xmm0, xmm1, 0x03
        #   vpshuflw xmm0, [ebx], 0x03
        #   vpshuflw ymm0, ymm1, 0x03
        #   vpshuflw ymm0, [ebx], 0x03
        #   vpshuflw zmm0, zmm1, 0x03
        #   vpshuflw zmm0, [ebx], 0x03
        def vpshuflw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSHUFLW,operand1,operand2,operand3,**kwargs)
        # Packed Sign of Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPSIGNB]
        # @example
        #   vpsignb xmm0, xmm1, xmm2
        #   vpsignb xmm0, xmm1, [ecx]
        #   vpsignb ymm0, ymm1, ymm2
        #   vpsignb ymm0, ymm1, [ecx]
        def vpsignb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSIGNB,operand1,operand2,operand3,**kwargs)
        # Packed Sign of Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPSIGND]
        # @example
        #   vpsignd xmm0, xmm1, xmm2
        #   vpsignd xmm0, xmm1, [ecx]
        #   vpsignd ymm0, ymm1, ymm2
        #   vpsignd ymm0, ymm1, [ecx]
        def vpsignd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSIGND,operand1,operand2,operand3,**kwargs)
        # Packed Sign of Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPSIGNW]
        # @example
        #   vpsignw xmm0, xmm1, xmm2
        #   vpsignw xmm0, xmm1, [ecx]
        #   vpsignw ymm0, ymm1, ymm2
        #   vpsignw ymm0, ymm1, [ecx]
        def vpsignw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSIGNW,operand1,operand2,operand3,**kwargs)
        # Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSLLD]
        # @example
        #   vpslld opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpslld opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpslld opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vpslld opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpslld opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpslld opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpslld opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpslld opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpslld opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpslld opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpslld opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpslld opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpslld xmm0, bcst([ebx], {1=>4}), 0x03
        #   vpslld xmm0, xmm1, 0x03
        #   vpslld xmm0, xmm1, xmm2
        #   vpslld xmm0, xmm1, [ecx]
        #   vpslld ymm0, bcst([ebx], {1=>8}), 0x03
        #   vpslld ymm0, ymm1, 0x03
        #   vpslld ymm0, ymm1, xmm2
        #   vpslld ymm0, ymm1, [ecx]
        #   vpslld zmm0, bcst([ebx], {1=>16}), 0x03
        #   vpslld zmm0, zmm1, 0x03
        #   vpslld zmm0, zmm1, xmm2
        #   vpslld zmm0, zmm1, [ecx]
        def vpslld(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSLLD,operand1,operand2,operand3,**kwargs)
        # Shift Packed Double Quadword Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSLLDQ]
        # @example
        #   vpslldq xmm0, xmm1, 0x03
        #   vpslldq xmm0, [ebx], 0x03
        #   vpslldq ymm0, ymm1, 0x03
        #   vpslldq ymm0, [ebx], 0x03
        #   vpslldq zmm0, zmm1, 0x03
        #   vpslldq zmm0, [ebx], 0x03
        def vpslldq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSLLDQ,operand1,operand2,operand3,**kwargs)
        # Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSLLQ]
        # @example
        #   vpsllq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vpsllq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpsllq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpsllq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsllq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllq opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsllq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsllq opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsllq opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsllq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsllq opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsllq opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsllq xmm0, bcst([ebx], {1=>2}), 0x03
        #   vpsllq xmm0, xmm1, 0x03
        #   vpsllq xmm0, xmm1, xmm2
        #   vpsllq xmm0, xmm1, [ecx]
        #   vpsllq ymm0, bcst([ebx], {1=>4}), 0x03
        #   vpsllq ymm0, ymm1, 0x03
        #   vpsllq ymm0, ymm1, xmm2
        #   vpsllq ymm0, ymm1, [ecx]
        #   vpsllq zmm0, bcst([ebx], {1=>8}), 0x03
        #   vpsllq zmm0, zmm1, 0x03
        #   vpsllq zmm0, zmm1, xmm2
        #   vpsllq zmm0, zmm1, [ecx]
        def vpsllq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSLLQ,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSLLVD]
        # @example
        #   vpsllvd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpsllvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllvd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpsllvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsllvd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpsllvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsllvd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpsllvd xmm0, xmm1, xmm2
        #   vpsllvd xmm0, xmm1, [ecx]
        #   vpsllvd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpsllvd ymm0, ymm1, ymm2
        #   vpsllvd ymm0, ymm1, [ecx]
        #   vpsllvd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpsllvd zmm0, zmm1, zmm2
        def vpsllvd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSLLVD,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSLLVQ]
        # @example
        #   vpsllvq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpsllvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllvq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpsllvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsllvq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpsllvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsllvq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpsllvq xmm0, xmm1, xmm2
        #   vpsllvq xmm0, xmm1, [ecx]
        #   vpsllvq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpsllvq ymm0, ymm1, ymm2
        #   vpsllvq ymm0, ymm1, [ecx]
        #   vpsllvq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpsllvq zmm0, zmm1, zmm2
        def vpsllvq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSLLVQ,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSLLVW]
        # @example
        #   vpsllvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllvw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsllvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsllvw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsllvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsllvw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsllvw xmm0, xmm1, xmm2
        #   vpsllvw xmm0, xmm1, [ecx]
        #   vpsllvw ymm0, ymm1, ymm2
        #   vpsllvw ymm0, ymm1, [ecx]
        #   vpsllvw zmm0, zmm1, zmm2
        #   vpsllvw zmm0, zmm1, [ecx]
        def vpsllvw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSLLVW,operand1,operand2,operand3,**kwargs)
        # Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86::Instructions::VPSLLW]
        # @example
        #   vpsllw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsllw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsllw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsllw opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsllw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsllw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsllw opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsllw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsllw opmask(xmm0, k1, zero: true), [ebx], 0x03
        #   vpsllw opmask(ymm0, k1, zero: true), [ebx], 0x03
        #   vpsllw opmask(zmm0, k1, zero: true), [ebx], 0x03
        #   vpsllw xmm0, xmm1, 0x03
        #   vpsllw xmm0, xmm1, xmm2
        #   vpsllw xmm0, xmm1, [ecx]
        #   vpsllw xmm0, [ebx], 0x03
        #   vpsllw ymm0, ymm1, 0x03
        #   vpsllw ymm0, ymm1, xmm2
        #   vpsllw ymm0, ymm1, [ecx]
        #   vpsllw ymm0, [ebx], 0x03
        #   vpsllw zmm0, zmm1, 0x03
        #   vpsllw zmm0, zmm1, xmm2
        #   vpsllw zmm0, zmm1, [ecx]
        #   vpsllw zmm0, [ebx], 0x03
        def vpsllw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSLLW,operand1,operand2,operand3,**kwargs)
        # Shift Packed Doubleword Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::VPSRAD]
        # @example
        #   vpsrad opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpsrad opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpsrad opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vpsrad opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrad opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrad opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsrad opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrad opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrad opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsrad opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrad opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrad opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsrad xmm0, bcst([ebx], {1=>4}), 0x03
        #   vpsrad xmm0, xmm1, 0x03
        #   vpsrad xmm0, xmm1, xmm2
        #   vpsrad xmm0, xmm1, [ecx]
        #   vpsrad ymm0, bcst([ebx], {1=>8}), 0x03
        #   vpsrad ymm0, ymm1, 0x03
        #   vpsrad ymm0, ymm1, xmm2
        #   vpsrad ymm0, ymm1, [ecx]
        #   vpsrad zmm0, bcst([ebx], {1=>16}), 0x03
        #   vpsrad zmm0, zmm1, 0x03
        #   vpsrad zmm0, zmm1, xmm2
        #   vpsrad zmm0, zmm1, [ecx]
        def vpsrad(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRAD,operand1,operand2,operand3,**kwargs)
        # Shift Packed Quadword Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::VPSRAQ]
        # @example
        #   vpsraq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vpsraq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpsraq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpsraq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsraq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsraq opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsraq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsraq opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsraq opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsraq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsraq opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsraq opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsraq xmm0, bcst([ebx], {1=>2}), 0x03
        #   vpsraq xmm0, xmm1, 0x03
        #   vpsraq xmm0, xmm1, xmm2
        #   vpsraq xmm0, xmm1, [ecx]
        #   vpsraq ymm0, bcst([ebx], {1=>4}), 0x03
        #   vpsraq ymm0, ymm1, 0x03
        #   vpsraq ymm0, ymm1, xmm2
        #   vpsraq ymm0, ymm1, [ecx]
        #   vpsraq zmm0, bcst([ebx], {1=>8}), 0x03
        #   vpsraq zmm0, zmm1, 0x03
        #   vpsraq zmm0, zmm1, xmm2
        #   vpsraq zmm0, zmm1, [ecx]
        def vpsraq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRAQ,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Doubleword Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::VPSRAVD]
        # @example
        #   vpsravd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpsravd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsravd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpsravd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsravd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpsravd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsravd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpsravd xmm0, xmm1, xmm2
        #   vpsravd xmm0, xmm1, [ecx]
        #   vpsravd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpsravd ymm0, ymm1, ymm2
        #   vpsravd ymm0, ymm1, [ecx]
        #   vpsravd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpsravd zmm0, zmm1, zmm2
        def vpsravd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRAVD,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Quadword Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::VPSRAVQ]
        # @example
        #   vpsravq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpsravq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsravq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpsravq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsravq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpsravq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsravq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpsravq xmm0, xmm1, xmm2
        #   vpsravq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpsravq ymm0, ymm1, ymm2
        #   vpsravq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpsravq zmm0, zmm1, zmm2
        def vpsravq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRAVQ,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Word Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::VPSRAVW]
        # @example
        #   vpsravw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsravw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsravw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsravw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsravw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsravw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsravw xmm0, xmm1, xmm2
        #   vpsravw xmm0, xmm1, [ecx]
        #   vpsravw ymm0, ymm1, ymm2
        #   vpsravw ymm0, ymm1, [ecx]
        #   vpsravw zmm0, zmm1, zmm2
        #   vpsravw zmm0, zmm1, [ecx]
        def vpsravw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRAVW,operand1,operand2,operand3,**kwargs)
        # Shift Packed Word Data Right Arithmetic
        # @return [Ronin::ASM::X86::Instructions::VPSRAW]
        # @example
        #   vpsraw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsraw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsraw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsraw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsraw opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsraw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsraw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsraw opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsraw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsraw opmask(xmm0, k1, zero: true), [ebx], 0x03
        #   vpsraw opmask(ymm0, k1, zero: true), [ebx], 0x03
        #   vpsraw opmask(zmm0, k1, zero: true), [ebx], 0x03
        #   vpsraw xmm0, xmm1, 0x03
        #   vpsraw xmm0, xmm1, xmm2
        #   vpsraw xmm0, xmm1, [ecx]
        #   vpsraw xmm0, [ebx], 0x03
        #   vpsraw ymm0, ymm1, 0x03
        #   vpsraw ymm0, ymm1, xmm2
        #   vpsraw ymm0, ymm1, [ecx]
        #   vpsraw ymm0, [ebx], 0x03
        #   vpsraw zmm0, zmm1, 0x03
        #   vpsraw zmm0, zmm1, xmm2
        #   vpsraw zmm0, zmm1, [ecx]
        #   vpsraw zmm0, [ebx], 0x03
        def vpsraw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRAW,operand1,operand2,operand3,**kwargs)
        # Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSRLD]
        # @example
        #   vpsrld opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpsrld opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpsrld opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vpsrld opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrld opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrld opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsrld opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrld opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrld opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsrld opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrld opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrld opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsrld xmm0, bcst([ebx], {1=>4}), 0x03
        #   vpsrld xmm0, xmm1, 0x03
        #   vpsrld xmm0, xmm1, xmm2
        #   vpsrld xmm0, xmm1, [ecx]
        #   vpsrld ymm0, bcst([ebx], {1=>8}), 0x03
        #   vpsrld ymm0, ymm1, 0x03
        #   vpsrld ymm0, ymm1, xmm2
        #   vpsrld ymm0, ymm1, [ecx]
        #   vpsrld zmm0, bcst([ebx], {1=>16}), 0x03
        #   vpsrld zmm0, zmm1, 0x03
        #   vpsrld zmm0, zmm1, xmm2
        #   vpsrld zmm0, zmm1, [ecx]
        def vpsrld(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRLD,operand1,operand2,operand3,**kwargs)
        # Shift Packed Double Quadword Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSRLDQ]
        # @example
        #   vpsrldq xmm0, xmm1, 0x03
        #   vpsrldq xmm0, [ebx], 0x03
        #   vpsrldq ymm0, ymm1, 0x03
        #   vpsrldq ymm0, [ebx], 0x03
        #   vpsrldq zmm0, zmm1, 0x03
        #   vpsrldq zmm0, [ebx], 0x03
        def vpsrldq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRLDQ,operand1,operand2,operand3,**kwargs)
        # Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSRLQ]
        # @example
        #   vpsrlq opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vpsrlq opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vpsrlq opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vpsrlq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrlq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlq opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsrlq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrlq opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrlq opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsrlq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrlq opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrlq opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsrlq xmm0, bcst([ebx], {1=>2}), 0x03
        #   vpsrlq xmm0, xmm1, 0x03
        #   vpsrlq xmm0, xmm1, xmm2
        #   vpsrlq xmm0, xmm1, [ecx]
        #   vpsrlq ymm0, bcst([ebx], {1=>4}), 0x03
        #   vpsrlq ymm0, ymm1, 0x03
        #   vpsrlq ymm0, ymm1, xmm2
        #   vpsrlq ymm0, ymm1, [ecx]
        #   vpsrlq zmm0, bcst([ebx], {1=>8}), 0x03
        #   vpsrlq zmm0, zmm1, 0x03
        #   vpsrlq zmm0, zmm1, xmm2
        #   vpsrlq zmm0, zmm1, [ecx]
        def vpsrlq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRLQ,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSRLVD]
        # @example
        #   vpsrlvd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpsrlvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlvd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpsrlvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsrlvd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpsrlvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsrlvd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpsrlvd xmm0, xmm1, xmm2
        #   vpsrlvd xmm0, xmm1, [ecx]
        #   vpsrlvd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpsrlvd ymm0, ymm1, ymm2
        #   vpsrlvd ymm0, ymm1, [ecx]
        #   vpsrlvd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpsrlvd zmm0, zmm1, zmm2
        def vpsrlvd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRLVD,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSRLVQ]
        # @example
        #   vpsrlvq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpsrlvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlvq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpsrlvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsrlvq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpsrlvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsrlvq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpsrlvq xmm0, xmm1, xmm2
        #   vpsrlvq xmm0, xmm1, [ecx]
        #   vpsrlvq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpsrlvq ymm0, ymm1, ymm2
        #   vpsrlvq ymm0, ymm1, [ecx]
        #   vpsrlvq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpsrlvq zmm0, zmm1, zmm2
        def vpsrlvq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRLVQ,operand1,operand2,operand3,**kwargs)
        # Variable Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSRLVW]
        # @example
        #   vpsrlvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlvw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsrlvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsrlvw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsrlvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsrlvw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsrlvw xmm0, xmm1, xmm2
        #   vpsrlvw xmm0, xmm1, [ecx]
        #   vpsrlvw ymm0, ymm1, ymm2
        #   vpsrlvw ymm0, ymm1, [ecx]
        #   vpsrlvw zmm0, zmm1, zmm2
        #   vpsrlvw zmm0, zmm1, [ecx]
        def vpsrlvw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRLVW,operand1,operand2,operand3,**kwargs)
        # Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86::Instructions::VPSRLW]
        # @example
        #   vpsrlw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrlw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsrlw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrlw opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrlw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsrlw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrlw opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrlw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsrlw opmask(xmm0, k1, zero: true), [ebx], 0x03
        #   vpsrlw opmask(ymm0, k1, zero: true), [ebx], 0x03
        #   vpsrlw opmask(zmm0, k1, zero: true), [ebx], 0x03
        #   vpsrlw xmm0, xmm1, 0x03
        #   vpsrlw xmm0, xmm1, xmm2
        #   vpsrlw xmm0, xmm1, [ecx]
        #   vpsrlw xmm0, [ebx], 0x03
        #   vpsrlw ymm0, ymm1, 0x03
        #   vpsrlw ymm0, ymm1, xmm2
        #   vpsrlw ymm0, ymm1, [ecx]
        #   vpsrlw ymm0, [ebx], 0x03
        #   vpsrlw zmm0, zmm1, 0x03
        #   vpsrlw zmm0, zmm1, xmm2
        #   vpsrlw zmm0, zmm1, [ecx]
        #   vpsrlw zmm0, [ebx], 0x03
        def vpsrlw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSRLW,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Byte Integers
        # @return [Ronin::ASM::X86::Instructions::VPSUBB]
        # @example
        #   vpsubb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsubb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsubb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsubb xmm0, xmm1, xmm2
        #   vpsubb xmm0, xmm1, [ecx]
        #   vpsubb ymm0, ymm1, ymm2
        #   vpsubb ymm0, ymm1, [ecx]
        #   vpsubb zmm0, zmm1, zmm2
        #   vpsubb zmm0, zmm1, [ecx]
        def vpsubb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBB,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPSUBD]
        # @example
        #   vpsubd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpsubd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpsubd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpsubd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubd xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpsubd xmm0, xmm1, xmm2
        #   vpsubd xmm0, xmm1, [ecx]
        #   vpsubd ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpsubd ymm0, ymm1, ymm2
        #   vpsubd ymm0, ymm1, [ecx]
        #   vpsubd zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpsubd zmm0, zmm1, zmm2
        def vpsubd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBD,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPSUBQ]
        # @example
        #   vpsubq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpsubq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpsubq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpsubq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpsubq xmm0, xmm1, xmm2
        #   vpsubq xmm0, xmm1, [ecx]
        #   vpsubq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpsubq ymm0, ymm1, ymm2
        #   vpsubq ymm0, ymm1, [ecx]
        #   vpsubq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpsubq zmm0, zmm1, zmm2
        def vpsubq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBQ,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPSUBSB]
        # @example
        #   vpsubsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubsb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsubsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubsb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsubsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubsb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsubsb xmm0, xmm1, xmm2
        #   vpsubsb xmm0, xmm1, [ecx]
        #   vpsubsb ymm0, ymm1, ymm2
        #   vpsubsb ymm0, ymm1, [ecx]
        #   vpsubsb zmm0, zmm1, zmm2
        #   vpsubsb zmm0, zmm1, [ecx]
        def vpsubsb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBSB,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86::Instructions::VPSUBSW]
        # @example
        #   vpsubsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubsw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsubsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubsw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsubsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubsw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsubsw xmm0, xmm1, xmm2
        #   vpsubsw xmm0, xmm1, [ecx]
        #   vpsubsw ymm0, ymm1, ymm2
        #   vpsubsw ymm0, ymm1, [ecx]
        #   vpsubsw zmm0, zmm1, zmm2
        #   vpsubsw zmm0, zmm1, [ecx]
        def vpsubsw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBSW,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPSUBUSB]
        # @example
        #   vpsubusb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubusb opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsubusb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubusb opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsubusb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubusb opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsubusb xmm0, xmm1, xmm2
        #   vpsubusb xmm0, xmm1, [ecx]
        #   vpsubusb ymm0, ymm1, ymm2
        #   vpsubusb ymm0, ymm1, [ecx]
        #   vpsubusb zmm0, zmm1, zmm2
        #   vpsubusb zmm0, zmm1, [ecx]
        def vpsubusb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBUSB,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86::Instructions::VPSUBUSW]
        # @example
        #   vpsubusw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubusw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsubusw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubusw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsubusw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubusw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsubusw xmm0, xmm1, xmm2
        #   vpsubusw xmm0, xmm1, [ecx]
        #   vpsubusw ymm0, ymm1, ymm2
        #   vpsubusw ymm0, ymm1, [ecx]
        #   vpsubusw zmm0, zmm1, zmm2
        #   vpsubusw zmm0, zmm1, [ecx]
        def vpsubusw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBUSW,operand1,operand2,operand3,**kwargs)
        # Subtract Packed Word Integers
        # @return [Ronin::ASM::X86::Instructions::VPSUBW]
        # @example
        #   vpsubw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpsubw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpsubw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpsubw xmm0, xmm1, xmm2
        #   vpsubw xmm0, xmm1, [ecx]
        #   vpsubw ymm0, ymm1, ymm2
        #   vpsubw ymm0, ymm1, [ecx]
        #   vpsubw zmm0, zmm1, zmm2
        #   vpsubw zmm0, zmm1, [ecx]
        def vpsubw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPSUBW,operand1,operand2,operand3,**kwargs)
        # Bitwise Ternary Logical Operation on Doubleword Values
        # @return [Ronin::ASM::X86::Instructions::VPTERNLOGD]
        # @example
        #   vpternlogd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpternlogd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpternlogd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpternlogd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpternlogd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpternlogd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpternlogd xmm0, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vpternlogd xmm0, xmm1, xmm2, 0x04
        #   vpternlogd ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vpternlogd ymm0, ymm1, ymm2, 0x04
        #   vpternlogd zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vpternlogd zmm0, zmm1, zmm2, 0x04
        def vpternlogd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPTERNLOGD,operand1,operand2,operand3,operand4,**kwargs)
        # Bitwise Ternary Logical Operation on Quadword Values
        # @return [Ronin::ASM::X86::Instructions::VPTERNLOGQ]
        # @example
        #   vpternlogq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpternlogq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpternlogq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpternlogq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpternlogq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpternlogq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpternlogq xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vpternlogq xmm0, xmm1, xmm2, 0x04
        #   vpternlogq ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vpternlogq ymm0, ymm1, ymm2, 0x04
        #   vpternlogq zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vpternlogq zmm0, zmm1, zmm2, 0x04
        def vpternlogq(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VPTERNLOGQ,operand1,operand2,operand3,operand4,**kwargs)
        # Packed Logical Compare
        # @return [Ronin::ASM::X86::Instructions::VPTEST]
        # @example
        #   vptest xmm0, xmm1
        #   vptest xmm0, [ebx]
        #   vptest ymm0, ymm1
        #   vptest ymm0, [ebx]
        def vptest(operand1,operand2,**kwargs) = add_instruction(Instructions::VPTEST,operand1,operand2,**kwargs)
        # Logical AND of Packed Byte Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTMB]
        # @example
        #   vptestmb opmask(k1, k2), xmm1, xmm2
        #   vptestmb k1, xmm1, xmm2
        #   vptestmb opmask(k1, k2), xmm1, [ecx]
        #   vptestmb k1, xmm1, [ecx]
        #   vptestmb opmask(k1, k2), ymm1, ymm2
        #   vptestmb k1, ymm1, ymm2
        #   vptestmb opmask(k1, k2), ymm1, [ecx]
        #   vptestmb k1, ymm1, [ecx]
        #   vptestmb opmask(k1, k2), zmm1, zmm2
        #   vptestmb k1, zmm1, zmm2
        #   vptestmb opmask(k1, k2), zmm1, [ecx]
        #   vptestmb k1, zmm1, [ecx]
        def vptestmb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTMB,operand1,operand2,operand3,**kwargs)
        # Logical AND of Packed Doubleword Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTMD]
        # @example
        #   vptestmd opmask(k1, k2), xmm1, bcst([ecx], {1=>4})
        #   vptestmd k1, xmm1, bcst([ecx], {1=>4})
        #   vptestmd opmask(k1, k2), xmm1, xmm2
        #   vptestmd k1, xmm1, xmm2
        #   vptestmd opmask(k1, k2), ymm1, bcst([ecx], {1=>8})
        #   vptestmd k1, ymm1, bcst([ecx], {1=>8})
        #   vptestmd opmask(k1, k2), ymm1, ymm2
        #   vptestmd k1, ymm1, ymm2
        #   vptestmd opmask(k1, k2), zmm1, bcst([ecx], {1=>16})
        #   vptestmd k1, zmm1, bcst([ecx], {1=>16})
        #   vptestmd opmask(k1, k2), zmm1, zmm2
        #   vptestmd k1, zmm1, zmm2
        def vptestmd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTMD,operand1,operand2,operand3,**kwargs)
        # Logical AND of Packed Quadword Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTMQ]
        # @example
        #   vptestmq opmask(k1, k2), xmm1, bcst([ecx], {1=>2})
        #   vptestmq k1, xmm1, bcst([ecx], {1=>2})
        #   vptestmq opmask(k1, k2), xmm1, xmm2
        #   vptestmq k1, xmm1, xmm2
        #   vptestmq opmask(k1, k2), ymm1, bcst([ecx], {1=>4})
        #   vptestmq k1, ymm1, bcst([ecx], {1=>4})
        #   vptestmq opmask(k1, k2), ymm1, ymm2
        #   vptestmq k1, ymm1, ymm2
        #   vptestmq opmask(k1, k2), zmm1, bcst([ecx], {1=>8})
        #   vptestmq k1, zmm1, bcst([ecx], {1=>8})
        #   vptestmq opmask(k1, k2), zmm1, zmm2
        #   vptestmq k1, zmm1, zmm2
        def vptestmq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTMQ,operand1,operand2,operand3,**kwargs)
        # Logical AND of Packed Word Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTMW]
        # @example
        #   vptestmw opmask(k1, k2), xmm1, xmm2
        #   vptestmw k1, xmm1, xmm2
        #   vptestmw opmask(k1, k2), xmm1, [ecx]
        #   vptestmw k1, xmm1, [ecx]
        #   vptestmw opmask(k1, k2), ymm1, ymm2
        #   vptestmw k1, ymm1, ymm2
        #   vptestmw opmask(k1, k2), ymm1, [ecx]
        #   vptestmw k1, ymm1, [ecx]
        #   vptestmw opmask(k1, k2), zmm1, zmm2
        #   vptestmw k1, zmm1, zmm2
        #   vptestmw opmask(k1, k2), zmm1, [ecx]
        #   vptestmw k1, zmm1, [ecx]
        def vptestmw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTMW,operand1,operand2,operand3,**kwargs)
        # Logical NAND of Packed Byte Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTNMB]
        # @example
        #   vptestnmb opmask(k1, k2), xmm1, xmm2
        #   vptestnmb k1, xmm1, xmm2
        #   vptestnmb opmask(k1, k2), xmm1, [ecx]
        #   vptestnmb k1, xmm1, [ecx]
        #   vptestnmb opmask(k1, k2), ymm1, ymm2
        #   vptestnmb k1, ymm1, ymm2
        #   vptestnmb opmask(k1, k2), ymm1, [ecx]
        #   vptestnmb k1, ymm1, [ecx]
        #   vptestnmb opmask(k1, k2), zmm1, zmm2
        #   vptestnmb k1, zmm1, zmm2
        #   vptestnmb opmask(k1, k2), zmm1, [ecx]
        #   vptestnmb k1, zmm1, [ecx]
        def vptestnmb(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTNMB,operand1,operand2,operand3,**kwargs)
        # Logical NAND of Packed Doubleword Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTNMD]
        # @example
        #   vptestnmd opmask(k1, k2), xmm1, bcst([ecx], {1=>4})
        #   vptestnmd k1, xmm1, bcst([ecx], {1=>4})
        #   vptestnmd opmask(k1, k2), xmm1, xmm2
        #   vptestnmd k1, xmm1, xmm2
        #   vptestnmd opmask(k1, k2), ymm1, bcst([ecx], {1=>8})
        #   vptestnmd k1, ymm1, bcst([ecx], {1=>8})
        #   vptestnmd opmask(k1, k2), ymm1, ymm2
        #   vptestnmd k1, ymm1, ymm2
        #   vptestnmd opmask(k1, k2), zmm1, bcst([ecx], {1=>16})
        #   vptestnmd k1, zmm1, bcst([ecx], {1=>16})
        #   vptestnmd opmask(k1, k2), zmm1, zmm2
        #   vptestnmd k1, zmm1, zmm2
        def vptestnmd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTNMD,operand1,operand2,operand3,**kwargs)
        # Logical NAND of Packed Quadword Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTNMQ]
        # @example
        #   vptestnmq opmask(k1, k2), xmm1, bcst([ecx], {1=>2})
        #   vptestnmq k1, xmm1, bcst([ecx], {1=>2})
        #   vptestnmq opmask(k1, k2), xmm1, xmm2
        #   vptestnmq k1, xmm1, xmm2
        #   vptestnmq opmask(k1, k2), ymm1, bcst([ecx], {1=>4})
        #   vptestnmq k1, ymm1, bcst([ecx], {1=>4})
        #   vptestnmq opmask(k1, k2), ymm1, ymm2
        #   vptestnmq k1, ymm1, ymm2
        #   vptestnmq opmask(k1, k2), zmm1, bcst([ecx], {1=>8})
        #   vptestnmq k1, zmm1, bcst([ecx], {1=>8})
        #   vptestnmq opmask(k1, k2), zmm1, zmm2
        #   vptestnmq k1, zmm1, zmm2
        def vptestnmq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTNMQ,operand1,operand2,operand3,**kwargs)
        # Logical NAND of Packed Word Integer Values and Set Mask
        # @return [Ronin::ASM::X86::Instructions::VPTESTNMW]
        # @example
        #   vptestnmw opmask(k1, k2), xmm1, xmm2
        #   vptestnmw k1, xmm1, xmm2
        #   vptestnmw opmask(k1, k2), xmm1, [ecx]
        #   vptestnmw k1, xmm1, [ecx]
        #   vptestnmw opmask(k1, k2), ymm1, ymm2
        #   vptestnmw k1, ymm1, ymm2
        #   vptestnmw opmask(k1, k2), ymm1, [ecx]
        #   vptestnmw k1, ymm1, [ecx]
        #   vptestnmw opmask(k1, k2), zmm1, zmm2
        #   vptestnmw k1, zmm1, zmm2
        #   vptestnmw opmask(k1, k2), zmm1, [ecx]
        #   vptestnmw k1, zmm1, [ecx]
        def vptestnmw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPTESTNMW,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave High-Order Bytes into Words
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKHBW]
        # @example
        #   vpunpckhbw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhbw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpunpckhbw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhbw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpunpckhbw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhbw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpunpckhbw xmm0, xmm1, xmm2
        #   vpunpckhbw xmm0, xmm1, [ecx]
        #   vpunpckhbw ymm0, ymm1, ymm2
        #   vpunpckhbw ymm0, ymm1, [ecx]
        #   vpunpckhbw zmm0, zmm1, zmm2
        #   vpunpckhbw zmm0, zmm1, [ecx]
        def vpunpckhbw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKHBW,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave High-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKHDQ]
        # @example
        #   vpunpckhdq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpunpckhdq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhdq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpunpckhdq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhdq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpunpckhdq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhdq xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpunpckhdq xmm0, xmm1, xmm2
        #   vpunpckhdq xmm0, xmm1, [ecx]
        #   vpunpckhdq ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpunpckhdq ymm0, ymm1, ymm2
        #   vpunpckhdq ymm0, ymm1, [ecx]
        #   vpunpckhdq zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpunpckhdq zmm0, zmm1, zmm2
        def vpunpckhdq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKHDQ,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave High-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKHQDQ]
        # @example
        #   vpunpckhqdq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpunpckhqdq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhqdq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpunpckhqdq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhqdq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpunpckhqdq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhqdq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpunpckhqdq xmm0, xmm1, xmm2
        #   vpunpckhqdq xmm0, xmm1, [ecx]
        #   vpunpckhqdq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpunpckhqdq ymm0, ymm1, ymm2
        #   vpunpckhqdq ymm0, ymm1, [ecx]
        #   vpunpckhqdq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpunpckhqdq zmm0, zmm1, zmm2
        def vpunpckhqdq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKHQDQ,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave High-Order Words into Doublewords
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKHWD]
        # @example
        #   vpunpckhwd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhwd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpunpckhwd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhwd opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpunpckhwd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhwd opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpunpckhwd xmm0, xmm1, xmm2
        #   vpunpckhwd xmm0, xmm1, [ecx]
        #   vpunpckhwd ymm0, ymm1, ymm2
        #   vpunpckhwd ymm0, ymm1, [ecx]
        #   vpunpckhwd zmm0, zmm1, zmm2
        #   vpunpckhwd zmm0, zmm1, [ecx]
        def vpunpckhwd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKHWD,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave Low-Order Bytes into Words
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKLBW]
        # @example
        #   vpunpcklbw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpcklbw opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpunpcklbw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpcklbw opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpunpcklbw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpcklbw opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpunpcklbw xmm0, xmm1, xmm2
        #   vpunpcklbw xmm0, xmm1, [ecx]
        #   vpunpcklbw ymm0, ymm1, ymm2
        #   vpunpcklbw ymm0, ymm1, [ecx]
        #   vpunpcklbw zmm0, zmm1, zmm2
        #   vpunpcklbw zmm0, zmm1, [ecx]
        def vpunpcklbw(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKLBW,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave Low-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKLDQ]
        # @example
        #   vpunpckldq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpunpckldq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckldq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpunpckldq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckldq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpunpckldq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckldq xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpunpckldq xmm0, xmm1, xmm2
        #   vpunpckldq xmm0, xmm1, [ecx]
        #   vpunpckldq ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpunpckldq ymm0, ymm1, ymm2
        #   vpunpckldq ymm0, ymm1, [ecx]
        #   vpunpckldq zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpunpckldq zmm0, zmm1, zmm2
        def vpunpckldq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKLDQ,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave Low-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKLQDQ]
        # @example
        #   vpunpcklqdq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpunpcklqdq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpcklqdq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpunpcklqdq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpcklqdq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpunpcklqdq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpcklqdq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpunpcklqdq xmm0, xmm1, xmm2
        #   vpunpcklqdq xmm0, xmm1, [ecx]
        #   vpunpcklqdq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpunpcklqdq ymm0, ymm1, ymm2
        #   vpunpcklqdq ymm0, ymm1, [ecx]
        #   vpunpcklqdq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpunpcklqdq zmm0, zmm1, zmm2
        def vpunpcklqdq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKLQDQ,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave Low-Order Words into Doublewords
        # @return [Ronin::ASM::X86::Instructions::VPUNPCKLWD]
        # @example
        #   vpunpcklwd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpcklwd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vpunpcklwd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpcklwd opmask(ymm0, k1, zero: true), ymm1, [ecx]
        #   vpunpcklwd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpcklwd opmask(zmm0, k1, zero: true), zmm1, [ecx]
        #   vpunpcklwd xmm0, xmm1, xmm2
        #   vpunpcklwd xmm0, xmm1, [ecx]
        #   vpunpcklwd ymm0, ymm1, ymm2
        #   vpunpcklwd ymm0, ymm1, [ecx]
        #   vpunpcklwd zmm0, zmm1, zmm2
        #   vpunpcklwd zmm0, zmm1, [ecx]
        def vpunpcklwd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPUNPCKLWD,operand1,operand2,operand3,**kwargs)
        # Packed Bitwise Logical Exclusive OR
        # @return [Ronin::ASM::X86::Instructions::VPXOR]
        # @example
        #   vpxor xmm0, xmm1, xmm2
        #   vpxor xmm0, xmm1, [ecx]
        #   vpxor ymm0, ymm1, ymm2
        #   vpxor ymm0, ymm1, [ecx]
        def vpxor(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPXOR,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical Exclusive OR of Packed Doubleword Integers
        # @return [Ronin::ASM::X86::Instructions::VPXORD]
        # @example
        #   vpxord opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vpxord opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpxord opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vpxord opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpxord opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vpxord opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpxord xmm0, xmm1, bcst([ecx], {1=>4})
        #   vpxord xmm0, xmm1, xmm2
        #   vpxord ymm0, ymm1, bcst([ecx], {1=>8})
        #   vpxord ymm0, ymm1, ymm2
        #   vpxord zmm0, zmm1, bcst([ecx], {1=>16})
        #   vpxord zmm0, zmm1, zmm2
        def vpxord(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPXORD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical Exclusive OR of Packed Quadword Integers
        # @return [Ronin::ASM::X86::Instructions::VPXORQ]
        # @example
        #   vpxorq opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vpxorq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpxorq opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vpxorq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpxorq opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vpxorq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpxorq xmm0, xmm1, bcst([ecx], {1=>2})
        #   vpxorq xmm0, xmm1, xmm2
        #   vpxorq ymm0, ymm1, bcst([ecx], {1=>4})
        #   vpxorq ymm0, ymm1, ymm2
        #   vpxorq zmm0, zmm1, bcst([ecx], {1=>8})
        #   vpxorq zmm0, zmm1, zmm2
        def vpxorq(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VPXORQ,operand1,operand2,operand3,**kwargs)
        # Range Restriction Calculation For Packed Pairs of Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRANGEPD]
        # @example
        #   vrangepd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vrangepd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangepd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vrangepd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vrangepd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vrangepd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vrangepd xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vrangepd xmm0, xmm1, xmm2, 0x04
        #   vrangepd ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vrangepd ymm0, ymm1, ymm2, 0x04
        #   vrangepd zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vrangepd zmm0, zmm1, zmm2, 0x04
        #   vrangepd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vrangepd zmm0, zmm1, zmm2, sae, 0x05
        def vrangepd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VRANGEPD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Range Restriction Calculation For Packed Pairs of Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRANGEPS]
        # @example
        #   vrangeps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vrangeps opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangeps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vrangeps opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vrangeps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vrangeps opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vrangeps xmm0, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vrangeps xmm0, xmm1, xmm2, 0x04
        #   vrangeps ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vrangeps ymm0, ymm1, ymm2, 0x04
        #   vrangeps zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vrangeps zmm0, zmm1, zmm2, 0x04
        #   vrangeps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vrangeps zmm0, zmm1, zmm2, sae, 0x05
        def vrangeps(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VRANGEPS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Range Restriction Calculation For a pair of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRANGESD]
        # @example
        #   vrangesd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangesd opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vrangesd xmm0, xmm1, xmm2, 0x04
        #   vrangesd xmm0, xmm1, [ecx], 0x04
        #   vrangesd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrangesd xmm0, xmm1, xmm2, sae, 0x05
        def vrangesd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VRANGESD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Range Restriction Calculation For a pair of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRANGESS]
        # @example
        #   vrangess opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangess opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vrangess xmm0, xmm1, xmm2, 0x04
        #   vrangess xmm0, xmm1, [ecx], 0x04
        #   vrangess opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrangess xmm0, xmm1, xmm2, sae, 0x05
        def vrangess(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VRANGESS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Compute Approximate Reciprocals of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRCP14PD]
        # @example
        #   vrcp14pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vrcp14pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vrcp14pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrcp14pd opmask(xmm0, k1, zero: true), xmm1
        #   vrcp14pd opmask(ymm0, k1, zero: true), ymm1
        #   vrcp14pd opmask(zmm0, k1, zero: true), zmm1
        #   vrcp14pd xmm0, bcst([ebx], {1=>2})
        #   vrcp14pd xmm0, xmm1
        #   vrcp14pd ymm0, bcst([ebx], {1=>4})
        #   vrcp14pd ymm0, ymm1
        #   vrcp14pd zmm0, bcst([ebx], {1=>8})
        #   vrcp14pd zmm0, zmm1
        def vrcp14pd(operand1,operand2,**kwargs) = add_instruction(Instructions::VRCP14PD,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocals of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRCP14PS]
        # @example
        #   vrcp14ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vrcp14ps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrcp14ps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vrcp14ps opmask(xmm0, k1, zero: true), xmm1
        #   vrcp14ps opmask(ymm0, k1, zero: true), ymm1
        #   vrcp14ps opmask(zmm0, k1, zero: true), zmm1
        #   vrcp14ps xmm0, bcst([ebx], {1=>4})
        #   vrcp14ps xmm0, xmm1
        #   vrcp14ps ymm0, bcst([ebx], {1=>8})
        #   vrcp14ps ymm0, ymm1
        #   vrcp14ps zmm0, bcst([ebx], {1=>16})
        #   vrcp14ps zmm0, zmm1
        def vrcp14ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VRCP14PS,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocal of a Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VRCP14SD]
        # @example
        #   vrcp14sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp14sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrcp14sd xmm0, xmm1, xmm2
        #   vrcp14sd xmm0, xmm1, [ecx]
        def vrcp14sd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRCP14SD,operand1,operand2,operand3,**kwargs)
        # Compute Approximate Reciprocal of a Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VRCP14SS]
        # @example
        #   vrcp14ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp14ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrcp14ss xmm0, xmm1, xmm2
        #   vrcp14ss xmm0, xmm1, [ecx]
        def vrcp14ss(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRCP14SS,operand1,operand2,operand3,**kwargs)
        # Approximation to the Reciprocal of Packed Double-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRCP28PD]
        # @example
        #   vrcp28pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrcp28pd opmask(zmm0, k1, zero: true), zmm1
        #   vrcp28pd zmm0, bcst([ebx], {1=>8})
        #   vrcp28pd zmm0, zmm1
        #   vrcp28pd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrcp28pd zmm0, zmm1, sae
        def vrcp28pd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VRCP28PD,operand1,operand2,*operands,**kwargs)
        # Approximation to the Reciprocal of Packed Single-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRCP28PS]
        # @example
        #   vrcp28ps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vrcp28ps opmask(zmm0, k1, zero: true), zmm1
        #   vrcp28ps zmm0, bcst([ebx], {1=>16})
        #   vrcp28ps zmm0, zmm1
        #   vrcp28ps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrcp28ps zmm0, zmm1, sae
        def vrcp28ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VRCP28PS,operand1,operand2,*operands,**kwargs)
        # Approximation to the Reciprocal of a Scalar Double-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRCP28SD]
        # @example
        #   vrcp28sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp28sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrcp28sd xmm0, xmm1, xmm2
        #   vrcp28sd xmm0, xmm1, [ecx]
        #   vrcp28sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrcp28sd xmm0, xmm1, xmm2, sae
        def vrcp28sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VRCP28SD,operand1,operand2,operand3,*operands,**kwargs)
        # Approximation to the Reciprocal of a Scalar Single-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRCP28SS]
        # @example
        #   vrcp28ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp28ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrcp28ss xmm0, xmm1, xmm2
        #   vrcp28ss xmm0, xmm1, [ecx]
        #   vrcp28ss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrcp28ss xmm0, xmm1, xmm2, sae
        def vrcp28ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VRCP28SS,operand1,operand2,operand3,*operands,**kwargs)
        # Compute Approximate Reciprocals of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRCPPH]
        # @example
        #   vrcpph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrcpph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vrcpph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vrcpph opmask(xmm0, k1, zero: true), xmm1
        #   vrcpph opmask(ymm0, k1, zero: true), ymm1
        #   vrcpph opmask(zmm0, k1, zero: true), zmm1
        #   vrcpph xmm0, bcst([ebx], {1=>8})
        #   vrcpph xmm0, xmm1
        #   vrcpph ymm0, bcst([ebx], {1=>16})
        #   vrcpph ymm0, ymm1
        #   vrcpph zmm0, bcst([ebx], {1=>32})
        #   vrcpph zmm0, zmm1
        def vrcpph(operand1,operand2,**kwargs) = add_instruction(Instructions::VRCPPH,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocals of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRCPPS]
        # @example
        #   vrcpps xmm0, xmm1
        #   vrcpps xmm0, [ebx]
        #   vrcpps ymm0, ymm1
        #   vrcpps ymm0, [ebx]
        def vrcpps(operand1,operand2,**kwargs) = add_instruction(Instructions::VRCPPS,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocal of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRCPSH]
        # @example
        #   vrcpsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcpsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrcpsh xmm0, xmm1, xmm2
        #   vrcpsh xmm0, xmm1, [ecx]
        def vrcpsh(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRCPSH,operand1,operand2,operand3,**kwargs)
        # Compute Approximate Reciprocal of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRCPSS]
        # @example
        #   vrcpss xmm0, xmm1, xmm2
        #   vrcpss xmm0, xmm1, [ecx]
        def vrcpss(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRCPSS,operand1,operand2,operand3,**kwargs)
        # Perform Reduction Transformation on Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VREDUCEPD]
        # @example
        #   vreducepd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vreducepd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vreducepd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vreducepd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vreducepd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vreducepd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vreducepd xmm0, bcst([ebx], {1=>2}), 0x03
        #   vreducepd xmm0, xmm1, 0x03
        #   vreducepd ymm0, bcst([ebx], {1=>4}), 0x03
        #   vreducepd ymm0, ymm1, 0x03
        #   vreducepd zmm0, bcst([ebx], {1=>8}), 0x03
        #   vreducepd zmm0, zmm1, 0x03
        def vreducepd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VREDUCEPD,operand1,operand2,operand3,**kwargs)
        # Perform Reduction Transformation on Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VREDUCEPH]
        # @example
        #   vreduceph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vreduceph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vreduceph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32}), 0x03
        #   vreduceph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vreduceph opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vreduceph opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vreduceph xmm0, bcst([ebx], {1=>8}), 0x03
        #   vreduceph xmm0, xmm1, 0x03
        #   vreduceph ymm0, bcst([ebx], {1=>16}), 0x03
        #   vreduceph ymm0, ymm1, 0x03
        #   vreduceph zmm0, bcst([ebx], {1=>32}), 0x03
        #   vreduceph zmm0, zmm1, 0x03
        #   vreduceph opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vreduceph zmm0, zmm1, sae, 0x04
        def vreduceph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VREDUCEPH,operand1,operand2,operand3,*operands,**kwargs)
        # Perform Reduction Transformation on Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VREDUCEPS]
        # @example
        #   vreduceps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vreduceps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vreduceps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vreduceps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vreduceps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vreduceps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vreduceps xmm0, bcst([ebx], {1=>4}), 0x03
        #   vreduceps xmm0, xmm1, 0x03
        #   vreduceps ymm0, bcst([ebx], {1=>8}), 0x03
        #   vreduceps ymm0, ymm1, 0x03
        #   vreduceps zmm0, bcst([ebx], {1=>16}), 0x03
        #   vreduceps zmm0, zmm1, 0x03
        def vreduceps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VREDUCEPS,operand1,operand2,operand3,**kwargs)
        # Perform Reduction Transformation on a Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VREDUCESD]
        # @example
        #   vreducesd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vreducesd opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vreducesd xmm0, xmm1, xmm2, 0x04
        #   vreducesd xmm0, xmm1, [ecx], 0x04
        def vreducesd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VREDUCESD,operand1,operand2,operand3,operand4,**kwargs)
        # Perform Reduction Transformation on a Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VREDUCESH]
        # @example
        #   vreducesh opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vreducesh opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vreducesh xmm0, xmm1, xmm2, 0x04
        #   vreducesh xmm0, xmm1, [ecx], 0x04
        #   vreducesh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vreducesh xmm0, xmm1, xmm2, sae, 0x05
        def vreducesh(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VREDUCESH,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Perform Reduction Transformation on a Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VREDUCESS]
        # @example
        #   vreducess opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vreducess opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vreducess xmm0, xmm1, xmm2, 0x04
        #   vreducess xmm0, xmm1, [ecx], 0x04
        def vreducess(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VREDUCESS,operand1,operand2,operand3,operand4,**kwargs)
        # Round Packed Double-Precision Floating-Point Values To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86::Instructions::VRNDSCALEPD]
        # @example
        #   vrndscalepd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2}), 0x03
        #   vrndscalepd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vrndscalepd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vrndscalepd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vrndscalepd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vrndscalepd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vrndscalepd xmm0, bcst([ebx], {1=>2}), 0x03
        #   vrndscalepd xmm0, xmm1, 0x03
        #   vrndscalepd ymm0, bcst([ebx], {1=>4}), 0x03
        #   vrndscalepd ymm0, ymm1, 0x03
        #   vrndscalepd zmm0, bcst([ebx], {1=>8}), 0x03
        #   vrndscalepd zmm0, zmm1, 0x03
        #   vrndscalepd opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vrndscalepd zmm0, zmm1, sae, 0x04
        def vrndscalepd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPD,operand1,operand2,operand3,*operands,**kwargs)
        # Round Packed Half-Precision Floating-Point Values To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86::Instructions::VRNDSCALEPH]
        # @example
        #   vrndscaleph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vrndscaleph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vrndscaleph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32}), 0x03
        #   vrndscaleph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vrndscaleph opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vrndscaleph opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vrndscaleph xmm0, bcst([ebx], {1=>8}), 0x03
        #   vrndscaleph xmm0, xmm1, 0x03
        #   vrndscaleph ymm0, bcst([ebx], {1=>16}), 0x03
        #   vrndscaleph ymm0, ymm1, 0x03
        #   vrndscaleph zmm0, bcst([ebx], {1=>32}), 0x03
        #   vrndscaleph zmm0, zmm1, 0x03
        #   vrndscaleph opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vrndscaleph zmm0, zmm1, sae, 0x04
        def vrndscaleph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPH,operand1,operand2,operand3,*operands,**kwargs)
        # Round Packed Single-Precision Floating-Point Values To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86::Instructions::VRNDSCALEPS]
        # @example
        #   vrndscaleps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4}), 0x03
        #   vrndscaleps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8}), 0x03
        #   vrndscaleps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16}), 0x03
        #   vrndscaleps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vrndscaleps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vrndscaleps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vrndscaleps xmm0, bcst([ebx], {1=>4}), 0x03
        #   vrndscaleps xmm0, xmm1, 0x03
        #   vrndscaleps ymm0, bcst([ebx], {1=>8}), 0x03
        #   vrndscaleps ymm0, ymm1, 0x03
        #   vrndscaleps zmm0, bcst([ebx], {1=>16}), 0x03
        #   vrndscaleps zmm0, zmm1, 0x03
        #   vrndscaleps opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vrndscaleps zmm0, zmm1, sae, 0x04
        def vrndscaleps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPS,operand1,operand2,operand3,*operands,**kwargs)
        # Round Scalar Double-Precision Floating-Point Value To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86::Instructions::VRNDSCALESD]
        # @example
        #   vrndscalesd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrndscalesd opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vrndscalesd xmm0, xmm1, xmm2, 0x04
        #   vrndscalesd xmm0, xmm1, [ecx], 0x04
        #   vrndscalesd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrndscalesd xmm0, xmm1, xmm2, sae, 0x05
        def vrndscalesd(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESD,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Round Scalar Half-Precision Floating-Point Value To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86::Instructions::VRNDSCALESH]
        # @example
        #   vrndscalesh opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrndscalesh opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vrndscalesh xmm0, xmm1, xmm2, 0x04
        #   vrndscalesh xmm0, xmm1, [ecx], 0x04
        #   vrndscalesh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrndscalesh xmm0, xmm1, xmm2, sae, 0x05
        def vrndscalesh(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESH,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Round Scalar Single-Precision Floating-Point Value To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86::Instructions::VRNDSCALESS]
        # @example
        #   vrndscaless opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrndscaless opmask(xmm0, k1, zero: true), xmm1, [ecx], 0x04
        #   vrndscaless xmm0, xmm1, xmm2, 0x04
        #   vrndscaless xmm0, xmm1, [ecx], 0x04
        #   vrndscaless opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrndscaless xmm0, xmm1, xmm2, sae, 0x05
        def vrndscaless(operand1,operand2,operand3,operand4,*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESS,operand1,operand2,operand3,operand4,*operands,**kwargs)
        # Round Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VROUNDPD]
        # @example
        #   vroundpd xmm0, xmm1, 0x03
        #   vroundpd xmm0, [ebx], 0x03
        #   vroundpd ymm0, ymm1, 0x03
        #   vroundpd ymm0, [ebx], 0x03
        def vroundpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VROUNDPD,operand1,operand2,operand3,**kwargs)
        # Round Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VROUNDPS]
        # @example
        #   vroundps xmm0, xmm1, 0x03
        #   vroundps xmm0, [ebx], 0x03
        #   vroundps ymm0, ymm1, 0x03
        #   vroundps ymm0, [ebx], 0x03
        def vroundps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VROUNDPS,operand1,operand2,operand3,**kwargs)
        # Round Scalar Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VROUNDSD]
        # @example
        #   vroundsd xmm0, xmm1, xmm2, 0x04
        #   vroundsd xmm0, xmm1, [ecx], 0x04
        def vroundsd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VROUNDSD,operand1,operand2,operand3,operand4,**kwargs)
        # Round Scalar Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VROUNDSS]
        # @example
        #   vroundss xmm0, xmm1, xmm2, 0x04
        #   vroundss xmm0, xmm1, [ecx], 0x04
        def vroundss(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VROUNDSS,operand1,operand2,operand3,operand4,**kwargs)
        # Compute Approximate Reciprocals of Square Roots of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRSQRT14PD]
        # @example
        #   vrsqrt14pd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vrsqrt14pd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vrsqrt14pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrsqrt14pd opmask(xmm0, k1, zero: true), xmm1
        #   vrsqrt14pd opmask(ymm0, k1, zero: true), ymm1
        #   vrsqrt14pd opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt14pd xmm0, bcst([ebx], {1=>2})
        #   vrsqrt14pd xmm0, xmm1
        #   vrsqrt14pd ymm0, bcst([ebx], {1=>4})
        #   vrsqrt14pd ymm0, ymm1
        #   vrsqrt14pd zmm0, bcst([ebx], {1=>8})
        #   vrsqrt14pd zmm0, zmm1
        def vrsqrt14pd(operand1,operand2,**kwargs) = add_instruction(Instructions::VRSQRT14PD,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocals of Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRSQRT14PS]
        # @example
        #   vrsqrt14ps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vrsqrt14ps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrsqrt14ps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vrsqrt14ps opmask(xmm0, k1, zero: true), xmm1
        #   vrsqrt14ps opmask(ymm0, k1, zero: true), ymm1
        #   vrsqrt14ps opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt14ps xmm0, bcst([ebx], {1=>4})
        #   vrsqrt14ps xmm0, xmm1
        #   vrsqrt14ps ymm0, bcst([ebx], {1=>8})
        #   vrsqrt14ps ymm0, ymm1
        #   vrsqrt14ps zmm0, bcst([ebx], {1=>16})
        #   vrsqrt14ps zmm0, zmm1
        def vrsqrt14ps(operand1,operand2,**kwargs) = add_instruction(Instructions::VRSQRT14PS,operand1,operand2,**kwargs)
        # Compute Approximate Reciprocal of a Square Root of a Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VRSQRT14SD]
        # @example
        #   vrsqrt14sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt14sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrsqrt14sd xmm0, xmm1, xmm2
        #   vrsqrt14sd xmm0, xmm1, [ecx]
        def vrsqrt14sd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRSQRT14SD,operand1,operand2,operand3,**kwargs)
        # Compute Approximate Reciprocal of a Square Root of a Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VRSQRT14SS]
        # @example
        #   vrsqrt14ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt14ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrsqrt14ss xmm0, xmm1, xmm2
        #   vrsqrt14ss xmm0, xmm1, [ecx]
        def vrsqrt14ss(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRSQRT14SS,operand1,operand2,operand3,**kwargs)
        # Approximation to the Reciprocal Square Root of Packed Double-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRSQRT28PD]
        # @example
        #   vrsqrt28pd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrsqrt28pd opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt28pd zmm0, bcst([ebx], {1=>8})
        #   vrsqrt28pd zmm0, zmm1
        #   vrsqrt28pd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrsqrt28pd zmm0, zmm1, sae
        def vrsqrt28pd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VRSQRT28PD,operand1,operand2,*operands,**kwargs)
        # Approximation to the Reciprocal Square Root of Packed Single-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRSQRT28PS]
        # @example
        #   vrsqrt28ps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vrsqrt28ps opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt28ps zmm0, bcst([ebx], {1=>16})
        #   vrsqrt28ps zmm0, zmm1
        #   vrsqrt28ps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrsqrt28ps zmm0, zmm1, sae
        def vrsqrt28ps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VRSQRT28PS,operand1,operand2,*operands,**kwargs)
        # Approximation to the Reciprocal Square Root of a Scalar Double-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRSQRT28SD]
        # @example
        #   vrsqrt28sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt28sd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrsqrt28sd xmm0, xmm1, xmm2
        #   vrsqrt28sd xmm0, xmm1, [ecx]
        #   vrsqrt28sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrsqrt28sd xmm0, xmm1, xmm2, sae
        def vrsqrt28sd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VRSQRT28SD,operand1,operand2,operand3,*operands,**kwargs)
        # Approximation to the Reciprocal Square Root of a Scalar Single-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86::Instructions::VRSQRT28SS]
        # @example
        #   vrsqrt28ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt28ss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrsqrt28ss xmm0, xmm1, xmm2
        #   vrsqrt28ss xmm0, xmm1, [ecx]
        #   vrsqrt28ss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrsqrt28ss xmm0, xmm1, xmm2, sae
        def vrsqrt28ss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VRSQRT28SS,operand1,operand2,operand3,*operands,**kwargs)
        # Compute Reciprocals of Square Roots of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRSQRTPH]
        # @example
        #   vrsqrtph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vrsqrtph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vrsqrtph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vrsqrtph opmask(xmm0, k1, zero: true), xmm1
        #   vrsqrtph opmask(ymm0, k1, zero: true), ymm1
        #   vrsqrtph opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrtph xmm0, bcst([ebx], {1=>8})
        #   vrsqrtph xmm0, xmm1
        #   vrsqrtph ymm0, bcst([ebx], {1=>16})
        #   vrsqrtph ymm0, ymm1
        #   vrsqrtph zmm0, bcst([ebx], {1=>32})
        #   vrsqrtph zmm0, zmm1
        def vrsqrtph(operand1,operand2,**kwargs) = add_instruction(Instructions::VRSQRTPH,operand1,operand2,**kwargs)
        # Compute Reciprocals of Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VRSQRTPS]
        # @example
        #   vrsqrtps xmm0, xmm1
        #   vrsqrtps xmm0, [ebx]
        #   vrsqrtps ymm0, ymm1
        #   vrsqrtps ymm0, [ebx]
        def vrsqrtps(operand1,operand2,**kwargs) = add_instruction(Instructions::VRSQRTPS,operand1,operand2,**kwargs)
        # Compute Reciprocal of Square Root of Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VRSQRTSH]
        # @example
        #   vrsqrtsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrtsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vrsqrtsh xmm0, xmm1, xmm2
        #   vrsqrtsh xmm0, xmm1, [ecx]
        def vrsqrtsh(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRSQRTSH,operand1,operand2,operand3,**kwargs)
        # Compute Reciprocal of Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VRSQRTSS]
        # @example
        #   vrsqrtss xmm0, xmm1, xmm2
        #   vrsqrtss xmm0, xmm1, [ecx]
        def vrsqrtss(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VRSQRTSS,operand1,operand2,operand3,**kwargs)
        # Scale Packed Double-Precision Floating-Point Values With Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSCALEFPD]
        # @example
        #   vscalefpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vscalefpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vscalefpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vscalefpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vscalefpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vscalefpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vscalefpd xmm0, xmm1, xmm2
        #   vscalefpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vscalefpd ymm0, ymm1, ymm2
        #   vscalefpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vscalefpd zmm0, zmm1, zmm2
        #   vscalefpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vscalefpd zmm0, zmm1, zmm2, er
        def vscalefpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSCALEFPD,operand1,operand2,operand3,*operands,**kwargs)
        # Scale Packed Half-Precision Floating-Point Values With Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSCALEFPH]
        # @example
        #   vscalefph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vscalefph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vscalefph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vscalefph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vscalefph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vscalefph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vscalefph xmm0, xmm1, xmm2
        #   vscalefph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vscalefph ymm0, ymm1, ymm2
        #   vscalefph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vscalefph zmm0, zmm1, zmm2
        #   vscalefph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vscalefph zmm0, zmm1, zmm2, er
        def vscalefph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSCALEFPH,operand1,operand2,operand3,*operands,**kwargs)
        # Scale Packed Single-Precision Floating-Point Values With Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSCALEFPS]
        # @example
        #   vscalefps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vscalefps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vscalefps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vscalefps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vscalefps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vscalefps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vscalefps xmm0, xmm1, xmm2
        #   vscalefps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vscalefps ymm0, ymm1, ymm2
        #   vscalefps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vscalefps zmm0, zmm1, zmm2
        #   vscalefps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vscalefps zmm0, zmm1, zmm2, er
        def vscalefps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSCALEFPS,operand1,operand2,operand3,*operands,**kwargs)
        # Scale Scalar Double-Precision Floating-Point Value With a Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VSCALEFSD]
        # @example
        #   vscalefsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vscalefsd xmm0, xmm1, xmm2
        #   vscalefsd xmm0, xmm1, [ecx]
        #   vscalefsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vscalefsd xmm0, xmm1, xmm2, er
        def vscalefsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSCALEFSD,operand1,operand2,operand3,*operands,**kwargs)
        # Scale Scalar Half-Precision Floating-Point Value With a Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VSCALEFSH]
        # @example
        #   vscalefsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vscalefsh xmm0, xmm1, xmm2
        #   vscalefsh xmm0, xmm1, [ecx]
        #   vscalefsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vscalefsh xmm0, xmm1, xmm2, er
        def vscalefsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSCALEFSH,operand1,operand2,operand3,*operands,**kwargs)
        # Scale Scalar Single-Precision Floating-Point Value With a Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VSCALEFSS]
        # @example
        #   vscalefss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vscalefss xmm0, xmm1, xmm2
        #   vscalefss xmm0, xmm1, [ecx]
        #   vscalefss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vscalefss xmm0, xmm1, xmm2, er
        def vscalefss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSCALEFSS,operand1,operand2,operand3,*operands,**kwargs)
        # Scatter Packed Double-Precision Floating-Point Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VSCATTERDPD]
        # @example
        #   vscatterdpd opmask([eax+xmm0*4], k1), xmm1
        #   vscatterdpd opmask([eax+xmm0*4], k1), ymm1
        #   vscatterdpd opmask([eax+ymm0*4], k1), zmm1
        def vscatterdpd(operand1,operand2,**kwargs) = add_instruction(Instructions::VSCATTERDPD,operand1,operand2,**kwargs)
        # Scatter Packed Single-Precision Floating-Point Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86::Instructions::VSCATTERDPS]
        # @example
        #   vscatterdps opmask([eax+xmm0*4], k1), xmm1
        #   vscatterdps opmask([eax+ymm0*4], k1), ymm1
        #   vscatterdps opmask([eax+zmm0*4], k1), zmm1
        def vscatterdps(operand1,operand2,**kwargs) = add_instruction(Instructions::VSCATTERDPS,operand1,operand2,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF0DPD]
        # @example
        #   vscatterpf0dpd opmask([eax+ymm0*4], k1)
        def vscatterpf0dpd(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF0DPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF0DPS]
        # @example
        #   vscatterpf0dps opmask([eax+zmm0*4], k1)
        def vscatterpf0dps(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF0DPS,operand,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF0QPD]
        # @example
        #   vscatterpf0qpd opmask([eax+zmm0*8], k1)
        def vscatterpf0qpd(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF0QPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF0QPS]
        # @example
        #   vscatterpf0qps opmask([eax+zmm0*8], k1)
        def vscatterpf0qps(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF0QPS,operand,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF1DPD]
        # @example
        #   vscatterpf1dpd opmask([eax+ymm0*4], k1)
        def vscatterpf1dpd(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF1DPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF1DPS]
        # @example
        #   vscatterpf1dps opmask([eax+zmm0*4], k1)
        def vscatterpf1dps(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF1DPS,operand,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF1QPD]
        # @example
        #   vscatterpf1qpd opmask([eax+zmm0*8], k1)
        def vscatterpf1qpd(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF1QPD,operand,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86::Instructions::VSCATTERPF1QPS]
        # @example
        #   vscatterpf1qps opmask([eax+zmm0*8], k1)
        def vscatterpf1qps(operand,**kwargs) = add_instruction(Instructions::VSCATTERPF1QPS,operand,**kwargs)
        # Scatter Packed Double-Precision Floating-Point Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VSCATTERQPD]
        # @example
        #   vscatterqpd opmask([eax+xmm0*8], k1), xmm1
        #   vscatterqpd opmask([eax+ymm0*8], k1), ymm1
        #   vscatterqpd opmask([eax+zmm0*8], k1), zmm1
        def vscatterqpd(operand1,operand2,**kwargs) = add_instruction(Instructions::VSCATTERQPD,operand1,operand2,**kwargs)
        # Scatter Packed Single-Precision Floating-Point Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86::Instructions::VSCATTERQPS]
        # @example
        #   vscatterqps opmask([eax+xmm0*8], k1), xmm1
        #   vscatterqps opmask([eax+ymm0*8], k1), xmm1
        #   vscatterqps opmask([eax+zmm0*8], k1), ymm1
        def vscatterqps(operand1,operand2,**kwargs) = add_instruction(Instructions::VSCATTERQPS,operand1,operand2,**kwargs)
        # Perform an Intermediate Calculation for the Next Four SHA512 Message Quadwords
        # @return [Ronin::ASM::X86::Instructions::VSHA512MSG1]
        # @example
        #   vsha512msg1 ymm0, xmm1
        def vsha512msg1(operand1,operand2,**kwargs) = add_instruction(Instructions::VSHA512MSG1,operand1,operand2,**kwargs)
        # Perform a Final Calculation for the Next Four SHA512 Message Quadwords
        # @return [Ronin::ASM::X86::Instructions::VSHA512MSG2]
        # @example
        #   vsha512msg2 ymm0, ymm1
        def vsha512msg2(operand1,operand2,**kwargs) = add_instruction(Instructions::VSHA512MSG2,operand1,operand2,**kwargs)
        # Perform Two Rounds of SHA512 Operation
        # @return [Ronin::ASM::X86::Instructions::VSHA512RNDS2]
        # @example
        #   vsha512rnds2 ymm0, ymm1, xmm2
        def vsha512rnds2(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VSHA512RNDS2,operand1,operand2,operand3,**kwargs)
        # Shuffle 128-Bit Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSHUFF32X4]
        # @example
        #   vshuff32x4 opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vshuff32x4 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshuff32x4 opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vshuff32x4 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshuff32x4 ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vshuff32x4 ymm0, ymm1, ymm2, 0x04
        #   vshuff32x4 zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vshuff32x4 zmm0, zmm1, zmm2, 0x04
        def vshuff32x4(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VSHUFF32X4,operand1,operand2,operand3,operand4,**kwargs)
        # Shuffle 128-Bit Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSHUFF64X2]
        # @example
        #   vshuff64x2 opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vshuff64x2 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshuff64x2 opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vshuff64x2 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshuff64x2 ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vshuff64x2 ymm0, ymm1, ymm2, 0x04
        #   vshuff64x2 zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vshuff64x2 zmm0, zmm1, zmm2, 0x04
        def vshuff64x2(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VSHUFF64X2,operand1,operand2,operand3,operand4,**kwargs)
        # Shuffle 128-Bit Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VSHUFI32X4]
        # @example
        #   vshufi32x4 opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vshufi32x4 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufi32x4 opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vshufi32x4 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufi32x4 ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vshufi32x4 ymm0, ymm1, ymm2, 0x04
        #   vshufi32x4 zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vshufi32x4 zmm0, zmm1, zmm2, 0x04
        def vshufi32x4(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VSHUFI32X4,operand1,operand2,operand3,operand4,**kwargs)
        # Shuffle 128-Bit Packed Quadword Integer Values
        # @return [Ronin::ASM::X86::Instructions::VSHUFI64X2]
        # @example
        #   vshufi64x2 opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vshufi64x2 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufi64x2 opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vshufi64x2 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufi64x2 ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vshufi64x2 ymm0, ymm1, ymm2, 0x04
        #   vshufi64x2 zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vshufi64x2 zmm0, zmm1, zmm2, 0x04
        def vshufi64x2(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VSHUFI64X2,operand1,operand2,operand3,operand4,**kwargs)
        # Shuffle Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSHUFPD]
        # @example
        #   vshufpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2}), 0x04
        #   vshufpd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vshufpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4}), 0x04
        #   vshufpd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8}), 0x04
        #   vshufpd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufpd xmm0, xmm1, bcst([ecx], {1=>2}), 0x04
        #   vshufpd xmm0, xmm1, xmm2, 0x04
        #   vshufpd xmm0, xmm1, [ecx], 0x04
        #   vshufpd ymm0, ymm1, bcst([ecx], {1=>4}), 0x04
        #   vshufpd ymm0, ymm1, ymm2, 0x04
        #   vshufpd ymm0, ymm1, [ecx], 0x04
        #   vshufpd zmm0, zmm1, bcst([ecx], {1=>8}), 0x04
        #   vshufpd zmm0, zmm1, zmm2, 0x04
        def vshufpd(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VSHUFPD,operand1,operand2,operand3,operand4,**kwargs)
        # Shuffle Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSHUFPS]
        # @example
        #   vshufps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4}), 0x04
        #   vshufps opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vshufps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8}), 0x04
        #   vshufps opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16}), 0x04
        #   vshufps opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufps xmm0, xmm1, bcst([ecx], {1=>4}), 0x04
        #   vshufps xmm0, xmm1, xmm2, 0x04
        #   vshufps xmm0, xmm1, [ecx], 0x04
        #   vshufps ymm0, ymm1, bcst([ecx], {1=>8}), 0x04
        #   vshufps ymm0, ymm1, ymm2, 0x04
        #   vshufps ymm0, ymm1, [ecx], 0x04
        #   vshufps zmm0, zmm1, bcst([ecx], {1=>16}), 0x04
        #   vshufps zmm0, zmm1, zmm2, 0x04
        def vshufps(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VSHUFPS,operand1,operand2,operand3,operand4,**kwargs)
        # Perform Initial Calculation for the Next Four SM3 Message Words
        # @return [Ronin::ASM::X86::Instructions::VSM3MSG1]
        # @example
        #   vsm3msg1 xmm0, xmm1, xmm2
        #   vsm3msg1 xmm0, xmm1, [ecx]
        def vsm3msg1(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VSM3MSG1,operand1,operand2,operand3,**kwargs)
        # Perform Final Calculation for the Next Four SM3 Message Words
        # @return [Ronin::ASM::X86::Instructions::VSM3MSG2]
        # @example
        #   vsm3msg2 xmm0, xmm1, xmm2
        #   vsm3msg2 xmm0, xmm1, [ecx]
        def vsm3msg2(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VSM3MSG2,operand1,operand2,operand3,**kwargs)
        # Perform Two Rounds of SM3 Operation
        # @return [Ronin::ASM::X86::Instructions::VSM3RNDS2]
        # @example
        #   vsm3rnds2 xmm0, xmm1, xmm2, 0x04
        #   vsm3rnds2 xmm0, xmm1, [ecx], 0x04
        def vsm3rnds2(operand1,operand2,operand3,operand4,**kwargs) = add_instruction(Instructions::VSM3RNDS2,operand1,operand2,operand3,operand4,**kwargs)
        # Perform Four Rounds of SM4 Key Expansion
        # @return [Ronin::ASM::X86::Instructions::VSM4KEY4]
        # @example
        #   vsm4key4 xmm0, xmm1, xmm2
        #   vsm4key4 xmm0, xmm1, [ecx]
        #   vsm4key4 ymm0, ymm1, ymm2
        #   vsm4key4 ymm0, ymm1, [ecx]
        def vsm4key4(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VSM4KEY4,operand1,operand2,operand3,**kwargs)
        # Performs Four Rounds of SM4 Encryption
        # @return [Ronin::ASM::X86::Instructions::VSM4RNDS4]
        # @example
        #   vsm4rnds4 xmm0, xmm1, xmm2
        #   vsm4rnds4 xmm0, xmm1, [ecx]
        #   vsm4rnds4 ymm0, ymm1, ymm2
        #   vsm4rnds4 ymm0, ymm1, [ecx]
        def vsm4rnds4(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VSM4RNDS4,operand1,operand2,operand3,**kwargs)
        # Compute Square Roots of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSQRTPD]
        # @example
        #   vsqrtpd opmask(xmm0, k1, zero: true), bcst([ebx], {1=>2})
        #   vsqrtpd opmask(ymm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vsqrtpd opmask(zmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vsqrtpd opmask(xmm0, k1, zero: true), xmm1
        #   vsqrtpd opmask(ymm0, k1, zero: true), ymm1
        #   vsqrtpd opmask(zmm0, k1, zero: true), zmm1
        #   vsqrtpd xmm0, bcst([ebx], {1=>2})
        #   vsqrtpd xmm0, xmm1
        #   vsqrtpd xmm0, [ebx]
        #   vsqrtpd ymm0, bcst([ebx], {1=>4})
        #   vsqrtpd ymm0, ymm1
        #   vsqrtpd ymm0, [ebx]
        #   vsqrtpd zmm0, bcst([ebx], {1=>8})
        #   vsqrtpd zmm0, zmm1
        #   vsqrtpd opmask(zmm0, k1, zero: true), zmm1, er
        #   vsqrtpd zmm0, zmm1, er
        def vsqrtpd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VSQRTPD,operand1,operand2,*operands,**kwargs)
        # Compute Square Roots of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSQRTPH]
        # @example
        #   vsqrtph opmask(xmm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vsqrtph opmask(ymm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vsqrtph opmask(zmm0, k1, zero: true), bcst([ebx], {1=>32})
        #   vsqrtph opmask(xmm0, k1, zero: true), xmm1
        #   vsqrtph opmask(ymm0, k1, zero: true), ymm1
        #   vsqrtph opmask(zmm0, k1, zero: true), zmm1
        #   vsqrtph xmm0, bcst([ebx], {1=>8})
        #   vsqrtph xmm0, xmm1
        #   vsqrtph ymm0, bcst([ebx], {1=>16})
        #   vsqrtph ymm0, ymm1
        #   vsqrtph zmm0, bcst([ebx], {1=>32})
        #   vsqrtph zmm0, zmm1
        #   vsqrtph opmask(zmm0, k1, zero: true), zmm1, er
        #   vsqrtph zmm0, zmm1, er
        def vsqrtph(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VSQRTPH,operand1,operand2,*operands,**kwargs)
        # Compute Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSQRTPS]
        # @example
        #   vsqrtps opmask(xmm0, k1, zero: true), bcst([ebx], {1=>4})
        #   vsqrtps opmask(ymm0, k1, zero: true), bcst([ebx], {1=>8})
        #   vsqrtps opmask(zmm0, k1, zero: true), bcst([ebx], {1=>16})
        #   vsqrtps opmask(xmm0, k1, zero: true), xmm1
        #   vsqrtps opmask(ymm0, k1, zero: true), ymm1
        #   vsqrtps opmask(zmm0, k1, zero: true), zmm1
        #   vsqrtps xmm0, bcst([ebx], {1=>4})
        #   vsqrtps xmm0, xmm1
        #   vsqrtps xmm0, [ebx]
        #   vsqrtps ymm0, bcst([ebx], {1=>8})
        #   vsqrtps ymm0, ymm1
        #   vsqrtps ymm0, [ebx]
        #   vsqrtps zmm0, bcst([ebx], {1=>16})
        #   vsqrtps zmm0, zmm1
        #   vsqrtps opmask(zmm0, k1, zero: true), zmm1, er
        #   vsqrtps zmm0, zmm1, er
        def vsqrtps(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VSQRTPS,operand1,operand2,*operands,**kwargs)
        # Compute Square Root of Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VSQRTSD]
        # @example
        #   vsqrtsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsqrtsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vsqrtsd xmm0, xmm1, xmm2
        #   vsqrtsd xmm0, xmm1, [ecx]
        #   vsqrtsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsqrtsd xmm0, xmm1, xmm2, er
        def vsqrtsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSQRTSD,operand1,operand2,operand3,*operands,**kwargs)
        # Compute Square Root of Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VSQRTSH]
        # @example
        #   vsqrtsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsqrtsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vsqrtsh xmm0, xmm1, xmm2
        #   vsqrtsh xmm0, xmm1, [ecx]
        #   vsqrtsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsqrtsh xmm0, xmm1, xmm2, er
        def vsqrtsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSQRTSH,operand1,operand2,operand3,*operands,**kwargs)
        # Compute Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86::Instructions::VSQRTSS]
        # @example
        #   vsqrtss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsqrtss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vsqrtss xmm0, xmm1, xmm2
        #   vsqrtss xmm0, xmm1, [ecx]
        #   vsqrtss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsqrtss xmm0, xmm1, xmm2, er
        def vsqrtss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSQRTSS,operand1,operand2,operand3,*operands,**kwargs)
        # Store MXCSR Register State
        # @return [Ronin::ASM::X86::Instructions::VSTMXCSR]
        # @example
        #   vstmxcsr [eax]
        def vstmxcsr(operand,**kwargs) = add_instruction(Instructions::VSTMXCSR,operand,**kwargs)
        # Subtract Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSUBPD]
        # @example
        #   vsubpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vsubpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vsubpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vsubpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vsubpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vsubpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vsubpd xmm0, xmm1, xmm2
        #   vsubpd xmm0, xmm1, [ecx]
        #   vsubpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vsubpd ymm0, ymm1, ymm2
        #   vsubpd ymm0, ymm1, [ecx]
        #   vsubpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vsubpd zmm0, zmm1, zmm2
        #   vsubpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vsubpd zmm0, zmm1, zmm2, er
        def vsubpd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSUBPD,operand1,operand2,operand3,*operands,**kwargs)
        # Subtract Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSUBPH]
        # @example
        #   vsubph opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>8})
        #   vsubph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubph opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>16})
        #   vsubph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vsubph opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>32})
        #   vsubph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vsubph xmm0, xmm1, bcst([ecx], {1=>8})
        #   vsubph xmm0, xmm1, xmm2
        #   vsubph ymm0, ymm1, bcst([ecx], {1=>16})
        #   vsubph ymm0, ymm1, ymm2
        #   vsubph zmm0, zmm1, bcst([ecx], {1=>32})
        #   vsubph zmm0, zmm1, zmm2
        #   vsubph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vsubph zmm0, zmm1, zmm2, er
        def vsubph(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSUBPH,operand1,operand2,operand3,*operands,**kwargs)
        # Subtract Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSUBPS]
        # @example
        #   vsubps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vsubps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vsubps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vsubps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vsubps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vsubps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vsubps xmm0, xmm1, xmm2
        #   vsubps xmm0, xmm1, [ecx]
        #   vsubps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vsubps ymm0, ymm1, ymm2
        #   vsubps ymm0, ymm1, [ecx]
        #   vsubps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vsubps zmm0, zmm1, zmm2
        #   vsubps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vsubps zmm0, zmm1, zmm2, er
        def vsubps(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSUBPS,operand1,operand2,operand3,*operands,**kwargs)
        # Subtract Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSUBSD]
        # @example
        #   vsubsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubsd opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vsubsd xmm0, xmm1, xmm2
        #   vsubsd xmm0, xmm1, [ecx]
        #   vsubsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsubsd xmm0, xmm1, xmm2, er
        def vsubsd(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSUBSD,operand1,operand2,operand3,*operands,**kwargs)
        # Subtract Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSUBSH]
        # @example
        #   vsubsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubsh opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vsubsh xmm0, xmm1, xmm2
        #   vsubsh xmm0, xmm1, [ecx]
        #   vsubsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsubsh xmm0, xmm1, xmm2, er
        def vsubsh(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSUBSH,operand1,operand2,operand3,*operands,**kwargs)
        # Subtract Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VSUBSS]
        # @example
        #   vsubss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubss opmask(xmm0, k1, zero: true), xmm1, [ecx]
        #   vsubss xmm0, xmm1, xmm2
        #   vsubss xmm0, xmm1, [ecx]
        #   vsubss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsubss xmm0, xmm1, xmm2, er
        def vsubss(operand1,operand2,operand3,*operands,**kwargs) = add_instruction(Instructions::VSUBSS,operand1,operand2,operand3,*operands,**kwargs)
        # Packed Double-Precision Floating-Point Bit Test
        # @return [Ronin::ASM::X86::Instructions::VTESTPD]
        # @example
        #   vtestpd xmm0, xmm1
        #   vtestpd xmm0, [ebx]
        #   vtestpd ymm0, ymm1
        #   vtestpd ymm0, [ebx]
        def vtestpd(operand1,operand2,**kwargs) = add_instruction(Instructions::VTESTPD,operand1,operand2,**kwargs)
        # Packed Single-Precision Floating-Point Bit Test
        # @return [Ronin::ASM::X86::Instructions::VTESTPS]
        # @example
        #   vtestps xmm0, xmm1
        #   vtestps xmm0, [ebx]
        #   vtestps ymm0, ymm1
        #   vtestps ymm0, [ebx]
        def vtestps(operand1,operand2,**kwargs) = add_instruction(Instructions::VTESTPS,operand1,operand2,**kwargs)
        # Unordered Compare Scalar Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::VUCOMISD]
        # @example
        #   vucomisd xmm0, xmm1
        #   vucomisd xmm0, [ebx]
        #   vucomisd xmm0, xmm1, sae
        def vucomisd(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VUCOMISD,operand1,operand2,*operands,**kwargs)
        # Unordered Compare Scalar Half-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::VUCOMISH]
        # @example
        #   vucomish xmm0, xmm1
        #   vucomish xmm0, [ebx]
        #   vucomish xmm0, xmm1, sae
        def vucomish(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VUCOMISH,operand1,operand2,*operands,**kwargs)
        # Unordered Compare Scalar Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86::Instructions::VUCOMISS]
        # @example
        #   vucomiss xmm0, xmm1
        #   vucomiss xmm0, [ebx]
        #   vucomiss xmm0, xmm1, sae
        def vucomiss(operand1,operand2,*operands,**kwargs) = add_instruction(Instructions::VUCOMISS,operand1,operand2,*operands,**kwargs)
        # Unpack and Interleave High Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VUNPCKHPD]
        # @example
        #   vunpckhpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vunpckhpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpckhpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vunpckhpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpckhpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vunpckhpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpckhpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vunpckhpd xmm0, xmm1, xmm2
        #   vunpckhpd xmm0, xmm1, [ecx]
        #   vunpckhpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vunpckhpd ymm0, ymm1, ymm2
        #   vunpckhpd ymm0, ymm1, [ecx]
        #   vunpckhpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vunpckhpd zmm0, zmm1, zmm2
        def vunpckhpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VUNPCKHPD,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VUNPCKHPS]
        # @example
        #   vunpckhps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vunpckhps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpckhps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vunpckhps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpckhps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vunpckhps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpckhps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vunpckhps xmm0, xmm1, xmm2
        #   vunpckhps xmm0, xmm1, [ecx]
        #   vunpckhps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vunpckhps ymm0, ymm1, ymm2
        #   vunpckhps ymm0, ymm1, [ecx]
        #   vunpckhps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vunpckhps zmm0, zmm1, zmm2
        def vunpckhps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VUNPCKHPS,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave Low Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VUNPCKLPD]
        # @example
        #   vunpcklpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vunpcklpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpcklpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vunpcklpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpcklpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vunpcklpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpcklpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vunpcklpd xmm0, xmm1, xmm2
        #   vunpcklpd xmm0, xmm1, [ecx]
        #   vunpcklpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vunpcklpd ymm0, ymm1, ymm2
        #   vunpcklpd ymm0, ymm1, [ecx]
        #   vunpcklpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vunpcklpd zmm0, zmm1, zmm2
        def vunpcklpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VUNPCKLPD,operand1,operand2,operand3,**kwargs)
        # Unpack and Interleave Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VUNPCKLPS]
        # @example
        #   vunpcklps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vunpcklps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpcklps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vunpcklps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpcklps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vunpcklps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpcklps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vunpcklps xmm0, xmm1, xmm2
        #   vunpcklps xmm0, xmm1, [ecx]
        #   vunpcklps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vunpcklps ymm0, ymm1, ymm2
        #   vunpcklps ymm0, ymm1, [ecx]
        #   vunpcklps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vunpcklps zmm0, zmm1, zmm2
        def vunpcklps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VUNPCKLPS,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XOR for Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VXORPD]
        # @example
        #   vxorpd opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>2})
        #   vxorpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vxorpd opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>4})
        #   vxorpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vxorpd opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>8})
        #   vxorpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vxorpd xmm0, xmm1, bcst([ecx], {1=>2})
        #   vxorpd xmm0, xmm1, xmm2
        #   vxorpd xmm0, xmm1, [ecx]
        #   vxorpd ymm0, ymm1, bcst([ecx], {1=>4})
        #   vxorpd ymm0, ymm1, ymm2
        #   vxorpd ymm0, ymm1, [ecx]
        #   vxorpd zmm0, zmm1, bcst([ecx], {1=>8})
        #   vxorpd zmm0, zmm1, zmm2
        def vxorpd(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VXORPD,operand1,operand2,operand3,**kwargs)
        # Bitwise Logical XOR for Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::VXORPS]
        # @example
        #   vxorps opmask(xmm0, k1, zero: true), xmm1, bcst([ecx], {1=>4})
        #   vxorps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vxorps opmask(ymm0, k1, zero: true), ymm1, bcst([ecx], {1=>8})
        #   vxorps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vxorps opmask(zmm0, k1, zero: true), zmm1, bcst([ecx], {1=>16})
        #   vxorps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vxorps xmm0, xmm1, bcst([ecx], {1=>4})
        #   vxorps xmm0, xmm1, xmm2
        #   vxorps xmm0, xmm1, [ecx]
        #   vxorps ymm0, ymm1, bcst([ecx], {1=>8})
        #   vxorps ymm0, ymm1, ymm2
        #   vxorps ymm0, ymm1, [ecx]
        #   vxorps zmm0, zmm1, bcst([ecx], {1=>16})
        #   vxorps zmm0, zmm1, zmm2
        def vxorps(operand1,operand2,operand3,**kwargs) = add_instruction(Instructions::VXORPS,operand1,operand2,operand3,**kwargs)
        # Zero All YMM Registers
        # @return [Ronin::ASM::X86::Instructions::VZEROALL]
        def vzeroall(**kwargs) = add_instruction(Instructions::VZEROALL,**kwargs)
        # Zero Upper Bits of YMM Registers
        # @return [Ronin::ASM::X86::Instructions::VZEROUPPER]
        def vzeroupper(**kwargs) = add_instruction(Instructions::VZEROUPPER,**kwargs)
        # Exchange and Add
        # @return [Ronin::ASM::X86::Instructions::XADD]
        # @example
        #   xadd al, bl
        #   xadd ax, bx
        #   xadd eax, ebx
        #   xadd [eax], bl
        #   xadd [eax], bx
        #   xadd [eax], ebx
        def xadd(operand1,operand2,**kwargs) = add_instruction(Instructions::XADD,operand1,operand2,**kwargs)
        # Exchange Register/Memory with Register
        # @return [Ronin::ASM::X86::Instructions::XCHG]
        # @example
        #   xchg al, bl
        #   xchg al, [ebx]
        #   xchg ax, bx
        #   xchg ax, ax
        #   xchg ax, [ebx]
        #   xchg eax, ebx
        #   xchg eax, eax
        #   xchg eax, [ebx]
        #   xchg [eax], bl
        #   xchg [eax], bx
        #   xchg [eax], ebx
        def xchg(operand1,operand2,**kwargs) = add_instruction(Instructions::XCHG,operand1,operand2,**kwargs)
        # Get Value of Extended Control Register
        # @return [Ronin::ASM::X86::Instructions::XGETBV]
        def xgetbv(**kwargs) = add_instruction(Instructions::XGETBV,**kwargs)
        # Table Look-up Translation
        # @return [Ronin::ASM::X86::Instructions::XLATB]
        def xlatb(**kwargs) = add_instruction(Instructions::XLATB,**kwargs)
        # Logical Exclusive OR
        # @return [Ronin::ASM::X86::Instructions::XOR]
        # @example
        #   xor al, 0x02
        #   xor al, bl
        #   xor al, [ebx]
        #   xor ax, 0x0002
        #   xor ax, 0x02
        #   xor ax, bx
        #   xor ax, [ebx]
        #   xor eax, 0x00000002
        #   xor eax, 0x02
        #   xor eax, ebx
        #   xor eax, [ebx]
        #   xor [eax], 0x02
        #   xor [eax], bl
        #   xor [eax], 0x0002
        #   xor [eax], bx
        #   xor [eax], 0x00000002
        #   xor [eax], ebx
        def xor(operand1,operand2,**kwargs) = add_instruction(Instructions::XOR,operand1,operand2,**kwargs)
        # Bitwise Logical XOR for Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::XORPD]
        # @example
        #   xorpd xmm0, xmm1
        #   xorpd xmm0, [ebx]
        def xorpd(operand1,operand2,**kwargs) = add_instruction(Instructions::XORPD,operand1,operand2,**kwargs)
        # Bitwise Logical XOR for Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86::Instructions::XORPS]
        # @example
        #   xorps xmm0, xmm1
        #   xorps xmm0, [ebx]
        def xorps(operand1,operand2,**kwargs) = add_instruction(Instructions::XORPS,operand1,operand2,**kwargs)
      end
    end
  end
end
