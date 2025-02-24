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

module Ronin
  module ASM
    module X86_64
      module Instructions
        autoload :AADD, 'ronin/asm/x86_64/instructions/aadd'
        autoload :AAND, 'ronin/asm/x86_64/instructions/aand'
        autoload :ADC, 'ronin/asm/x86_64/instructions/adc'
        autoload :ADCX, 'ronin/asm/x86_64/instructions/adcx'
        autoload :ADD, 'ronin/asm/x86_64/instructions/add'
        autoload :ADDPD, 'ronin/asm/x86_64/instructions/addpd'
        autoload :ADDPS, 'ronin/asm/x86_64/instructions/addps'
        autoload :ADDSD, 'ronin/asm/x86_64/instructions/addsd'
        autoload :ADDSS, 'ronin/asm/x86_64/instructions/addss'
        autoload :ADDSUBPD, 'ronin/asm/x86_64/instructions/addsubpd'
        autoload :ADDSUBPS, 'ronin/asm/x86_64/instructions/addsubps'
        autoload :ADOX, 'ronin/asm/x86_64/instructions/adox'
        autoload :AESDEC, 'ronin/asm/x86_64/instructions/aesdec'
        autoload :AESDECLAST, 'ronin/asm/x86_64/instructions/aesdeclast'
        autoload :AESENC, 'ronin/asm/x86_64/instructions/aesenc'
        autoload :AESENCLAST, 'ronin/asm/x86_64/instructions/aesenclast'
        autoload :AESIMC, 'ronin/asm/x86_64/instructions/aesimc'
        autoload :AESKEYGENASSIST, 'ronin/asm/x86_64/instructions/aeskeygenassist'
        autoload :AND, 'ronin/asm/x86_64/instructions/and'
        autoload :ANDN, 'ronin/asm/x86_64/instructions/andn'
        autoload :ANDNPD, 'ronin/asm/x86_64/instructions/andnpd'
        autoload :ANDNPS, 'ronin/asm/x86_64/instructions/andnps'
        autoload :ANDPD, 'ronin/asm/x86_64/instructions/andpd'
        autoload :ANDPS, 'ronin/asm/x86_64/instructions/andps'
        autoload :AOR, 'ronin/asm/x86_64/instructions/aor'
        autoload :AXOR, 'ronin/asm/x86_64/instructions/axor'
        autoload :BEXTR, 'ronin/asm/x86_64/instructions/bextr'
        autoload :BLCFILL, 'ronin/asm/x86_64/instructions/blcfill'
        autoload :BLCI, 'ronin/asm/x86_64/instructions/blci'
        autoload :BLCIC, 'ronin/asm/x86_64/instructions/blcic'
        autoload :BLCMSK, 'ronin/asm/x86_64/instructions/blcmsk'
        autoload :BLCS, 'ronin/asm/x86_64/instructions/blcs'
        autoload :BLENDPD, 'ronin/asm/x86_64/instructions/blendpd'
        autoload :BLENDPS, 'ronin/asm/x86_64/instructions/blendps'
        autoload :BLENDVPD, 'ronin/asm/x86_64/instructions/blendvpd'
        autoload :BLENDVPS, 'ronin/asm/x86_64/instructions/blendvps'
        autoload :BLSFILL, 'ronin/asm/x86_64/instructions/blsfill'
        autoload :BLSI, 'ronin/asm/x86_64/instructions/blsi'
        autoload :BLSIC, 'ronin/asm/x86_64/instructions/blsic'
        autoload :BLSMSK, 'ronin/asm/x86_64/instructions/blsmsk'
        autoload :BLSR, 'ronin/asm/x86_64/instructions/blsr'
        autoload :BSF, 'ronin/asm/x86_64/instructions/bsf'
        autoload :BSR, 'ronin/asm/x86_64/instructions/bsr'
        autoload :BSWAP, 'ronin/asm/x86_64/instructions/bswap'
        autoload :BT, 'ronin/asm/x86_64/instructions/bt'
        autoload :BTC, 'ronin/asm/x86_64/instructions/btc'
        autoload :BTR, 'ronin/asm/x86_64/instructions/btr'
        autoload :BTS, 'ronin/asm/x86_64/instructions/bts'
        autoload :BZHI, 'ronin/asm/x86_64/instructions/bzhi'
        autoload :CALL, 'ronin/asm/x86_64/instructions/call'
        autoload :CBW, 'ronin/asm/x86_64/instructions/cbw'
        autoload :CDQ, 'ronin/asm/x86_64/instructions/cdq'
        autoload :CDQE, 'ronin/asm/x86_64/instructions/cdqe'
        autoload :CLC, 'ronin/asm/x86_64/instructions/clc'
        autoload :CLD, 'ronin/asm/x86_64/instructions/cld'
        autoload :CLDEMOTE, 'ronin/asm/x86_64/instructions/cldemote'
        autoload :CLFLUSH, 'ronin/asm/x86_64/instructions/clflush'
        autoload :CLFLUSHOPT, 'ronin/asm/x86_64/instructions/clflushopt'
        autoload :CLWB, 'ronin/asm/x86_64/instructions/clwb'
        autoload :CLZERO, 'ronin/asm/x86_64/instructions/clzero'
        autoload :CMC, 'ronin/asm/x86_64/instructions/cmc'
        autoload :CMOVA, 'ronin/asm/x86_64/instructions/cmova'
        autoload :CMOVAE, 'ronin/asm/x86_64/instructions/cmovae'
        autoload :CMOVB, 'ronin/asm/x86_64/instructions/cmovb'
        autoload :CMOVBE, 'ronin/asm/x86_64/instructions/cmovbe'
        autoload :CMOVC, 'ronin/asm/x86_64/instructions/cmovc'
        autoload :CMOVE, 'ronin/asm/x86_64/instructions/cmove'
        autoload :CMOVG, 'ronin/asm/x86_64/instructions/cmovg'
        autoload :CMOVGE, 'ronin/asm/x86_64/instructions/cmovge'
        autoload :CMOVL, 'ronin/asm/x86_64/instructions/cmovl'
        autoload :CMOVLE, 'ronin/asm/x86_64/instructions/cmovle'
        autoload :CMOVNA, 'ronin/asm/x86_64/instructions/cmovna'
        autoload :CMOVNAE, 'ronin/asm/x86_64/instructions/cmovnae'
        autoload :CMOVNB, 'ronin/asm/x86_64/instructions/cmovnb'
        autoload :CMOVNBE, 'ronin/asm/x86_64/instructions/cmovnbe'
        autoload :CMOVNC, 'ronin/asm/x86_64/instructions/cmovnc'
        autoload :CMOVNE, 'ronin/asm/x86_64/instructions/cmovne'
        autoload :CMOVNG, 'ronin/asm/x86_64/instructions/cmovng'
        autoload :CMOVNGE, 'ronin/asm/x86_64/instructions/cmovnge'
        autoload :CMOVNL, 'ronin/asm/x86_64/instructions/cmovnl'
        autoload :CMOVNLE, 'ronin/asm/x86_64/instructions/cmovnle'
        autoload :CMOVNO, 'ronin/asm/x86_64/instructions/cmovno'
        autoload :CMOVNP, 'ronin/asm/x86_64/instructions/cmovnp'
        autoload :CMOVNS, 'ronin/asm/x86_64/instructions/cmovns'
        autoload :CMOVNZ, 'ronin/asm/x86_64/instructions/cmovnz'
        autoload :CMOVO, 'ronin/asm/x86_64/instructions/cmovo'
        autoload :CMOVP, 'ronin/asm/x86_64/instructions/cmovp'
        autoload :CMOVPE, 'ronin/asm/x86_64/instructions/cmovpe'
        autoload :CMOVPO, 'ronin/asm/x86_64/instructions/cmovpo'
        autoload :CMOVS, 'ronin/asm/x86_64/instructions/cmovs'
        autoload :CMOVZ, 'ronin/asm/x86_64/instructions/cmovz'
        autoload :CMP, 'ronin/asm/x86_64/instructions/cmp'
        autoload :CMPBEXADD, 'ronin/asm/x86_64/instructions/cmpbexadd'
        autoload :CMPBXADD, 'ronin/asm/x86_64/instructions/cmpbxadd'
        autoload :CMPLEXADD, 'ronin/asm/x86_64/instructions/cmplexadd'
        autoload :CMPLXADD, 'ronin/asm/x86_64/instructions/cmplxadd'
        autoload :CMPNBEXADD, 'ronin/asm/x86_64/instructions/cmpnbexadd'
        autoload :CMPNBXADD, 'ronin/asm/x86_64/instructions/cmpnbxadd'
        autoload :CMPNLEXADD, 'ronin/asm/x86_64/instructions/cmpnlexadd'
        autoload :CMPNLXADD, 'ronin/asm/x86_64/instructions/cmpnlxadd'
        autoload :CMPNOXADD, 'ronin/asm/x86_64/instructions/cmpnoxadd'
        autoload :CMPNPXADD, 'ronin/asm/x86_64/instructions/cmpnpxadd'
        autoload :CMPNSXADD, 'ronin/asm/x86_64/instructions/cmpnsxadd'
        autoload :CMPNZXADD, 'ronin/asm/x86_64/instructions/cmpnzxadd'
        autoload :CMPOXADD, 'ronin/asm/x86_64/instructions/cmpoxadd'
        autoload :CMPPD, 'ronin/asm/x86_64/instructions/cmppd'
        autoload :CMPPS, 'ronin/asm/x86_64/instructions/cmpps'
        autoload :CMPPXADD, 'ronin/asm/x86_64/instructions/cmppxadd'
        autoload :CMPSD, 'ronin/asm/x86_64/instructions/cmpsd'
        autoload :CMPSS, 'ronin/asm/x86_64/instructions/cmpss'
        autoload :CMPSXADD, 'ronin/asm/x86_64/instructions/cmpsxadd'
        autoload :CMPXCHG, 'ronin/asm/x86_64/instructions/cmpxchg'
        autoload :CMPXCHG16B, 'ronin/asm/x86_64/instructions/cmpxchg16b'
        autoload :CMPXCHG8B, 'ronin/asm/x86_64/instructions/cmpxchg8b'
        autoload :CMPZXADD, 'ronin/asm/x86_64/instructions/cmpzxadd'
        autoload :COMISD, 'ronin/asm/x86_64/instructions/comisd'
        autoload :COMISS, 'ronin/asm/x86_64/instructions/comiss'
        autoload :CPUID, 'ronin/asm/x86_64/instructions/cpuid'
        autoload :CQO, 'ronin/asm/x86_64/instructions/cqo'
        autoload :CRC32, 'ronin/asm/x86_64/instructions/crc32'
        autoload :CVTDQ2PD, 'ronin/asm/x86_64/instructions/cvtdq2pd'
        autoload :CVTDQ2PS, 'ronin/asm/x86_64/instructions/cvtdq2ps'
        autoload :CVTPD2DQ, 'ronin/asm/x86_64/instructions/cvtpd2dq'
        autoload :CVTPD2PI, 'ronin/asm/x86_64/instructions/cvtpd2pi'
        autoload :CVTPD2PS, 'ronin/asm/x86_64/instructions/cvtpd2ps'
        autoload :CVTPI2PD, 'ronin/asm/x86_64/instructions/cvtpi2pd'
        autoload :CVTPI2PS, 'ronin/asm/x86_64/instructions/cvtpi2ps'
        autoload :CVTPS2DQ, 'ronin/asm/x86_64/instructions/cvtps2dq'
        autoload :CVTPS2PD, 'ronin/asm/x86_64/instructions/cvtps2pd'
        autoload :CVTPS2PI, 'ronin/asm/x86_64/instructions/cvtps2pi'
        autoload :CVTSD2SI, 'ronin/asm/x86_64/instructions/cvtsd2si'
        autoload :CVTSD2SS, 'ronin/asm/x86_64/instructions/cvtsd2ss'
        autoload :CVTSI2SD, 'ronin/asm/x86_64/instructions/cvtsi2sd'
        autoload :CVTSI2SS, 'ronin/asm/x86_64/instructions/cvtsi2ss'
        autoload :CVTSS2SD, 'ronin/asm/x86_64/instructions/cvtss2sd'
        autoload :CVTSS2SI, 'ronin/asm/x86_64/instructions/cvtss2si'
        autoload :CVTTPD2DQ, 'ronin/asm/x86_64/instructions/cvttpd2dq'
        autoload :CVTTPD2PI, 'ronin/asm/x86_64/instructions/cvttpd2pi'
        autoload :CVTTPS2DQ, 'ronin/asm/x86_64/instructions/cvttps2dq'
        autoload :CVTTPS2PI, 'ronin/asm/x86_64/instructions/cvttps2pi'
        autoload :CVTTSD2SI, 'ronin/asm/x86_64/instructions/cvttsd2si'
        autoload :CVTTSS2SI, 'ronin/asm/x86_64/instructions/cvttss2si'
        autoload :CWD, 'ronin/asm/x86_64/instructions/cwd'
        autoload :CWDE, 'ronin/asm/x86_64/instructions/cwde'
        autoload :DEC, 'ronin/asm/x86_64/instructions/dec'
        autoload :DIV, 'ronin/asm/x86_64/instructions/div'
        autoload :DIVPD, 'ronin/asm/x86_64/instructions/divpd'
        autoload :DIVPS, 'ronin/asm/x86_64/instructions/divps'
        autoload :DIVSD, 'ronin/asm/x86_64/instructions/divsd'
        autoload :DIVSS, 'ronin/asm/x86_64/instructions/divss'
        autoload :DPPD, 'ronin/asm/x86_64/instructions/dppd'
        autoload :DPPS, 'ronin/asm/x86_64/instructions/dpps'
        autoload :EMMS, 'ronin/asm/x86_64/instructions/emms'
        autoload :ENDBR64, 'ronin/asm/x86_64/instructions/endbr64'
        autoload :EXTRACTPS, 'ronin/asm/x86_64/instructions/extractps'
        autoload :EXTRQ, 'ronin/asm/x86_64/instructions/extrq'
        autoload :FEMMS, 'ronin/asm/x86_64/instructions/femms'
        autoload :GF2P8AFFINEINVQB, 'ronin/asm/x86_64/instructions/gf2p8affineinvqb'
        autoload :GF2P8AFFINEQB, 'ronin/asm/x86_64/instructions/gf2p8affineqb'
        autoload :GF2P8MULB, 'ronin/asm/x86_64/instructions/gf2p8mulb'
        autoload :HADDPD, 'ronin/asm/x86_64/instructions/haddpd'
        autoload :HADDPS, 'ronin/asm/x86_64/instructions/haddps'
        autoload :HSUBPD, 'ronin/asm/x86_64/instructions/hsubpd'
        autoload :HSUBPS, 'ronin/asm/x86_64/instructions/hsubps'
        autoload :IDIV, 'ronin/asm/x86_64/instructions/idiv'
        autoload :IMUL, 'ronin/asm/x86_64/instructions/imul'
        autoload :INC, 'ronin/asm/x86_64/instructions/inc'
        autoload :INSERTPS, 'ronin/asm/x86_64/instructions/insertps'
        autoload :INSERTQ, 'ronin/asm/x86_64/instructions/insertq'
        autoload :INT, 'ronin/asm/x86_64/instructions/int'
        autoload :INT3, 'ronin/asm/x86_64/instructions/int3'
        autoload :JA, 'ronin/asm/x86_64/instructions/ja'
        autoload :JAE, 'ronin/asm/x86_64/instructions/jae'
        autoload :JB, 'ronin/asm/x86_64/instructions/jb'
        autoload :JBE, 'ronin/asm/x86_64/instructions/jbe'
        autoload :JC, 'ronin/asm/x86_64/instructions/jc'
        autoload :JE, 'ronin/asm/x86_64/instructions/je'
        autoload :JECXZ, 'ronin/asm/x86_64/instructions/jecxz'
        autoload :JG, 'ronin/asm/x86_64/instructions/jg'
        autoload :JGE, 'ronin/asm/x86_64/instructions/jge'
        autoload :JL, 'ronin/asm/x86_64/instructions/jl'
        autoload :JLE, 'ronin/asm/x86_64/instructions/jle'
        autoload :JMP, 'ronin/asm/x86_64/instructions/jmp'
        autoload :JNA, 'ronin/asm/x86_64/instructions/jna'
        autoload :JNAE, 'ronin/asm/x86_64/instructions/jnae'
        autoload :JNB, 'ronin/asm/x86_64/instructions/jnb'
        autoload :JNBE, 'ronin/asm/x86_64/instructions/jnbe'
        autoload :JNC, 'ronin/asm/x86_64/instructions/jnc'
        autoload :JNE, 'ronin/asm/x86_64/instructions/jne'
        autoload :JNG, 'ronin/asm/x86_64/instructions/jng'
        autoload :JNGE, 'ronin/asm/x86_64/instructions/jnge'
        autoload :JNL, 'ronin/asm/x86_64/instructions/jnl'
        autoload :JNLE, 'ronin/asm/x86_64/instructions/jnle'
        autoload :JNO, 'ronin/asm/x86_64/instructions/jno'
        autoload :JNP, 'ronin/asm/x86_64/instructions/jnp'
        autoload :JNS, 'ronin/asm/x86_64/instructions/jns'
        autoload :JNZ, 'ronin/asm/x86_64/instructions/jnz'
        autoload :JO, 'ronin/asm/x86_64/instructions/jo'
        autoload :JP, 'ronin/asm/x86_64/instructions/jp'
        autoload :JPE, 'ronin/asm/x86_64/instructions/jpe'
        autoload :JPO, 'ronin/asm/x86_64/instructions/jpo'
        autoload :JRCXZ, 'ronin/asm/x86_64/instructions/jrcxz'
        autoload :JS, 'ronin/asm/x86_64/instructions/js'
        autoload :JZ, 'ronin/asm/x86_64/instructions/jz'
        autoload :KADDB, 'ronin/asm/x86_64/instructions/kaddb'
        autoload :KADDD, 'ronin/asm/x86_64/instructions/kaddd'
        autoload :KADDQ, 'ronin/asm/x86_64/instructions/kaddq'
        autoload :KADDW, 'ronin/asm/x86_64/instructions/kaddw'
        autoload :KANDB, 'ronin/asm/x86_64/instructions/kandb'
        autoload :KANDD, 'ronin/asm/x86_64/instructions/kandd'
        autoload :KANDNB, 'ronin/asm/x86_64/instructions/kandnb'
        autoload :KANDND, 'ronin/asm/x86_64/instructions/kandnd'
        autoload :KANDNQ, 'ronin/asm/x86_64/instructions/kandnq'
        autoload :KANDNW, 'ronin/asm/x86_64/instructions/kandnw'
        autoload :KANDQ, 'ronin/asm/x86_64/instructions/kandq'
        autoload :KANDW, 'ronin/asm/x86_64/instructions/kandw'
        autoload :KMOVB, 'ronin/asm/x86_64/instructions/kmovb'
        autoload :KMOVD, 'ronin/asm/x86_64/instructions/kmovd'
        autoload :KMOVQ, 'ronin/asm/x86_64/instructions/kmovq'
        autoload :KMOVW, 'ronin/asm/x86_64/instructions/kmovw'
        autoload :KNOTB, 'ronin/asm/x86_64/instructions/knotb'
        autoload :KNOTD, 'ronin/asm/x86_64/instructions/knotd'
        autoload :KNOTQ, 'ronin/asm/x86_64/instructions/knotq'
        autoload :KNOTW, 'ronin/asm/x86_64/instructions/knotw'
        autoload :KORB, 'ronin/asm/x86_64/instructions/korb'
        autoload :KORD, 'ronin/asm/x86_64/instructions/kord'
        autoload :KORQ, 'ronin/asm/x86_64/instructions/korq'
        autoload :KORTESTB, 'ronin/asm/x86_64/instructions/kortestb'
        autoload :KORTESTD, 'ronin/asm/x86_64/instructions/kortestd'
        autoload :KORTESTQ, 'ronin/asm/x86_64/instructions/kortestq'
        autoload :KORTESTW, 'ronin/asm/x86_64/instructions/kortestw'
        autoload :KORW, 'ronin/asm/x86_64/instructions/korw'
        autoload :KSHIFTLB, 'ronin/asm/x86_64/instructions/kshiftlb'
        autoload :KSHIFTLD, 'ronin/asm/x86_64/instructions/kshiftld'
        autoload :KSHIFTLQ, 'ronin/asm/x86_64/instructions/kshiftlq'
        autoload :KSHIFTLW, 'ronin/asm/x86_64/instructions/kshiftlw'
        autoload :KSHIFTRB, 'ronin/asm/x86_64/instructions/kshiftrb'
        autoload :KSHIFTRD, 'ronin/asm/x86_64/instructions/kshiftrd'
        autoload :KSHIFTRQ, 'ronin/asm/x86_64/instructions/kshiftrq'
        autoload :KSHIFTRW, 'ronin/asm/x86_64/instructions/kshiftrw'
        autoload :KTESTB, 'ronin/asm/x86_64/instructions/ktestb'
        autoload :KTESTD, 'ronin/asm/x86_64/instructions/ktestd'
        autoload :KTESTQ, 'ronin/asm/x86_64/instructions/ktestq'
        autoload :KTESTW, 'ronin/asm/x86_64/instructions/ktestw'
        autoload :KUNPCKBW, 'ronin/asm/x86_64/instructions/kunpckbw'
        autoload :KUNPCKDQ, 'ronin/asm/x86_64/instructions/kunpckdq'
        autoload :KUNPCKWD, 'ronin/asm/x86_64/instructions/kunpckwd'
        autoload :KXNORB, 'ronin/asm/x86_64/instructions/kxnorb'
        autoload :KXNORD, 'ronin/asm/x86_64/instructions/kxnord'
        autoload :KXNORQ, 'ronin/asm/x86_64/instructions/kxnorq'
        autoload :KXNORW, 'ronin/asm/x86_64/instructions/kxnorw'
        autoload :KXORB, 'ronin/asm/x86_64/instructions/kxorb'
        autoload :KXORD, 'ronin/asm/x86_64/instructions/kxord'
        autoload :KXORQ, 'ronin/asm/x86_64/instructions/kxorq'
        autoload :KXORW, 'ronin/asm/x86_64/instructions/kxorw'
        autoload :LAHF, 'ronin/asm/x86_64/instructions/lahf'
        autoload :LDDQU, 'ronin/asm/x86_64/instructions/lddqu'
        autoload :LDMXCSR, 'ronin/asm/x86_64/instructions/ldmxcsr'
        autoload :LDTILECFG, 'ronin/asm/x86_64/instructions/ldtilecfg'
        autoload :LEA, 'ronin/asm/x86_64/instructions/lea'
        autoload :LFENCE, 'ronin/asm/x86_64/instructions/lfence'
        autoload :LZCNT, 'ronin/asm/x86_64/instructions/lzcnt'
        autoload :MASKMOVDQU, 'ronin/asm/x86_64/instructions/maskmovdqu'
        autoload :MASKMOVQ, 'ronin/asm/x86_64/instructions/maskmovq'
        autoload :MAXPD, 'ronin/asm/x86_64/instructions/maxpd'
        autoload :MAXPS, 'ronin/asm/x86_64/instructions/maxps'
        autoload :MAXSD, 'ronin/asm/x86_64/instructions/maxsd'
        autoload :MAXSS, 'ronin/asm/x86_64/instructions/maxss'
        autoload :MCOMMIT, 'ronin/asm/x86_64/instructions/mcommit'
        autoload :MFENCE, 'ronin/asm/x86_64/instructions/mfence'
        autoload :MINPD, 'ronin/asm/x86_64/instructions/minpd'
        autoload :MINPS, 'ronin/asm/x86_64/instructions/minps'
        autoload :MINSD, 'ronin/asm/x86_64/instructions/minsd'
        autoload :MINSS, 'ronin/asm/x86_64/instructions/minss'
        autoload :MONITOR, 'ronin/asm/x86_64/instructions/monitor'
        autoload :MONITORX, 'ronin/asm/x86_64/instructions/monitorx'
        autoload :MOV, 'ronin/asm/x86_64/instructions/mov'
        autoload :MOVAPD, 'ronin/asm/x86_64/instructions/movapd'
        autoload :MOVAPS, 'ronin/asm/x86_64/instructions/movaps'
        autoload :MOVBE, 'ronin/asm/x86_64/instructions/movbe'
        autoload :MOVD, 'ronin/asm/x86_64/instructions/movd'
        autoload :MOVDDUP, 'ronin/asm/x86_64/instructions/movddup'
        autoload :MOVDIR64B, 'ronin/asm/x86_64/instructions/movdir64b'
        autoload :MOVDIRI, 'ronin/asm/x86_64/instructions/movdiri'
        autoload :MOVDQ2Q, 'ronin/asm/x86_64/instructions/movdq2q'
        autoload :MOVDQA, 'ronin/asm/x86_64/instructions/movdqa'
        autoload :MOVDQU, 'ronin/asm/x86_64/instructions/movdqu'
        autoload :MOVHLPS, 'ronin/asm/x86_64/instructions/movhlps'
        autoload :MOVHPD, 'ronin/asm/x86_64/instructions/movhpd'
        autoload :MOVHPS, 'ronin/asm/x86_64/instructions/movhps'
        autoload :MOVLHPS, 'ronin/asm/x86_64/instructions/movlhps'
        autoload :MOVLPD, 'ronin/asm/x86_64/instructions/movlpd'
        autoload :MOVLPS, 'ronin/asm/x86_64/instructions/movlps'
        autoload :MOVMSKPD, 'ronin/asm/x86_64/instructions/movmskpd'
        autoload :MOVMSKPS, 'ronin/asm/x86_64/instructions/movmskps'
        autoload :MOVNTDQ, 'ronin/asm/x86_64/instructions/movntdq'
        autoload :MOVNTDQA, 'ronin/asm/x86_64/instructions/movntdqa'
        autoload :MOVNTI, 'ronin/asm/x86_64/instructions/movnti'
        autoload :MOVNTPD, 'ronin/asm/x86_64/instructions/movntpd'
        autoload :MOVNTPS, 'ronin/asm/x86_64/instructions/movntps'
        autoload :MOVNTQ, 'ronin/asm/x86_64/instructions/movntq'
        autoload :MOVNTSD, 'ronin/asm/x86_64/instructions/movntsd'
        autoload :MOVNTSS, 'ronin/asm/x86_64/instructions/movntss'
        autoload :MOVQ, 'ronin/asm/x86_64/instructions/movq'
        autoload :MOVQ2DQ, 'ronin/asm/x86_64/instructions/movq2dq'
        autoload :MOVSD, 'ronin/asm/x86_64/instructions/movsd'
        autoload :MOVSHDUP, 'ronin/asm/x86_64/instructions/movshdup'
        autoload :MOVSLDUP, 'ronin/asm/x86_64/instructions/movsldup'
        autoload :MOVSS, 'ronin/asm/x86_64/instructions/movss'
        autoload :MOVSX, 'ronin/asm/x86_64/instructions/movsx'
        autoload :MOVSXD, 'ronin/asm/x86_64/instructions/movsxd'
        autoload :MOVUPD, 'ronin/asm/x86_64/instructions/movupd'
        autoload :MOVUPS, 'ronin/asm/x86_64/instructions/movups'
        autoload :MOVZX, 'ronin/asm/x86_64/instructions/movzx'
        autoload :MPSADBW, 'ronin/asm/x86_64/instructions/mpsadbw'
        autoload :MUL, 'ronin/asm/x86_64/instructions/mul'
        autoload :MULPD, 'ronin/asm/x86_64/instructions/mulpd'
        autoload :MULPS, 'ronin/asm/x86_64/instructions/mulps'
        autoload :MULSD, 'ronin/asm/x86_64/instructions/mulsd'
        autoload :MULSS, 'ronin/asm/x86_64/instructions/mulss'
        autoload :MULX, 'ronin/asm/x86_64/instructions/mulx'
        autoload :MWAIT, 'ronin/asm/x86_64/instructions/mwait'
        autoload :MWAITX, 'ronin/asm/x86_64/instructions/mwaitx'
        autoload :NEG, 'ronin/asm/x86_64/instructions/neg'
        autoload :NOP, 'ronin/asm/x86_64/instructions/nop'
        autoload :NOT, 'ronin/asm/x86_64/instructions/not'
        autoload :OR, 'ronin/asm/x86_64/instructions/or'
        autoload :ORPD, 'ronin/asm/x86_64/instructions/orpd'
        autoload :ORPS, 'ronin/asm/x86_64/instructions/orps'
        autoload :PABSB, 'ronin/asm/x86_64/instructions/pabsb'
        autoload :PABSD, 'ronin/asm/x86_64/instructions/pabsd'
        autoload :PABSW, 'ronin/asm/x86_64/instructions/pabsw'
        autoload :PACKSSDW, 'ronin/asm/x86_64/instructions/packssdw'
        autoload :PACKSSWB, 'ronin/asm/x86_64/instructions/packsswb'
        autoload :PACKUSDW, 'ronin/asm/x86_64/instructions/packusdw'
        autoload :PACKUSWB, 'ronin/asm/x86_64/instructions/packuswb'
        autoload :PADDB, 'ronin/asm/x86_64/instructions/paddb'
        autoload :PADDD, 'ronin/asm/x86_64/instructions/paddd'
        autoload :PADDQ, 'ronin/asm/x86_64/instructions/paddq'
        autoload :PADDSB, 'ronin/asm/x86_64/instructions/paddsb'
        autoload :PADDSW, 'ronin/asm/x86_64/instructions/paddsw'
        autoload :PADDUSB, 'ronin/asm/x86_64/instructions/paddusb'
        autoload :PADDUSW, 'ronin/asm/x86_64/instructions/paddusw'
        autoload :PADDW, 'ronin/asm/x86_64/instructions/paddw'
        autoload :PALIGNR, 'ronin/asm/x86_64/instructions/palignr'
        autoload :PAND, 'ronin/asm/x86_64/instructions/pand'
        autoload :PANDN, 'ronin/asm/x86_64/instructions/pandn'
        autoload :PAUSE, 'ronin/asm/x86_64/instructions/pause'
        autoload :PAVGB, 'ronin/asm/x86_64/instructions/pavgb'
        autoload :PAVGUSB, 'ronin/asm/x86_64/instructions/pavgusb'
        autoload :PAVGW, 'ronin/asm/x86_64/instructions/pavgw'
        autoload :PBLENDVB, 'ronin/asm/x86_64/instructions/pblendvb'
        autoload :PBLENDW, 'ronin/asm/x86_64/instructions/pblendw'
        autoload :PCLMULQDQ, 'ronin/asm/x86_64/instructions/pclmulqdq'
        autoload :PCMPEQB, 'ronin/asm/x86_64/instructions/pcmpeqb'
        autoload :PCMPEQD, 'ronin/asm/x86_64/instructions/pcmpeqd'
        autoload :PCMPEQQ, 'ronin/asm/x86_64/instructions/pcmpeqq'
        autoload :PCMPEQW, 'ronin/asm/x86_64/instructions/pcmpeqw'
        autoload :PCMPESTRI, 'ronin/asm/x86_64/instructions/pcmpestri'
        autoload :PCMPESTRM, 'ronin/asm/x86_64/instructions/pcmpestrm'
        autoload :PCMPGTB, 'ronin/asm/x86_64/instructions/pcmpgtb'
        autoload :PCMPGTD, 'ronin/asm/x86_64/instructions/pcmpgtd'
        autoload :PCMPGTQ, 'ronin/asm/x86_64/instructions/pcmpgtq'
        autoload :PCMPGTW, 'ronin/asm/x86_64/instructions/pcmpgtw'
        autoload :PCMPISTRI, 'ronin/asm/x86_64/instructions/pcmpistri'
        autoload :PCMPISTRM, 'ronin/asm/x86_64/instructions/pcmpistrm'
        autoload :PDEP, 'ronin/asm/x86_64/instructions/pdep'
        autoload :PEXT, 'ronin/asm/x86_64/instructions/pext'
        autoload :PEXTRB, 'ronin/asm/x86_64/instructions/pextrb'
        autoload :PEXTRD, 'ronin/asm/x86_64/instructions/pextrd'
        autoload :PEXTRQ, 'ronin/asm/x86_64/instructions/pextrq'
        autoload :PEXTRW, 'ronin/asm/x86_64/instructions/pextrw'
        autoload :PF2ID, 'ronin/asm/x86_64/instructions/pf2id'
        autoload :PF2IW, 'ronin/asm/x86_64/instructions/pf2iw'
        autoload :PFACC, 'ronin/asm/x86_64/instructions/pfacc'
        autoload :PFADD, 'ronin/asm/x86_64/instructions/pfadd'
        autoload :PFCMPEQ, 'ronin/asm/x86_64/instructions/pfcmpeq'
        autoload :PFCMPGE, 'ronin/asm/x86_64/instructions/pfcmpge'
        autoload :PFCMPGT, 'ronin/asm/x86_64/instructions/pfcmpgt'
        autoload :PFMAX, 'ronin/asm/x86_64/instructions/pfmax'
        autoload :PFMIN, 'ronin/asm/x86_64/instructions/pfmin'
        autoload :PFMUL, 'ronin/asm/x86_64/instructions/pfmul'
        autoload :PFNACC, 'ronin/asm/x86_64/instructions/pfnacc'
        autoload :PFPNACC, 'ronin/asm/x86_64/instructions/pfpnacc'
        autoload :PFRCP, 'ronin/asm/x86_64/instructions/pfrcp'
        autoload :PFRCPIT1, 'ronin/asm/x86_64/instructions/pfrcpit1'
        autoload :PFRCPIT2, 'ronin/asm/x86_64/instructions/pfrcpit2'
        autoload :PFRSQIT1, 'ronin/asm/x86_64/instructions/pfrsqit1'
        autoload :PFRSQRT, 'ronin/asm/x86_64/instructions/pfrsqrt'
        autoload :PFSUB, 'ronin/asm/x86_64/instructions/pfsub'
        autoload :PFSUBR, 'ronin/asm/x86_64/instructions/pfsubr'
        autoload :PHADDD, 'ronin/asm/x86_64/instructions/phaddd'
        autoload :PHADDSW, 'ronin/asm/x86_64/instructions/phaddsw'
        autoload :PHADDW, 'ronin/asm/x86_64/instructions/phaddw'
        autoload :PHMINPOSUW, 'ronin/asm/x86_64/instructions/phminposuw'
        autoload :PHSUBD, 'ronin/asm/x86_64/instructions/phsubd'
        autoload :PHSUBSW, 'ronin/asm/x86_64/instructions/phsubsw'
        autoload :PHSUBW, 'ronin/asm/x86_64/instructions/phsubw'
        autoload :PI2FD, 'ronin/asm/x86_64/instructions/pi2fd'
        autoload :PI2FW, 'ronin/asm/x86_64/instructions/pi2fw'
        autoload :PINSRB, 'ronin/asm/x86_64/instructions/pinsrb'
        autoload :PINSRD, 'ronin/asm/x86_64/instructions/pinsrd'
        autoload :PINSRQ, 'ronin/asm/x86_64/instructions/pinsrq'
        autoload :PINSRW, 'ronin/asm/x86_64/instructions/pinsrw'
        autoload :PMADDUBSW, 'ronin/asm/x86_64/instructions/pmaddubsw'
        autoload :PMADDWD, 'ronin/asm/x86_64/instructions/pmaddwd'
        autoload :PMAXSB, 'ronin/asm/x86_64/instructions/pmaxsb'
        autoload :PMAXSD, 'ronin/asm/x86_64/instructions/pmaxsd'
        autoload :PMAXSW, 'ronin/asm/x86_64/instructions/pmaxsw'
        autoload :PMAXUB, 'ronin/asm/x86_64/instructions/pmaxub'
        autoload :PMAXUD, 'ronin/asm/x86_64/instructions/pmaxud'
        autoload :PMAXUW, 'ronin/asm/x86_64/instructions/pmaxuw'
        autoload :PMINSB, 'ronin/asm/x86_64/instructions/pminsb'
        autoload :PMINSD, 'ronin/asm/x86_64/instructions/pminsd'
        autoload :PMINSW, 'ronin/asm/x86_64/instructions/pminsw'
        autoload :PMINUB, 'ronin/asm/x86_64/instructions/pminub'
        autoload :PMINUD, 'ronin/asm/x86_64/instructions/pminud'
        autoload :PMINUW, 'ronin/asm/x86_64/instructions/pminuw'
        autoload :PMOVMSKB, 'ronin/asm/x86_64/instructions/pmovmskb'
        autoload :PMOVSXBD, 'ronin/asm/x86_64/instructions/pmovsxbd'
        autoload :PMOVSXBQ, 'ronin/asm/x86_64/instructions/pmovsxbq'
        autoload :PMOVSXBW, 'ronin/asm/x86_64/instructions/pmovsxbw'
        autoload :PMOVSXDQ, 'ronin/asm/x86_64/instructions/pmovsxdq'
        autoload :PMOVSXWD, 'ronin/asm/x86_64/instructions/pmovsxwd'
        autoload :PMOVSXWQ, 'ronin/asm/x86_64/instructions/pmovsxwq'
        autoload :PMOVZXBD, 'ronin/asm/x86_64/instructions/pmovzxbd'
        autoload :PMOVZXBQ, 'ronin/asm/x86_64/instructions/pmovzxbq'
        autoload :PMOVZXBW, 'ronin/asm/x86_64/instructions/pmovzxbw'
        autoload :PMOVZXDQ, 'ronin/asm/x86_64/instructions/pmovzxdq'
        autoload :PMOVZXWD, 'ronin/asm/x86_64/instructions/pmovzxwd'
        autoload :PMOVZXWQ, 'ronin/asm/x86_64/instructions/pmovzxwq'
        autoload :PMULDQ, 'ronin/asm/x86_64/instructions/pmuldq'
        autoload :PMULHRSW, 'ronin/asm/x86_64/instructions/pmulhrsw'
        autoload :PMULHRW, 'ronin/asm/x86_64/instructions/pmulhrw'
        autoload :PMULHUW, 'ronin/asm/x86_64/instructions/pmulhuw'
        autoload :PMULHW, 'ronin/asm/x86_64/instructions/pmulhw'
        autoload :PMULLD, 'ronin/asm/x86_64/instructions/pmulld'
        autoload :PMULLW, 'ronin/asm/x86_64/instructions/pmullw'
        autoload :PMULUDQ, 'ronin/asm/x86_64/instructions/pmuludq'
        autoload :POP, 'ronin/asm/x86_64/instructions/pop'
        autoload :POPCNT, 'ronin/asm/x86_64/instructions/popcnt'
        autoload :POR, 'ronin/asm/x86_64/instructions/por'
        autoload :PREFETCH, 'ronin/asm/x86_64/instructions/prefetch'
        autoload :PREFETCHIT0, 'ronin/asm/x86_64/instructions/prefetchit0'
        autoload :PREFETCHIT1, 'ronin/asm/x86_64/instructions/prefetchit1'
        autoload :PREFETCHNTA, 'ronin/asm/x86_64/instructions/prefetchnta'
        autoload :PREFETCHT0, 'ronin/asm/x86_64/instructions/prefetcht0'
        autoload :PREFETCHT1, 'ronin/asm/x86_64/instructions/prefetcht1'
        autoload :PREFETCHT2, 'ronin/asm/x86_64/instructions/prefetcht2'
        autoload :PREFETCHW, 'ronin/asm/x86_64/instructions/prefetchw'
        autoload :PREFETCHWT1, 'ronin/asm/x86_64/instructions/prefetchwt1'
        autoload :PSADBW, 'ronin/asm/x86_64/instructions/psadbw'
        autoload :PSHUFB, 'ronin/asm/x86_64/instructions/pshufb'
        autoload :PSHUFD, 'ronin/asm/x86_64/instructions/pshufd'
        autoload :PSHUFHW, 'ronin/asm/x86_64/instructions/pshufhw'
        autoload :PSHUFLW, 'ronin/asm/x86_64/instructions/pshuflw'
        autoload :PSHUFW, 'ronin/asm/x86_64/instructions/pshufw'
        autoload :PSIGNB, 'ronin/asm/x86_64/instructions/psignb'
        autoload :PSIGND, 'ronin/asm/x86_64/instructions/psignd'
        autoload :PSIGNW, 'ronin/asm/x86_64/instructions/psignw'
        autoload :PSLLD, 'ronin/asm/x86_64/instructions/pslld'
        autoload :PSLLDQ, 'ronin/asm/x86_64/instructions/pslldq'
        autoload :PSLLQ, 'ronin/asm/x86_64/instructions/psllq'
        autoload :PSLLW, 'ronin/asm/x86_64/instructions/psllw'
        autoload :PSRAD, 'ronin/asm/x86_64/instructions/psrad'
        autoload :PSRAW, 'ronin/asm/x86_64/instructions/psraw'
        autoload :PSRLD, 'ronin/asm/x86_64/instructions/psrld'
        autoload :PSRLDQ, 'ronin/asm/x86_64/instructions/psrldq'
        autoload :PSRLQ, 'ronin/asm/x86_64/instructions/psrlq'
        autoload :PSRLW, 'ronin/asm/x86_64/instructions/psrlw'
        autoload :PSUBB, 'ronin/asm/x86_64/instructions/psubb'
        autoload :PSUBD, 'ronin/asm/x86_64/instructions/psubd'
        autoload :PSUBQ, 'ronin/asm/x86_64/instructions/psubq'
        autoload :PSUBSB, 'ronin/asm/x86_64/instructions/psubsb'
        autoload :PSUBSW, 'ronin/asm/x86_64/instructions/psubsw'
        autoload :PSUBUSB, 'ronin/asm/x86_64/instructions/psubusb'
        autoload :PSUBUSW, 'ronin/asm/x86_64/instructions/psubusw'
        autoload :PSUBW, 'ronin/asm/x86_64/instructions/psubw'
        autoload :PSWAPD, 'ronin/asm/x86_64/instructions/pswapd'
        autoload :PTEST, 'ronin/asm/x86_64/instructions/ptest'
        autoload :PUNPCKHBW, 'ronin/asm/x86_64/instructions/punpckhbw'
        autoload :PUNPCKHDQ, 'ronin/asm/x86_64/instructions/punpckhdq'
        autoload :PUNPCKHQDQ, 'ronin/asm/x86_64/instructions/punpckhqdq'
        autoload :PUNPCKHWD, 'ronin/asm/x86_64/instructions/punpckhwd'
        autoload :PUNPCKLBW, 'ronin/asm/x86_64/instructions/punpcklbw'
        autoload :PUNPCKLDQ, 'ronin/asm/x86_64/instructions/punpckldq'
        autoload :PUNPCKLQDQ, 'ronin/asm/x86_64/instructions/punpcklqdq'
        autoload :PUNPCKLWD, 'ronin/asm/x86_64/instructions/punpcklwd'
        autoload :PUSH, 'ronin/asm/x86_64/instructions/push'
        autoload :PXOR, 'ronin/asm/x86_64/instructions/pxor'
        autoload :RCL, 'ronin/asm/x86_64/instructions/rcl'
        autoload :RCPPS, 'ronin/asm/x86_64/instructions/rcpps'
        autoload :RCPSS, 'ronin/asm/x86_64/instructions/rcpss'
        autoload :RCR, 'ronin/asm/x86_64/instructions/rcr'
        autoload :RDFSBASE, 'ronin/asm/x86_64/instructions/rdfsbase'
        autoload :RDGSBASE, 'ronin/asm/x86_64/instructions/rdgsbase'
        autoload :RDPID, 'ronin/asm/x86_64/instructions/rdpid'
        autoload :RDPMC, 'ronin/asm/x86_64/instructions/rdpmc'
        autoload :RDPRU, 'ronin/asm/x86_64/instructions/rdpru'
        autoload :RDRAND, 'ronin/asm/x86_64/instructions/rdrand'
        autoload :RDSEED, 'ronin/asm/x86_64/instructions/rdseed'
        autoload :RDTSC, 'ronin/asm/x86_64/instructions/rdtsc'
        autoload :RDTSCP, 'ronin/asm/x86_64/instructions/rdtscp'
        autoload :RET, 'ronin/asm/x86_64/instructions/ret'
        autoload :ROL, 'ronin/asm/x86_64/instructions/rol'
        autoload :ROR, 'ronin/asm/x86_64/instructions/ror'
        autoload :RORX, 'ronin/asm/x86_64/instructions/rorx'
        autoload :ROUNDPD, 'ronin/asm/x86_64/instructions/roundpd'
        autoload :ROUNDPS, 'ronin/asm/x86_64/instructions/roundps'
        autoload :ROUNDSD, 'ronin/asm/x86_64/instructions/roundsd'
        autoload :ROUNDSS, 'ronin/asm/x86_64/instructions/roundss'
        autoload :RSQRTPS, 'ronin/asm/x86_64/instructions/rsqrtps'
        autoload :RSQRTSS, 'ronin/asm/x86_64/instructions/rsqrtss'
        autoload :SAHF, 'ronin/asm/x86_64/instructions/sahf'
        autoload :SAL, 'ronin/asm/x86_64/instructions/sal'
        autoload :SAR, 'ronin/asm/x86_64/instructions/sar'
        autoload :SARX, 'ronin/asm/x86_64/instructions/sarx'
        autoload :SBB, 'ronin/asm/x86_64/instructions/sbb'
        autoload :SERIALIZE, 'ronin/asm/x86_64/instructions/serialize'
        autoload :SETA, 'ronin/asm/x86_64/instructions/seta'
        autoload :SETAE, 'ronin/asm/x86_64/instructions/setae'
        autoload :SETB, 'ronin/asm/x86_64/instructions/setb'
        autoload :SETBE, 'ronin/asm/x86_64/instructions/setbe'
        autoload :SETC, 'ronin/asm/x86_64/instructions/setc'
        autoload :SETE, 'ronin/asm/x86_64/instructions/sete'
        autoload :SETG, 'ronin/asm/x86_64/instructions/setg'
        autoload :SETGE, 'ronin/asm/x86_64/instructions/setge'
        autoload :SETL, 'ronin/asm/x86_64/instructions/setl'
        autoload :SETLE, 'ronin/asm/x86_64/instructions/setle'
        autoload :SETNA, 'ronin/asm/x86_64/instructions/setna'
        autoload :SETNAE, 'ronin/asm/x86_64/instructions/setnae'
        autoload :SETNB, 'ronin/asm/x86_64/instructions/setnb'
        autoload :SETNBE, 'ronin/asm/x86_64/instructions/setnbe'
        autoload :SETNC, 'ronin/asm/x86_64/instructions/setnc'
        autoload :SETNE, 'ronin/asm/x86_64/instructions/setne'
        autoload :SETNG, 'ronin/asm/x86_64/instructions/setng'
        autoload :SETNGE, 'ronin/asm/x86_64/instructions/setnge'
        autoload :SETNL, 'ronin/asm/x86_64/instructions/setnl'
        autoload :SETNLE, 'ronin/asm/x86_64/instructions/setnle'
        autoload :SETNO, 'ronin/asm/x86_64/instructions/setno'
        autoload :SETNP, 'ronin/asm/x86_64/instructions/setnp'
        autoload :SETNS, 'ronin/asm/x86_64/instructions/setns'
        autoload :SETNZ, 'ronin/asm/x86_64/instructions/setnz'
        autoload :SETO, 'ronin/asm/x86_64/instructions/seto'
        autoload :SETP, 'ronin/asm/x86_64/instructions/setp'
        autoload :SETPE, 'ronin/asm/x86_64/instructions/setpe'
        autoload :SETPO, 'ronin/asm/x86_64/instructions/setpo'
        autoload :SETS, 'ronin/asm/x86_64/instructions/sets'
        autoload :SETZ, 'ronin/asm/x86_64/instructions/setz'
        autoload :SFENCE, 'ronin/asm/x86_64/instructions/sfence'
        autoload :SHA1MSG1, 'ronin/asm/x86_64/instructions/sha1msg1'
        autoload :SHA1MSG2, 'ronin/asm/x86_64/instructions/sha1msg2'
        autoload :SHA1NEXTE, 'ronin/asm/x86_64/instructions/sha1nexte'
        autoload :SHA1RNDS4, 'ronin/asm/x86_64/instructions/sha1rnds4'
        autoload :SHA256MSG1, 'ronin/asm/x86_64/instructions/sha256msg1'
        autoload :SHA256MSG2, 'ronin/asm/x86_64/instructions/sha256msg2'
        autoload :SHA256RNDS2, 'ronin/asm/x86_64/instructions/sha256rnds2'
        autoload :SHL, 'ronin/asm/x86_64/instructions/shl'
        autoload :SHLD, 'ronin/asm/x86_64/instructions/shld'
        autoload :SHLX, 'ronin/asm/x86_64/instructions/shlx'
        autoload :SHR, 'ronin/asm/x86_64/instructions/shr'
        autoload :SHRD, 'ronin/asm/x86_64/instructions/shrd'
        autoload :SHRX, 'ronin/asm/x86_64/instructions/shrx'
        autoload :SHUFPD, 'ronin/asm/x86_64/instructions/shufpd'
        autoload :SHUFPS, 'ronin/asm/x86_64/instructions/shufps'
        autoload :SQRTPD, 'ronin/asm/x86_64/instructions/sqrtpd'
        autoload :SQRTPS, 'ronin/asm/x86_64/instructions/sqrtps'
        autoload :SQRTSD, 'ronin/asm/x86_64/instructions/sqrtsd'
        autoload :SQRTSS, 'ronin/asm/x86_64/instructions/sqrtss'
        autoload :STC, 'ronin/asm/x86_64/instructions/stc'
        autoload :STD, 'ronin/asm/x86_64/instructions/std'
        autoload :STMXCSR, 'ronin/asm/x86_64/instructions/stmxcsr'
        autoload :STTILECFG, 'ronin/asm/x86_64/instructions/sttilecfg'
        autoload :SUB, 'ronin/asm/x86_64/instructions/sub'
        autoload :SUBPD, 'ronin/asm/x86_64/instructions/subpd'
        autoload :SUBPS, 'ronin/asm/x86_64/instructions/subps'
        autoload :SUBSD, 'ronin/asm/x86_64/instructions/subsd'
        autoload :SUBSS, 'ronin/asm/x86_64/instructions/subss'
        autoload :SYSCALL, 'ronin/asm/x86_64/instructions/syscall'
        autoload :T1MSKC, 'ronin/asm/x86_64/instructions/t1mskc'
        autoload :TCMMIMFP16PS, 'ronin/asm/x86_64/instructions/tcmmimfp16ps'
        autoload :TCMMRLFP16PS, 'ronin/asm/x86_64/instructions/tcmmrlfp16ps'
        autoload :TDPBF16PS, 'ronin/asm/x86_64/instructions/tdpbf16ps'
        autoload :TDPBSSD, 'ronin/asm/x86_64/instructions/tdpbssd'
        autoload :TDPBSUD, 'ronin/asm/x86_64/instructions/tdpbsud'
        autoload :TDPBUSD, 'ronin/asm/x86_64/instructions/tdpbusd'
        autoload :TDPBUUD, 'ronin/asm/x86_64/instructions/tdpbuud'
        autoload :TDPFP16PS, 'ronin/asm/x86_64/instructions/tdpfp16ps'
        autoload :TEST, 'ronin/asm/x86_64/instructions/test'
        autoload :TILELOADD, 'ronin/asm/x86_64/instructions/tileloadd'
        autoload :TILELOADDT1, 'ronin/asm/x86_64/instructions/tileloaddt1'
        autoload :TILERELEASE, 'ronin/asm/x86_64/instructions/tilerelease'
        autoload :TILESTORED, 'ronin/asm/x86_64/instructions/tilestored'
        autoload :TILEZERO, 'ronin/asm/x86_64/instructions/tilezero'
        autoload :TPAUSE, 'ronin/asm/x86_64/instructions/tpause'
        autoload :TZCNT, 'ronin/asm/x86_64/instructions/tzcnt'
        autoload :TZMSK, 'ronin/asm/x86_64/instructions/tzmsk'
        autoload :UCOMISD, 'ronin/asm/x86_64/instructions/ucomisd'
        autoload :UCOMISS, 'ronin/asm/x86_64/instructions/ucomiss'
        autoload :UD2, 'ronin/asm/x86_64/instructions/ud2'
        autoload :UMONITOR, 'ronin/asm/x86_64/instructions/umonitor'
        autoload :UMWAIT, 'ronin/asm/x86_64/instructions/umwait'
        autoload :UNPCKHPD, 'ronin/asm/x86_64/instructions/unpckhpd'
        autoload :UNPCKHPS, 'ronin/asm/x86_64/instructions/unpckhps'
        autoload :UNPCKLPD, 'ronin/asm/x86_64/instructions/unpcklpd'
        autoload :UNPCKLPS, 'ronin/asm/x86_64/instructions/unpcklps'
        autoload :VADDPD, 'ronin/asm/x86_64/instructions/vaddpd'
        autoload :VADDPH, 'ronin/asm/x86_64/instructions/vaddph'
        autoload :VADDPS, 'ronin/asm/x86_64/instructions/vaddps'
        autoload :VADDSD, 'ronin/asm/x86_64/instructions/vaddsd'
        autoload :VADDSH, 'ronin/asm/x86_64/instructions/vaddsh'
        autoload :VADDSS, 'ronin/asm/x86_64/instructions/vaddss'
        autoload :VADDSUBPD, 'ronin/asm/x86_64/instructions/vaddsubpd'
        autoload :VADDSUBPS, 'ronin/asm/x86_64/instructions/vaddsubps'
        autoload :VAESDEC, 'ronin/asm/x86_64/instructions/vaesdec'
        autoload :VAESDECLAST, 'ronin/asm/x86_64/instructions/vaesdeclast'
        autoload :VAESENC, 'ronin/asm/x86_64/instructions/vaesenc'
        autoload :VAESENCLAST, 'ronin/asm/x86_64/instructions/vaesenclast'
        autoload :VAESIMC, 'ronin/asm/x86_64/instructions/vaesimc'
        autoload :VAESKEYGENASSIST, 'ronin/asm/x86_64/instructions/vaeskeygenassist'
        autoload :VALIGND, 'ronin/asm/x86_64/instructions/valignd'
        autoload :VALIGNQ, 'ronin/asm/x86_64/instructions/valignq'
        autoload :VANDNPD, 'ronin/asm/x86_64/instructions/vandnpd'
        autoload :VANDNPS, 'ronin/asm/x86_64/instructions/vandnps'
        autoload :VANDPD, 'ronin/asm/x86_64/instructions/vandpd'
        autoload :VANDPS, 'ronin/asm/x86_64/instructions/vandps'
        autoload :VBCSTNEBF162PS, 'ronin/asm/x86_64/instructions/vbcstnebf162ps'
        autoload :VBCSTNESH2PS, 'ronin/asm/x86_64/instructions/vbcstnesh2ps'
        autoload :VBLENDMPD, 'ronin/asm/x86_64/instructions/vblendmpd'
        autoload :VBLENDMPS, 'ronin/asm/x86_64/instructions/vblendmps'
        autoload :VBLENDPD, 'ronin/asm/x86_64/instructions/vblendpd'
        autoload :VBLENDPS, 'ronin/asm/x86_64/instructions/vblendps'
        autoload :VBLENDVPD, 'ronin/asm/x86_64/instructions/vblendvpd'
        autoload :VBLENDVPS, 'ronin/asm/x86_64/instructions/vblendvps'
        autoload :VBROADCASTF128, 'ronin/asm/x86_64/instructions/vbroadcastf128'
        autoload :VBROADCASTF32X2, 'ronin/asm/x86_64/instructions/vbroadcastf32x2'
        autoload :VBROADCASTF32X4, 'ronin/asm/x86_64/instructions/vbroadcastf32x4'
        autoload :VBROADCASTF32X8, 'ronin/asm/x86_64/instructions/vbroadcastf32x8'
        autoload :VBROADCASTF64X2, 'ronin/asm/x86_64/instructions/vbroadcastf64x2'
        autoload :VBROADCASTF64X4, 'ronin/asm/x86_64/instructions/vbroadcastf64x4'
        autoload :VBROADCASTI128, 'ronin/asm/x86_64/instructions/vbroadcasti128'
        autoload :VBROADCASTI32X2, 'ronin/asm/x86_64/instructions/vbroadcasti32x2'
        autoload :VBROADCASTI32X4, 'ronin/asm/x86_64/instructions/vbroadcasti32x4'
        autoload :VBROADCASTI32X8, 'ronin/asm/x86_64/instructions/vbroadcasti32x8'
        autoload :VBROADCASTI64X2, 'ronin/asm/x86_64/instructions/vbroadcasti64x2'
        autoload :VBROADCASTI64X4, 'ronin/asm/x86_64/instructions/vbroadcasti64x4'
        autoload :VBROADCASTSD, 'ronin/asm/x86_64/instructions/vbroadcastsd'
        autoload :VBROADCASTSS, 'ronin/asm/x86_64/instructions/vbroadcastss'
        autoload :VCMPPD, 'ronin/asm/x86_64/instructions/vcmppd'
        autoload :VCMPPH, 'ronin/asm/x86_64/instructions/vcmpph'
        autoload :VCMPPS, 'ronin/asm/x86_64/instructions/vcmpps'
        autoload :VCMPSD, 'ronin/asm/x86_64/instructions/vcmpsd'
        autoload :VCMPSH, 'ronin/asm/x86_64/instructions/vcmpsh'
        autoload :VCMPSS, 'ronin/asm/x86_64/instructions/vcmpss'
        autoload :VCOMISD, 'ronin/asm/x86_64/instructions/vcomisd'
        autoload :VCOMISH, 'ronin/asm/x86_64/instructions/vcomish'
        autoload :VCOMISS, 'ronin/asm/x86_64/instructions/vcomiss'
        autoload :VCOMPRESSPD, 'ronin/asm/x86_64/instructions/vcompresspd'
        autoload :VCOMPRESSPS, 'ronin/asm/x86_64/instructions/vcompressps'
        autoload :VCVTDQ2PD, 'ronin/asm/x86_64/instructions/vcvtdq2pd'
        autoload :VCVTDQ2PH, 'ronin/asm/x86_64/instructions/vcvtdq2ph'
        autoload :VCVTDQ2PS, 'ronin/asm/x86_64/instructions/vcvtdq2ps'
        autoload :VCVTNE2PS2BF16, 'ronin/asm/x86_64/instructions/vcvtne2ps2bf16'
        autoload :VCVTNEEBF162PS, 'ronin/asm/x86_64/instructions/vcvtneebf162ps'
        autoload :VCVTNEEPH2PS, 'ronin/asm/x86_64/instructions/vcvtneeph2ps'
        autoload :VCVTNEOBF162PS, 'ronin/asm/x86_64/instructions/vcvtneobf162ps'
        autoload :VCVTNEOPH2PS, 'ronin/asm/x86_64/instructions/vcvtneoph2ps'
        autoload :VCVTNEPS2BF16, 'ronin/asm/x86_64/instructions/vcvtneps2bf16'
        autoload :VCVTPD2DQ, 'ronin/asm/x86_64/instructions/vcvtpd2dq'
        autoload :VCVTPD2PH, 'ronin/asm/x86_64/instructions/vcvtpd2ph'
        autoload :VCVTPD2PS, 'ronin/asm/x86_64/instructions/vcvtpd2ps'
        autoload :VCVTPD2QQ, 'ronin/asm/x86_64/instructions/vcvtpd2qq'
        autoload :VCVTPD2UDQ, 'ronin/asm/x86_64/instructions/vcvtpd2udq'
        autoload :VCVTPD2UQQ, 'ronin/asm/x86_64/instructions/vcvtpd2uqq'
        autoload :VCVTPH2DQ, 'ronin/asm/x86_64/instructions/vcvtph2dq'
        autoload :VCVTPH2PD, 'ronin/asm/x86_64/instructions/vcvtph2pd'
        autoload :VCVTPH2PS, 'ronin/asm/x86_64/instructions/vcvtph2ps'
        autoload :VCVTPH2PSX, 'ronin/asm/x86_64/instructions/vcvtph2psx'
        autoload :VCVTPH2QQ, 'ronin/asm/x86_64/instructions/vcvtph2qq'
        autoload :VCVTPH2UDQ, 'ronin/asm/x86_64/instructions/vcvtph2udq'
        autoload :VCVTPH2UQQ, 'ronin/asm/x86_64/instructions/vcvtph2uqq'
        autoload :VCVTPH2UW, 'ronin/asm/x86_64/instructions/vcvtph2uw'
        autoload :VCVTPH2W, 'ronin/asm/x86_64/instructions/vcvtph2w'
        autoload :VCVTPS2DQ, 'ronin/asm/x86_64/instructions/vcvtps2dq'
        autoload :VCVTPS2PD, 'ronin/asm/x86_64/instructions/vcvtps2pd'
        autoload :VCVTPS2PH, 'ronin/asm/x86_64/instructions/vcvtps2ph'
        autoload :VCVTPS2PHX, 'ronin/asm/x86_64/instructions/vcvtps2phx'
        autoload :VCVTPS2QQ, 'ronin/asm/x86_64/instructions/vcvtps2qq'
        autoload :VCVTPS2UDQ, 'ronin/asm/x86_64/instructions/vcvtps2udq'
        autoload :VCVTPS2UQQ, 'ronin/asm/x86_64/instructions/vcvtps2uqq'
        autoload :VCVTQQ2PD, 'ronin/asm/x86_64/instructions/vcvtqq2pd'
        autoload :VCVTQQ2PH, 'ronin/asm/x86_64/instructions/vcvtqq2ph'
        autoload :VCVTQQ2PS, 'ronin/asm/x86_64/instructions/vcvtqq2ps'
        autoload :VCVTSD2SH, 'ronin/asm/x86_64/instructions/vcvtsd2sh'
        autoload :VCVTSD2SI, 'ronin/asm/x86_64/instructions/vcvtsd2si'
        autoload :VCVTSD2SS, 'ronin/asm/x86_64/instructions/vcvtsd2ss'
        autoload :VCVTSD2USI, 'ronin/asm/x86_64/instructions/vcvtsd2usi'
        autoload :VCVTSH2SD, 'ronin/asm/x86_64/instructions/vcvtsh2sd'
        autoload :VCVTSH2SI, 'ronin/asm/x86_64/instructions/vcvtsh2si'
        autoload :VCVTSH2SS, 'ronin/asm/x86_64/instructions/vcvtsh2ss'
        autoload :VCVTSH2USI, 'ronin/asm/x86_64/instructions/vcvtsh2usi'
        autoload :VCVTSI2SD, 'ronin/asm/x86_64/instructions/vcvtsi2sd'
        autoload :VCVTSI2SH, 'ronin/asm/x86_64/instructions/vcvtsi2sh'
        autoload :VCVTSI2SS, 'ronin/asm/x86_64/instructions/vcvtsi2ss'
        autoload :VCVTSS2SD, 'ronin/asm/x86_64/instructions/vcvtss2sd'
        autoload :VCVTSS2SH, 'ronin/asm/x86_64/instructions/vcvtss2sh'
        autoload :VCVTSS2SI, 'ronin/asm/x86_64/instructions/vcvtss2si'
        autoload :VCVTSS2USI, 'ronin/asm/x86_64/instructions/vcvtss2usi'
        autoload :VCVTTPD2DQ, 'ronin/asm/x86_64/instructions/vcvttpd2dq'
        autoload :VCVTTPD2QQ, 'ronin/asm/x86_64/instructions/vcvttpd2qq'
        autoload :VCVTTPD2UDQ, 'ronin/asm/x86_64/instructions/vcvttpd2udq'
        autoload :VCVTTPD2UQQ, 'ronin/asm/x86_64/instructions/vcvttpd2uqq'
        autoload :VCVTTPH2DQ, 'ronin/asm/x86_64/instructions/vcvttph2dq'
        autoload :VCVTTPH2QQ, 'ronin/asm/x86_64/instructions/vcvttph2qq'
        autoload :VCVTTPH2UDQ, 'ronin/asm/x86_64/instructions/vcvttph2udq'
        autoload :VCVTTPH2UQQ, 'ronin/asm/x86_64/instructions/vcvttph2uqq'
        autoload :VCVTTPH2UW, 'ronin/asm/x86_64/instructions/vcvttph2uw'
        autoload :VCVTTPH2W, 'ronin/asm/x86_64/instructions/vcvttph2w'
        autoload :VCVTTPS2DQ, 'ronin/asm/x86_64/instructions/vcvttps2dq'
        autoload :VCVTTPS2QQ, 'ronin/asm/x86_64/instructions/vcvttps2qq'
        autoload :VCVTTPS2UDQ, 'ronin/asm/x86_64/instructions/vcvttps2udq'
        autoload :VCVTTPS2UQQ, 'ronin/asm/x86_64/instructions/vcvttps2uqq'
        autoload :VCVTTSD2SI, 'ronin/asm/x86_64/instructions/vcvttsd2si'
        autoload :VCVTTSD2USI, 'ronin/asm/x86_64/instructions/vcvttsd2usi'
        autoload :VCVTTSH2SI, 'ronin/asm/x86_64/instructions/vcvttsh2si'
        autoload :VCVTTSH2USI, 'ronin/asm/x86_64/instructions/vcvttsh2usi'
        autoload :VCVTTSS2SI, 'ronin/asm/x86_64/instructions/vcvttss2si'
        autoload :VCVTTSS2USI, 'ronin/asm/x86_64/instructions/vcvttss2usi'
        autoload :VCVTUDQ2PD, 'ronin/asm/x86_64/instructions/vcvtudq2pd'
        autoload :VCVTUDQ2PH, 'ronin/asm/x86_64/instructions/vcvtudq2ph'
        autoload :VCVTUDQ2PS, 'ronin/asm/x86_64/instructions/vcvtudq2ps'
        autoload :VCVTUQQ2PD, 'ronin/asm/x86_64/instructions/vcvtuqq2pd'
        autoload :VCVTUQQ2PH, 'ronin/asm/x86_64/instructions/vcvtuqq2ph'
        autoload :VCVTUQQ2PS, 'ronin/asm/x86_64/instructions/vcvtuqq2ps'
        autoload :VCVTUSI2SD, 'ronin/asm/x86_64/instructions/vcvtusi2sd'
        autoload :VCVTUSI2SH, 'ronin/asm/x86_64/instructions/vcvtusi2sh'
        autoload :VCVTUSI2SS, 'ronin/asm/x86_64/instructions/vcvtusi2ss'
        autoload :VCVTUW2PH, 'ronin/asm/x86_64/instructions/vcvtuw2ph'
        autoload :VCVTW2PH, 'ronin/asm/x86_64/instructions/vcvtw2ph'
        autoload :VDBPSADBW, 'ronin/asm/x86_64/instructions/vdbpsadbw'
        autoload :VDIVPD, 'ronin/asm/x86_64/instructions/vdivpd'
        autoload :VDIVPH, 'ronin/asm/x86_64/instructions/vdivph'
        autoload :VDIVPS, 'ronin/asm/x86_64/instructions/vdivps'
        autoload :VDIVSD, 'ronin/asm/x86_64/instructions/vdivsd'
        autoload :VDIVSH, 'ronin/asm/x86_64/instructions/vdivsh'
        autoload :VDIVSS, 'ronin/asm/x86_64/instructions/vdivss'
        autoload :VDPBF16PS, 'ronin/asm/x86_64/instructions/vdpbf16ps'
        autoload :VDPPD, 'ronin/asm/x86_64/instructions/vdppd'
        autoload :VDPPS, 'ronin/asm/x86_64/instructions/vdpps'
        autoload :VEXP2PD, 'ronin/asm/x86_64/instructions/vexp2pd'
        autoload :VEXP2PS, 'ronin/asm/x86_64/instructions/vexp2ps'
        autoload :VEXPANDPD, 'ronin/asm/x86_64/instructions/vexpandpd'
        autoload :VEXPANDPS, 'ronin/asm/x86_64/instructions/vexpandps'
        autoload :VEXTRACTF128, 'ronin/asm/x86_64/instructions/vextractf128'
        autoload :VEXTRACTF32X4, 'ronin/asm/x86_64/instructions/vextractf32x4'
        autoload :VEXTRACTF32X8, 'ronin/asm/x86_64/instructions/vextractf32x8'
        autoload :VEXTRACTF64X2, 'ronin/asm/x86_64/instructions/vextractf64x2'
        autoload :VEXTRACTF64X4, 'ronin/asm/x86_64/instructions/vextractf64x4'
        autoload :VEXTRACTI128, 'ronin/asm/x86_64/instructions/vextracti128'
        autoload :VEXTRACTI32X4, 'ronin/asm/x86_64/instructions/vextracti32x4'
        autoload :VEXTRACTI32X8, 'ronin/asm/x86_64/instructions/vextracti32x8'
        autoload :VEXTRACTI64X2, 'ronin/asm/x86_64/instructions/vextracti64x2'
        autoload :VEXTRACTI64X4, 'ronin/asm/x86_64/instructions/vextracti64x4'
        autoload :VEXTRACTPS, 'ronin/asm/x86_64/instructions/vextractps'
        autoload :VFCMADDCPH, 'ronin/asm/x86_64/instructions/vfcmaddcph'
        autoload :VFCMADDCSH, 'ronin/asm/x86_64/instructions/vfcmaddcsh'
        autoload :VFCMULCPH, 'ronin/asm/x86_64/instructions/vfcmulcph'
        autoload :VFCMULCSH, 'ronin/asm/x86_64/instructions/vfcmulcsh'
        autoload :VFIXUPIMMPD, 'ronin/asm/x86_64/instructions/vfixupimmpd'
        autoload :VFIXUPIMMPS, 'ronin/asm/x86_64/instructions/vfixupimmps'
        autoload :VFIXUPIMMSD, 'ronin/asm/x86_64/instructions/vfixupimmsd'
        autoload :VFIXUPIMMSS, 'ronin/asm/x86_64/instructions/vfixupimmss'
        autoload :VFMADD132PD, 'ronin/asm/x86_64/instructions/vfmadd132pd'
        autoload :VFMADD132PH, 'ronin/asm/x86_64/instructions/vfmadd132ph'
        autoload :VFMADD132PS, 'ronin/asm/x86_64/instructions/vfmadd132ps'
        autoload :VFMADD132SD, 'ronin/asm/x86_64/instructions/vfmadd132sd'
        autoload :VFMADD132SS, 'ronin/asm/x86_64/instructions/vfmadd132ss'
        autoload :VFMADD213PD, 'ronin/asm/x86_64/instructions/vfmadd213pd'
        autoload :VFMADD213PH, 'ronin/asm/x86_64/instructions/vfmadd213ph'
        autoload :VFMADD213PS, 'ronin/asm/x86_64/instructions/vfmadd213ps'
        autoload :VFMADD213SD, 'ronin/asm/x86_64/instructions/vfmadd213sd'
        autoload :VFMADD213SS, 'ronin/asm/x86_64/instructions/vfmadd213ss'
        autoload :VFMADD231PD, 'ronin/asm/x86_64/instructions/vfmadd231pd'
        autoload :VFMADD231PH, 'ronin/asm/x86_64/instructions/vfmadd231ph'
        autoload :VFMADD231PS, 'ronin/asm/x86_64/instructions/vfmadd231ps'
        autoload :VFMADD231SD, 'ronin/asm/x86_64/instructions/vfmadd231sd'
        autoload :VFMADD231SS, 'ronin/asm/x86_64/instructions/vfmadd231ss'
        autoload :VFMADDCPH, 'ronin/asm/x86_64/instructions/vfmaddcph'
        autoload :VFMADDCSH, 'ronin/asm/x86_64/instructions/vfmaddcsh'
        autoload :VFMADDPD, 'ronin/asm/x86_64/instructions/vfmaddpd'
        autoload :VFMADDPS, 'ronin/asm/x86_64/instructions/vfmaddps'
        autoload :VFMADDSD, 'ronin/asm/x86_64/instructions/vfmaddsd'
        autoload :VFMADDSS, 'ronin/asm/x86_64/instructions/vfmaddss'
        autoload :VFMADDSUB132PD, 'ronin/asm/x86_64/instructions/vfmaddsub132pd'
        autoload :VFMADDSUB132PH, 'ronin/asm/x86_64/instructions/vfmaddsub132ph'
        autoload :VFMADDSUB132PS, 'ronin/asm/x86_64/instructions/vfmaddsub132ps'
        autoload :VFMADDSUB213PD, 'ronin/asm/x86_64/instructions/vfmaddsub213pd'
        autoload :VFMADDSUB213PH, 'ronin/asm/x86_64/instructions/vfmaddsub213ph'
        autoload :VFMADDSUB213PS, 'ronin/asm/x86_64/instructions/vfmaddsub213ps'
        autoload :VFMADDSUB231PD, 'ronin/asm/x86_64/instructions/vfmaddsub231pd'
        autoload :VFMADDSUB231PH, 'ronin/asm/x86_64/instructions/vfmaddsub231ph'
        autoload :VFMADDSUB231PS, 'ronin/asm/x86_64/instructions/vfmaddsub231ps'
        autoload :VFMADDSUBPD, 'ronin/asm/x86_64/instructions/vfmaddsubpd'
        autoload :VFMADDSUBPS, 'ronin/asm/x86_64/instructions/vfmaddsubps'
        autoload :VFMSUB132PD, 'ronin/asm/x86_64/instructions/vfmsub132pd'
        autoload :VFMSUB132PH, 'ronin/asm/x86_64/instructions/vfmsub132ph'
        autoload :VFMSUB132PS, 'ronin/asm/x86_64/instructions/vfmsub132ps'
        autoload :VFMSUB132SD, 'ronin/asm/x86_64/instructions/vfmsub132sd'
        autoload :VFMSUB132SH, 'ronin/asm/x86_64/instructions/vfmsub132sh'
        autoload :VFMSUB132SS, 'ronin/asm/x86_64/instructions/vfmsub132ss'
        autoload :VFMSUB213PD, 'ronin/asm/x86_64/instructions/vfmsub213pd'
        autoload :VFMSUB213PH, 'ronin/asm/x86_64/instructions/vfmsub213ph'
        autoload :VFMSUB213PS, 'ronin/asm/x86_64/instructions/vfmsub213ps'
        autoload :VFMSUB213SD, 'ronin/asm/x86_64/instructions/vfmsub213sd'
        autoload :VFMSUB213SH, 'ronin/asm/x86_64/instructions/vfmsub213sh'
        autoload :VFMSUB213SS, 'ronin/asm/x86_64/instructions/vfmsub213ss'
        autoload :VFMSUB231PD, 'ronin/asm/x86_64/instructions/vfmsub231pd'
        autoload :VFMSUB231PH, 'ronin/asm/x86_64/instructions/vfmsub231ph'
        autoload :VFMSUB231PS, 'ronin/asm/x86_64/instructions/vfmsub231ps'
        autoload :VFMSUB231SD, 'ronin/asm/x86_64/instructions/vfmsub231sd'
        autoload :VFMSUB231SH, 'ronin/asm/x86_64/instructions/vfmsub231sh'
        autoload :VFMSUB231SS, 'ronin/asm/x86_64/instructions/vfmsub231ss'
        autoload :VFMSUBADD132PD, 'ronin/asm/x86_64/instructions/vfmsubadd132pd'
        autoload :VFMSUBADD132PH, 'ronin/asm/x86_64/instructions/vfmsubadd132ph'
        autoload :VFMSUBADD132PS, 'ronin/asm/x86_64/instructions/vfmsubadd132ps'
        autoload :VFMSUBADD213PD, 'ronin/asm/x86_64/instructions/vfmsubadd213pd'
        autoload :VFMSUBADD213PH, 'ronin/asm/x86_64/instructions/vfmsubadd213ph'
        autoload :VFMSUBADD213PS, 'ronin/asm/x86_64/instructions/vfmsubadd213ps'
        autoload :VFMSUBADD231PD, 'ronin/asm/x86_64/instructions/vfmsubadd231pd'
        autoload :VFMSUBADD231PH, 'ronin/asm/x86_64/instructions/vfmsubadd231ph'
        autoload :VFMSUBADD231PS, 'ronin/asm/x86_64/instructions/vfmsubadd231ps'
        autoload :VFMSUBADDPD, 'ronin/asm/x86_64/instructions/vfmsubaddpd'
        autoload :VFMSUBADDPS, 'ronin/asm/x86_64/instructions/vfmsubaddps'
        autoload :VFMSUBPD, 'ronin/asm/x86_64/instructions/vfmsubpd'
        autoload :VFMSUBPS, 'ronin/asm/x86_64/instructions/vfmsubps'
        autoload :VFMSUBSD, 'ronin/asm/x86_64/instructions/vfmsubsd'
        autoload :VFMSUBSS, 'ronin/asm/x86_64/instructions/vfmsubss'
        autoload :VFMULCPH, 'ronin/asm/x86_64/instructions/vfmulcph'
        autoload :VFMULCSH, 'ronin/asm/x86_64/instructions/vfmulcsh'
        autoload :VFNMADD132PD, 'ronin/asm/x86_64/instructions/vfnmadd132pd'
        autoload :VFNMADD132PH, 'ronin/asm/x86_64/instructions/vfnmadd132ph'
        autoload :VFNMADD132PS, 'ronin/asm/x86_64/instructions/vfnmadd132ps'
        autoload :VFNMADD132SD, 'ronin/asm/x86_64/instructions/vfnmadd132sd'
        autoload :VFNMADD132SS, 'ronin/asm/x86_64/instructions/vfnmadd132ss'
        autoload :VFNMADD213PD, 'ronin/asm/x86_64/instructions/vfnmadd213pd'
        autoload :VFNMADD213PH, 'ronin/asm/x86_64/instructions/vfnmadd213ph'
        autoload :VFNMADD213PS, 'ronin/asm/x86_64/instructions/vfnmadd213ps'
        autoload :VFNMADD213SD, 'ronin/asm/x86_64/instructions/vfnmadd213sd'
        autoload :VFNMADD213SS, 'ronin/asm/x86_64/instructions/vfnmadd213ss'
        autoload :VFNMADD231PD, 'ronin/asm/x86_64/instructions/vfnmadd231pd'
        autoload :VFNMADD231PH, 'ronin/asm/x86_64/instructions/vfnmadd231ph'
        autoload :VFNMADD231PS, 'ronin/asm/x86_64/instructions/vfnmadd231ps'
        autoload :VFNMADD231SD, 'ronin/asm/x86_64/instructions/vfnmadd231sd'
        autoload :VFNMADD231SS, 'ronin/asm/x86_64/instructions/vfnmadd231ss'
        autoload :VFNMADDPD, 'ronin/asm/x86_64/instructions/vfnmaddpd'
        autoload :VFNMADDPS, 'ronin/asm/x86_64/instructions/vfnmaddps'
        autoload :VFNMADDSD, 'ronin/asm/x86_64/instructions/vfnmaddsd'
        autoload :VFNMADDSS, 'ronin/asm/x86_64/instructions/vfnmaddss'
        autoload :VFNMSUB132PD, 'ronin/asm/x86_64/instructions/vfnmsub132pd'
        autoload :VFNMSUB132PH, 'ronin/asm/x86_64/instructions/vfnmsub132ph'
        autoload :VFNMSUB132PS, 'ronin/asm/x86_64/instructions/vfnmsub132ps'
        autoload :VFNMSUB132SD, 'ronin/asm/x86_64/instructions/vfnmsub132sd'
        autoload :VFNMSUB132SH, 'ronin/asm/x86_64/instructions/vfnmsub132sh'
        autoload :VFNMSUB132SS, 'ronin/asm/x86_64/instructions/vfnmsub132ss'
        autoload :VFNMSUB213PD, 'ronin/asm/x86_64/instructions/vfnmsub213pd'
        autoload :VFNMSUB213PH, 'ronin/asm/x86_64/instructions/vfnmsub213ph'
        autoload :VFNMSUB213PS, 'ronin/asm/x86_64/instructions/vfnmsub213ps'
        autoload :VFNMSUB213SD, 'ronin/asm/x86_64/instructions/vfnmsub213sd'
        autoload :VFNMSUB213SH, 'ronin/asm/x86_64/instructions/vfnmsub213sh'
        autoload :VFNMSUB213SS, 'ronin/asm/x86_64/instructions/vfnmsub213ss'
        autoload :VFNMSUB231PD, 'ronin/asm/x86_64/instructions/vfnmsub231pd'
        autoload :VFNMSUB231PH, 'ronin/asm/x86_64/instructions/vfnmsub231ph'
        autoload :VFNMSUB231PS, 'ronin/asm/x86_64/instructions/vfnmsub231ps'
        autoload :VFNMSUB231SD, 'ronin/asm/x86_64/instructions/vfnmsub231sd'
        autoload :VFNMSUB231SH, 'ronin/asm/x86_64/instructions/vfnmsub231sh'
        autoload :VFNMSUB231SS, 'ronin/asm/x86_64/instructions/vfnmsub231ss'
        autoload :VFNMSUBPD, 'ronin/asm/x86_64/instructions/vfnmsubpd'
        autoload :VFNMSUBPS, 'ronin/asm/x86_64/instructions/vfnmsubps'
        autoload :VFNMSUBSD, 'ronin/asm/x86_64/instructions/vfnmsubsd'
        autoload :VFNMSUBSS, 'ronin/asm/x86_64/instructions/vfnmsubss'
        autoload :VFPCLASSPD, 'ronin/asm/x86_64/instructions/vfpclasspd'
        autoload :VFPCLASSPH, 'ronin/asm/x86_64/instructions/vfpclassph'
        autoload :VFPCLASSPS, 'ronin/asm/x86_64/instructions/vfpclassps'
        autoload :VFPCLASSSD, 'ronin/asm/x86_64/instructions/vfpclasssd'
        autoload :VFPCLASSSH, 'ronin/asm/x86_64/instructions/vfpclasssh'
        autoload :VFPCLASSSS, 'ronin/asm/x86_64/instructions/vfpclassss'
        autoload :VFRCZPD, 'ronin/asm/x86_64/instructions/vfrczpd'
        autoload :VFRCZPS, 'ronin/asm/x86_64/instructions/vfrczps'
        autoload :VFRCZSD, 'ronin/asm/x86_64/instructions/vfrczsd'
        autoload :VFRCZSS, 'ronin/asm/x86_64/instructions/vfrczss'
        autoload :VGATHERDPD, 'ronin/asm/x86_64/instructions/vgatherdpd'
        autoload :VGATHERDPS, 'ronin/asm/x86_64/instructions/vgatherdps'
        autoload :VGATHERPF0DPD, 'ronin/asm/x86_64/instructions/vgatherpf0dpd'
        autoload :VGATHERPF0DPS, 'ronin/asm/x86_64/instructions/vgatherpf0dps'
        autoload :VGATHERPF0QPD, 'ronin/asm/x86_64/instructions/vgatherpf0qpd'
        autoload :VGATHERPF0QPS, 'ronin/asm/x86_64/instructions/vgatherpf0qps'
        autoload :VGATHERPF1DPD, 'ronin/asm/x86_64/instructions/vgatherpf1dpd'
        autoload :VGATHERPF1DPS, 'ronin/asm/x86_64/instructions/vgatherpf1dps'
        autoload :VGATHERPF1QPD, 'ronin/asm/x86_64/instructions/vgatherpf1qpd'
        autoload :VGATHERPF1QPS, 'ronin/asm/x86_64/instructions/vgatherpf1qps'
        autoload :VGATHERQPD, 'ronin/asm/x86_64/instructions/vgatherqpd'
        autoload :VGATHERQPS, 'ronin/asm/x86_64/instructions/vgatherqps'
        autoload :VGETEXPPD, 'ronin/asm/x86_64/instructions/vgetexppd'
        autoload :VGETEXPPH, 'ronin/asm/x86_64/instructions/vgetexpph'
        autoload :VGETEXPPS, 'ronin/asm/x86_64/instructions/vgetexpps'
        autoload :VGETEXPSD, 'ronin/asm/x86_64/instructions/vgetexpsd'
        autoload :VGETEXPSH, 'ronin/asm/x86_64/instructions/vgetexpsh'
        autoload :VGETEXPSS, 'ronin/asm/x86_64/instructions/vgetexpss'
        autoload :VGETMANTPD, 'ronin/asm/x86_64/instructions/vgetmantpd'
        autoload :VGETMANTPH, 'ronin/asm/x86_64/instructions/vgetmantph'
        autoload :VGETMANTPS, 'ronin/asm/x86_64/instructions/vgetmantps'
        autoload :VGETMANTSD, 'ronin/asm/x86_64/instructions/vgetmantsd'
        autoload :VGETMANTSH, 'ronin/asm/x86_64/instructions/vgetmantsh'
        autoload :VGETMANTSS, 'ronin/asm/x86_64/instructions/vgetmantss'
        autoload :VGF2P8AFFINEINVQB, 'ronin/asm/x86_64/instructions/vgf2p8affineinvqb'
        autoload :VGF2P8AFFINEQB, 'ronin/asm/x86_64/instructions/vgf2p8affineqb'
        autoload :VGF2P8MULB, 'ronin/asm/x86_64/instructions/vgf2p8mulb'
        autoload :VHADDPD, 'ronin/asm/x86_64/instructions/vhaddpd'
        autoload :VHADDPS, 'ronin/asm/x86_64/instructions/vhaddps'
        autoload :VHSUBPD, 'ronin/asm/x86_64/instructions/vhsubpd'
        autoload :VHSUBPS, 'ronin/asm/x86_64/instructions/vhsubps'
        autoload :VINSERTF128, 'ronin/asm/x86_64/instructions/vinsertf128'
        autoload :VINSERTF32X4, 'ronin/asm/x86_64/instructions/vinsertf32x4'
        autoload :VINSERTF32X8, 'ronin/asm/x86_64/instructions/vinsertf32x8'
        autoload :VINSERTF64X2, 'ronin/asm/x86_64/instructions/vinsertf64x2'
        autoload :VINSERTF64X4, 'ronin/asm/x86_64/instructions/vinsertf64x4'
        autoload :VINSERTI128, 'ronin/asm/x86_64/instructions/vinserti128'
        autoload :VINSERTI32X4, 'ronin/asm/x86_64/instructions/vinserti32x4'
        autoload :VINSERTI32X8, 'ronin/asm/x86_64/instructions/vinserti32x8'
        autoload :VINSERTI64X2, 'ronin/asm/x86_64/instructions/vinserti64x2'
        autoload :VINSERTI64X4, 'ronin/asm/x86_64/instructions/vinserti64x4'
        autoload :VINSERTPS, 'ronin/asm/x86_64/instructions/vinsertps'
        autoload :VLDDQU, 'ronin/asm/x86_64/instructions/vlddqu'
        autoload :VLDMXCSR, 'ronin/asm/x86_64/instructions/vldmxcsr'
        autoload :VMASKMOVDQU, 'ronin/asm/x86_64/instructions/vmaskmovdqu'
        autoload :VMASKMOVPD, 'ronin/asm/x86_64/instructions/vmaskmovpd'
        autoload :VMASKMOVPS, 'ronin/asm/x86_64/instructions/vmaskmovps'
        autoload :VMAXPD, 'ronin/asm/x86_64/instructions/vmaxpd'
        autoload :VMAXPH, 'ronin/asm/x86_64/instructions/vmaxph'
        autoload :VMAXPS, 'ronin/asm/x86_64/instructions/vmaxps'
        autoload :VMAXSD, 'ronin/asm/x86_64/instructions/vmaxsd'
        autoload :VMAXSH, 'ronin/asm/x86_64/instructions/vmaxsh'
        autoload :VMAXSS, 'ronin/asm/x86_64/instructions/vmaxss'
        autoload :VMINPD, 'ronin/asm/x86_64/instructions/vminpd'
        autoload :VMINPH, 'ronin/asm/x86_64/instructions/vminph'
        autoload :VMINPS, 'ronin/asm/x86_64/instructions/vminps'
        autoload :VMINSD, 'ronin/asm/x86_64/instructions/vminsd'
        autoload :VMINSH, 'ronin/asm/x86_64/instructions/vminsh'
        autoload :VMINSS, 'ronin/asm/x86_64/instructions/vminss'
        autoload :VMOVAPD, 'ronin/asm/x86_64/instructions/vmovapd'
        autoload :VMOVAPS, 'ronin/asm/x86_64/instructions/vmovaps'
        autoload :VMOVD, 'ronin/asm/x86_64/instructions/vmovd'
        autoload :VMOVDDUP, 'ronin/asm/x86_64/instructions/vmovddup'
        autoload :VMOVDQA, 'ronin/asm/x86_64/instructions/vmovdqa'
        autoload :VMOVDQA32, 'ronin/asm/x86_64/instructions/vmovdqa32'
        autoload :VMOVDQA64, 'ronin/asm/x86_64/instructions/vmovdqa64'
        autoload :VMOVDQU, 'ronin/asm/x86_64/instructions/vmovdqu'
        autoload :VMOVDQU16, 'ronin/asm/x86_64/instructions/vmovdqu16'
        autoload :VMOVDQU32, 'ronin/asm/x86_64/instructions/vmovdqu32'
        autoload :VMOVDQU64, 'ronin/asm/x86_64/instructions/vmovdqu64'
        autoload :VMOVDQU8, 'ronin/asm/x86_64/instructions/vmovdqu8'
        autoload :VMOVHLPS, 'ronin/asm/x86_64/instructions/vmovhlps'
        autoload :VMOVHPD, 'ronin/asm/x86_64/instructions/vmovhpd'
        autoload :VMOVHPS, 'ronin/asm/x86_64/instructions/vmovhps'
        autoload :VMOVLHPS, 'ronin/asm/x86_64/instructions/vmovlhps'
        autoload :VMOVLPD, 'ronin/asm/x86_64/instructions/vmovlpd'
        autoload :VMOVLPS, 'ronin/asm/x86_64/instructions/vmovlps'
        autoload :VMOVMSKPD, 'ronin/asm/x86_64/instructions/vmovmskpd'
        autoload :VMOVMSKPS, 'ronin/asm/x86_64/instructions/vmovmskps'
        autoload :VMOVNTDQ, 'ronin/asm/x86_64/instructions/vmovntdq'
        autoload :VMOVNTDQA, 'ronin/asm/x86_64/instructions/vmovntdqa'
        autoload :VMOVNTPD, 'ronin/asm/x86_64/instructions/vmovntpd'
        autoload :VMOVNTPS, 'ronin/asm/x86_64/instructions/vmovntps'
        autoload :VMOVQ, 'ronin/asm/x86_64/instructions/vmovq'
        autoload :VMOVSD, 'ronin/asm/x86_64/instructions/vmovsd'
        autoload :VMOVSH, 'ronin/asm/x86_64/instructions/vmovsh'
        autoload :VMOVSHDUP, 'ronin/asm/x86_64/instructions/vmovshdup'
        autoload :VMOVSLDUP, 'ronin/asm/x86_64/instructions/vmovsldup'
        autoload :VMOVSS, 'ronin/asm/x86_64/instructions/vmovss'
        autoload :VMOVUPD, 'ronin/asm/x86_64/instructions/vmovupd'
        autoload :VMOVUPS, 'ronin/asm/x86_64/instructions/vmovups'
        autoload :VMOVW, 'ronin/asm/x86_64/instructions/vmovw'
        autoload :VMPSADBW, 'ronin/asm/x86_64/instructions/vmpsadbw'
        autoload :VMULPD, 'ronin/asm/x86_64/instructions/vmulpd'
        autoload :VMULPH, 'ronin/asm/x86_64/instructions/vmulph'
        autoload :VMULPS, 'ronin/asm/x86_64/instructions/vmulps'
        autoload :VMULSD, 'ronin/asm/x86_64/instructions/vmulsd'
        autoload :VMULSH, 'ronin/asm/x86_64/instructions/vmulsh'
        autoload :VMULSS, 'ronin/asm/x86_64/instructions/vmulss'
        autoload :VORPD, 'ronin/asm/x86_64/instructions/vorpd'
        autoload :VORPS, 'ronin/asm/x86_64/instructions/vorps'
        autoload :VPABSB, 'ronin/asm/x86_64/instructions/vpabsb'
        autoload :VPABSD, 'ronin/asm/x86_64/instructions/vpabsd'
        autoload :VPABSQ, 'ronin/asm/x86_64/instructions/vpabsq'
        autoload :VPABSW, 'ronin/asm/x86_64/instructions/vpabsw'
        autoload :VPACKSSDW, 'ronin/asm/x86_64/instructions/vpackssdw'
        autoload :VPACKSSWB, 'ronin/asm/x86_64/instructions/vpacksswb'
        autoload :VPACKUSDW, 'ronin/asm/x86_64/instructions/vpackusdw'
        autoload :VPACKUSWB, 'ronin/asm/x86_64/instructions/vpackuswb'
        autoload :VPADDB, 'ronin/asm/x86_64/instructions/vpaddb'
        autoload :VPADDD, 'ronin/asm/x86_64/instructions/vpaddd'
        autoload :VPADDQ, 'ronin/asm/x86_64/instructions/vpaddq'
        autoload :VPADDSB, 'ronin/asm/x86_64/instructions/vpaddsb'
        autoload :VPADDSW, 'ronin/asm/x86_64/instructions/vpaddsw'
        autoload :VPADDUSB, 'ronin/asm/x86_64/instructions/vpaddusb'
        autoload :VPADDUSW, 'ronin/asm/x86_64/instructions/vpaddusw'
        autoload :VPADDW, 'ronin/asm/x86_64/instructions/vpaddw'
        autoload :VPALIGNR, 'ronin/asm/x86_64/instructions/vpalignr'
        autoload :VPAND, 'ronin/asm/x86_64/instructions/vpand'
        autoload :VPANDD, 'ronin/asm/x86_64/instructions/vpandd'
        autoload :VPANDN, 'ronin/asm/x86_64/instructions/vpandn'
        autoload :VPANDND, 'ronin/asm/x86_64/instructions/vpandnd'
        autoload :VPANDNQ, 'ronin/asm/x86_64/instructions/vpandnq'
        autoload :VPANDQ, 'ronin/asm/x86_64/instructions/vpandq'
        autoload :VPAVGB, 'ronin/asm/x86_64/instructions/vpavgb'
        autoload :VPAVGW, 'ronin/asm/x86_64/instructions/vpavgw'
        autoload :VPBLENDD, 'ronin/asm/x86_64/instructions/vpblendd'
        autoload :VPBLENDMB, 'ronin/asm/x86_64/instructions/vpblendmb'
        autoload :VPBLENDMD, 'ronin/asm/x86_64/instructions/vpblendmd'
        autoload :VPBLENDMQ, 'ronin/asm/x86_64/instructions/vpblendmq'
        autoload :VPBLENDMW, 'ronin/asm/x86_64/instructions/vpblendmw'
        autoload :VPBLENDVB, 'ronin/asm/x86_64/instructions/vpblendvb'
        autoload :VPBLENDW, 'ronin/asm/x86_64/instructions/vpblendw'
        autoload :VPBROADCASTB, 'ronin/asm/x86_64/instructions/vpbroadcastb'
        autoload :VPBROADCASTD, 'ronin/asm/x86_64/instructions/vpbroadcastd'
        autoload :VPBROADCASTMB2Q, 'ronin/asm/x86_64/instructions/vpbroadcastmb2q'
        autoload :VPBROADCASTMW2D, 'ronin/asm/x86_64/instructions/vpbroadcastmw2d'
        autoload :VPBROADCASTQ, 'ronin/asm/x86_64/instructions/vpbroadcastq'
        autoload :VPBROADCASTW, 'ronin/asm/x86_64/instructions/vpbroadcastw'
        autoload :VPCLMULQDQ, 'ronin/asm/x86_64/instructions/vpclmulqdq'
        autoload :VPCMOV, 'ronin/asm/x86_64/instructions/vpcmov'
        autoload :VPCMPB, 'ronin/asm/x86_64/instructions/vpcmpb'
        autoload :VPCMPD, 'ronin/asm/x86_64/instructions/vpcmpd'
        autoload :VPCMPEQB, 'ronin/asm/x86_64/instructions/vpcmpeqb'
        autoload :VPCMPEQD, 'ronin/asm/x86_64/instructions/vpcmpeqd'
        autoload :VPCMPEQQ, 'ronin/asm/x86_64/instructions/vpcmpeqq'
        autoload :VPCMPEQW, 'ronin/asm/x86_64/instructions/vpcmpeqw'
        autoload :VPCMPESTRI, 'ronin/asm/x86_64/instructions/vpcmpestri'
        autoload :VPCMPESTRM, 'ronin/asm/x86_64/instructions/vpcmpestrm'
        autoload :VPCMPGTB, 'ronin/asm/x86_64/instructions/vpcmpgtb'
        autoload :VPCMPGTD, 'ronin/asm/x86_64/instructions/vpcmpgtd'
        autoload :VPCMPGTQ, 'ronin/asm/x86_64/instructions/vpcmpgtq'
        autoload :VPCMPGTW, 'ronin/asm/x86_64/instructions/vpcmpgtw'
        autoload :VPCMPISTRI, 'ronin/asm/x86_64/instructions/vpcmpistri'
        autoload :VPCMPISTRM, 'ronin/asm/x86_64/instructions/vpcmpistrm'
        autoload :VPCMPQ, 'ronin/asm/x86_64/instructions/vpcmpq'
        autoload :VPCMPUB, 'ronin/asm/x86_64/instructions/vpcmpub'
        autoload :VPCMPUD, 'ronin/asm/x86_64/instructions/vpcmpud'
        autoload :VPCMPUQ, 'ronin/asm/x86_64/instructions/vpcmpuq'
        autoload :VPCMPUW, 'ronin/asm/x86_64/instructions/vpcmpuw'
        autoload :VPCMPW, 'ronin/asm/x86_64/instructions/vpcmpw'
        autoload :VPCOMB, 'ronin/asm/x86_64/instructions/vpcomb'
        autoload :VPCOMD, 'ronin/asm/x86_64/instructions/vpcomd'
        autoload :VPCOMPRESSB, 'ronin/asm/x86_64/instructions/vpcompressb'
        autoload :VPCOMPRESSD, 'ronin/asm/x86_64/instructions/vpcompressd'
        autoload :VPCOMPRESSQ, 'ronin/asm/x86_64/instructions/vpcompressq'
        autoload :VPCOMPRESSW, 'ronin/asm/x86_64/instructions/vpcompressw'
        autoload :VPCOMQ, 'ronin/asm/x86_64/instructions/vpcomq'
        autoload :VPCOMUB, 'ronin/asm/x86_64/instructions/vpcomub'
        autoload :VPCOMUD, 'ronin/asm/x86_64/instructions/vpcomud'
        autoload :VPCOMUQ, 'ronin/asm/x86_64/instructions/vpcomuq'
        autoload :VPCOMUW, 'ronin/asm/x86_64/instructions/vpcomuw'
        autoload :VPCOMW, 'ronin/asm/x86_64/instructions/vpcomw'
        autoload :VPCONFLICTD, 'ronin/asm/x86_64/instructions/vpconflictd'
        autoload :VPCONFLICTQ, 'ronin/asm/x86_64/instructions/vpconflictq'
        autoload :VPDPBSSD, 'ronin/asm/x86_64/instructions/vpdpbssd'
        autoload :VPDPBSSDS, 'ronin/asm/x86_64/instructions/vpdpbssds'
        autoload :VPDPBSUD, 'ronin/asm/x86_64/instructions/vpdpbsud'
        autoload :VPDPBSUDS, 'ronin/asm/x86_64/instructions/vpdpbsuds'
        autoload :VPDPBUSD, 'ronin/asm/x86_64/instructions/vpdpbusd'
        autoload :VPDPBUSDS, 'ronin/asm/x86_64/instructions/vpdpbusds'
        autoload :VPDPBUUD, 'ronin/asm/x86_64/instructions/vpdpbuud'
        autoload :VPDPBUUDS, 'ronin/asm/x86_64/instructions/vpdpbuuds'
        autoload :VPDPWSSD, 'ronin/asm/x86_64/instructions/vpdpwssd'
        autoload :VPDPWSSDS, 'ronin/asm/x86_64/instructions/vpdpwssds'
        autoload :VPDPWSUD, 'ronin/asm/x86_64/instructions/vpdpwsud'
        autoload :VPDPWSUDS, 'ronin/asm/x86_64/instructions/vpdpwsuds'
        autoload :VPDPWUSD, 'ronin/asm/x86_64/instructions/vpdpwusd'
        autoload :VPDPWUSDS, 'ronin/asm/x86_64/instructions/vpdpwusds'
        autoload :VPDPWUUD, 'ronin/asm/x86_64/instructions/vpdpwuud'
        autoload :VPDPWUUDS, 'ronin/asm/x86_64/instructions/vpdpwuuds'
        autoload :VPERM2F128, 'ronin/asm/x86_64/instructions/vperm2f128'
        autoload :VPERM2I128, 'ronin/asm/x86_64/instructions/vperm2i128'
        autoload :VPERMB, 'ronin/asm/x86_64/instructions/vpermb'
        autoload :VPERMD, 'ronin/asm/x86_64/instructions/vpermd'
        autoload :VPERMI2B, 'ronin/asm/x86_64/instructions/vpermi2b'
        autoload :VPERMI2D, 'ronin/asm/x86_64/instructions/vpermi2d'
        autoload :VPERMI2PD, 'ronin/asm/x86_64/instructions/vpermi2pd'
        autoload :VPERMI2PS, 'ronin/asm/x86_64/instructions/vpermi2ps'
        autoload :VPERMI2Q, 'ronin/asm/x86_64/instructions/vpermi2q'
        autoload :VPERMI2W, 'ronin/asm/x86_64/instructions/vpermi2w'
        autoload :VPERMIL2PD, 'ronin/asm/x86_64/instructions/vpermil2pd'
        autoload :VPERMIL2PS, 'ronin/asm/x86_64/instructions/vpermil2ps'
        autoload :VPERMILPD, 'ronin/asm/x86_64/instructions/vpermilpd'
        autoload :VPERMILPS, 'ronin/asm/x86_64/instructions/vpermilps'
        autoload :VPERMPD, 'ronin/asm/x86_64/instructions/vpermpd'
        autoload :VPERMPS, 'ronin/asm/x86_64/instructions/vpermps'
        autoload :VPERMQ, 'ronin/asm/x86_64/instructions/vpermq'
        autoload :VPERMT2B, 'ronin/asm/x86_64/instructions/vpermt2b'
        autoload :VPERMT2D, 'ronin/asm/x86_64/instructions/vpermt2d'
        autoload :VPERMT2PD, 'ronin/asm/x86_64/instructions/vpermt2pd'
        autoload :VPERMT2PS, 'ronin/asm/x86_64/instructions/vpermt2ps'
        autoload :VPERMT2Q, 'ronin/asm/x86_64/instructions/vpermt2q'
        autoload :VPERMT2W, 'ronin/asm/x86_64/instructions/vpermt2w'
        autoload :VPERMW, 'ronin/asm/x86_64/instructions/vpermw'
        autoload :VPEXPANDB, 'ronin/asm/x86_64/instructions/vpexpandb'
        autoload :VPEXPANDD, 'ronin/asm/x86_64/instructions/vpexpandd'
        autoload :VPEXPANDQ, 'ronin/asm/x86_64/instructions/vpexpandq'
        autoload :VPEXPANDW, 'ronin/asm/x86_64/instructions/vpexpandw'
        autoload :VPEXTRB, 'ronin/asm/x86_64/instructions/vpextrb'
        autoload :VPEXTRD, 'ronin/asm/x86_64/instructions/vpextrd'
        autoload :VPEXTRQ, 'ronin/asm/x86_64/instructions/vpextrq'
        autoload :VPEXTRW, 'ronin/asm/x86_64/instructions/vpextrw'
        autoload :VPGATHERDD, 'ronin/asm/x86_64/instructions/vpgatherdd'
        autoload :VPGATHERDQ, 'ronin/asm/x86_64/instructions/vpgatherdq'
        autoload :VPGATHERQD, 'ronin/asm/x86_64/instructions/vpgatherqd'
        autoload :VPGATHERQQ, 'ronin/asm/x86_64/instructions/vpgatherqq'
        autoload :VPHADDBD, 'ronin/asm/x86_64/instructions/vphaddbd'
        autoload :VPHADDBQ, 'ronin/asm/x86_64/instructions/vphaddbq'
        autoload :VPHADDBW, 'ronin/asm/x86_64/instructions/vphaddbw'
        autoload :VPHADDD, 'ronin/asm/x86_64/instructions/vphaddd'
        autoload :VPHADDDQ, 'ronin/asm/x86_64/instructions/vphadddq'
        autoload :VPHADDSW, 'ronin/asm/x86_64/instructions/vphaddsw'
        autoload :VPHADDUBD, 'ronin/asm/x86_64/instructions/vphaddubd'
        autoload :VPHADDUBQ, 'ronin/asm/x86_64/instructions/vphaddubq'
        autoload :VPHADDUBW, 'ronin/asm/x86_64/instructions/vphaddubw'
        autoload :VPHADDUDQ, 'ronin/asm/x86_64/instructions/vphaddudq'
        autoload :VPHADDUWD, 'ronin/asm/x86_64/instructions/vphadduwd'
        autoload :VPHADDUWQ, 'ronin/asm/x86_64/instructions/vphadduwq'
        autoload :VPHADDW, 'ronin/asm/x86_64/instructions/vphaddw'
        autoload :VPHADDWD, 'ronin/asm/x86_64/instructions/vphaddwd'
        autoload :VPHADDWQ, 'ronin/asm/x86_64/instructions/vphaddwq'
        autoload :VPHMINPOSUW, 'ronin/asm/x86_64/instructions/vphminposuw'
        autoload :VPHSUBBW, 'ronin/asm/x86_64/instructions/vphsubbw'
        autoload :VPHSUBD, 'ronin/asm/x86_64/instructions/vphsubd'
        autoload :VPHSUBDQ, 'ronin/asm/x86_64/instructions/vphsubdq'
        autoload :VPHSUBSW, 'ronin/asm/x86_64/instructions/vphsubsw'
        autoload :VPHSUBW, 'ronin/asm/x86_64/instructions/vphsubw'
        autoload :VPHSUBWD, 'ronin/asm/x86_64/instructions/vphsubwd'
        autoload :VPINSRB, 'ronin/asm/x86_64/instructions/vpinsrb'
        autoload :VPINSRD, 'ronin/asm/x86_64/instructions/vpinsrd'
        autoload :VPINSRQ, 'ronin/asm/x86_64/instructions/vpinsrq'
        autoload :VPINSRW, 'ronin/asm/x86_64/instructions/vpinsrw'
        autoload :VPLZCNTD, 'ronin/asm/x86_64/instructions/vplzcntd'
        autoload :VPLZCNTQ, 'ronin/asm/x86_64/instructions/vplzcntq'
        autoload :VPMACSDD, 'ronin/asm/x86_64/instructions/vpmacsdd'
        autoload :VPMACSDQH, 'ronin/asm/x86_64/instructions/vpmacsdqh'
        autoload :VPMACSDQL, 'ronin/asm/x86_64/instructions/vpmacsdql'
        autoload :VPMACSSDD, 'ronin/asm/x86_64/instructions/vpmacssdd'
        autoload :VPMACSSDQH, 'ronin/asm/x86_64/instructions/vpmacssdqh'
        autoload :VPMACSSDQL, 'ronin/asm/x86_64/instructions/vpmacssdql'
        autoload :VPMACSSWD, 'ronin/asm/x86_64/instructions/vpmacsswd'
        autoload :VPMACSSWW, 'ronin/asm/x86_64/instructions/vpmacssww'
        autoload :VPMACSWD, 'ronin/asm/x86_64/instructions/vpmacswd'
        autoload :VPMACSWW, 'ronin/asm/x86_64/instructions/vpmacsww'
        autoload :VPMADCSSWD, 'ronin/asm/x86_64/instructions/vpmadcsswd'
        autoload :VPMADCSWD, 'ronin/asm/x86_64/instructions/vpmadcswd'
        autoload :VPMADD52HUQ, 'ronin/asm/x86_64/instructions/vpmadd52huq'
        autoload :VPMADD52LUQ, 'ronin/asm/x86_64/instructions/vpmadd52luq'
        autoload :VPMADDUBSW, 'ronin/asm/x86_64/instructions/vpmaddubsw'
        autoload :VPMADDWD, 'ronin/asm/x86_64/instructions/vpmaddwd'
        autoload :VPMASKMOVD, 'ronin/asm/x86_64/instructions/vpmaskmovd'
        autoload :VPMASKMOVQ, 'ronin/asm/x86_64/instructions/vpmaskmovq'
        autoload :VPMAXSB, 'ronin/asm/x86_64/instructions/vpmaxsb'
        autoload :VPMAXSD, 'ronin/asm/x86_64/instructions/vpmaxsd'
        autoload :VPMAXSQ, 'ronin/asm/x86_64/instructions/vpmaxsq'
        autoload :VPMAXSW, 'ronin/asm/x86_64/instructions/vpmaxsw'
        autoload :VPMAXUB, 'ronin/asm/x86_64/instructions/vpmaxub'
        autoload :VPMAXUD, 'ronin/asm/x86_64/instructions/vpmaxud'
        autoload :VPMAXUQ, 'ronin/asm/x86_64/instructions/vpmaxuq'
        autoload :VPMAXUW, 'ronin/asm/x86_64/instructions/vpmaxuw'
        autoload :VPMINSB, 'ronin/asm/x86_64/instructions/vpminsb'
        autoload :VPMINSD, 'ronin/asm/x86_64/instructions/vpminsd'
        autoload :VPMINSQ, 'ronin/asm/x86_64/instructions/vpminsq'
        autoload :VPMINSW, 'ronin/asm/x86_64/instructions/vpminsw'
        autoload :VPMINUB, 'ronin/asm/x86_64/instructions/vpminub'
        autoload :VPMINUD, 'ronin/asm/x86_64/instructions/vpminud'
        autoload :VPMINUQ, 'ronin/asm/x86_64/instructions/vpminuq'
        autoload :VPMINUW, 'ronin/asm/x86_64/instructions/vpminuw'
        autoload :VPMOVB2M, 'ronin/asm/x86_64/instructions/vpmovb2m'
        autoload :VPMOVD2M, 'ronin/asm/x86_64/instructions/vpmovd2m'
        autoload :VPMOVDB, 'ronin/asm/x86_64/instructions/vpmovdb'
        autoload :VPMOVDW, 'ronin/asm/x86_64/instructions/vpmovdw'
        autoload :VPMOVM2B, 'ronin/asm/x86_64/instructions/vpmovm2b'
        autoload :VPMOVM2D, 'ronin/asm/x86_64/instructions/vpmovm2d'
        autoload :VPMOVM2Q, 'ronin/asm/x86_64/instructions/vpmovm2q'
        autoload :VPMOVM2W, 'ronin/asm/x86_64/instructions/vpmovm2w'
        autoload :VPMOVMSKB, 'ronin/asm/x86_64/instructions/vpmovmskb'
        autoload :VPMOVQ2M, 'ronin/asm/x86_64/instructions/vpmovq2m'
        autoload :VPMOVQB, 'ronin/asm/x86_64/instructions/vpmovqb'
        autoload :VPMOVQD, 'ronin/asm/x86_64/instructions/vpmovqd'
        autoload :VPMOVQW, 'ronin/asm/x86_64/instructions/vpmovqw'
        autoload :VPMOVSDB, 'ronin/asm/x86_64/instructions/vpmovsdb'
        autoload :VPMOVSDW, 'ronin/asm/x86_64/instructions/vpmovsdw'
        autoload :VPMOVSQB, 'ronin/asm/x86_64/instructions/vpmovsqb'
        autoload :VPMOVSQD, 'ronin/asm/x86_64/instructions/vpmovsqd'
        autoload :VPMOVSQW, 'ronin/asm/x86_64/instructions/vpmovsqw'
        autoload :VPMOVSWB, 'ronin/asm/x86_64/instructions/vpmovswb'
        autoload :VPMOVSXBD, 'ronin/asm/x86_64/instructions/vpmovsxbd'
        autoload :VPMOVSXBQ, 'ronin/asm/x86_64/instructions/vpmovsxbq'
        autoload :VPMOVSXBW, 'ronin/asm/x86_64/instructions/vpmovsxbw'
        autoload :VPMOVSXDQ, 'ronin/asm/x86_64/instructions/vpmovsxdq'
        autoload :VPMOVSXWD, 'ronin/asm/x86_64/instructions/vpmovsxwd'
        autoload :VPMOVSXWQ, 'ronin/asm/x86_64/instructions/vpmovsxwq'
        autoload :VPMOVUSDB, 'ronin/asm/x86_64/instructions/vpmovusdb'
        autoload :VPMOVUSDW, 'ronin/asm/x86_64/instructions/vpmovusdw'
        autoload :VPMOVUSQB, 'ronin/asm/x86_64/instructions/vpmovusqb'
        autoload :VPMOVUSQD, 'ronin/asm/x86_64/instructions/vpmovusqd'
        autoload :VPMOVUSQW, 'ronin/asm/x86_64/instructions/vpmovusqw'
        autoload :VPMOVUSWB, 'ronin/asm/x86_64/instructions/vpmovuswb'
        autoload :VPMOVW2M, 'ronin/asm/x86_64/instructions/vpmovw2m'
        autoload :VPMOVWB, 'ronin/asm/x86_64/instructions/vpmovwb'
        autoload :VPMOVZXBD, 'ronin/asm/x86_64/instructions/vpmovzxbd'
        autoload :VPMOVZXBQ, 'ronin/asm/x86_64/instructions/vpmovzxbq'
        autoload :VPMOVZXBW, 'ronin/asm/x86_64/instructions/vpmovzxbw'
        autoload :VPMOVZXDQ, 'ronin/asm/x86_64/instructions/vpmovzxdq'
        autoload :VPMOVZXWD, 'ronin/asm/x86_64/instructions/vpmovzxwd'
        autoload :VPMOVZXWQ, 'ronin/asm/x86_64/instructions/vpmovzxwq'
        autoload :VPMULDQ, 'ronin/asm/x86_64/instructions/vpmuldq'
        autoload :VPMULHRSW, 'ronin/asm/x86_64/instructions/vpmulhrsw'
        autoload :VPMULHUW, 'ronin/asm/x86_64/instructions/vpmulhuw'
        autoload :VPMULHW, 'ronin/asm/x86_64/instructions/vpmulhw'
        autoload :VPMULLD, 'ronin/asm/x86_64/instructions/vpmulld'
        autoload :VPMULLQ, 'ronin/asm/x86_64/instructions/vpmullq'
        autoload :VPMULLW, 'ronin/asm/x86_64/instructions/vpmullw'
        autoload :VPMULTISHIFTQB, 'ronin/asm/x86_64/instructions/vpmultishiftqb'
        autoload :VPMULUDQ, 'ronin/asm/x86_64/instructions/vpmuludq'
        autoload :VPOPCNTB, 'ronin/asm/x86_64/instructions/vpopcntb'
        autoload :VPOPCNTD, 'ronin/asm/x86_64/instructions/vpopcntd'
        autoload :VPOPCNTQ, 'ronin/asm/x86_64/instructions/vpopcntq'
        autoload :VPOPCNTW, 'ronin/asm/x86_64/instructions/vpopcntw'
        autoload :VPOR, 'ronin/asm/x86_64/instructions/vpor'
        autoload :VPORD, 'ronin/asm/x86_64/instructions/vpord'
        autoload :VPORQ, 'ronin/asm/x86_64/instructions/vporq'
        autoload :VPPERM, 'ronin/asm/x86_64/instructions/vpperm'
        autoload :VPROLD, 'ronin/asm/x86_64/instructions/vprold'
        autoload :VPROLQ, 'ronin/asm/x86_64/instructions/vprolq'
        autoload :VPROLVD, 'ronin/asm/x86_64/instructions/vprolvd'
        autoload :VPROLVQ, 'ronin/asm/x86_64/instructions/vprolvq'
        autoload :VPRORD, 'ronin/asm/x86_64/instructions/vprord'
        autoload :VPRORQ, 'ronin/asm/x86_64/instructions/vprorq'
        autoload :VPRORVD, 'ronin/asm/x86_64/instructions/vprorvd'
        autoload :VPRORVQ, 'ronin/asm/x86_64/instructions/vprorvq'
        autoload :VPROTB, 'ronin/asm/x86_64/instructions/vprotb'
        autoload :VPROTD, 'ronin/asm/x86_64/instructions/vprotd'
        autoload :VPROTQ, 'ronin/asm/x86_64/instructions/vprotq'
        autoload :VPROTW, 'ronin/asm/x86_64/instructions/vprotw'
        autoload :VPSADBW, 'ronin/asm/x86_64/instructions/vpsadbw'
        autoload :VPSCATTERDD, 'ronin/asm/x86_64/instructions/vpscatterdd'
        autoload :VPSCATTERDQ, 'ronin/asm/x86_64/instructions/vpscatterdq'
        autoload :VPSCATTERQD, 'ronin/asm/x86_64/instructions/vpscatterqd'
        autoload :VPSCATTERQQ, 'ronin/asm/x86_64/instructions/vpscatterqq'
        autoload :VPSHAB, 'ronin/asm/x86_64/instructions/vpshab'
        autoload :VPSHAD, 'ronin/asm/x86_64/instructions/vpshad'
        autoload :VPSHAQ, 'ronin/asm/x86_64/instructions/vpshaq'
        autoload :VPSHAW, 'ronin/asm/x86_64/instructions/vpshaw'
        autoload :VPSHLB, 'ronin/asm/x86_64/instructions/vpshlb'
        autoload :VPSHLD, 'ronin/asm/x86_64/instructions/vpshld'
        autoload :VPSHLDD, 'ronin/asm/x86_64/instructions/vpshldd'
        autoload :VPSHLDQ, 'ronin/asm/x86_64/instructions/vpshldq'
        autoload :VPSHLDVD, 'ronin/asm/x86_64/instructions/vpshldvd'
        autoload :VPSHLDVQ, 'ronin/asm/x86_64/instructions/vpshldvq'
        autoload :VPSHLDVW, 'ronin/asm/x86_64/instructions/vpshldvw'
        autoload :VPSHLDW, 'ronin/asm/x86_64/instructions/vpshldw'
        autoload :VPSHLQ, 'ronin/asm/x86_64/instructions/vpshlq'
        autoload :VPSHLW, 'ronin/asm/x86_64/instructions/vpshlw'
        autoload :VPSHRDD, 'ronin/asm/x86_64/instructions/vpshrdd'
        autoload :VPSHRDQ, 'ronin/asm/x86_64/instructions/vpshrdq'
        autoload :VPSHRDVD, 'ronin/asm/x86_64/instructions/vpshrdvd'
        autoload :VPSHRDVQ, 'ronin/asm/x86_64/instructions/vpshrdvq'
        autoload :VPSHRDVW, 'ronin/asm/x86_64/instructions/vpshrdvw'
        autoload :VPSHRDW, 'ronin/asm/x86_64/instructions/vpshrdw'
        autoload :VPSHUFB, 'ronin/asm/x86_64/instructions/vpshufb'
        autoload :VPSHUFBITQMB, 'ronin/asm/x86_64/instructions/vpshufbitqmb'
        autoload :VPSHUFD, 'ronin/asm/x86_64/instructions/vpshufd'
        autoload :VPSHUFHW, 'ronin/asm/x86_64/instructions/vpshufhw'
        autoload :VPSHUFLW, 'ronin/asm/x86_64/instructions/vpshuflw'
        autoload :VPSIGNB, 'ronin/asm/x86_64/instructions/vpsignb'
        autoload :VPSIGND, 'ronin/asm/x86_64/instructions/vpsignd'
        autoload :VPSIGNW, 'ronin/asm/x86_64/instructions/vpsignw'
        autoload :VPSLLD, 'ronin/asm/x86_64/instructions/vpslld'
        autoload :VPSLLDQ, 'ronin/asm/x86_64/instructions/vpslldq'
        autoload :VPSLLQ, 'ronin/asm/x86_64/instructions/vpsllq'
        autoload :VPSLLVD, 'ronin/asm/x86_64/instructions/vpsllvd'
        autoload :VPSLLVQ, 'ronin/asm/x86_64/instructions/vpsllvq'
        autoload :VPSLLVW, 'ronin/asm/x86_64/instructions/vpsllvw'
        autoload :VPSLLW, 'ronin/asm/x86_64/instructions/vpsllw'
        autoload :VPSRAD, 'ronin/asm/x86_64/instructions/vpsrad'
        autoload :VPSRAQ, 'ronin/asm/x86_64/instructions/vpsraq'
        autoload :VPSRAVD, 'ronin/asm/x86_64/instructions/vpsravd'
        autoload :VPSRAVQ, 'ronin/asm/x86_64/instructions/vpsravq'
        autoload :VPSRAVW, 'ronin/asm/x86_64/instructions/vpsravw'
        autoload :VPSRAW, 'ronin/asm/x86_64/instructions/vpsraw'
        autoload :VPSRLD, 'ronin/asm/x86_64/instructions/vpsrld'
        autoload :VPSRLDQ, 'ronin/asm/x86_64/instructions/vpsrldq'
        autoload :VPSRLQ, 'ronin/asm/x86_64/instructions/vpsrlq'
        autoload :VPSRLVD, 'ronin/asm/x86_64/instructions/vpsrlvd'
        autoload :VPSRLVQ, 'ronin/asm/x86_64/instructions/vpsrlvq'
        autoload :VPSRLVW, 'ronin/asm/x86_64/instructions/vpsrlvw'
        autoload :VPSRLW, 'ronin/asm/x86_64/instructions/vpsrlw'
        autoload :VPSUBB, 'ronin/asm/x86_64/instructions/vpsubb'
        autoload :VPSUBD, 'ronin/asm/x86_64/instructions/vpsubd'
        autoload :VPSUBQ, 'ronin/asm/x86_64/instructions/vpsubq'
        autoload :VPSUBSB, 'ronin/asm/x86_64/instructions/vpsubsb'
        autoload :VPSUBSW, 'ronin/asm/x86_64/instructions/vpsubsw'
        autoload :VPSUBUSB, 'ronin/asm/x86_64/instructions/vpsubusb'
        autoload :VPSUBUSW, 'ronin/asm/x86_64/instructions/vpsubusw'
        autoload :VPSUBW, 'ronin/asm/x86_64/instructions/vpsubw'
        autoload :VPTERNLOGD, 'ronin/asm/x86_64/instructions/vpternlogd'
        autoload :VPTERNLOGQ, 'ronin/asm/x86_64/instructions/vpternlogq'
        autoload :VPTEST, 'ronin/asm/x86_64/instructions/vptest'
        autoload :VPTESTMB, 'ronin/asm/x86_64/instructions/vptestmb'
        autoload :VPTESTMD, 'ronin/asm/x86_64/instructions/vptestmd'
        autoload :VPTESTMQ, 'ronin/asm/x86_64/instructions/vptestmq'
        autoload :VPTESTMW, 'ronin/asm/x86_64/instructions/vptestmw'
        autoload :VPTESTNMB, 'ronin/asm/x86_64/instructions/vptestnmb'
        autoload :VPTESTNMD, 'ronin/asm/x86_64/instructions/vptestnmd'
        autoload :VPTESTNMQ, 'ronin/asm/x86_64/instructions/vptestnmq'
        autoload :VPTESTNMW, 'ronin/asm/x86_64/instructions/vptestnmw'
        autoload :VPUNPCKHBW, 'ronin/asm/x86_64/instructions/vpunpckhbw'
        autoload :VPUNPCKHDQ, 'ronin/asm/x86_64/instructions/vpunpckhdq'
        autoload :VPUNPCKHQDQ, 'ronin/asm/x86_64/instructions/vpunpckhqdq'
        autoload :VPUNPCKHWD, 'ronin/asm/x86_64/instructions/vpunpckhwd'
        autoload :VPUNPCKLBW, 'ronin/asm/x86_64/instructions/vpunpcklbw'
        autoload :VPUNPCKLDQ, 'ronin/asm/x86_64/instructions/vpunpckldq'
        autoload :VPUNPCKLQDQ, 'ronin/asm/x86_64/instructions/vpunpcklqdq'
        autoload :VPUNPCKLWD, 'ronin/asm/x86_64/instructions/vpunpcklwd'
        autoload :VPXOR, 'ronin/asm/x86_64/instructions/vpxor'
        autoload :VPXORD, 'ronin/asm/x86_64/instructions/vpxord'
        autoload :VPXORQ, 'ronin/asm/x86_64/instructions/vpxorq'
        autoload :VRANGEPD, 'ronin/asm/x86_64/instructions/vrangepd'
        autoload :VRANGEPS, 'ronin/asm/x86_64/instructions/vrangeps'
        autoload :VRANGESD, 'ronin/asm/x86_64/instructions/vrangesd'
        autoload :VRANGESS, 'ronin/asm/x86_64/instructions/vrangess'
        autoload :VRCP14PD, 'ronin/asm/x86_64/instructions/vrcp14pd'
        autoload :VRCP14PS, 'ronin/asm/x86_64/instructions/vrcp14ps'
        autoload :VRCP14SD, 'ronin/asm/x86_64/instructions/vrcp14sd'
        autoload :VRCP14SS, 'ronin/asm/x86_64/instructions/vrcp14ss'
        autoload :VRCP28PD, 'ronin/asm/x86_64/instructions/vrcp28pd'
        autoload :VRCP28PS, 'ronin/asm/x86_64/instructions/vrcp28ps'
        autoload :VRCP28SD, 'ronin/asm/x86_64/instructions/vrcp28sd'
        autoload :VRCP28SS, 'ronin/asm/x86_64/instructions/vrcp28ss'
        autoload :VRCPPH, 'ronin/asm/x86_64/instructions/vrcpph'
        autoload :VRCPPS, 'ronin/asm/x86_64/instructions/vrcpps'
        autoload :VRCPSH, 'ronin/asm/x86_64/instructions/vrcpsh'
        autoload :VRCPSS, 'ronin/asm/x86_64/instructions/vrcpss'
        autoload :VREDUCEPD, 'ronin/asm/x86_64/instructions/vreducepd'
        autoload :VREDUCEPH, 'ronin/asm/x86_64/instructions/vreduceph'
        autoload :VREDUCEPS, 'ronin/asm/x86_64/instructions/vreduceps'
        autoload :VREDUCESD, 'ronin/asm/x86_64/instructions/vreducesd'
        autoload :VREDUCESH, 'ronin/asm/x86_64/instructions/vreducesh'
        autoload :VREDUCESS, 'ronin/asm/x86_64/instructions/vreducess'
        autoload :VRNDSCALEPD, 'ronin/asm/x86_64/instructions/vrndscalepd'
        autoload :VRNDSCALEPH, 'ronin/asm/x86_64/instructions/vrndscaleph'
        autoload :VRNDSCALEPS, 'ronin/asm/x86_64/instructions/vrndscaleps'
        autoload :VRNDSCALESD, 'ronin/asm/x86_64/instructions/vrndscalesd'
        autoload :VRNDSCALESH, 'ronin/asm/x86_64/instructions/vrndscalesh'
        autoload :VRNDSCALESS, 'ronin/asm/x86_64/instructions/vrndscaless'
        autoload :VROUNDPD, 'ronin/asm/x86_64/instructions/vroundpd'
        autoload :VROUNDPS, 'ronin/asm/x86_64/instructions/vroundps'
        autoload :VROUNDSD, 'ronin/asm/x86_64/instructions/vroundsd'
        autoload :VROUNDSS, 'ronin/asm/x86_64/instructions/vroundss'
        autoload :VRSQRT14PD, 'ronin/asm/x86_64/instructions/vrsqrt14pd'
        autoload :VRSQRT14PS, 'ronin/asm/x86_64/instructions/vrsqrt14ps'
        autoload :VRSQRT14SD, 'ronin/asm/x86_64/instructions/vrsqrt14sd'
        autoload :VRSQRT14SS, 'ronin/asm/x86_64/instructions/vrsqrt14ss'
        autoload :VRSQRT28PD, 'ronin/asm/x86_64/instructions/vrsqrt28pd'
        autoload :VRSQRT28PS, 'ronin/asm/x86_64/instructions/vrsqrt28ps'
        autoload :VRSQRT28SD, 'ronin/asm/x86_64/instructions/vrsqrt28sd'
        autoload :VRSQRT28SS, 'ronin/asm/x86_64/instructions/vrsqrt28ss'
        autoload :VRSQRTPH, 'ronin/asm/x86_64/instructions/vrsqrtph'
        autoload :VRSQRTPS, 'ronin/asm/x86_64/instructions/vrsqrtps'
        autoload :VRSQRTSH, 'ronin/asm/x86_64/instructions/vrsqrtsh'
        autoload :VRSQRTSS, 'ronin/asm/x86_64/instructions/vrsqrtss'
        autoload :VSCALEFPD, 'ronin/asm/x86_64/instructions/vscalefpd'
        autoload :VSCALEFPH, 'ronin/asm/x86_64/instructions/vscalefph'
        autoload :VSCALEFPS, 'ronin/asm/x86_64/instructions/vscalefps'
        autoload :VSCALEFSD, 'ronin/asm/x86_64/instructions/vscalefsd'
        autoload :VSCALEFSH, 'ronin/asm/x86_64/instructions/vscalefsh'
        autoload :VSCALEFSS, 'ronin/asm/x86_64/instructions/vscalefss'
        autoload :VSCATTERDPD, 'ronin/asm/x86_64/instructions/vscatterdpd'
        autoload :VSCATTERDPS, 'ronin/asm/x86_64/instructions/vscatterdps'
        autoload :VSCATTERPF0DPD, 'ronin/asm/x86_64/instructions/vscatterpf0dpd'
        autoload :VSCATTERPF0DPS, 'ronin/asm/x86_64/instructions/vscatterpf0dps'
        autoload :VSCATTERPF0QPD, 'ronin/asm/x86_64/instructions/vscatterpf0qpd'
        autoload :VSCATTERPF0QPS, 'ronin/asm/x86_64/instructions/vscatterpf0qps'
        autoload :VSCATTERPF1DPD, 'ronin/asm/x86_64/instructions/vscatterpf1dpd'
        autoload :VSCATTERPF1DPS, 'ronin/asm/x86_64/instructions/vscatterpf1dps'
        autoload :VSCATTERPF1QPD, 'ronin/asm/x86_64/instructions/vscatterpf1qpd'
        autoload :VSCATTERPF1QPS, 'ronin/asm/x86_64/instructions/vscatterpf1qps'
        autoload :VSCATTERQPD, 'ronin/asm/x86_64/instructions/vscatterqpd'
        autoload :VSCATTERQPS, 'ronin/asm/x86_64/instructions/vscatterqps'
        autoload :VSHA512MSG1, 'ronin/asm/x86_64/instructions/vsha512msg1'
        autoload :VSHA512MSG2, 'ronin/asm/x86_64/instructions/vsha512msg2'
        autoload :VSHA512RNDS2, 'ronin/asm/x86_64/instructions/vsha512rnds2'
        autoload :VSHUFF32X4, 'ronin/asm/x86_64/instructions/vshuff32x4'
        autoload :VSHUFF64X2, 'ronin/asm/x86_64/instructions/vshuff64x2'
        autoload :VSHUFI32X4, 'ronin/asm/x86_64/instructions/vshufi32x4'
        autoload :VSHUFI64X2, 'ronin/asm/x86_64/instructions/vshufi64x2'
        autoload :VSHUFPD, 'ronin/asm/x86_64/instructions/vshufpd'
        autoload :VSHUFPS, 'ronin/asm/x86_64/instructions/vshufps'
        autoload :VSM3MSG1, 'ronin/asm/x86_64/instructions/vsm3msg1'
        autoload :VSM3MSG2, 'ronin/asm/x86_64/instructions/vsm3msg2'
        autoload :VSM3RNDS2, 'ronin/asm/x86_64/instructions/vsm3rnds2'
        autoload :VSM4KEY4, 'ronin/asm/x86_64/instructions/vsm4key4'
        autoload :VSM4RNDS4, 'ronin/asm/x86_64/instructions/vsm4rnds4'
        autoload :VSQRTPD, 'ronin/asm/x86_64/instructions/vsqrtpd'
        autoload :VSQRTPH, 'ronin/asm/x86_64/instructions/vsqrtph'
        autoload :VSQRTPS, 'ronin/asm/x86_64/instructions/vsqrtps'
        autoload :VSQRTSD, 'ronin/asm/x86_64/instructions/vsqrtsd'
        autoload :VSQRTSH, 'ronin/asm/x86_64/instructions/vsqrtsh'
        autoload :VSQRTSS, 'ronin/asm/x86_64/instructions/vsqrtss'
        autoload :VSTMXCSR, 'ronin/asm/x86_64/instructions/vstmxcsr'
        autoload :VSUBPD, 'ronin/asm/x86_64/instructions/vsubpd'
        autoload :VSUBPH, 'ronin/asm/x86_64/instructions/vsubph'
        autoload :VSUBPS, 'ronin/asm/x86_64/instructions/vsubps'
        autoload :VSUBSD, 'ronin/asm/x86_64/instructions/vsubsd'
        autoload :VSUBSH, 'ronin/asm/x86_64/instructions/vsubsh'
        autoload :VSUBSS, 'ronin/asm/x86_64/instructions/vsubss'
        autoload :VTESTPD, 'ronin/asm/x86_64/instructions/vtestpd'
        autoload :VTESTPS, 'ronin/asm/x86_64/instructions/vtestps'
        autoload :VUCOMISD, 'ronin/asm/x86_64/instructions/vucomisd'
        autoload :VUCOMISH, 'ronin/asm/x86_64/instructions/vucomish'
        autoload :VUCOMISS, 'ronin/asm/x86_64/instructions/vucomiss'
        autoload :VUNPCKHPD, 'ronin/asm/x86_64/instructions/vunpckhpd'
        autoload :VUNPCKHPS, 'ronin/asm/x86_64/instructions/vunpckhps'
        autoload :VUNPCKLPD, 'ronin/asm/x86_64/instructions/vunpcklpd'
        autoload :VUNPCKLPS, 'ronin/asm/x86_64/instructions/vunpcklps'
        autoload :VXORPD, 'ronin/asm/x86_64/instructions/vxorpd'
        autoload :VXORPS, 'ronin/asm/x86_64/instructions/vxorps'
        autoload :VZEROALL, 'ronin/asm/x86_64/instructions/vzeroall'
        autoload :VZEROUPPER, 'ronin/asm/x86_64/instructions/vzeroupper'
        autoload :WRFSBASE, 'ronin/asm/x86_64/instructions/wrfsbase'
        autoload :WRGSBASE, 'ronin/asm/x86_64/instructions/wrgsbase'
        autoload :XADD, 'ronin/asm/x86_64/instructions/xadd'
        autoload :XCHG, 'ronin/asm/x86_64/instructions/xchg'
        autoload :XGETBV, 'ronin/asm/x86_64/instructions/xgetbv'
        autoload :XLATB, 'ronin/asm/x86_64/instructions/xlatb'
        autoload :XOR, 'ronin/asm/x86_64/instructions/xor'
        autoload :XORPD, 'ronin/asm/x86_64/instructions/xorpd'
        autoload :XORPS, 'ronin/asm/x86_64/instructions/xorps'

        def aadd(*operands,**kwargs) = add_instruction(Instructions::AADD,*operands,**kwargs)
        def aand(*operands,**kwargs) = add_instruction(Instructions::AAND,*operands,**kwargs)
        def adc(*operands,**kwargs) = add_instruction(Instructions::ADC,*operands,**kwargs)
        def adcx(*operands,**kwargs) = add_instruction(Instructions::ADCX,*operands,**kwargs)
        def add(*operands,**kwargs) = add_instruction(Instructions::ADD,*operands,**kwargs)
        def addpd(*operands,**kwargs) = add_instruction(Instructions::ADDPD,*operands,**kwargs)
        def addps(*operands,**kwargs) = add_instruction(Instructions::ADDPS,*operands,**kwargs)
        def addsd(*operands,**kwargs) = add_instruction(Instructions::ADDSD,*operands,**kwargs)
        def addss(*operands,**kwargs) = add_instruction(Instructions::ADDSS,*operands,**kwargs)
        def addsubpd(*operands,**kwargs) = add_instruction(Instructions::ADDSUBPD,*operands,**kwargs)
        def addsubps(*operands,**kwargs) = add_instruction(Instructions::ADDSUBPS,*operands,**kwargs)
        def adox(*operands,**kwargs) = add_instruction(Instructions::ADOX,*operands,**kwargs)
        def aesdec(*operands,**kwargs) = add_instruction(Instructions::AESDEC,*operands,**kwargs)
        def aesdeclast(*operands,**kwargs) = add_instruction(Instructions::AESDECLAST,*operands,**kwargs)
        def aesenc(*operands,**kwargs) = add_instruction(Instructions::AESENC,*operands,**kwargs)
        def aesenclast(*operands,**kwargs) = add_instruction(Instructions::AESENCLAST,*operands,**kwargs)
        def aesimc(*operands,**kwargs) = add_instruction(Instructions::AESIMC,*operands,**kwargs)
        def aeskeygenassist(*operands,**kwargs) = add_instruction(Instructions::AESKEYGENASSIST,*operands,**kwargs)
        def and(*operands,**kwargs) = add_instruction(Instructions::AND,*operands,**kwargs)
        def andn(*operands,**kwargs) = add_instruction(Instructions::ANDN,*operands,**kwargs)
        def andnpd(*operands,**kwargs) = add_instruction(Instructions::ANDNPD,*operands,**kwargs)
        def andnps(*operands,**kwargs) = add_instruction(Instructions::ANDNPS,*operands,**kwargs)
        def andpd(*operands,**kwargs) = add_instruction(Instructions::ANDPD,*operands,**kwargs)
        def andps(*operands,**kwargs) = add_instruction(Instructions::ANDPS,*operands,**kwargs)
        def aor(*operands,**kwargs) = add_instruction(Instructions::AOR,*operands,**kwargs)
        def axor(*operands,**kwargs) = add_instruction(Instructions::AXOR,*operands,**kwargs)
        def bextr(*operands,**kwargs) = add_instruction(Instructions::BEXTR,*operands,**kwargs)
        def blcfill(*operands,**kwargs) = add_instruction(Instructions::BLCFILL,*operands,**kwargs)
        def blci(*operands,**kwargs) = add_instruction(Instructions::BLCI,*operands,**kwargs)
        def blcic(*operands,**kwargs) = add_instruction(Instructions::BLCIC,*operands,**kwargs)
        def blcmsk(*operands,**kwargs) = add_instruction(Instructions::BLCMSK,*operands,**kwargs)
        def blcs(*operands,**kwargs) = add_instruction(Instructions::BLCS,*operands,**kwargs)
        def blendpd(*operands,**kwargs) = add_instruction(Instructions::BLENDPD,*operands,**kwargs)
        def blendps(*operands,**kwargs) = add_instruction(Instructions::BLENDPS,*operands,**kwargs)
        def blendvpd(*operands,**kwargs) = add_instruction(Instructions::BLENDVPD,*operands,**kwargs)
        def blendvps(*operands,**kwargs) = add_instruction(Instructions::BLENDVPS,*operands,**kwargs)
        def blsfill(*operands,**kwargs) = add_instruction(Instructions::BLSFILL,*operands,**kwargs)
        def blsi(*operands,**kwargs) = add_instruction(Instructions::BLSI,*operands,**kwargs)
        def blsic(*operands,**kwargs) = add_instruction(Instructions::BLSIC,*operands,**kwargs)
        def blsmsk(*operands,**kwargs) = add_instruction(Instructions::BLSMSK,*operands,**kwargs)
        def blsr(*operands,**kwargs) = add_instruction(Instructions::BLSR,*operands,**kwargs)
        def bsf(*operands,**kwargs) = add_instruction(Instructions::BSF,*operands,**kwargs)
        def bsr(*operands,**kwargs) = add_instruction(Instructions::BSR,*operands,**kwargs)
        def bswap(*operands,**kwargs) = add_instruction(Instructions::BSWAP,*operands,**kwargs)
        def bt(*operands,**kwargs) = add_instruction(Instructions::BT,*operands,**kwargs)
        def btc(*operands,**kwargs) = add_instruction(Instructions::BTC,*operands,**kwargs)
        def btr(*operands,**kwargs) = add_instruction(Instructions::BTR,*operands,**kwargs)
        def bts(*operands,**kwargs) = add_instruction(Instructions::BTS,*operands,**kwargs)
        def bzhi(*operands,**kwargs) = add_instruction(Instructions::BZHI,*operands,**kwargs)
        def call(*operands,**kwargs) = add_instruction(Instructions::CALL,*operands,**kwargs)
        def cbw(*operands,**kwargs) = add_instruction(Instructions::CBW,*operands,**kwargs)
        def cdq(*operands,**kwargs) = add_instruction(Instructions::CDQ,*operands,**kwargs)
        def cdqe(*operands,**kwargs) = add_instruction(Instructions::CDQE,*operands,**kwargs)
        def clc(*operands,**kwargs) = add_instruction(Instructions::CLC,*operands,**kwargs)
        def cld(*operands,**kwargs) = add_instruction(Instructions::CLD,*operands,**kwargs)
        def cldemote(*operands,**kwargs) = add_instruction(Instructions::CLDEMOTE,*operands,**kwargs)
        def clflush(*operands,**kwargs) = add_instruction(Instructions::CLFLUSH,*operands,**kwargs)
        def clflushopt(*operands,**kwargs) = add_instruction(Instructions::CLFLUSHOPT,*operands,**kwargs)
        def clwb(*operands,**kwargs) = add_instruction(Instructions::CLWB,*operands,**kwargs)
        def clzero(*operands,**kwargs) = add_instruction(Instructions::CLZERO,*operands,**kwargs)
        def cmc(*operands,**kwargs) = add_instruction(Instructions::CMC,*operands,**kwargs)
        def cmova(*operands,**kwargs) = add_instruction(Instructions::CMOVA,*operands,**kwargs)
        def cmovae(*operands,**kwargs) = add_instruction(Instructions::CMOVAE,*operands,**kwargs)
        def cmovb(*operands,**kwargs) = add_instruction(Instructions::CMOVB,*operands,**kwargs)
        def cmovbe(*operands,**kwargs) = add_instruction(Instructions::CMOVBE,*operands,**kwargs)
        def cmovc(*operands,**kwargs) = add_instruction(Instructions::CMOVC,*operands,**kwargs)
        def cmove(*operands,**kwargs) = add_instruction(Instructions::CMOVE,*operands,**kwargs)
        def cmovg(*operands,**kwargs) = add_instruction(Instructions::CMOVG,*operands,**kwargs)
        def cmovge(*operands,**kwargs) = add_instruction(Instructions::CMOVGE,*operands,**kwargs)
        def cmovl(*operands,**kwargs) = add_instruction(Instructions::CMOVL,*operands,**kwargs)
        def cmovle(*operands,**kwargs) = add_instruction(Instructions::CMOVLE,*operands,**kwargs)
        def cmovna(*operands,**kwargs) = add_instruction(Instructions::CMOVNA,*operands,**kwargs)
        def cmovnae(*operands,**kwargs) = add_instruction(Instructions::CMOVNAE,*operands,**kwargs)
        def cmovnb(*operands,**kwargs) = add_instruction(Instructions::CMOVNB,*operands,**kwargs)
        def cmovnbe(*operands,**kwargs) = add_instruction(Instructions::CMOVNBE,*operands,**kwargs)
        def cmovnc(*operands,**kwargs) = add_instruction(Instructions::CMOVNC,*operands,**kwargs)
        def cmovne(*operands,**kwargs) = add_instruction(Instructions::CMOVNE,*operands,**kwargs)
        def cmovng(*operands,**kwargs) = add_instruction(Instructions::CMOVNG,*operands,**kwargs)
        def cmovnge(*operands,**kwargs) = add_instruction(Instructions::CMOVNGE,*operands,**kwargs)
        def cmovnl(*operands,**kwargs) = add_instruction(Instructions::CMOVNL,*operands,**kwargs)
        def cmovnle(*operands,**kwargs) = add_instruction(Instructions::CMOVNLE,*operands,**kwargs)
        def cmovno(*operands,**kwargs) = add_instruction(Instructions::CMOVNO,*operands,**kwargs)
        def cmovnp(*operands,**kwargs) = add_instruction(Instructions::CMOVNP,*operands,**kwargs)
        def cmovns(*operands,**kwargs) = add_instruction(Instructions::CMOVNS,*operands,**kwargs)
        def cmovnz(*operands,**kwargs) = add_instruction(Instructions::CMOVNZ,*operands,**kwargs)
        def cmovo(*operands,**kwargs) = add_instruction(Instructions::CMOVO,*operands,**kwargs)
        def cmovp(*operands,**kwargs) = add_instruction(Instructions::CMOVP,*operands,**kwargs)
        def cmovpe(*operands,**kwargs) = add_instruction(Instructions::CMOVPE,*operands,**kwargs)
        def cmovpo(*operands,**kwargs) = add_instruction(Instructions::CMOVPO,*operands,**kwargs)
        def cmovs(*operands,**kwargs) = add_instruction(Instructions::CMOVS,*operands,**kwargs)
        def cmovz(*operands,**kwargs) = add_instruction(Instructions::CMOVZ,*operands,**kwargs)
        def cmp(*operands,**kwargs) = add_instruction(Instructions::CMP,*operands,**kwargs)
        def cmpbexadd(*operands,**kwargs) = add_instruction(Instructions::CMPBEXADD,*operands,**kwargs)
        def cmpbxadd(*operands,**kwargs) = add_instruction(Instructions::CMPBXADD,*operands,**kwargs)
        def cmplexadd(*operands,**kwargs) = add_instruction(Instructions::CMPLEXADD,*operands,**kwargs)
        def cmplxadd(*operands,**kwargs) = add_instruction(Instructions::CMPLXADD,*operands,**kwargs)
        def cmpnbexadd(*operands,**kwargs) = add_instruction(Instructions::CMPNBEXADD,*operands,**kwargs)
        def cmpnbxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNBXADD,*operands,**kwargs)
        def cmpnlexadd(*operands,**kwargs) = add_instruction(Instructions::CMPNLEXADD,*operands,**kwargs)
        def cmpnlxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNLXADD,*operands,**kwargs)
        def cmpnoxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNOXADD,*operands,**kwargs)
        def cmpnpxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNPXADD,*operands,**kwargs)
        def cmpnsxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNSXADD,*operands,**kwargs)
        def cmpnzxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNZXADD,*operands,**kwargs)
        def cmpoxadd(*operands,**kwargs) = add_instruction(Instructions::CMPOXADD,*operands,**kwargs)
        def cmppd(*operands,**kwargs) = add_instruction(Instructions::CMPPD,*operands,**kwargs)
        def cmpps(*operands,**kwargs) = add_instruction(Instructions::CMPPS,*operands,**kwargs)
        def cmppxadd(*operands,**kwargs) = add_instruction(Instructions::CMPPXADD,*operands,**kwargs)
        def cmpsd(*operands,**kwargs) = add_instruction(Instructions::CMPSD,*operands,**kwargs)
        def cmpss(*operands,**kwargs) = add_instruction(Instructions::CMPSS,*operands,**kwargs)
        def cmpsxadd(*operands,**kwargs) = add_instruction(Instructions::CMPSXADD,*operands,**kwargs)
        def cmpxchg(*operands,**kwargs) = add_instruction(Instructions::CMPXCHG,*operands,**kwargs)
        def cmpxchg16b(*operands,**kwargs) = add_instruction(Instructions::CMPXCHG16B,*operands,**kwargs)
        def cmpxchg8b(*operands,**kwargs) = add_instruction(Instructions::CMPXCHG8B,*operands,**kwargs)
        def cmpzxadd(*operands,**kwargs) = add_instruction(Instructions::CMPZXADD,*operands,**kwargs)
        def comisd(*operands,**kwargs) = add_instruction(Instructions::COMISD,*operands,**kwargs)
        def comiss(*operands,**kwargs) = add_instruction(Instructions::COMISS,*operands,**kwargs)
        def cpuid(*operands,**kwargs) = add_instruction(Instructions::CPUID,*operands,**kwargs)
        def cqo(*operands,**kwargs) = add_instruction(Instructions::CQO,*operands,**kwargs)
        def crc32(*operands,**kwargs) = add_instruction(Instructions::CRC32,*operands,**kwargs)
        def cvtdq2pd(*operands,**kwargs) = add_instruction(Instructions::CVTDQ2PD,*operands,**kwargs)
        def cvtdq2ps(*operands,**kwargs) = add_instruction(Instructions::CVTDQ2PS,*operands,**kwargs)
        def cvtpd2dq(*operands,**kwargs) = add_instruction(Instructions::CVTPD2DQ,*operands,**kwargs)
        def cvtpd2pi(*operands,**kwargs) = add_instruction(Instructions::CVTPD2PI,*operands,**kwargs)
        def cvtpd2ps(*operands,**kwargs) = add_instruction(Instructions::CVTPD2PS,*operands,**kwargs)
        def cvtpi2pd(*operands,**kwargs) = add_instruction(Instructions::CVTPI2PD,*operands,**kwargs)
        def cvtpi2ps(*operands,**kwargs) = add_instruction(Instructions::CVTPI2PS,*operands,**kwargs)
        def cvtps2dq(*operands,**kwargs) = add_instruction(Instructions::CVTPS2DQ,*operands,**kwargs)
        def cvtps2pd(*operands,**kwargs) = add_instruction(Instructions::CVTPS2PD,*operands,**kwargs)
        def cvtps2pi(*operands,**kwargs) = add_instruction(Instructions::CVTPS2PI,*operands,**kwargs)
        def cvtsd2si(*operands,**kwargs) = add_instruction(Instructions::CVTSD2SI,*operands,**kwargs)
        def cvtsd2ss(*operands,**kwargs) = add_instruction(Instructions::CVTSD2SS,*operands,**kwargs)
        def cvtsi2sd(*operands,**kwargs) = add_instruction(Instructions::CVTSI2SD,*operands,**kwargs)
        def cvtsi2ss(*operands,**kwargs) = add_instruction(Instructions::CVTSI2SS,*operands,**kwargs)
        def cvtss2sd(*operands,**kwargs) = add_instruction(Instructions::CVTSS2SD,*operands,**kwargs)
        def cvtss2si(*operands,**kwargs) = add_instruction(Instructions::CVTSS2SI,*operands,**kwargs)
        def cvttpd2dq(*operands,**kwargs) = add_instruction(Instructions::CVTTPD2DQ,*operands,**kwargs)
        def cvttpd2pi(*operands,**kwargs) = add_instruction(Instructions::CVTTPD2PI,*operands,**kwargs)
        def cvttps2dq(*operands,**kwargs) = add_instruction(Instructions::CVTTPS2DQ,*operands,**kwargs)
        def cvttps2pi(*operands,**kwargs) = add_instruction(Instructions::CVTTPS2PI,*operands,**kwargs)
        def cvttsd2si(*operands,**kwargs) = add_instruction(Instructions::CVTTSD2SI,*operands,**kwargs)
        def cvttss2si(*operands,**kwargs) = add_instruction(Instructions::CVTTSS2SI,*operands,**kwargs)
        def cwd(*operands,**kwargs) = add_instruction(Instructions::CWD,*operands,**kwargs)
        def cwde(*operands,**kwargs) = add_instruction(Instructions::CWDE,*operands,**kwargs)
        def dec(*operands,**kwargs) = add_instruction(Instructions::DEC,*operands,**kwargs)
        def div(*operands,**kwargs) = add_instruction(Instructions::DIV,*operands,**kwargs)
        def divpd(*operands,**kwargs) = add_instruction(Instructions::DIVPD,*operands,**kwargs)
        def divps(*operands,**kwargs) = add_instruction(Instructions::DIVPS,*operands,**kwargs)
        def divsd(*operands,**kwargs) = add_instruction(Instructions::DIVSD,*operands,**kwargs)
        def divss(*operands,**kwargs) = add_instruction(Instructions::DIVSS,*operands,**kwargs)
        def dppd(*operands,**kwargs) = add_instruction(Instructions::DPPD,*operands,**kwargs)
        def dpps(*operands,**kwargs) = add_instruction(Instructions::DPPS,*operands,**kwargs)
        def emms(*operands,**kwargs) = add_instruction(Instructions::EMMS,*operands,**kwargs)
        def endbr64(*operands,**kwargs) = add_instruction(Instructions::ENDBR64,*operands,**kwargs)
        def extractps(*operands,**kwargs) = add_instruction(Instructions::EXTRACTPS,*operands,**kwargs)
        def extrq(*operands,**kwargs) = add_instruction(Instructions::EXTRQ,*operands,**kwargs)
        def femms(*operands,**kwargs) = add_instruction(Instructions::FEMMS,*operands,**kwargs)
        def gf2p8affineinvqb(*operands,**kwargs) = add_instruction(Instructions::GF2P8AFFINEINVQB,*operands,**kwargs)
        def gf2p8affineqb(*operands,**kwargs) = add_instruction(Instructions::GF2P8AFFINEQB,*operands,**kwargs)
        def gf2p8mulb(*operands,**kwargs) = add_instruction(Instructions::GF2P8MULB,*operands,**kwargs)
        def haddpd(*operands,**kwargs) = add_instruction(Instructions::HADDPD,*operands,**kwargs)
        def haddps(*operands,**kwargs) = add_instruction(Instructions::HADDPS,*operands,**kwargs)
        def hsubpd(*operands,**kwargs) = add_instruction(Instructions::HSUBPD,*operands,**kwargs)
        def hsubps(*operands,**kwargs) = add_instruction(Instructions::HSUBPS,*operands,**kwargs)
        def idiv(*operands,**kwargs) = add_instruction(Instructions::IDIV,*operands,**kwargs)
        def imul(*operands,**kwargs) = add_instruction(Instructions::IMUL,*operands,**kwargs)
        def inc(*operands,**kwargs) = add_instruction(Instructions::INC,*operands,**kwargs)
        def insertps(*operands,**kwargs) = add_instruction(Instructions::INSERTPS,*operands,**kwargs)
        def insertq(*operands,**kwargs) = add_instruction(Instructions::INSERTQ,*operands,**kwargs)
        def int(*operands,**kwargs) = add_instruction(Instructions::INT,*operands,**kwargs)
        def int3(*operands,**kwargs) = add_instruction(Instructions::INT3,*operands,**kwargs)
        def ja(*operands,**kwargs) = add_instruction(Instructions::JA,*operands,**kwargs)
        def jae(*operands,**kwargs) = add_instruction(Instructions::JAE,*operands,**kwargs)
        def jb(*operands,**kwargs) = add_instruction(Instructions::JB,*operands,**kwargs)
        def jbe(*operands,**kwargs) = add_instruction(Instructions::JBE,*operands,**kwargs)
        def jc(*operands,**kwargs) = add_instruction(Instructions::JC,*operands,**kwargs)
        def je(*operands,**kwargs) = add_instruction(Instructions::JE,*operands,**kwargs)
        def jecxz(*operands,**kwargs) = add_instruction(Instructions::JECXZ,*operands,**kwargs)
        def jg(*operands,**kwargs) = add_instruction(Instructions::JG,*operands,**kwargs)
        def jge(*operands,**kwargs) = add_instruction(Instructions::JGE,*operands,**kwargs)
        def jl(*operands,**kwargs) = add_instruction(Instructions::JL,*operands,**kwargs)
        def jle(*operands,**kwargs) = add_instruction(Instructions::JLE,*operands,**kwargs)
        def jmp(*operands,**kwargs) = add_instruction(Instructions::JMP,*operands,**kwargs)
        def jna(*operands,**kwargs) = add_instruction(Instructions::JNA,*operands,**kwargs)
        def jnae(*operands,**kwargs) = add_instruction(Instructions::JNAE,*operands,**kwargs)
        def jnb(*operands,**kwargs) = add_instruction(Instructions::JNB,*operands,**kwargs)
        def jnbe(*operands,**kwargs) = add_instruction(Instructions::JNBE,*operands,**kwargs)
        def jnc(*operands,**kwargs) = add_instruction(Instructions::JNC,*operands,**kwargs)
        def jne(*operands,**kwargs) = add_instruction(Instructions::JNE,*operands,**kwargs)
        def jng(*operands,**kwargs) = add_instruction(Instructions::JNG,*operands,**kwargs)
        def jnge(*operands,**kwargs) = add_instruction(Instructions::JNGE,*operands,**kwargs)
        def jnl(*operands,**kwargs) = add_instruction(Instructions::JNL,*operands,**kwargs)
        def jnle(*operands,**kwargs) = add_instruction(Instructions::JNLE,*operands,**kwargs)
        def jno(*operands,**kwargs) = add_instruction(Instructions::JNO,*operands,**kwargs)
        def jnp(*operands,**kwargs) = add_instruction(Instructions::JNP,*operands,**kwargs)
        def jns(*operands,**kwargs) = add_instruction(Instructions::JNS,*operands,**kwargs)
        def jnz(*operands,**kwargs) = add_instruction(Instructions::JNZ,*operands,**kwargs)
        def jo(*operands,**kwargs) = add_instruction(Instructions::JO,*operands,**kwargs)
        def jp(*operands,**kwargs) = add_instruction(Instructions::JP,*operands,**kwargs)
        def jpe(*operands,**kwargs) = add_instruction(Instructions::JPE,*operands,**kwargs)
        def jpo(*operands,**kwargs) = add_instruction(Instructions::JPO,*operands,**kwargs)
        def jrcxz(*operands,**kwargs) = add_instruction(Instructions::JRCXZ,*operands,**kwargs)
        def js(*operands,**kwargs) = add_instruction(Instructions::JS,*operands,**kwargs)
        def jz(*operands,**kwargs) = add_instruction(Instructions::JZ,*operands,**kwargs)
        def kaddb(*operands,**kwargs) = add_instruction(Instructions::KADDB,*operands,**kwargs)
        def kaddd(*operands,**kwargs) = add_instruction(Instructions::KADDD,*operands,**kwargs)
        def kaddq(*operands,**kwargs) = add_instruction(Instructions::KADDQ,*operands,**kwargs)
        def kaddw(*operands,**kwargs) = add_instruction(Instructions::KADDW,*operands,**kwargs)
        def kandb(*operands,**kwargs) = add_instruction(Instructions::KANDB,*operands,**kwargs)
        def kandd(*operands,**kwargs) = add_instruction(Instructions::KANDD,*operands,**kwargs)
        def kandnb(*operands,**kwargs) = add_instruction(Instructions::KANDNB,*operands,**kwargs)
        def kandnd(*operands,**kwargs) = add_instruction(Instructions::KANDND,*operands,**kwargs)
        def kandnq(*operands,**kwargs) = add_instruction(Instructions::KANDNQ,*operands,**kwargs)
        def kandnw(*operands,**kwargs) = add_instruction(Instructions::KANDNW,*operands,**kwargs)
        def kandq(*operands,**kwargs) = add_instruction(Instructions::KANDQ,*operands,**kwargs)
        def kandw(*operands,**kwargs) = add_instruction(Instructions::KANDW,*operands,**kwargs)
        def kmovb(*operands,**kwargs) = add_instruction(Instructions::KMOVB,*operands,**kwargs)
        def kmovd(*operands,**kwargs) = add_instruction(Instructions::KMOVD,*operands,**kwargs)
        def kmovq(*operands,**kwargs) = add_instruction(Instructions::KMOVQ,*operands,**kwargs)
        def kmovw(*operands,**kwargs) = add_instruction(Instructions::KMOVW,*operands,**kwargs)
        def knotb(*operands,**kwargs) = add_instruction(Instructions::KNOTB,*operands,**kwargs)
        def knotd(*operands,**kwargs) = add_instruction(Instructions::KNOTD,*operands,**kwargs)
        def knotq(*operands,**kwargs) = add_instruction(Instructions::KNOTQ,*operands,**kwargs)
        def knotw(*operands,**kwargs) = add_instruction(Instructions::KNOTW,*operands,**kwargs)
        def korb(*operands,**kwargs) = add_instruction(Instructions::KORB,*operands,**kwargs)
        def kord(*operands,**kwargs) = add_instruction(Instructions::KORD,*operands,**kwargs)
        def korq(*operands,**kwargs) = add_instruction(Instructions::KORQ,*operands,**kwargs)
        def kortestb(*operands,**kwargs) = add_instruction(Instructions::KORTESTB,*operands,**kwargs)
        def kortestd(*operands,**kwargs) = add_instruction(Instructions::KORTESTD,*operands,**kwargs)
        def kortestq(*operands,**kwargs) = add_instruction(Instructions::KORTESTQ,*operands,**kwargs)
        def kortestw(*operands,**kwargs) = add_instruction(Instructions::KORTESTW,*operands,**kwargs)
        def korw(*operands,**kwargs) = add_instruction(Instructions::KORW,*operands,**kwargs)
        def kshiftlb(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLB,*operands,**kwargs)
        def kshiftld(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLD,*operands,**kwargs)
        def kshiftlq(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLQ,*operands,**kwargs)
        def kshiftlw(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLW,*operands,**kwargs)
        def kshiftrb(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRB,*operands,**kwargs)
        def kshiftrd(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRD,*operands,**kwargs)
        def kshiftrq(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRQ,*operands,**kwargs)
        def kshiftrw(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRW,*operands,**kwargs)
        def ktestb(*operands,**kwargs) = add_instruction(Instructions::KTESTB,*operands,**kwargs)
        def ktestd(*operands,**kwargs) = add_instruction(Instructions::KTESTD,*operands,**kwargs)
        def ktestq(*operands,**kwargs) = add_instruction(Instructions::KTESTQ,*operands,**kwargs)
        def ktestw(*operands,**kwargs) = add_instruction(Instructions::KTESTW,*operands,**kwargs)
        def kunpckbw(*operands,**kwargs) = add_instruction(Instructions::KUNPCKBW,*operands,**kwargs)
        def kunpckdq(*operands,**kwargs) = add_instruction(Instructions::KUNPCKDQ,*operands,**kwargs)
        def kunpckwd(*operands,**kwargs) = add_instruction(Instructions::KUNPCKWD,*operands,**kwargs)
        def kxnorb(*operands,**kwargs) = add_instruction(Instructions::KXNORB,*operands,**kwargs)
        def kxnord(*operands,**kwargs) = add_instruction(Instructions::KXNORD,*operands,**kwargs)
        def kxnorq(*operands,**kwargs) = add_instruction(Instructions::KXNORQ,*operands,**kwargs)
        def kxnorw(*operands,**kwargs) = add_instruction(Instructions::KXNORW,*operands,**kwargs)
        def kxorb(*operands,**kwargs) = add_instruction(Instructions::KXORB,*operands,**kwargs)
        def kxord(*operands,**kwargs) = add_instruction(Instructions::KXORD,*operands,**kwargs)
        def kxorq(*operands,**kwargs) = add_instruction(Instructions::KXORQ,*operands,**kwargs)
        def kxorw(*operands,**kwargs) = add_instruction(Instructions::KXORW,*operands,**kwargs)
        def lahf(*operands,**kwargs) = add_instruction(Instructions::LAHF,*operands,**kwargs)
        def lddqu(*operands,**kwargs) = add_instruction(Instructions::LDDQU,*operands,**kwargs)
        def ldmxcsr(*operands,**kwargs) = add_instruction(Instructions::LDMXCSR,*operands,**kwargs)
        def ldtilecfg(*operands,**kwargs) = add_instruction(Instructions::LDTILECFG,*operands,**kwargs)
        def lea(*operands,**kwargs) = add_instruction(Instructions::LEA,*operands,**kwargs)
        def lfence(*operands,**kwargs) = add_instruction(Instructions::LFENCE,*operands,**kwargs)
        def lzcnt(*operands,**kwargs) = add_instruction(Instructions::LZCNT,*operands,**kwargs)
        def maskmovdqu(*operands,**kwargs) = add_instruction(Instructions::MASKMOVDQU,*operands,**kwargs)
        def maskmovq(*operands,**kwargs) = add_instruction(Instructions::MASKMOVQ,*operands,**kwargs)
        def maxpd(*operands,**kwargs) = add_instruction(Instructions::MAXPD,*operands,**kwargs)
        def maxps(*operands,**kwargs) = add_instruction(Instructions::MAXPS,*operands,**kwargs)
        def maxsd(*operands,**kwargs) = add_instruction(Instructions::MAXSD,*operands,**kwargs)
        def maxss(*operands,**kwargs) = add_instruction(Instructions::MAXSS,*operands,**kwargs)
        def mcommit(*operands,**kwargs) = add_instruction(Instructions::MCOMMIT,*operands,**kwargs)
        def mfence(*operands,**kwargs) = add_instruction(Instructions::MFENCE,*operands,**kwargs)
        def minpd(*operands,**kwargs) = add_instruction(Instructions::MINPD,*operands,**kwargs)
        def minps(*operands,**kwargs) = add_instruction(Instructions::MINPS,*operands,**kwargs)
        def minsd(*operands,**kwargs) = add_instruction(Instructions::MINSD,*operands,**kwargs)
        def minss(*operands,**kwargs) = add_instruction(Instructions::MINSS,*operands,**kwargs)
        def monitor(*operands,**kwargs) = add_instruction(Instructions::MONITOR,*operands,**kwargs)
        def monitorx(*operands,**kwargs) = add_instruction(Instructions::MONITORX,*operands,**kwargs)
        def mov(*operands,**kwargs) = add_instruction(Instructions::MOV,*operands,**kwargs)
        def movapd(*operands,**kwargs) = add_instruction(Instructions::MOVAPD,*operands,**kwargs)
        def movaps(*operands,**kwargs) = add_instruction(Instructions::MOVAPS,*operands,**kwargs)
        def movbe(*operands,**kwargs) = add_instruction(Instructions::MOVBE,*operands,**kwargs)
        def movd(*operands,**kwargs) = add_instruction(Instructions::MOVD,*operands,**kwargs)
        def movddup(*operands,**kwargs) = add_instruction(Instructions::MOVDDUP,*operands,**kwargs)
        def movdir64b(*operands,**kwargs) = add_instruction(Instructions::MOVDIR64B,*operands,**kwargs)
        def movdiri(*operands,**kwargs) = add_instruction(Instructions::MOVDIRI,*operands,**kwargs)
        def movdq2q(*operands,**kwargs) = add_instruction(Instructions::MOVDQ2Q,*operands,**kwargs)
        def movdqa(*operands,**kwargs) = add_instruction(Instructions::MOVDQA,*operands,**kwargs)
        def movdqu(*operands,**kwargs) = add_instruction(Instructions::MOVDQU,*operands,**kwargs)
        def movhlps(*operands,**kwargs) = add_instruction(Instructions::MOVHLPS,*operands,**kwargs)
        def movhpd(*operands,**kwargs) = add_instruction(Instructions::MOVHPD,*operands,**kwargs)
        def movhps(*operands,**kwargs) = add_instruction(Instructions::MOVHPS,*operands,**kwargs)
        def movlhps(*operands,**kwargs) = add_instruction(Instructions::MOVLHPS,*operands,**kwargs)
        def movlpd(*operands,**kwargs) = add_instruction(Instructions::MOVLPD,*operands,**kwargs)
        def movlps(*operands,**kwargs) = add_instruction(Instructions::MOVLPS,*operands,**kwargs)
        def movmskpd(*operands,**kwargs) = add_instruction(Instructions::MOVMSKPD,*operands,**kwargs)
        def movmskps(*operands,**kwargs) = add_instruction(Instructions::MOVMSKPS,*operands,**kwargs)
        def movntdq(*operands,**kwargs) = add_instruction(Instructions::MOVNTDQ,*operands,**kwargs)
        def movntdqa(*operands,**kwargs) = add_instruction(Instructions::MOVNTDQA,*operands,**kwargs)
        def movnti(*operands,**kwargs) = add_instruction(Instructions::MOVNTI,*operands,**kwargs)
        def movntpd(*operands,**kwargs) = add_instruction(Instructions::MOVNTPD,*operands,**kwargs)
        def movntps(*operands,**kwargs) = add_instruction(Instructions::MOVNTPS,*operands,**kwargs)
        def movntq(*operands,**kwargs) = add_instruction(Instructions::MOVNTQ,*operands,**kwargs)
        def movntsd(*operands,**kwargs) = add_instruction(Instructions::MOVNTSD,*operands,**kwargs)
        def movntss(*operands,**kwargs) = add_instruction(Instructions::MOVNTSS,*operands,**kwargs)
        def movq(*operands,**kwargs) = add_instruction(Instructions::MOVQ,*operands,**kwargs)
        def movq2dq(*operands,**kwargs) = add_instruction(Instructions::MOVQ2DQ,*operands,**kwargs)
        def movsd(*operands,**kwargs) = add_instruction(Instructions::MOVSD,*operands,**kwargs)
        def movshdup(*operands,**kwargs) = add_instruction(Instructions::MOVSHDUP,*operands,**kwargs)
        def movsldup(*operands,**kwargs) = add_instruction(Instructions::MOVSLDUP,*operands,**kwargs)
        def movss(*operands,**kwargs) = add_instruction(Instructions::MOVSS,*operands,**kwargs)
        def movsx(*operands,**kwargs) = add_instruction(Instructions::MOVSX,*operands,**kwargs)
        def movsxd(*operands,**kwargs) = add_instruction(Instructions::MOVSXD,*operands,**kwargs)
        def movupd(*operands,**kwargs) = add_instruction(Instructions::MOVUPD,*operands,**kwargs)
        def movups(*operands,**kwargs) = add_instruction(Instructions::MOVUPS,*operands,**kwargs)
        def movzx(*operands,**kwargs) = add_instruction(Instructions::MOVZX,*operands,**kwargs)
        def mpsadbw(*operands,**kwargs) = add_instruction(Instructions::MPSADBW,*operands,**kwargs)
        def mul(*operands,**kwargs) = add_instruction(Instructions::MUL,*operands,**kwargs)
        def mulpd(*operands,**kwargs) = add_instruction(Instructions::MULPD,*operands,**kwargs)
        def mulps(*operands,**kwargs) = add_instruction(Instructions::MULPS,*operands,**kwargs)
        def mulsd(*operands,**kwargs) = add_instruction(Instructions::MULSD,*operands,**kwargs)
        def mulss(*operands,**kwargs) = add_instruction(Instructions::MULSS,*operands,**kwargs)
        def mulx(*operands,**kwargs) = add_instruction(Instructions::MULX,*operands,**kwargs)
        def mwait(*operands,**kwargs) = add_instruction(Instructions::MWAIT,*operands,**kwargs)
        def mwaitx(*operands,**kwargs) = add_instruction(Instructions::MWAITX,*operands,**kwargs)
        def neg(*operands,**kwargs) = add_instruction(Instructions::NEG,*operands,**kwargs)
        def nop(*operands,**kwargs) = add_instruction(Instructions::NOP,*operands,**kwargs)
        def not(*operands,**kwargs) = add_instruction(Instructions::NOT,*operands,**kwargs)
        def or(*operands,**kwargs) = add_instruction(Instructions::OR,*operands,**kwargs)
        def orpd(*operands,**kwargs) = add_instruction(Instructions::ORPD,*operands,**kwargs)
        def orps(*operands,**kwargs) = add_instruction(Instructions::ORPS,*operands,**kwargs)
        def pabsb(*operands,**kwargs) = add_instruction(Instructions::PABSB,*operands,**kwargs)
        def pabsd(*operands,**kwargs) = add_instruction(Instructions::PABSD,*operands,**kwargs)
        def pabsw(*operands,**kwargs) = add_instruction(Instructions::PABSW,*operands,**kwargs)
        def packssdw(*operands,**kwargs) = add_instruction(Instructions::PACKSSDW,*operands,**kwargs)
        def packsswb(*operands,**kwargs) = add_instruction(Instructions::PACKSSWB,*operands,**kwargs)
        def packusdw(*operands,**kwargs) = add_instruction(Instructions::PACKUSDW,*operands,**kwargs)
        def packuswb(*operands,**kwargs) = add_instruction(Instructions::PACKUSWB,*operands,**kwargs)
        def paddb(*operands,**kwargs) = add_instruction(Instructions::PADDB,*operands,**kwargs)
        def paddd(*operands,**kwargs) = add_instruction(Instructions::PADDD,*operands,**kwargs)
        def paddq(*operands,**kwargs) = add_instruction(Instructions::PADDQ,*operands,**kwargs)
        def paddsb(*operands,**kwargs) = add_instruction(Instructions::PADDSB,*operands,**kwargs)
        def paddsw(*operands,**kwargs) = add_instruction(Instructions::PADDSW,*operands,**kwargs)
        def paddusb(*operands,**kwargs) = add_instruction(Instructions::PADDUSB,*operands,**kwargs)
        def paddusw(*operands,**kwargs) = add_instruction(Instructions::PADDUSW,*operands,**kwargs)
        def paddw(*operands,**kwargs) = add_instruction(Instructions::PADDW,*operands,**kwargs)
        def palignr(*operands,**kwargs) = add_instruction(Instructions::PALIGNR,*operands,**kwargs)
        def pand(*operands,**kwargs) = add_instruction(Instructions::PAND,*operands,**kwargs)
        def pandn(*operands,**kwargs) = add_instruction(Instructions::PANDN,*operands,**kwargs)
        def pause(*operands,**kwargs) = add_instruction(Instructions::PAUSE,*operands,**kwargs)
        def pavgb(*operands,**kwargs) = add_instruction(Instructions::PAVGB,*operands,**kwargs)
        def pavgusb(*operands,**kwargs) = add_instruction(Instructions::PAVGUSB,*operands,**kwargs)
        def pavgw(*operands,**kwargs) = add_instruction(Instructions::PAVGW,*operands,**kwargs)
        def pblendvb(*operands,**kwargs) = add_instruction(Instructions::PBLENDVB,*operands,**kwargs)
        def pblendw(*operands,**kwargs) = add_instruction(Instructions::PBLENDW,*operands,**kwargs)
        def pclmulqdq(*operands,**kwargs) = add_instruction(Instructions::PCLMULQDQ,*operands,**kwargs)
        def pcmpeqb(*operands,**kwargs) = add_instruction(Instructions::PCMPEQB,*operands,**kwargs)
        def pcmpeqd(*operands,**kwargs) = add_instruction(Instructions::PCMPEQD,*operands,**kwargs)
        def pcmpeqq(*operands,**kwargs) = add_instruction(Instructions::PCMPEQQ,*operands,**kwargs)
        def pcmpeqw(*operands,**kwargs) = add_instruction(Instructions::PCMPEQW,*operands,**kwargs)
        def pcmpestri(*operands,**kwargs) = add_instruction(Instructions::PCMPESTRI,*operands,**kwargs)
        def pcmpestrm(*operands,**kwargs) = add_instruction(Instructions::PCMPESTRM,*operands,**kwargs)
        def pcmpgtb(*operands,**kwargs) = add_instruction(Instructions::PCMPGTB,*operands,**kwargs)
        def pcmpgtd(*operands,**kwargs) = add_instruction(Instructions::PCMPGTD,*operands,**kwargs)
        def pcmpgtq(*operands,**kwargs) = add_instruction(Instructions::PCMPGTQ,*operands,**kwargs)
        def pcmpgtw(*operands,**kwargs) = add_instruction(Instructions::PCMPGTW,*operands,**kwargs)
        def pcmpistri(*operands,**kwargs) = add_instruction(Instructions::PCMPISTRI,*operands,**kwargs)
        def pcmpistrm(*operands,**kwargs) = add_instruction(Instructions::PCMPISTRM,*operands,**kwargs)
        def pdep(*operands,**kwargs) = add_instruction(Instructions::PDEP,*operands,**kwargs)
        def pext(*operands,**kwargs) = add_instruction(Instructions::PEXT,*operands,**kwargs)
        def pextrb(*operands,**kwargs) = add_instruction(Instructions::PEXTRB,*operands,**kwargs)
        def pextrd(*operands,**kwargs) = add_instruction(Instructions::PEXTRD,*operands,**kwargs)
        def pextrq(*operands,**kwargs) = add_instruction(Instructions::PEXTRQ,*operands,**kwargs)
        def pextrw(*operands,**kwargs) = add_instruction(Instructions::PEXTRW,*operands,**kwargs)
        def pf2id(*operands,**kwargs) = add_instruction(Instructions::PF2ID,*operands,**kwargs)
        def pf2iw(*operands,**kwargs) = add_instruction(Instructions::PF2IW,*operands,**kwargs)
        def pfacc(*operands,**kwargs) = add_instruction(Instructions::PFACC,*operands,**kwargs)
        def pfadd(*operands,**kwargs) = add_instruction(Instructions::PFADD,*operands,**kwargs)
        def pfcmpeq(*operands,**kwargs) = add_instruction(Instructions::PFCMPEQ,*operands,**kwargs)
        def pfcmpge(*operands,**kwargs) = add_instruction(Instructions::PFCMPGE,*operands,**kwargs)
        def pfcmpgt(*operands,**kwargs) = add_instruction(Instructions::PFCMPGT,*operands,**kwargs)
        def pfmax(*operands,**kwargs) = add_instruction(Instructions::PFMAX,*operands,**kwargs)
        def pfmin(*operands,**kwargs) = add_instruction(Instructions::PFMIN,*operands,**kwargs)
        def pfmul(*operands,**kwargs) = add_instruction(Instructions::PFMUL,*operands,**kwargs)
        def pfnacc(*operands,**kwargs) = add_instruction(Instructions::PFNACC,*operands,**kwargs)
        def pfpnacc(*operands,**kwargs) = add_instruction(Instructions::PFPNACC,*operands,**kwargs)
        def pfrcp(*operands,**kwargs) = add_instruction(Instructions::PFRCP,*operands,**kwargs)
        def pfrcpit1(*operands,**kwargs) = add_instruction(Instructions::PFRCPIT1,*operands,**kwargs)
        def pfrcpit2(*operands,**kwargs) = add_instruction(Instructions::PFRCPIT2,*operands,**kwargs)
        def pfrsqit1(*operands,**kwargs) = add_instruction(Instructions::PFRSQIT1,*operands,**kwargs)
        def pfrsqrt(*operands,**kwargs) = add_instruction(Instructions::PFRSQRT,*operands,**kwargs)
        def pfsub(*operands,**kwargs) = add_instruction(Instructions::PFSUB,*operands,**kwargs)
        def pfsubr(*operands,**kwargs) = add_instruction(Instructions::PFSUBR,*operands,**kwargs)
        def phaddd(*operands,**kwargs) = add_instruction(Instructions::PHADDD,*operands,**kwargs)
        def phaddsw(*operands,**kwargs) = add_instruction(Instructions::PHADDSW,*operands,**kwargs)
        def phaddw(*operands,**kwargs) = add_instruction(Instructions::PHADDW,*operands,**kwargs)
        def phminposuw(*operands,**kwargs) = add_instruction(Instructions::PHMINPOSUW,*operands,**kwargs)
        def phsubd(*operands,**kwargs) = add_instruction(Instructions::PHSUBD,*operands,**kwargs)
        def phsubsw(*operands,**kwargs) = add_instruction(Instructions::PHSUBSW,*operands,**kwargs)
        def phsubw(*operands,**kwargs) = add_instruction(Instructions::PHSUBW,*operands,**kwargs)
        def pi2fd(*operands,**kwargs) = add_instruction(Instructions::PI2FD,*operands,**kwargs)
        def pi2fw(*operands,**kwargs) = add_instruction(Instructions::PI2FW,*operands,**kwargs)
        def pinsrb(*operands,**kwargs) = add_instruction(Instructions::PINSRB,*operands,**kwargs)
        def pinsrd(*operands,**kwargs) = add_instruction(Instructions::PINSRD,*operands,**kwargs)
        def pinsrq(*operands,**kwargs) = add_instruction(Instructions::PINSRQ,*operands,**kwargs)
        def pinsrw(*operands,**kwargs) = add_instruction(Instructions::PINSRW,*operands,**kwargs)
        def pmaddubsw(*operands,**kwargs) = add_instruction(Instructions::PMADDUBSW,*operands,**kwargs)
        def pmaddwd(*operands,**kwargs) = add_instruction(Instructions::PMADDWD,*operands,**kwargs)
        def pmaxsb(*operands,**kwargs) = add_instruction(Instructions::PMAXSB,*operands,**kwargs)
        def pmaxsd(*operands,**kwargs) = add_instruction(Instructions::PMAXSD,*operands,**kwargs)
        def pmaxsw(*operands,**kwargs) = add_instruction(Instructions::PMAXSW,*operands,**kwargs)
        def pmaxub(*operands,**kwargs) = add_instruction(Instructions::PMAXUB,*operands,**kwargs)
        def pmaxud(*operands,**kwargs) = add_instruction(Instructions::PMAXUD,*operands,**kwargs)
        def pmaxuw(*operands,**kwargs) = add_instruction(Instructions::PMAXUW,*operands,**kwargs)
        def pminsb(*operands,**kwargs) = add_instruction(Instructions::PMINSB,*operands,**kwargs)
        def pminsd(*operands,**kwargs) = add_instruction(Instructions::PMINSD,*operands,**kwargs)
        def pminsw(*operands,**kwargs) = add_instruction(Instructions::PMINSW,*operands,**kwargs)
        def pminub(*operands,**kwargs) = add_instruction(Instructions::PMINUB,*operands,**kwargs)
        def pminud(*operands,**kwargs) = add_instruction(Instructions::PMINUD,*operands,**kwargs)
        def pminuw(*operands,**kwargs) = add_instruction(Instructions::PMINUW,*operands,**kwargs)
        def pmovmskb(*operands,**kwargs) = add_instruction(Instructions::PMOVMSKB,*operands,**kwargs)
        def pmovsxbd(*operands,**kwargs) = add_instruction(Instructions::PMOVSXBD,*operands,**kwargs)
        def pmovsxbq(*operands,**kwargs) = add_instruction(Instructions::PMOVSXBQ,*operands,**kwargs)
        def pmovsxbw(*operands,**kwargs) = add_instruction(Instructions::PMOVSXBW,*operands,**kwargs)
        def pmovsxdq(*operands,**kwargs) = add_instruction(Instructions::PMOVSXDQ,*operands,**kwargs)
        def pmovsxwd(*operands,**kwargs) = add_instruction(Instructions::PMOVSXWD,*operands,**kwargs)
        def pmovsxwq(*operands,**kwargs) = add_instruction(Instructions::PMOVSXWQ,*operands,**kwargs)
        def pmovzxbd(*operands,**kwargs) = add_instruction(Instructions::PMOVZXBD,*operands,**kwargs)
        def pmovzxbq(*operands,**kwargs) = add_instruction(Instructions::PMOVZXBQ,*operands,**kwargs)
        def pmovzxbw(*operands,**kwargs) = add_instruction(Instructions::PMOVZXBW,*operands,**kwargs)
        def pmovzxdq(*operands,**kwargs) = add_instruction(Instructions::PMOVZXDQ,*operands,**kwargs)
        def pmovzxwd(*operands,**kwargs) = add_instruction(Instructions::PMOVZXWD,*operands,**kwargs)
        def pmovzxwq(*operands,**kwargs) = add_instruction(Instructions::PMOVZXWQ,*operands,**kwargs)
        def pmuldq(*operands,**kwargs) = add_instruction(Instructions::PMULDQ,*operands,**kwargs)
        def pmulhrsw(*operands,**kwargs) = add_instruction(Instructions::PMULHRSW,*operands,**kwargs)
        def pmulhrw(*operands,**kwargs) = add_instruction(Instructions::PMULHRW,*operands,**kwargs)
        def pmulhuw(*operands,**kwargs) = add_instruction(Instructions::PMULHUW,*operands,**kwargs)
        def pmulhw(*operands,**kwargs) = add_instruction(Instructions::PMULHW,*operands,**kwargs)
        def pmulld(*operands,**kwargs) = add_instruction(Instructions::PMULLD,*operands,**kwargs)
        def pmullw(*operands,**kwargs) = add_instruction(Instructions::PMULLW,*operands,**kwargs)
        def pmuludq(*operands,**kwargs) = add_instruction(Instructions::PMULUDQ,*operands,**kwargs)
        def pop(*operands,**kwargs) = add_instruction(Instructions::POP,*operands,**kwargs)
        def popcnt(*operands,**kwargs) = add_instruction(Instructions::POPCNT,*operands,**kwargs)
        def por(*operands,**kwargs) = add_instruction(Instructions::POR,*operands,**kwargs)
        def prefetch(*operands,**kwargs) = add_instruction(Instructions::PREFETCH,*operands,**kwargs)
        def prefetchit0(*operands,**kwargs) = add_instruction(Instructions::PREFETCHIT0,*operands,**kwargs)
        def prefetchit1(*operands,**kwargs) = add_instruction(Instructions::PREFETCHIT1,*operands,**kwargs)
        def prefetchnta(*operands,**kwargs) = add_instruction(Instructions::PREFETCHNTA,*operands,**kwargs)
        def prefetcht0(*operands,**kwargs) = add_instruction(Instructions::PREFETCHT0,*operands,**kwargs)
        def prefetcht1(*operands,**kwargs) = add_instruction(Instructions::PREFETCHT1,*operands,**kwargs)
        def prefetcht2(*operands,**kwargs) = add_instruction(Instructions::PREFETCHT2,*operands,**kwargs)
        def prefetchw(*operands,**kwargs) = add_instruction(Instructions::PREFETCHW,*operands,**kwargs)
        def prefetchwt1(*operands,**kwargs) = add_instruction(Instructions::PREFETCHWT1,*operands,**kwargs)
        def psadbw(*operands,**kwargs) = add_instruction(Instructions::PSADBW,*operands,**kwargs)
        def pshufb(*operands,**kwargs) = add_instruction(Instructions::PSHUFB,*operands,**kwargs)
        def pshufd(*operands,**kwargs) = add_instruction(Instructions::PSHUFD,*operands,**kwargs)
        def pshufhw(*operands,**kwargs) = add_instruction(Instructions::PSHUFHW,*operands,**kwargs)
        def pshuflw(*operands,**kwargs) = add_instruction(Instructions::PSHUFLW,*operands,**kwargs)
        def pshufw(*operands,**kwargs) = add_instruction(Instructions::PSHUFW,*operands,**kwargs)
        def psignb(*operands,**kwargs) = add_instruction(Instructions::PSIGNB,*operands,**kwargs)
        def psignd(*operands,**kwargs) = add_instruction(Instructions::PSIGND,*operands,**kwargs)
        def psignw(*operands,**kwargs) = add_instruction(Instructions::PSIGNW,*operands,**kwargs)
        def pslld(*operands,**kwargs) = add_instruction(Instructions::PSLLD,*operands,**kwargs)
        def pslldq(*operands,**kwargs) = add_instruction(Instructions::PSLLDQ,*operands,**kwargs)
        def psllq(*operands,**kwargs) = add_instruction(Instructions::PSLLQ,*operands,**kwargs)
        def psllw(*operands,**kwargs) = add_instruction(Instructions::PSLLW,*operands,**kwargs)
        def psrad(*operands,**kwargs) = add_instruction(Instructions::PSRAD,*operands,**kwargs)
        def psraw(*operands,**kwargs) = add_instruction(Instructions::PSRAW,*operands,**kwargs)
        def psrld(*operands,**kwargs) = add_instruction(Instructions::PSRLD,*operands,**kwargs)
        def psrldq(*operands,**kwargs) = add_instruction(Instructions::PSRLDQ,*operands,**kwargs)
        def psrlq(*operands,**kwargs) = add_instruction(Instructions::PSRLQ,*operands,**kwargs)
        def psrlw(*operands,**kwargs) = add_instruction(Instructions::PSRLW,*operands,**kwargs)
        def psubb(*operands,**kwargs) = add_instruction(Instructions::PSUBB,*operands,**kwargs)
        def psubd(*operands,**kwargs) = add_instruction(Instructions::PSUBD,*operands,**kwargs)
        def psubq(*operands,**kwargs) = add_instruction(Instructions::PSUBQ,*operands,**kwargs)
        def psubsb(*operands,**kwargs) = add_instruction(Instructions::PSUBSB,*operands,**kwargs)
        def psubsw(*operands,**kwargs) = add_instruction(Instructions::PSUBSW,*operands,**kwargs)
        def psubusb(*operands,**kwargs) = add_instruction(Instructions::PSUBUSB,*operands,**kwargs)
        def psubusw(*operands,**kwargs) = add_instruction(Instructions::PSUBUSW,*operands,**kwargs)
        def psubw(*operands,**kwargs) = add_instruction(Instructions::PSUBW,*operands,**kwargs)
        def pswapd(*operands,**kwargs) = add_instruction(Instructions::PSWAPD,*operands,**kwargs)
        def ptest(*operands,**kwargs) = add_instruction(Instructions::PTEST,*operands,**kwargs)
        def punpckhbw(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHBW,*operands,**kwargs)
        def punpckhdq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHDQ,*operands,**kwargs)
        def punpckhqdq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHQDQ,*operands,**kwargs)
        def punpckhwd(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHWD,*operands,**kwargs)
        def punpcklbw(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLBW,*operands,**kwargs)
        def punpckldq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLDQ,*operands,**kwargs)
        def punpcklqdq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLQDQ,*operands,**kwargs)
        def punpcklwd(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLWD,*operands,**kwargs)
        def push(*operands,**kwargs) = add_instruction(Instructions::PUSH,*operands,**kwargs)
        def pxor(*operands,**kwargs) = add_instruction(Instructions::PXOR,*operands,**kwargs)
        def rcl(*operands,**kwargs) = add_instruction(Instructions::RCL,*operands,**kwargs)
        def rcpps(*operands,**kwargs) = add_instruction(Instructions::RCPPS,*operands,**kwargs)
        def rcpss(*operands,**kwargs) = add_instruction(Instructions::RCPSS,*operands,**kwargs)
        def rcr(*operands,**kwargs) = add_instruction(Instructions::RCR,*operands,**kwargs)
        def rdfsbase(*operands,**kwargs) = add_instruction(Instructions::RDFSBASE,*operands,**kwargs)
        def rdgsbase(*operands,**kwargs) = add_instruction(Instructions::RDGSBASE,*operands,**kwargs)
        def rdpid(*operands,**kwargs) = add_instruction(Instructions::RDPID,*operands,**kwargs)
        def rdpmc(*operands,**kwargs) = add_instruction(Instructions::RDPMC,*operands,**kwargs)
        def rdpru(*operands,**kwargs) = add_instruction(Instructions::RDPRU,*operands,**kwargs)
        def rdrand(*operands,**kwargs) = add_instruction(Instructions::RDRAND,*operands,**kwargs)
        def rdseed(*operands,**kwargs) = add_instruction(Instructions::RDSEED,*operands,**kwargs)
        def rdtsc(*operands,**kwargs) = add_instruction(Instructions::RDTSC,*operands,**kwargs)
        def rdtscp(*operands,**kwargs) = add_instruction(Instructions::RDTSCP,*operands,**kwargs)
        def ret(*operands,**kwargs) = add_instruction(Instructions::RET,*operands,**kwargs)
        def rol(*operands,**kwargs) = add_instruction(Instructions::ROL,*operands,**kwargs)
        def ror(*operands,**kwargs) = add_instruction(Instructions::ROR,*operands,**kwargs)
        def rorx(*operands,**kwargs) = add_instruction(Instructions::RORX,*operands,**kwargs)
        def roundpd(*operands,**kwargs) = add_instruction(Instructions::ROUNDPD,*operands,**kwargs)
        def roundps(*operands,**kwargs) = add_instruction(Instructions::ROUNDPS,*operands,**kwargs)
        def roundsd(*operands,**kwargs) = add_instruction(Instructions::ROUNDSD,*operands,**kwargs)
        def roundss(*operands,**kwargs) = add_instruction(Instructions::ROUNDSS,*operands,**kwargs)
        def rsqrtps(*operands,**kwargs) = add_instruction(Instructions::RSQRTPS,*operands,**kwargs)
        def rsqrtss(*operands,**kwargs) = add_instruction(Instructions::RSQRTSS,*operands,**kwargs)
        def sahf(*operands,**kwargs) = add_instruction(Instructions::SAHF,*operands,**kwargs)
        def sal(*operands,**kwargs) = add_instruction(Instructions::SAL,*operands,**kwargs)
        def sar(*operands,**kwargs) = add_instruction(Instructions::SAR,*operands,**kwargs)
        def sarx(*operands,**kwargs) = add_instruction(Instructions::SARX,*operands,**kwargs)
        def sbb(*operands,**kwargs) = add_instruction(Instructions::SBB,*operands,**kwargs)
        def serialize(*operands,**kwargs) = add_instruction(Instructions::SERIALIZE,*operands,**kwargs)
        def seta(*operands,**kwargs) = add_instruction(Instructions::SETA,*operands,**kwargs)
        def setae(*operands,**kwargs) = add_instruction(Instructions::SETAE,*operands,**kwargs)
        def setb(*operands,**kwargs) = add_instruction(Instructions::SETB,*operands,**kwargs)
        def setbe(*operands,**kwargs) = add_instruction(Instructions::SETBE,*operands,**kwargs)
        def setc(*operands,**kwargs) = add_instruction(Instructions::SETC,*operands,**kwargs)
        def sete(*operands,**kwargs) = add_instruction(Instructions::SETE,*operands,**kwargs)
        def setg(*operands,**kwargs) = add_instruction(Instructions::SETG,*operands,**kwargs)
        def setge(*operands,**kwargs) = add_instruction(Instructions::SETGE,*operands,**kwargs)
        def setl(*operands,**kwargs) = add_instruction(Instructions::SETL,*operands,**kwargs)
        def setle(*operands,**kwargs) = add_instruction(Instructions::SETLE,*operands,**kwargs)
        def setna(*operands,**kwargs) = add_instruction(Instructions::SETNA,*operands,**kwargs)
        def setnae(*operands,**kwargs) = add_instruction(Instructions::SETNAE,*operands,**kwargs)
        def setnb(*operands,**kwargs) = add_instruction(Instructions::SETNB,*operands,**kwargs)
        def setnbe(*operands,**kwargs) = add_instruction(Instructions::SETNBE,*operands,**kwargs)
        def setnc(*operands,**kwargs) = add_instruction(Instructions::SETNC,*operands,**kwargs)
        def setne(*operands,**kwargs) = add_instruction(Instructions::SETNE,*operands,**kwargs)
        def setng(*operands,**kwargs) = add_instruction(Instructions::SETNG,*operands,**kwargs)
        def setnge(*operands,**kwargs) = add_instruction(Instructions::SETNGE,*operands,**kwargs)
        def setnl(*operands,**kwargs) = add_instruction(Instructions::SETNL,*operands,**kwargs)
        def setnle(*operands,**kwargs) = add_instruction(Instructions::SETNLE,*operands,**kwargs)
        def setno(*operands,**kwargs) = add_instruction(Instructions::SETNO,*operands,**kwargs)
        def setnp(*operands,**kwargs) = add_instruction(Instructions::SETNP,*operands,**kwargs)
        def setns(*operands,**kwargs) = add_instruction(Instructions::SETNS,*operands,**kwargs)
        def setnz(*operands,**kwargs) = add_instruction(Instructions::SETNZ,*operands,**kwargs)
        def seto(*operands,**kwargs) = add_instruction(Instructions::SETO,*operands,**kwargs)
        def setp(*operands,**kwargs) = add_instruction(Instructions::SETP,*operands,**kwargs)
        def setpe(*operands,**kwargs) = add_instruction(Instructions::SETPE,*operands,**kwargs)
        def setpo(*operands,**kwargs) = add_instruction(Instructions::SETPO,*operands,**kwargs)
        def sets(*operands,**kwargs) = add_instruction(Instructions::SETS,*operands,**kwargs)
        def setz(*operands,**kwargs) = add_instruction(Instructions::SETZ,*operands,**kwargs)
        def sfence(*operands,**kwargs) = add_instruction(Instructions::SFENCE,*operands,**kwargs)
        def sha1msg1(*operands,**kwargs) = add_instruction(Instructions::SHA1MSG1,*operands,**kwargs)
        def sha1msg2(*operands,**kwargs) = add_instruction(Instructions::SHA1MSG2,*operands,**kwargs)
        def sha1nexte(*operands,**kwargs) = add_instruction(Instructions::SHA1NEXTE,*operands,**kwargs)
        def sha1rnds4(*operands,**kwargs) = add_instruction(Instructions::SHA1RNDS4,*operands,**kwargs)
        def sha256msg1(*operands,**kwargs) = add_instruction(Instructions::SHA256MSG1,*operands,**kwargs)
        def sha256msg2(*operands,**kwargs) = add_instruction(Instructions::SHA256MSG2,*operands,**kwargs)
        def sha256rnds2(*operands,**kwargs) = add_instruction(Instructions::SHA256RNDS2,*operands,**kwargs)
        def shl(*operands,**kwargs) = add_instruction(Instructions::SHL,*operands,**kwargs)
        def shld(*operands,**kwargs) = add_instruction(Instructions::SHLD,*operands,**kwargs)
        def shlx(*operands,**kwargs) = add_instruction(Instructions::SHLX,*operands,**kwargs)
        def shr(*operands,**kwargs) = add_instruction(Instructions::SHR,*operands,**kwargs)
        def shrd(*operands,**kwargs) = add_instruction(Instructions::SHRD,*operands,**kwargs)
        def shrx(*operands,**kwargs) = add_instruction(Instructions::SHRX,*operands,**kwargs)
        def shufpd(*operands,**kwargs) = add_instruction(Instructions::SHUFPD,*operands,**kwargs)
        def shufps(*operands,**kwargs) = add_instruction(Instructions::SHUFPS,*operands,**kwargs)
        def sqrtpd(*operands,**kwargs) = add_instruction(Instructions::SQRTPD,*operands,**kwargs)
        def sqrtps(*operands,**kwargs) = add_instruction(Instructions::SQRTPS,*operands,**kwargs)
        def sqrtsd(*operands,**kwargs) = add_instruction(Instructions::SQRTSD,*operands,**kwargs)
        def sqrtss(*operands,**kwargs) = add_instruction(Instructions::SQRTSS,*operands,**kwargs)
        def stc(*operands,**kwargs) = add_instruction(Instructions::STC,*operands,**kwargs)
        def std(*operands,**kwargs) = add_instruction(Instructions::STD,*operands,**kwargs)
        def stmxcsr(*operands,**kwargs) = add_instruction(Instructions::STMXCSR,*operands,**kwargs)
        def sttilecfg(*operands,**kwargs) = add_instruction(Instructions::STTILECFG,*operands,**kwargs)
        def sub(*operands,**kwargs) = add_instruction(Instructions::SUB,*operands,**kwargs)
        def subpd(*operands,**kwargs) = add_instruction(Instructions::SUBPD,*operands,**kwargs)
        def subps(*operands,**kwargs) = add_instruction(Instructions::SUBPS,*operands,**kwargs)
        def subsd(*operands,**kwargs) = add_instruction(Instructions::SUBSD,*operands,**kwargs)
        def subss(*operands,**kwargs) = add_instruction(Instructions::SUBSS,*operands,**kwargs)
        def syscall(*operands,**kwargs) = add_instruction(Instructions::SYSCALL,*operands,**kwargs)
        def t1mskc(*operands,**kwargs) = add_instruction(Instructions::T1MSKC,*operands,**kwargs)
        def tcmmimfp16ps(*operands,**kwargs) = add_instruction(Instructions::TCMMIMFP16PS,*operands,**kwargs)
        def tcmmrlfp16ps(*operands,**kwargs) = add_instruction(Instructions::TCMMRLFP16PS,*operands,**kwargs)
        def tdpbf16ps(*operands,**kwargs) = add_instruction(Instructions::TDPBF16PS,*operands,**kwargs)
        def tdpbssd(*operands,**kwargs) = add_instruction(Instructions::TDPBSSD,*operands,**kwargs)
        def tdpbsud(*operands,**kwargs) = add_instruction(Instructions::TDPBSUD,*operands,**kwargs)
        def tdpbusd(*operands,**kwargs) = add_instruction(Instructions::TDPBUSD,*operands,**kwargs)
        def tdpbuud(*operands,**kwargs) = add_instruction(Instructions::TDPBUUD,*operands,**kwargs)
        def tdpfp16ps(*operands,**kwargs) = add_instruction(Instructions::TDPFP16PS,*operands,**kwargs)
        def test(*operands,**kwargs) = add_instruction(Instructions::TEST,*operands,**kwargs)
        def tileloadd(*operands,**kwargs) = add_instruction(Instructions::TILELOADD,*operands,**kwargs)
        def tileloaddt1(*operands,**kwargs) = add_instruction(Instructions::TILELOADDT1,*operands,**kwargs)
        def tilerelease(*operands,**kwargs) = add_instruction(Instructions::TILERELEASE,*operands,**kwargs)
        def tilestored(*operands,**kwargs) = add_instruction(Instructions::TILESTORED,*operands,**kwargs)
        def tilezero(*operands,**kwargs) = add_instruction(Instructions::TILEZERO,*operands,**kwargs)
        def tpause(*operands,**kwargs) = add_instruction(Instructions::TPAUSE,*operands,**kwargs)
        def tzcnt(*operands,**kwargs) = add_instruction(Instructions::TZCNT,*operands,**kwargs)
        def tzmsk(*operands,**kwargs) = add_instruction(Instructions::TZMSK,*operands,**kwargs)
        def ucomisd(*operands,**kwargs) = add_instruction(Instructions::UCOMISD,*operands,**kwargs)
        def ucomiss(*operands,**kwargs) = add_instruction(Instructions::UCOMISS,*operands,**kwargs)
        def ud2(*operands,**kwargs) = add_instruction(Instructions::UD2,*operands,**kwargs)
        def umonitor(*operands,**kwargs) = add_instruction(Instructions::UMONITOR,*operands,**kwargs)
        def umwait(*operands,**kwargs) = add_instruction(Instructions::UMWAIT,*operands,**kwargs)
        def unpckhpd(*operands,**kwargs) = add_instruction(Instructions::UNPCKHPD,*operands,**kwargs)
        def unpckhps(*operands,**kwargs) = add_instruction(Instructions::UNPCKHPS,*operands,**kwargs)
        def unpcklpd(*operands,**kwargs) = add_instruction(Instructions::UNPCKLPD,*operands,**kwargs)
        def unpcklps(*operands,**kwargs) = add_instruction(Instructions::UNPCKLPS,*operands,**kwargs)
        def vaddpd(*operands,**kwargs) = add_instruction(Instructions::VADDPD,*operands,**kwargs)
        def vaddph(*operands,**kwargs) = add_instruction(Instructions::VADDPH,*operands,**kwargs)
        def vaddps(*operands,**kwargs) = add_instruction(Instructions::VADDPS,*operands,**kwargs)
        def vaddsd(*operands,**kwargs) = add_instruction(Instructions::VADDSD,*operands,**kwargs)
        def vaddsh(*operands,**kwargs) = add_instruction(Instructions::VADDSH,*operands,**kwargs)
        def vaddss(*operands,**kwargs) = add_instruction(Instructions::VADDSS,*operands,**kwargs)
        def vaddsubpd(*operands,**kwargs) = add_instruction(Instructions::VADDSUBPD,*operands,**kwargs)
        def vaddsubps(*operands,**kwargs) = add_instruction(Instructions::VADDSUBPS,*operands,**kwargs)
        def vaesdec(*operands,**kwargs) = add_instruction(Instructions::VAESDEC,*operands,**kwargs)
        def vaesdeclast(*operands,**kwargs) = add_instruction(Instructions::VAESDECLAST,*operands,**kwargs)
        def vaesenc(*operands,**kwargs) = add_instruction(Instructions::VAESENC,*operands,**kwargs)
        def vaesenclast(*operands,**kwargs) = add_instruction(Instructions::VAESENCLAST,*operands,**kwargs)
        def vaesimc(*operands,**kwargs) = add_instruction(Instructions::VAESIMC,*operands,**kwargs)
        def vaeskeygenassist(*operands,**kwargs) = add_instruction(Instructions::VAESKEYGENASSIST,*operands,**kwargs)
        def valignd(*operands,**kwargs) = add_instruction(Instructions::VALIGND,*operands,**kwargs)
        def valignq(*operands,**kwargs) = add_instruction(Instructions::VALIGNQ,*operands,**kwargs)
        def vandnpd(*operands,**kwargs) = add_instruction(Instructions::VANDNPD,*operands,**kwargs)
        def vandnps(*operands,**kwargs) = add_instruction(Instructions::VANDNPS,*operands,**kwargs)
        def vandpd(*operands,**kwargs) = add_instruction(Instructions::VANDPD,*operands,**kwargs)
        def vandps(*operands,**kwargs) = add_instruction(Instructions::VANDPS,*operands,**kwargs)
        def vbcstnebf162ps(*operands,**kwargs) = add_instruction(Instructions::VBCSTNEBF162PS,*operands,**kwargs)
        def vbcstnesh2ps(*operands,**kwargs) = add_instruction(Instructions::VBCSTNESH2PS,*operands,**kwargs)
        def vblendmpd(*operands,**kwargs) = add_instruction(Instructions::VBLENDMPD,*operands,**kwargs)
        def vblendmps(*operands,**kwargs) = add_instruction(Instructions::VBLENDMPS,*operands,**kwargs)
        def vblendpd(*operands,**kwargs) = add_instruction(Instructions::VBLENDPD,*operands,**kwargs)
        def vblendps(*operands,**kwargs) = add_instruction(Instructions::VBLENDPS,*operands,**kwargs)
        def vblendvpd(*operands,**kwargs) = add_instruction(Instructions::VBLENDVPD,*operands,**kwargs)
        def vblendvps(*operands,**kwargs) = add_instruction(Instructions::VBLENDVPS,*operands,**kwargs)
        def vbroadcastf128(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF128,*operands,**kwargs)
        def vbroadcastf32x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF32X2,*operands,**kwargs)
        def vbroadcastf32x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF32X4,*operands,**kwargs)
        def vbroadcastf32x8(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF32X8,*operands,**kwargs)
        def vbroadcastf64x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF64X2,*operands,**kwargs)
        def vbroadcastf64x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF64X4,*operands,**kwargs)
        def vbroadcasti128(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI128,*operands,**kwargs)
        def vbroadcasti32x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI32X2,*operands,**kwargs)
        def vbroadcasti32x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI32X4,*operands,**kwargs)
        def vbroadcasti32x8(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI32X8,*operands,**kwargs)
        def vbroadcasti64x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI64X2,*operands,**kwargs)
        def vbroadcasti64x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI64X4,*operands,**kwargs)
        def vbroadcastsd(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTSD,*operands,**kwargs)
        def vbroadcastss(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTSS,*operands,**kwargs)
        def vcmppd(*operands,**kwargs) = add_instruction(Instructions::VCMPPD,*operands,**kwargs)
        def vcmpph(*operands,**kwargs) = add_instruction(Instructions::VCMPPH,*operands,**kwargs)
        def vcmpps(*operands,**kwargs) = add_instruction(Instructions::VCMPPS,*operands,**kwargs)
        def vcmpsd(*operands,**kwargs) = add_instruction(Instructions::VCMPSD,*operands,**kwargs)
        def vcmpsh(*operands,**kwargs) = add_instruction(Instructions::VCMPSH,*operands,**kwargs)
        def vcmpss(*operands,**kwargs) = add_instruction(Instructions::VCMPSS,*operands,**kwargs)
        def vcomisd(*operands,**kwargs) = add_instruction(Instructions::VCOMISD,*operands,**kwargs)
        def vcomish(*operands,**kwargs) = add_instruction(Instructions::VCOMISH,*operands,**kwargs)
        def vcomiss(*operands,**kwargs) = add_instruction(Instructions::VCOMISS,*operands,**kwargs)
        def vcompresspd(*operands,**kwargs) = add_instruction(Instructions::VCOMPRESSPD,*operands,**kwargs)
        def vcompressps(*operands,**kwargs) = add_instruction(Instructions::VCOMPRESSPS,*operands,**kwargs)
        def vcvtdq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PD,*operands,**kwargs)
        def vcvtdq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PH,*operands,**kwargs)
        def vcvtdq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PS,*operands,**kwargs)
        def vcvtne2ps2bf16(*operands,**kwargs) = add_instruction(Instructions::VCVTNE2PS2BF16,*operands,**kwargs)
        def vcvtneebf162ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEEBF162PS,*operands,**kwargs)
        def vcvtneeph2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEEPH2PS,*operands,**kwargs)
        def vcvtneobf162ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEOBF162PS,*operands,**kwargs)
        def vcvtneoph2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEOPH2PS,*operands,**kwargs)
        def vcvtneps2bf16(*operands,**kwargs) = add_instruction(Instructions::VCVTNEPS2BF16,*operands,**kwargs)
        def vcvtpd2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2DQ,*operands,**kwargs)
        def vcvtpd2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2PH,*operands,**kwargs)
        def vcvtpd2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2PS,*operands,**kwargs)
        def vcvtpd2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2QQ,*operands,**kwargs)
        def vcvtpd2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2UDQ,*operands,**kwargs)
        def vcvtpd2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2UQQ,*operands,**kwargs)
        def vcvtph2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2DQ,*operands,**kwargs)
        def vcvtph2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PD,*operands,**kwargs)
        def vcvtph2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PS,*operands,**kwargs)
        def vcvtph2psx(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PSX,*operands,**kwargs)
        def vcvtph2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2QQ,*operands,**kwargs)
        def vcvtph2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UDQ,*operands,**kwargs)
        def vcvtph2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UQQ,*operands,**kwargs)
        def vcvtph2uw(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UW,*operands,**kwargs)
        def vcvtph2w(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2W,*operands,**kwargs)
        def vcvtps2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2DQ,*operands,**kwargs)
        def vcvtps2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PD,*operands,**kwargs)
        def vcvtps2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PH,*operands,**kwargs)
        def vcvtps2phx(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PHX,*operands,**kwargs)
        def vcvtps2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2QQ,*operands,**kwargs)
        def vcvtps2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2UDQ,*operands,**kwargs)
        def vcvtps2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2UQQ,*operands,**kwargs)
        def vcvtqq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PD,*operands,**kwargs)
        def vcvtqq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PH,*operands,**kwargs)
        def vcvtqq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PS,*operands,**kwargs)
        def vcvtsd2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SH,*operands,**kwargs)
        def vcvtsd2si(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SI,*operands,**kwargs)
        def vcvtsd2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SS,*operands,**kwargs)
        def vcvtsd2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2USI,*operands,**kwargs)
        def vcvtsh2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SD,*operands,**kwargs)
        def vcvtsh2si(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SI,*operands,**kwargs)
        def vcvtsh2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SS,*operands,**kwargs)
        def vcvtsh2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2USI,*operands,**kwargs)
        def vcvtsi2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SD,*operands,**kwargs)
        def vcvtsi2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SH,*operands,**kwargs)
        def vcvtsi2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SS,*operands,**kwargs)
        def vcvtss2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SD,*operands,**kwargs)
        def vcvtss2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SH,*operands,**kwargs)
        def vcvtss2si(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SI,*operands,**kwargs)
        def vcvtss2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2USI,*operands,**kwargs)
        def vcvttpd2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2DQ,*operands,**kwargs)
        def vcvttpd2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2QQ,*operands,**kwargs)
        def vcvttpd2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2UDQ,*operands,**kwargs)
        def vcvttpd2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2UQQ,*operands,**kwargs)
        def vcvttph2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2DQ,*operands,**kwargs)
        def vcvttph2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2QQ,*operands,**kwargs)
        def vcvttph2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UDQ,*operands,**kwargs)
        def vcvttph2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UQQ,*operands,**kwargs)
        def vcvttph2uw(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UW,*operands,**kwargs)
        def vcvttph2w(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2W,*operands,**kwargs)
        def vcvttps2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2DQ,*operands,**kwargs)
        def vcvttps2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2QQ,*operands,**kwargs)
        def vcvttps2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2UDQ,*operands,**kwargs)
        def vcvttps2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2UQQ,*operands,**kwargs)
        def vcvttsd2si(*operands,**kwargs) = add_instruction(Instructions::VCVTTSD2SI,*operands,**kwargs)
        def vcvttsd2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTTSD2USI,*operands,**kwargs)
        def vcvttsh2si(*operands,**kwargs) = add_instruction(Instructions::VCVTTSH2SI,*operands,**kwargs)
        def vcvttsh2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTTSH2USI,*operands,**kwargs)
        def vcvttss2si(*operands,**kwargs) = add_instruction(Instructions::VCVTTSS2SI,*operands,**kwargs)
        def vcvttss2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTTSS2USI,*operands,**kwargs)
        def vcvtudq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PD,*operands,**kwargs)
        def vcvtudq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PH,*operands,**kwargs)
        def vcvtudq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PS,*operands,**kwargs)
        def vcvtuqq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PD,*operands,**kwargs)
        def vcvtuqq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PH,*operands,**kwargs)
        def vcvtuqq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PS,*operands,**kwargs)
        def vcvtusi2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SD,*operands,**kwargs)
        def vcvtusi2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SH,*operands,**kwargs)
        def vcvtusi2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SS,*operands,**kwargs)
        def vcvtuw2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTUW2PH,*operands,**kwargs)
        def vcvtw2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTW2PH,*operands,**kwargs)
        def vdbpsadbw(*operands,**kwargs) = add_instruction(Instructions::VDBPSADBW,*operands,**kwargs)
        def vdivpd(*operands,**kwargs) = add_instruction(Instructions::VDIVPD,*operands,**kwargs)
        def vdivph(*operands,**kwargs) = add_instruction(Instructions::VDIVPH,*operands,**kwargs)
        def vdivps(*operands,**kwargs) = add_instruction(Instructions::VDIVPS,*operands,**kwargs)
        def vdivsd(*operands,**kwargs) = add_instruction(Instructions::VDIVSD,*operands,**kwargs)
        def vdivsh(*operands,**kwargs) = add_instruction(Instructions::VDIVSH,*operands,**kwargs)
        def vdivss(*operands,**kwargs) = add_instruction(Instructions::VDIVSS,*operands,**kwargs)
        def vdpbf16ps(*operands,**kwargs) = add_instruction(Instructions::VDPBF16PS,*operands,**kwargs)
        def vdppd(*operands,**kwargs) = add_instruction(Instructions::VDPPD,*operands,**kwargs)
        def vdpps(*operands,**kwargs) = add_instruction(Instructions::VDPPS,*operands,**kwargs)
        def vexp2pd(*operands,**kwargs) = add_instruction(Instructions::VEXP2PD,*operands,**kwargs)
        def vexp2ps(*operands,**kwargs) = add_instruction(Instructions::VEXP2PS,*operands,**kwargs)
        def vexpandpd(*operands,**kwargs) = add_instruction(Instructions::VEXPANDPD,*operands,**kwargs)
        def vexpandps(*operands,**kwargs) = add_instruction(Instructions::VEXPANDPS,*operands,**kwargs)
        def vextractf128(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF128,*operands,**kwargs)
        def vextractf32x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF32X4,*operands,**kwargs)
        def vextractf32x8(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF32X8,*operands,**kwargs)
        def vextractf64x2(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF64X2,*operands,**kwargs)
        def vextractf64x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF64X4,*operands,**kwargs)
        def vextracti128(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI128,*operands,**kwargs)
        def vextracti32x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI32X4,*operands,**kwargs)
        def vextracti32x8(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI32X8,*operands,**kwargs)
        def vextracti64x2(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI64X2,*operands,**kwargs)
        def vextracti64x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI64X4,*operands,**kwargs)
        def vextractps(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTPS,*operands,**kwargs)
        def vfcmaddcph(*operands,**kwargs) = add_instruction(Instructions::VFCMADDCPH,*operands,**kwargs)
        def vfcmaddcsh(*operands,**kwargs) = add_instruction(Instructions::VFCMADDCSH,*operands,**kwargs)
        def vfcmulcph(*operands,**kwargs) = add_instruction(Instructions::VFCMULCPH,*operands,**kwargs)
        def vfcmulcsh(*operands,**kwargs) = add_instruction(Instructions::VFCMULCSH,*operands,**kwargs)
        def vfixupimmpd(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMPD,*operands,**kwargs)
        def vfixupimmps(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMPS,*operands,**kwargs)
        def vfixupimmsd(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMSD,*operands,**kwargs)
        def vfixupimmss(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMSS,*operands,**kwargs)
        def vfmadd132pd(*operands,**kwargs) = add_instruction(Instructions::VFMADD132PD,*operands,**kwargs)
        def vfmadd132ph(*operands,**kwargs) = add_instruction(Instructions::VFMADD132PH,*operands,**kwargs)
        def vfmadd132ps(*operands,**kwargs) = add_instruction(Instructions::VFMADD132PS,*operands,**kwargs)
        def vfmadd132sd(*operands,**kwargs) = add_instruction(Instructions::VFMADD132SD,*operands,**kwargs)
        def vfmadd132ss(*operands,**kwargs) = add_instruction(Instructions::VFMADD132SS,*operands,**kwargs)
        def vfmadd213pd(*operands,**kwargs) = add_instruction(Instructions::VFMADD213PD,*operands,**kwargs)
        def vfmadd213ph(*operands,**kwargs) = add_instruction(Instructions::VFMADD213PH,*operands,**kwargs)
        def vfmadd213ps(*operands,**kwargs) = add_instruction(Instructions::VFMADD213PS,*operands,**kwargs)
        def vfmadd213sd(*operands,**kwargs) = add_instruction(Instructions::VFMADD213SD,*operands,**kwargs)
        def vfmadd213ss(*operands,**kwargs) = add_instruction(Instructions::VFMADD213SS,*operands,**kwargs)
        def vfmadd231pd(*operands,**kwargs) = add_instruction(Instructions::VFMADD231PD,*operands,**kwargs)
        def vfmadd231ph(*operands,**kwargs) = add_instruction(Instructions::VFMADD231PH,*operands,**kwargs)
        def vfmadd231ps(*operands,**kwargs) = add_instruction(Instructions::VFMADD231PS,*operands,**kwargs)
        def vfmadd231sd(*operands,**kwargs) = add_instruction(Instructions::VFMADD231SD,*operands,**kwargs)
        def vfmadd231ss(*operands,**kwargs) = add_instruction(Instructions::VFMADD231SS,*operands,**kwargs)
        def vfmaddcph(*operands,**kwargs) = add_instruction(Instructions::VFMADDCPH,*operands,**kwargs)
        def vfmaddcsh(*operands,**kwargs) = add_instruction(Instructions::VFMADDCSH,*operands,**kwargs)
        def vfmaddpd(*operands,**kwargs) = add_instruction(Instructions::VFMADDPD,*operands,**kwargs)
        def vfmaddps(*operands,**kwargs) = add_instruction(Instructions::VFMADDPS,*operands,**kwargs)
        def vfmaddsd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSD,*operands,**kwargs)
        def vfmaddss(*operands,**kwargs) = add_instruction(Instructions::VFMADDSS,*operands,**kwargs)
        def vfmaddsub132pd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PD,*operands,**kwargs)
        def vfmaddsub132ph(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PH,*operands,**kwargs)
        def vfmaddsub132ps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PS,*operands,**kwargs)
        def vfmaddsub213pd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PD,*operands,**kwargs)
        def vfmaddsub213ph(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PH,*operands,**kwargs)
        def vfmaddsub213ps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PS,*operands,**kwargs)
        def vfmaddsub231pd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PD,*operands,**kwargs)
        def vfmaddsub231ph(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PH,*operands,**kwargs)
        def vfmaddsub231ps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PS,*operands,**kwargs)
        def vfmaddsubpd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUBPD,*operands,**kwargs)
        def vfmaddsubps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUBPS,*operands,**kwargs)
        def vfmsub132pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PD,*operands,**kwargs)
        def vfmsub132ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PH,*operands,**kwargs)
        def vfmsub132ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PS,*operands,**kwargs)
        def vfmsub132sd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SD,*operands,**kwargs)
        def vfmsub132sh(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SH,*operands,**kwargs)
        def vfmsub132ss(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SS,*operands,**kwargs)
        def vfmsub213pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PD,*operands,**kwargs)
        def vfmsub213ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PH,*operands,**kwargs)
        def vfmsub213ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PS,*operands,**kwargs)
        def vfmsub213sd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SD,*operands,**kwargs)
        def vfmsub213sh(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SH,*operands,**kwargs)
        def vfmsub213ss(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SS,*operands,**kwargs)
        def vfmsub231pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PD,*operands,**kwargs)
        def vfmsub231ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PH,*operands,**kwargs)
        def vfmsub231ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PS,*operands,**kwargs)
        def vfmsub231sd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SD,*operands,**kwargs)
        def vfmsub231sh(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SH,*operands,**kwargs)
        def vfmsub231ss(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SS,*operands,**kwargs)
        def vfmsubadd132pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PD,*operands,**kwargs)
        def vfmsubadd132ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PH,*operands,**kwargs)
        def vfmsubadd132ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PS,*operands,**kwargs)
        def vfmsubadd213pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PD,*operands,**kwargs)
        def vfmsubadd213ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PH,*operands,**kwargs)
        def vfmsubadd213ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PS,*operands,**kwargs)
        def vfmsubadd231pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PD,*operands,**kwargs)
        def vfmsubadd231ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PH,*operands,**kwargs)
        def vfmsubadd231ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PS,*operands,**kwargs)
        def vfmsubaddpd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADDPD,*operands,**kwargs)
        def vfmsubaddps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADDPS,*operands,**kwargs)
        def vfmsubpd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBPD,*operands,**kwargs)
        def vfmsubps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBPS,*operands,**kwargs)
        def vfmsubsd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBSD,*operands,**kwargs)
        def vfmsubss(*operands,**kwargs) = add_instruction(Instructions::VFMSUBSS,*operands,**kwargs)
        def vfmulcph(*operands,**kwargs) = add_instruction(Instructions::VFMULCPH,*operands,**kwargs)
        def vfmulcsh(*operands,**kwargs) = add_instruction(Instructions::VFMULCSH,*operands,**kwargs)
        def vfnmadd132pd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PD,*operands,**kwargs)
        def vfnmadd132ph(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PH,*operands,**kwargs)
        def vfnmadd132ps(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PS,*operands,**kwargs)
        def vfnmadd132sd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132SD,*operands,**kwargs)
        def vfnmadd132ss(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132SS,*operands,**kwargs)
        def vfnmadd213pd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PD,*operands,**kwargs)
        def vfnmadd213ph(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PH,*operands,**kwargs)
        def vfnmadd213ps(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PS,*operands,**kwargs)
        def vfnmadd213sd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213SD,*operands,**kwargs)
        def vfnmadd213ss(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213SS,*operands,**kwargs)
        def vfnmadd231pd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PD,*operands,**kwargs)
        def vfnmadd231ph(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PH,*operands,**kwargs)
        def vfnmadd231ps(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PS,*operands,**kwargs)
        def vfnmadd231sd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231SD,*operands,**kwargs)
        def vfnmadd231ss(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231SS,*operands,**kwargs)
        def vfnmaddpd(*operands,**kwargs) = add_instruction(Instructions::VFNMADDPD,*operands,**kwargs)
        def vfnmaddps(*operands,**kwargs) = add_instruction(Instructions::VFNMADDPS,*operands,**kwargs)
        def vfnmaddsd(*operands,**kwargs) = add_instruction(Instructions::VFNMADDSD,*operands,**kwargs)
        def vfnmaddss(*operands,**kwargs) = add_instruction(Instructions::VFNMADDSS,*operands,**kwargs)
        def vfnmsub132pd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PD,*operands,**kwargs)
        def vfnmsub132ph(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PH,*operands,**kwargs)
        def vfnmsub132ps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PS,*operands,**kwargs)
        def vfnmsub132sd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SD,*operands,**kwargs)
        def vfnmsub132sh(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SH,*operands,**kwargs)
        def vfnmsub132ss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SS,*operands,**kwargs)
        def vfnmsub213pd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PD,*operands,**kwargs)
        def vfnmsub213ph(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PH,*operands,**kwargs)
        def vfnmsub213ps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PS,*operands,**kwargs)
        def vfnmsub213sd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SD,*operands,**kwargs)
        def vfnmsub213sh(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SH,*operands,**kwargs)
        def vfnmsub213ss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SS,*operands,**kwargs)
        def vfnmsub231pd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PD,*operands,**kwargs)
        def vfnmsub231ph(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PH,*operands,**kwargs)
        def vfnmsub231ps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PS,*operands,**kwargs)
        def vfnmsub231sd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SD,*operands,**kwargs)
        def vfnmsub231sh(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SH,*operands,**kwargs)
        def vfnmsub231ss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SS,*operands,**kwargs)
        def vfnmsubpd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBPD,*operands,**kwargs)
        def vfnmsubps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBPS,*operands,**kwargs)
        def vfnmsubsd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBSD,*operands,**kwargs)
        def vfnmsubss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBSS,*operands,**kwargs)
        def vfpclasspd(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSPD,*operands,**kwargs)
        def vfpclassph(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSPH,*operands,**kwargs)
        def vfpclassps(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSPS,*operands,**kwargs)
        def vfpclasssd(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSSD,*operands,**kwargs)
        def vfpclasssh(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSSH,*operands,**kwargs)
        def vfpclassss(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSSS,*operands,**kwargs)
        def vfrczpd(*operands,**kwargs) = add_instruction(Instructions::VFRCZPD,*operands,**kwargs)
        def vfrczps(*operands,**kwargs) = add_instruction(Instructions::VFRCZPS,*operands,**kwargs)
        def vfrczsd(*operands,**kwargs) = add_instruction(Instructions::VFRCZSD,*operands,**kwargs)
        def vfrczss(*operands,**kwargs) = add_instruction(Instructions::VFRCZSS,*operands,**kwargs)
        def vgatherdpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERDPD,*operands,**kwargs)
        def vgatherdps(*operands,**kwargs) = add_instruction(Instructions::VGATHERDPS,*operands,**kwargs)
        def vgatherpf0dpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0DPD,*operands,**kwargs)
        def vgatherpf0dps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0DPS,*operands,**kwargs)
        def vgatherpf0qpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0QPD,*operands,**kwargs)
        def vgatherpf0qps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0QPS,*operands,**kwargs)
        def vgatherpf1dpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1DPD,*operands,**kwargs)
        def vgatherpf1dps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1DPS,*operands,**kwargs)
        def vgatherpf1qpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1QPD,*operands,**kwargs)
        def vgatherpf1qps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1QPS,*operands,**kwargs)
        def vgatherqpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERQPD,*operands,**kwargs)
        def vgatherqps(*operands,**kwargs) = add_instruction(Instructions::VGATHERQPS,*operands,**kwargs)
        def vgetexppd(*operands,**kwargs) = add_instruction(Instructions::VGETEXPPD,*operands,**kwargs)
        def vgetexpph(*operands,**kwargs) = add_instruction(Instructions::VGETEXPPH,*operands,**kwargs)
        def vgetexpps(*operands,**kwargs) = add_instruction(Instructions::VGETEXPPS,*operands,**kwargs)
        def vgetexpsd(*operands,**kwargs) = add_instruction(Instructions::VGETEXPSD,*operands,**kwargs)
        def vgetexpsh(*operands,**kwargs) = add_instruction(Instructions::VGETEXPSH,*operands,**kwargs)
        def vgetexpss(*operands,**kwargs) = add_instruction(Instructions::VGETEXPSS,*operands,**kwargs)
        def vgetmantpd(*operands,**kwargs) = add_instruction(Instructions::VGETMANTPD,*operands,**kwargs)
        def vgetmantph(*operands,**kwargs) = add_instruction(Instructions::VGETMANTPH,*operands,**kwargs)
        def vgetmantps(*operands,**kwargs) = add_instruction(Instructions::VGETMANTPS,*operands,**kwargs)
        def vgetmantsd(*operands,**kwargs) = add_instruction(Instructions::VGETMANTSD,*operands,**kwargs)
        def vgetmantsh(*operands,**kwargs) = add_instruction(Instructions::VGETMANTSH,*operands,**kwargs)
        def vgetmantss(*operands,**kwargs) = add_instruction(Instructions::VGETMANTSS,*operands,**kwargs)
        def vgf2p8affineinvqb(*operands,**kwargs) = add_instruction(Instructions::VGF2P8AFFINEINVQB,*operands,**kwargs)
        def vgf2p8affineqb(*operands,**kwargs) = add_instruction(Instructions::VGF2P8AFFINEQB,*operands,**kwargs)
        def vgf2p8mulb(*operands,**kwargs) = add_instruction(Instructions::VGF2P8MULB,*operands,**kwargs)
        def vhaddpd(*operands,**kwargs) = add_instruction(Instructions::VHADDPD,*operands,**kwargs)
        def vhaddps(*operands,**kwargs) = add_instruction(Instructions::VHADDPS,*operands,**kwargs)
        def vhsubpd(*operands,**kwargs) = add_instruction(Instructions::VHSUBPD,*operands,**kwargs)
        def vhsubps(*operands,**kwargs) = add_instruction(Instructions::VHSUBPS,*operands,**kwargs)
        def vinsertf128(*operands,**kwargs) = add_instruction(Instructions::VINSERTF128,*operands,**kwargs)
        def vinsertf32x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTF32X4,*operands,**kwargs)
        def vinsertf32x8(*operands,**kwargs) = add_instruction(Instructions::VINSERTF32X8,*operands,**kwargs)
        def vinsertf64x2(*operands,**kwargs) = add_instruction(Instructions::VINSERTF64X2,*operands,**kwargs)
        def vinsertf64x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTF64X4,*operands,**kwargs)
        def vinserti128(*operands,**kwargs) = add_instruction(Instructions::VINSERTI128,*operands,**kwargs)
        def vinserti32x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTI32X4,*operands,**kwargs)
        def vinserti32x8(*operands,**kwargs) = add_instruction(Instructions::VINSERTI32X8,*operands,**kwargs)
        def vinserti64x2(*operands,**kwargs) = add_instruction(Instructions::VINSERTI64X2,*operands,**kwargs)
        def vinserti64x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTI64X4,*operands,**kwargs)
        def vinsertps(*operands,**kwargs) = add_instruction(Instructions::VINSERTPS,*operands,**kwargs)
        def vlddqu(*operands,**kwargs) = add_instruction(Instructions::VLDDQU,*operands,**kwargs)
        def vldmxcsr(*operands,**kwargs) = add_instruction(Instructions::VLDMXCSR,*operands,**kwargs)
        def vmaskmovdqu(*operands,**kwargs) = add_instruction(Instructions::VMASKMOVDQU,*operands,**kwargs)
        def vmaskmovpd(*operands,**kwargs) = add_instruction(Instructions::VMASKMOVPD,*operands,**kwargs)
        def vmaskmovps(*operands,**kwargs) = add_instruction(Instructions::VMASKMOVPS,*operands,**kwargs)
        def vmaxpd(*operands,**kwargs) = add_instruction(Instructions::VMAXPD,*operands,**kwargs)
        def vmaxph(*operands,**kwargs) = add_instruction(Instructions::VMAXPH,*operands,**kwargs)
        def vmaxps(*operands,**kwargs) = add_instruction(Instructions::VMAXPS,*operands,**kwargs)
        def vmaxsd(*operands,**kwargs) = add_instruction(Instructions::VMAXSD,*operands,**kwargs)
        def vmaxsh(*operands,**kwargs) = add_instruction(Instructions::VMAXSH,*operands,**kwargs)
        def vmaxss(*operands,**kwargs) = add_instruction(Instructions::VMAXSS,*operands,**kwargs)
        def vminpd(*operands,**kwargs) = add_instruction(Instructions::VMINPD,*operands,**kwargs)
        def vminph(*operands,**kwargs) = add_instruction(Instructions::VMINPH,*operands,**kwargs)
        def vminps(*operands,**kwargs) = add_instruction(Instructions::VMINPS,*operands,**kwargs)
        def vminsd(*operands,**kwargs) = add_instruction(Instructions::VMINSD,*operands,**kwargs)
        def vminsh(*operands,**kwargs) = add_instruction(Instructions::VMINSH,*operands,**kwargs)
        def vminss(*operands,**kwargs) = add_instruction(Instructions::VMINSS,*operands,**kwargs)
        def vmovapd(*operands,**kwargs) = add_instruction(Instructions::VMOVAPD,*operands,**kwargs)
        def vmovaps(*operands,**kwargs) = add_instruction(Instructions::VMOVAPS,*operands,**kwargs)
        def vmovd(*operands,**kwargs) = add_instruction(Instructions::VMOVD,*operands,**kwargs)
        def vmovddup(*operands,**kwargs) = add_instruction(Instructions::VMOVDDUP,*operands,**kwargs)
        def vmovdqa(*operands,**kwargs) = add_instruction(Instructions::VMOVDQA,*operands,**kwargs)
        def vmovdqa32(*operands,**kwargs) = add_instruction(Instructions::VMOVDQA32,*operands,**kwargs)
        def vmovdqa64(*operands,**kwargs) = add_instruction(Instructions::VMOVDQA64,*operands,**kwargs)
        def vmovdqu(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU,*operands,**kwargs)
        def vmovdqu16(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU16,*operands,**kwargs)
        def vmovdqu32(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU32,*operands,**kwargs)
        def vmovdqu64(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU64,*operands,**kwargs)
        def vmovdqu8(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU8,*operands,**kwargs)
        def vmovhlps(*operands,**kwargs) = add_instruction(Instructions::VMOVHLPS,*operands,**kwargs)
        def vmovhpd(*operands,**kwargs) = add_instruction(Instructions::VMOVHPD,*operands,**kwargs)
        def vmovhps(*operands,**kwargs) = add_instruction(Instructions::VMOVHPS,*operands,**kwargs)
        def vmovlhps(*operands,**kwargs) = add_instruction(Instructions::VMOVLHPS,*operands,**kwargs)
        def vmovlpd(*operands,**kwargs) = add_instruction(Instructions::VMOVLPD,*operands,**kwargs)
        def vmovlps(*operands,**kwargs) = add_instruction(Instructions::VMOVLPS,*operands,**kwargs)
        def vmovmskpd(*operands,**kwargs) = add_instruction(Instructions::VMOVMSKPD,*operands,**kwargs)
        def vmovmskps(*operands,**kwargs) = add_instruction(Instructions::VMOVMSKPS,*operands,**kwargs)
        def vmovntdq(*operands,**kwargs) = add_instruction(Instructions::VMOVNTDQ,*operands,**kwargs)
        def vmovntdqa(*operands,**kwargs) = add_instruction(Instructions::VMOVNTDQA,*operands,**kwargs)
        def vmovntpd(*operands,**kwargs) = add_instruction(Instructions::VMOVNTPD,*operands,**kwargs)
        def vmovntps(*operands,**kwargs) = add_instruction(Instructions::VMOVNTPS,*operands,**kwargs)
        def vmovq(*operands,**kwargs) = add_instruction(Instructions::VMOVQ,*operands,**kwargs)
        def vmovsd(*operands,**kwargs) = add_instruction(Instructions::VMOVSD,*operands,**kwargs)
        def vmovsh(*operands,**kwargs) = add_instruction(Instructions::VMOVSH,*operands,**kwargs)
        def vmovshdup(*operands,**kwargs) = add_instruction(Instructions::VMOVSHDUP,*operands,**kwargs)
        def vmovsldup(*operands,**kwargs) = add_instruction(Instructions::VMOVSLDUP,*operands,**kwargs)
        def vmovss(*operands,**kwargs) = add_instruction(Instructions::VMOVSS,*operands,**kwargs)
        def vmovupd(*operands,**kwargs) = add_instruction(Instructions::VMOVUPD,*operands,**kwargs)
        def vmovups(*operands,**kwargs) = add_instruction(Instructions::VMOVUPS,*operands,**kwargs)
        def vmovw(*operands,**kwargs) = add_instruction(Instructions::VMOVW,*operands,**kwargs)
        def vmpsadbw(*operands,**kwargs) = add_instruction(Instructions::VMPSADBW,*operands,**kwargs)
        def vmulpd(*operands,**kwargs) = add_instruction(Instructions::VMULPD,*operands,**kwargs)
        def vmulph(*operands,**kwargs) = add_instruction(Instructions::VMULPH,*operands,**kwargs)
        def vmulps(*operands,**kwargs) = add_instruction(Instructions::VMULPS,*operands,**kwargs)
        def vmulsd(*operands,**kwargs) = add_instruction(Instructions::VMULSD,*operands,**kwargs)
        def vmulsh(*operands,**kwargs) = add_instruction(Instructions::VMULSH,*operands,**kwargs)
        def vmulss(*operands,**kwargs) = add_instruction(Instructions::VMULSS,*operands,**kwargs)
        def vorpd(*operands,**kwargs) = add_instruction(Instructions::VORPD,*operands,**kwargs)
        def vorps(*operands,**kwargs) = add_instruction(Instructions::VORPS,*operands,**kwargs)
        def vpabsb(*operands,**kwargs) = add_instruction(Instructions::VPABSB,*operands,**kwargs)
        def vpabsd(*operands,**kwargs) = add_instruction(Instructions::VPABSD,*operands,**kwargs)
        def vpabsq(*operands,**kwargs) = add_instruction(Instructions::VPABSQ,*operands,**kwargs)
        def vpabsw(*operands,**kwargs) = add_instruction(Instructions::VPABSW,*operands,**kwargs)
        def vpackssdw(*operands,**kwargs) = add_instruction(Instructions::VPACKSSDW,*operands,**kwargs)
        def vpacksswb(*operands,**kwargs) = add_instruction(Instructions::VPACKSSWB,*operands,**kwargs)
        def vpackusdw(*operands,**kwargs) = add_instruction(Instructions::VPACKUSDW,*operands,**kwargs)
        def vpackuswb(*operands,**kwargs) = add_instruction(Instructions::VPACKUSWB,*operands,**kwargs)
        def vpaddb(*operands,**kwargs) = add_instruction(Instructions::VPADDB,*operands,**kwargs)
        def vpaddd(*operands,**kwargs) = add_instruction(Instructions::VPADDD,*operands,**kwargs)
        def vpaddq(*operands,**kwargs) = add_instruction(Instructions::VPADDQ,*operands,**kwargs)
        def vpaddsb(*operands,**kwargs) = add_instruction(Instructions::VPADDSB,*operands,**kwargs)
        def vpaddsw(*operands,**kwargs) = add_instruction(Instructions::VPADDSW,*operands,**kwargs)
        def vpaddusb(*operands,**kwargs) = add_instruction(Instructions::VPADDUSB,*operands,**kwargs)
        def vpaddusw(*operands,**kwargs) = add_instruction(Instructions::VPADDUSW,*operands,**kwargs)
        def vpaddw(*operands,**kwargs) = add_instruction(Instructions::VPADDW,*operands,**kwargs)
        def vpalignr(*operands,**kwargs) = add_instruction(Instructions::VPALIGNR,*operands,**kwargs)
        def vpand(*operands,**kwargs) = add_instruction(Instructions::VPAND,*operands,**kwargs)
        def vpandd(*operands,**kwargs) = add_instruction(Instructions::VPANDD,*operands,**kwargs)
        def vpandn(*operands,**kwargs) = add_instruction(Instructions::VPANDN,*operands,**kwargs)
        def vpandnd(*operands,**kwargs) = add_instruction(Instructions::VPANDND,*operands,**kwargs)
        def vpandnq(*operands,**kwargs) = add_instruction(Instructions::VPANDNQ,*operands,**kwargs)
        def vpandq(*operands,**kwargs) = add_instruction(Instructions::VPANDQ,*operands,**kwargs)
        def vpavgb(*operands,**kwargs) = add_instruction(Instructions::VPAVGB,*operands,**kwargs)
        def vpavgw(*operands,**kwargs) = add_instruction(Instructions::VPAVGW,*operands,**kwargs)
        def vpblendd(*operands,**kwargs) = add_instruction(Instructions::VPBLENDD,*operands,**kwargs)
        def vpblendmb(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMB,*operands,**kwargs)
        def vpblendmd(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMD,*operands,**kwargs)
        def vpblendmq(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMQ,*operands,**kwargs)
        def vpblendmw(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMW,*operands,**kwargs)
        def vpblendvb(*operands,**kwargs) = add_instruction(Instructions::VPBLENDVB,*operands,**kwargs)
        def vpblendw(*operands,**kwargs) = add_instruction(Instructions::VPBLENDW,*operands,**kwargs)
        def vpbroadcastb(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTB,*operands,**kwargs)
        def vpbroadcastd(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTD,*operands,**kwargs)
        def vpbroadcastmb2q(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTMB2Q,*operands,**kwargs)
        def vpbroadcastmw2d(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTMW2D,*operands,**kwargs)
        def vpbroadcastq(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTQ,*operands,**kwargs)
        def vpbroadcastw(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTW,*operands,**kwargs)
        def vpclmulqdq(*operands,**kwargs) = add_instruction(Instructions::VPCLMULQDQ,*operands,**kwargs)
        def vpcmov(*operands,**kwargs) = add_instruction(Instructions::VPCMOV,*operands,**kwargs)
        def vpcmpb(*operands,**kwargs) = add_instruction(Instructions::VPCMPB,*operands,**kwargs)
        def vpcmpd(*operands,**kwargs) = add_instruction(Instructions::VPCMPD,*operands,**kwargs)
        def vpcmpeqb(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQB,*operands,**kwargs)
        def vpcmpeqd(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQD,*operands,**kwargs)
        def vpcmpeqq(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQQ,*operands,**kwargs)
        def vpcmpeqw(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQW,*operands,**kwargs)
        def vpcmpestri(*operands,**kwargs) = add_instruction(Instructions::VPCMPESTRI,*operands,**kwargs)
        def vpcmpestrm(*operands,**kwargs) = add_instruction(Instructions::VPCMPESTRM,*operands,**kwargs)
        def vpcmpgtb(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTB,*operands,**kwargs)
        def vpcmpgtd(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTD,*operands,**kwargs)
        def vpcmpgtq(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTQ,*operands,**kwargs)
        def vpcmpgtw(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTW,*operands,**kwargs)
        def vpcmpistri(*operands,**kwargs) = add_instruction(Instructions::VPCMPISTRI,*operands,**kwargs)
        def vpcmpistrm(*operands,**kwargs) = add_instruction(Instructions::VPCMPISTRM,*operands,**kwargs)
        def vpcmpq(*operands,**kwargs) = add_instruction(Instructions::VPCMPQ,*operands,**kwargs)
        def vpcmpub(*operands,**kwargs) = add_instruction(Instructions::VPCMPUB,*operands,**kwargs)
        def vpcmpud(*operands,**kwargs) = add_instruction(Instructions::VPCMPUD,*operands,**kwargs)
        def vpcmpuq(*operands,**kwargs) = add_instruction(Instructions::VPCMPUQ,*operands,**kwargs)
        def vpcmpuw(*operands,**kwargs) = add_instruction(Instructions::VPCMPUW,*operands,**kwargs)
        def vpcmpw(*operands,**kwargs) = add_instruction(Instructions::VPCMPW,*operands,**kwargs)
        def vpcomb(*operands,**kwargs) = add_instruction(Instructions::VPCOMB,*operands,**kwargs)
        def vpcomd(*operands,**kwargs) = add_instruction(Instructions::VPCOMD,*operands,**kwargs)
        def vpcompressb(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSB,*operands,**kwargs)
        def vpcompressd(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSD,*operands,**kwargs)
        def vpcompressq(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSQ,*operands,**kwargs)
        def vpcompressw(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSW,*operands,**kwargs)
        def vpcomq(*operands,**kwargs) = add_instruction(Instructions::VPCOMQ,*operands,**kwargs)
        def vpcomub(*operands,**kwargs) = add_instruction(Instructions::VPCOMUB,*operands,**kwargs)
        def vpcomud(*operands,**kwargs) = add_instruction(Instructions::VPCOMUD,*operands,**kwargs)
        def vpcomuq(*operands,**kwargs) = add_instruction(Instructions::VPCOMUQ,*operands,**kwargs)
        def vpcomuw(*operands,**kwargs) = add_instruction(Instructions::VPCOMUW,*operands,**kwargs)
        def vpcomw(*operands,**kwargs) = add_instruction(Instructions::VPCOMW,*operands,**kwargs)
        def vpconflictd(*operands,**kwargs) = add_instruction(Instructions::VPCONFLICTD,*operands,**kwargs)
        def vpconflictq(*operands,**kwargs) = add_instruction(Instructions::VPCONFLICTQ,*operands,**kwargs)
        def vpdpbssd(*operands,**kwargs) = add_instruction(Instructions::VPDPBSSD,*operands,**kwargs)
        def vpdpbssds(*operands,**kwargs) = add_instruction(Instructions::VPDPBSSDS,*operands,**kwargs)
        def vpdpbsud(*operands,**kwargs) = add_instruction(Instructions::VPDPBSUD,*operands,**kwargs)
        def vpdpbsuds(*operands,**kwargs) = add_instruction(Instructions::VPDPBSUDS,*operands,**kwargs)
        def vpdpbusd(*operands,**kwargs) = add_instruction(Instructions::VPDPBUSD,*operands,**kwargs)
        def vpdpbusds(*operands,**kwargs) = add_instruction(Instructions::VPDPBUSDS,*operands,**kwargs)
        def vpdpbuud(*operands,**kwargs) = add_instruction(Instructions::VPDPBUUD,*operands,**kwargs)
        def vpdpbuuds(*operands,**kwargs) = add_instruction(Instructions::VPDPBUUDS,*operands,**kwargs)
        def vpdpwssd(*operands,**kwargs) = add_instruction(Instructions::VPDPWSSD,*operands,**kwargs)
        def vpdpwssds(*operands,**kwargs) = add_instruction(Instructions::VPDPWSSDS,*operands,**kwargs)
        def vpdpwsud(*operands,**kwargs) = add_instruction(Instructions::VPDPWSUD,*operands,**kwargs)
        def vpdpwsuds(*operands,**kwargs) = add_instruction(Instructions::VPDPWSUDS,*operands,**kwargs)
        def vpdpwusd(*operands,**kwargs) = add_instruction(Instructions::VPDPWUSD,*operands,**kwargs)
        def vpdpwusds(*operands,**kwargs) = add_instruction(Instructions::VPDPWUSDS,*operands,**kwargs)
        def vpdpwuud(*operands,**kwargs) = add_instruction(Instructions::VPDPWUUD,*operands,**kwargs)
        def vpdpwuuds(*operands,**kwargs) = add_instruction(Instructions::VPDPWUUDS,*operands,**kwargs)
        def vperm2f128(*operands,**kwargs) = add_instruction(Instructions::VPERM2F128,*operands,**kwargs)
        def vperm2i128(*operands,**kwargs) = add_instruction(Instructions::VPERM2I128,*operands,**kwargs)
        def vpermb(*operands,**kwargs) = add_instruction(Instructions::VPERMB,*operands,**kwargs)
        def vpermd(*operands,**kwargs) = add_instruction(Instructions::VPERMD,*operands,**kwargs)
        def vpermi2b(*operands,**kwargs) = add_instruction(Instructions::VPERMI2B,*operands,**kwargs)
        def vpermi2d(*operands,**kwargs) = add_instruction(Instructions::VPERMI2D,*operands,**kwargs)
        def vpermi2pd(*operands,**kwargs) = add_instruction(Instructions::VPERMI2PD,*operands,**kwargs)
        def vpermi2ps(*operands,**kwargs) = add_instruction(Instructions::VPERMI2PS,*operands,**kwargs)
        def vpermi2q(*operands,**kwargs) = add_instruction(Instructions::VPERMI2Q,*operands,**kwargs)
        def vpermi2w(*operands,**kwargs) = add_instruction(Instructions::VPERMI2W,*operands,**kwargs)
        def vpermil2pd(*operands,**kwargs) = add_instruction(Instructions::VPERMIL2PD,*operands,**kwargs)
        def vpermil2ps(*operands,**kwargs) = add_instruction(Instructions::VPERMIL2PS,*operands,**kwargs)
        def vpermilpd(*operands,**kwargs) = add_instruction(Instructions::VPERMILPD,*operands,**kwargs)
        def vpermilps(*operands,**kwargs) = add_instruction(Instructions::VPERMILPS,*operands,**kwargs)
        def vpermpd(*operands,**kwargs) = add_instruction(Instructions::VPERMPD,*operands,**kwargs)
        def vpermps(*operands,**kwargs) = add_instruction(Instructions::VPERMPS,*operands,**kwargs)
        def vpermq(*operands,**kwargs) = add_instruction(Instructions::VPERMQ,*operands,**kwargs)
        def vpermt2b(*operands,**kwargs) = add_instruction(Instructions::VPERMT2B,*operands,**kwargs)
        def vpermt2d(*operands,**kwargs) = add_instruction(Instructions::VPERMT2D,*operands,**kwargs)
        def vpermt2pd(*operands,**kwargs) = add_instruction(Instructions::VPERMT2PD,*operands,**kwargs)
        def vpermt2ps(*operands,**kwargs) = add_instruction(Instructions::VPERMT2PS,*operands,**kwargs)
        def vpermt2q(*operands,**kwargs) = add_instruction(Instructions::VPERMT2Q,*operands,**kwargs)
        def vpermt2w(*operands,**kwargs) = add_instruction(Instructions::VPERMT2W,*operands,**kwargs)
        def vpermw(*operands,**kwargs) = add_instruction(Instructions::VPERMW,*operands,**kwargs)
        def vpexpandb(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDB,*operands,**kwargs)
        def vpexpandd(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDD,*operands,**kwargs)
        def vpexpandq(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDQ,*operands,**kwargs)
        def vpexpandw(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDW,*operands,**kwargs)
        def vpextrb(*operands,**kwargs) = add_instruction(Instructions::VPEXTRB,*operands,**kwargs)
        def vpextrd(*operands,**kwargs) = add_instruction(Instructions::VPEXTRD,*operands,**kwargs)
        def vpextrq(*operands,**kwargs) = add_instruction(Instructions::VPEXTRQ,*operands,**kwargs)
        def vpextrw(*operands,**kwargs) = add_instruction(Instructions::VPEXTRW,*operands,**kwargs)
        def vpgatherdd(*operands,**kwargs) = add_instruction(Instructions::VPGATHERDD,*operands,**kwargs)
        def vpgatherdq(*operands,**kwargs) = add_instruction(Instructions::VPGATHERDQ,*operands,**kwargs)
        def vpgatherqd(*operands,**kwargs) = add_instruction(Instructions::VPGATHERQD,*operands,**kwargs)
        def vpgatherqq(*operands,**kwargs) = add_instruction(Instructions::VPGATHERQQ,*operands,**kwargs)
        def vphaddbd(*operands,**kwargs) = add_instruction(Instructions::VPHADDBD,*operands,**kwargs)
        def vphaddbq(*operands,**kwargs) = add_instruction(Instructions::VPHADDBQ,*operands,**kwargs)
        def vphaddbw(*operands,**kwargs) = add_instruction(Instructions::VPHADDBW,*operands,**kwargs)
        def vphaddd(*operands,**kwargs) = add_instruction(Instructions::VPHADDD,*operands,**kwargs)
        def vphadddq(*operands,**kwargs) = add_instruction(Instructions::VPHADDDQ,*operands,**kwargs)
        def vphaddsw(*operands,**kwargs) = add_instruction(Instructions::VPHADDSW,*operands,**kwargs)
        def vphaddubd(*operands,**kwargs) = add_instruction(Instructions::VPHADDUBD,*operands,**kwargs)
        def vphaddubq(*operands,**kwargs) = add_instruction(Instructions::VPHADDUBQ,*operands,**kwargs)
        def vphaddubw(*operands,**kwargs) = add_instruction(Instructions::VPHADDUBW,*operands,**kwargs)
        def vphaddudq(*operands,**kwargs) = add_instruction(Instructions::VPHADDUDQ,*operands,**kwargs)
        def vphadduwd(*operands,**kwargs) = add_instruction(Instructions::VPHADDUWD,*operands,**kwargs)
        def vphadduwq(*operands,**kwargs) = add_instruction(Instructions::VPHADDUWQ,*operands,**kwargs)
        def vphaddw(*operands,**kwargs) = add_instruction(Instructions::VPHADDW,*operands,**kwargs)
        def vphaddwd(*operands,**kwargs) = add_instruction(Instructions::VPHADDWD,*operands,**kwargs)
        def vphaddwq(*operands,**kwargs) = add_instruction(Instructions::VPHADDWQ,*operands,**kwargs)
        def vphminposuw(*operands,**kwargs) = add_instruction(Instructions::VPHMINPOSUW,*operands,**kwargs)
        def vphsubbw(*operands,**kwargs) = add_instruction(Instructions::VPHSUBBW,*operands,**kwargs)
        def vphsubd(*operands,**kwargs) = add_instruction(Instructions::VPHSUBD,*operands,**kwargs)
        def vphsubdq(*operands,**kwargs) = add_instruction(Instructions::VPHSUBDQ,*operands,**kwargs)
        def vphsubsw(*operands,**kwargs) = add_instruction(Instructions::VPHSUBSW,*operands,**kwargs)
        def vphsubw(*operands,**kwargs) = add_instruction(Instructions::VPHSUBW,*operands,**kwargs)
        def vphsubwd(*operands,**kwargs) = add_instruction(Instructions::VPHSUBWD,*operands,**kwargs)
        def vpinsrb(*operands,**kwargs) = add_instruction(Instructions::VPINSRB,*operands,**kwargs)
        def vpinsrd(*operands,**kwargs) = add_instruction(Instructions::VPINSRD,*operands,**kwargs)
        def vpinsrq(*operands,**kwargs) = add_instruction(Instructions::VPINSRQ,*operands,**kwargs)
        def vpinsrw(*operands,**kwargs) = add_instruction(Instructions::VPINSRW,*operands,**kwargs)
        def vplzcntd(*operands,**kwargs) = add_instruction(Instructions::VPLZCNTD,*operands,**kwargs)
        def vplzcntq(*operands,**kwargs) = add_instruction(Instructions::VPLZCNTQ,*operands,**kwargs)
        def vpmacsdd(*operands,**kwargs) = add_instruction(Instructions::VPMACSDD,*operands,**kwargs)
        def vpmacsdqh(*operands,**kwargs) = add_instruction(Instructions::VPMACSDQH,*operands,**kwargs)
        def vpmacsdql(*operands,**kwargs) = add_instruction(Instructions::VPMACSDQL,*operands,**kwargs)
        def vpmacssdd(*operands,**kwargs) = add_instruction(Instructions::VPMACSSDD,*operands,**kwargs)
        def vpmacssdqh(*operands,**kwargs) = add_instruction(Instructions::VPMACSSDQH,*operands,**kwargs)
        def vpmacssdql(*operands,**kwargs) = add_instruction(Instructions::VPMACSSDQL,*operands,**kwargs)
        def vpmacsswd(*operands,**kwargs) = add_instruction(Instructions::VPMACSSWD,*operands,**kwargs)
        def vpmacssww(*operands,**kwargs) = add_instruction(Instructions::VPMACSSWW,*operands,**kwargs)
        def vpmacswd(*operands,**kwargs) = add_instruction(Instructions::VPMACSWD,*operands,**kwargs)
        def vpmacsww(*operands,**kwargs) = add_instruction(Instructions::VPMACSWW,*operands,**kwargs)
        def vpmadcsswd(*operands,**kwargs) = add_instruction(Instructions::VPMADCSSWD,*operands,**kwargs)
        def vpmadcswd(*operands,**kwargs) = add_instruction(Instructions::VPMADCSWD,*operands,**kwargs)
        def vpmadd52huq(*operands,**kwargs) = add_instruction(Instructions::VPMADD52HUQ,*operands,**kwargs)
        def vpmadd52luq(*operands,**kwargs) = add_instruction(Instructions::VPMADD52LUQ,*operands,**kwargs)
        def vpmaddubsw(*operands,**kwargs) = add_instruction(Instructions::VPMADDUBSW,*operands,**kwargs)
        def vpmaddwd(*operands,**kwargs) = add_instruction(Instructions::VPMADDWD,*operands,**kwargs)
        def vpmaskmovd(*operands,**kwargs) = add_instruction(Instructions::VPMASKMOVD,*operands,**kwargs)
        def vpmaskmovq(*operands,**kwargs) = add_instruction(Instructions::VPMASKMOVQ,*operands,**kwargs)
        def vpmaxsb(*operands,**kwargs) = add_instruction(Instructions::VPMAXSB,*operands,**kwargs)
        def vpmaxsd(*operands,**kwargs) = add_instruction(Instructions::VPMAXSD,*operands,**kwargs)
        def vpmaxsq(*operands,**kwargs) = add_instruction(Instructions::VPMAXSQ,*operands,**kwargs)
        def vpmaxsw(*operands,**kwargs) = add_instruction(Instructions::VPMAXSW,*operands,**kwargs)
        def vpmaxub(*operands,**kwargs) = add_instruction(Instructions::VPMAXUB,*operands,**kwargs)
        def vpmaxud(*operands,**kwargs) = add_instruction(Instructions::VPMAXUD,*operands,**kwargs)
        def vpmaxuq(*operands,**kwargs) = add_instruction(Instructions::VPMAXUQ,*operands,**kwargs)
        def vpmaxuw(*operands,**kwargs) = add_instruction(Instructions::VPMAXUW,*operands,**kwargs)
        def vpminsb(*operands,**kwargs) = add_instruction(Instructions::VPMINSB,*operands,**kwargs)
        def vpminsd(*operands,**kwargs) = add_instruction(Instructions::VPMINSD,*operands,**kwargs)
        def vpminsq(*operands,**kwargs) = add_instruction(Instructions::VPMINSQ,*operands,**kwargs)
        def vpminsw(*operands,**kwargs) = add_instruction(Instructions::VPMINSW,*operands,**kwargs)
        def vpminub(*operands,**kwargs) = add_instruction(Instructions::VPMINUB,*operands,**kwargs)
        def vpminud(*operands,**kwargs) = add_instruction(Instructions::VPMINUD,*operands,**kwargs)
        def vpminuq(*operands,**kwargs) = add_instruction(Instructions::VPMINUQ,*operands,**kwargs)
        def vpminuw(*operands,**kwargs) = add_instruction(Instructions::VPMINUW,*operands,**kwargs)
        def vpmovb2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVB2M,*operands,**kwargs)
        def vpmovd2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVD2M,*operands,**kwargs)
        def vpmovdb(*operands,**kwargs) = add_instruction(Instructions::VPMOVDB,*operands,**kwargs)
        def vpmovdw(*operands,**kwargs) = add_instruction(Instructions::VPMOVDW,*operands,**kwargs)
        def vpmovm2b(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2B,*operands,**kwargs)
        def vpmovm2d(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2D,*operands,**kwargs)
        def vpmovm2q(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2Q,*operands,**kwargs)
        def vpmovm2w(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2W,*operands,**kwargs)
        def vpmovmskb(*operands,**kwargs) = add_instruction(Instructions::VPMOVMSKB,*operands,**kwargs)
        def vpmovq2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVQ2M,*operands,**kwargs)
        def vpmovqb(*operands,**kwargs) = add_instruction(Instructions::VPMOVQB,*operands,**kwargs)
        def vpmovqd(*operands,**kwargs) = add_instruction(Instructions::VPMOVQD,*operands,**kwargs)
        def vpmovqw(*operands,**kwargs) = add_instruction(Instructions::VPMOVQW,*operands,**kwargs)
        def vpmovsdb(*operands,**kwargs) = add_instruction(Instructions::VPMOVSDB,*operands,**kwargs)
        def vpmovsdw(*operands,**kwargs) = add_instruction(Instructions::VPMOVSDW,*operands,**kwargs)
        def vpmovsqb(*operands,**kwargs) = add_instruction(Instructions::VPMOVSQB,*operands,**kwargs)
        def vpmovsqd(*operands,**kwargs) = add_instruction(Instructions::VPMOVSQD,*operands,**kwargs)
        def vpmovsqw(*operands,**kwargs) = add_instruction(Instructions::VPMOVSQW,*operands,**kwargs)
        def vpmovswb(*operands,**kwargs) = add_instruction(Instructions::VPMOVSWB,*operands,**kwargs)
        def vpmovsxbd(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXBD,*operands,**kwargs)
        def vpmovsxbq(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXBQ,*operands,**kwargs)
        def vpmovsxbw(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXBW,*operands,**kwargs)
        def vpmovsxdq(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXDQ,*operands,**kwargs)
        def vpmovsxwd(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXWD,*operands,**kwargs)
        def vpmovsxwq(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXWQ,*operands,**kwargs)
        def vpmovusdb(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSDB,*operands,**kwargs)
        def vpmovusdw(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSDW,*operands,**kwargs)
        def vpmovusqb(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSQB,*operands,**kwargs)
        def vpmovusqd(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSQD,*operands,**kwargs)
        def vpmovusqw(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSQW,*operands,**kwargs)
        def vpmovuswb(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSWB,*operands,**kwargs)
        def vpmovw2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVW2M,*operands,**kwargs)
        def vpmovwb(*operands,**kwargs) = add_instruction(Instructions::VPMOVWB,*operands,**kwargs)
        def vpmovzxbd(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXBD,*operands,**kwargs)
        def vpmovzxbq(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXBQ,*operands,**kwargs)
        def vpmovzxbw(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXBW,*operands,**kwargs)
        def vpmovzxdq(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXDQ,*operands,**kwargs)
        def vpmovzxwd(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXWD,*operands,**kwargs)
        def vpmovzxwq(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXWQ,*operands,**kwargs)
        def vpmuldq(*operands,**kwargs) = add_instruction(Instructions::VPMULDQ,*operands,**kwargs)
        def vpmulhrsw(*operands,**kwargs) = add_instruction(Instructions::VPMULHRSW,*operands,**kwargs)
        def vpmulhuw(*operands,**kwargs) = add_instruction(Instructions::VPMULHUW,*operands,**kwargs)
        def vpmulhw(*operands,**kwargs) = add_instruction(Instructions::VPMULHW,*operands,**kwargs)
        def vpmulld(*operands,**kwargs) = add_instruction(Instructions::VPMULLD,*operands,**kwargs)
        def vpmullq(*operands,**kwargs) = add_instruction(Instructions::VPMULLQ,*operands,**kwargs)
        def vpmullw(*operands,**kwargs) = add_instruction(Instructions::VPMULLW,*operands,**kwargs)
        def vpmultishiftqb(*operands,**kwargs) = add_instruction(Instructions::VPMULTISHIFTQB,*operands,**kwargs)
        def vpmuludq(*operands,**kwargs) = add_instruction(Instructions::VPMULUDQ,*operands,**kwargs)
        def vpopcntb(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTB,*operands,**kwargs)
        def vpopcntd(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTD,*operands,**kwargs)
        def vpopcntq(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTQ,*operands,**kwargs)
        def vpopcntw(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTW,*operands,**kwargs)
        def vpor(*operands,**kwargs) = add_instruction(Instructions::VPOR,*operands,**kwargs)
        def vpord(*operands,**kwargs) = add_instruction(Instructions::VPORD,*operands,**kwargs)
        def vporq(*operands,**kwargs) = add_instruction(Instructions::VPORQ,*operands,**kwargs)
        def vpperm(*operands,**kwargs) = add_instruction(Instructions::VPPERM,*operands,**kwargs)
        def vprold(*operands,**kwargs) = add_instruction(Instructions::VPROLD,*operands,**kwargs)
        def vprolq(*operands,**kwargs) = add_instruction(Instructions::VPROLQ,*operands,**kwargs)
        def vprolvd(*operands,**kwargs) = add_instruction(Instructions::VPROLVD,*operands,**kwargs)
        def vprolvq(*operands,**kwargs) = add_instruction(Instructions::VPROLVQ,*operands,**kwargs)
        def vprord(*operands,**kwargs) = add_instruction(Instructions::VPRORD,*operands,**kwargs)
        def vprorq(*operands,**kwargs) = add_instruction(Instructions::VPRORQ,*operands,**kwargs)
        def vprorvd(*operands,**kwargs) = add_instruction(Instructions::VPRORVD,*operands,**kwargs)
        def vprorvq(*operands,**kwargs) = add_instruction(Instructions::VPRORVQ,*operands,**kwargs)
        def vprotb(*operands,**kwargs) = add_instruction(Instructions::VPROTB,*operands,**kwargs)
        def vprotd(*operands,**kwargs) = add_instruction(Instructions::VPROTD,*operands,**kwargs)
        def vprotq(*operands,**kwargs) = add_instruction(Instructions::VPROTQ,*operands,**kwargs)
        def vprotw(*operands,**kwargs) = add_instruction(Instructions::VPROTW,*operands,**kwargs)
        def vpsadbw(*operands,**kwargs) = add_instruction(Instructions::VPSADBW,*operands,**kwargs)
        def vpscatterdd(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERDD,*operands,**kwargs)
        def vpscatterdq(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERDQ,*operands,**kwargs)
        def vpscatterqd(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERQD,*operands,**kwargs)
        def vpscatterqq(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERQQ,*operands,**kwargs)
        def vpshab(*operands,**kwargs) = add_instruction(Instructions::VPSHAB,*operands,**kwargs)
        def vpshad(*operands,**kwargs) = add_instruction(Instructions::VPSHAD,*operands,**kwargs)
        def vpshaq(*operands,**kwargs) = add_instruction(Instructions::VPSHAQ,*operands,**kwargs)
        def vpshaw(*operands,**kwargs) = add_instruction(Instructions::VPSHAW,*operands,**kwargs)
        def vpshlb(*operands,**kwargs) = add_instruction(Instructions::VPSHLB,*operands,**kwargs)
        def vpshld(*operands,**kwargs) = add_instruction(Instructions::VPSHLD,*operands,**kwargs)
        def vpshldd(*operands,**kwargs) = add_instruction(Instructions::VPSHLDD,*operands,**kwargs)
        def vpshldq(*operands,**kwargs) = add_instruction(Instructions::VPSHLDQ,*operands,**kwargs)
        def vpshldvd(*operands,**kwargs) = add_instruction(Instructions::VPSHLDVD,*operands,**kwargs)
        def vpshldvq(*operands,**kwargs) = add_instruction(Instructions::VPSHLDVQ,*operands,**kwargs)
        def vpshldvw(*operands,**kwargs) = add_instruction(Instructions::VPSHLDVW,*operands,**kwargs)
        def vpshldw(*operands,**kwargs) = add_instruction(Instructions::VPSHLDW,*operands,**kwargs)
        def vpshlq(*operands,**kwargs) = add_instruction(Instructions::VPSHLQ,*operands,**kwargs)
        def vpshlw(*operands,**kwargs) = add_instruction(Instructions::VPSHLW,*operands,**kwargs)
        def vpshrdd(*operands,**kwargs) = add_instruction(Instructions::VPSHRDD,*operands,**kwargs)
        def vpshrdq(*operands,**kwargs) = add_instruction(Instructions::VPSHRDQ,*operands,**kwargs)
        def vpshrdvd(*operands,**kwargs) = add_instruction(Instructions::VPSHRDVD,*operands,**kwargs)
        def vpshrdvq(*operands,**kwargs) = add_instruction(Instructions::VPSHRDVQ,*operands,**kwargs)
        def vpshrdvw(*operands,**kwargs) = add_instruction(Instructions::VPSHRDVW,*operands,**kwargs)
        def vpshrdw(*operands,**kwargs) = add_instruction(Instructions::VPSHRDW,*operands,**kwargs)
        def vpshufb(*operands,**kwargs) = add_instruction(Instructions::VPSHUFB,*operands,**kwargs)
        def vpshufbitqmb(*operands,**kwargs) = add_instruction(Instructions::VPSHUFBITQMB,*operands,**kwargs)
        def vpshufd(*operands,**kwargs) = add_instruction(Instructions::VPSHUFD,*operands,**kwargs)
        def vpshufhw(*operands,**kwargs) = add_instruction(Instructions::VPSHUFHW,*operands,**kwargs)
        def vpshuflw(*operands,**kwargs) = add_instruction(Instructions::VPSHUFLW,*operands,**kwargs)
        def vpsignb(*operands,**kwargs) = add_instruction(Instructions::VPSIGNB,*operands,**kwargs)
        def vpsignd(*operands,**kwargs) = add_instruction(Instructions::VPSIGND,*operands,**kwargs)
        def vpsignw(*operands,**kwargs) = add_instruction(Instructions::VPSIGNW,*operands,**kwargs)
        def vpslld(*operands,**kwargs) = add_instruction(Instructions::VPSLLD,*operands,**kwargs)
        def vpslldq(*operands,**kwargs) = add_instruction(Instructions::VPSLLDQ,*operands,**kwargs)
        def vpsllq(*operands,**kwargs) = add_instruction(Instructions::VPSLLQ,*operands,**kwargs)
        def vpsllvd(*operands,**kwargs) = add_instruction(Instructions::VPSLLVD,*operands,**kwargs)
        def vpsllvq(*operands,**kwargs) = add_instruction(Instructions::VPSLLVQ,*operands,**kwargs)
        def vpsllvw(*operands,**kwargs) = add_instruction(Instructions::VPSLLVW,*operands,**kwargs)
        def vpsllw(*operands,**kwargs) = add_instruction(Instructions::VPSLLW,*operands,**kwargs)
        def vpsrad(*operands,**kwargs) = add_instruction(Instructions::VPSRAD,*operands,**kwargs)
        def vpsraq(*operands,**kwargs) = add_instruction(Instructions::VPSRAQ,*operands,**kwargs)
        def vpsravd(*operands,**kwargs) = add_instruction(Instructions::VPSRAVD,*operands,**kwargs)
        def vpsravq(*operands,**kwargs) = add_instruction(Instructions::VPSRAVQ,*operands,**kwargs)
        def vpsravw(*operands,**kwargs) = add_instruction(Instructions::VPSRAVW,*operands,**kwargs)
        def vpsraw(*operands,**kwargs) = add_instruction(Instructions::VPSRAW,*operands,**kwargs)
        def vpsrld(*operands,**kwargs) = add_instruction(Instructions::VPSRLD,*operands,**kwargs)
        def vpsrldq(*operands,**kwargs) = add_instruction(Instructions::VPSRLDQ,*operands,**kwargs)
        def vpsrlq(*operands,**kwargs) = add_instruction(Instructions::VPSRLQ,*operands,**kwargs)
        def vpsrlvd(*operands,**kwargs) = add_instruction(Instructions::VPSRLVD,*operands,**kwargs)
        def vpsrlvq(*operands,**kwargs) = add_instruction(Instructions::VPSRLVQ,*operands,**kwargs)
        def vpsrlvw(*operands,**kwargs) = add_instruction(Instructions::VPSRLVW,*operands,**kwargs)
        def vpsrlw(*operands,**kwargs) = add_instruction(Instructions::VPSRLW,*operands,**kwargs)
        def vpsubb(*operands,**kwargs) = add_instruction(Instructions::VPSUBB,*operands,**kwargs)
        def vpsubd(*operands,**kwargs) = add_instruction(Instructions::VPSUBD,*operands,**kwargs)
        def vpsubq(*operands,**kwargs) = add_instruction(Instructions::VPSUBQ,*operands,**kwargs)
        def vpsubsb(*operands,**kwargs) = add_instruction(Instructions::VPSUBSB,*operands,**kwargs)
        def vpsubsw(*operands,**kwargs) = add_instruction(Instructions::VPSUBSW,*operands,**kwargs)
        def vpsubusb(*operands,**kwargs) = add_instruction(Instructions::VPSUBUSB,*operands,**kwargs)
        def vpsubusw(*operands,**kwargs) = add_instruction(Instructions::VPSUBUSW,*operands,**kwargs)
        def vpsubw(*operands,**kwargs) = add_instruction(Instructions::VPSUBW,*operands,**kwargs)
        def vpternlogd(*operands,**kwargs) = add_instruction(Instructions::VPTERNLOGD,*operands,**kwargs)
        def vpternlogq(*operands,**kwargs) = add_instruction(Instructions::VPTERNLOGQ,*operands,**kwargs)
        def vptest(*operands,**kwargs) = add_instruction(Instructions::VPTEST,*operands,**kwargs)
        def vptestmb(*operands,**kwargs) = add_instruction(Instructions::VPTESTMB,*operands,**kwargs)
        def vptestmd(*operands,**kwargs) = add_instruction(Instructions::VPTESTMD,*operands,**kwargs)
        def vptestmq(*operands,**kwargs) = add_instruction(Instructions::VPTESTMQ,*operands,**kwargs)
        def vptestmw(*operands,**kwargs) = add_instruction(Instructions::VPTESTMW,*operands,**kwargs)
        def vptestnmb(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMB,*operands,**kwargs)
        def vptestnmd(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMD,*operands,**kwargs)
        def vptestnmq(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMQ,*operands,**kwargs)
        def vptestnmw(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMW,*operands,**kwargs)
        def vpunpckhbw(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHBW,*operands,**kwargs)
        def vpunpckhdq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHDQ,*operands,**kwargs)
        def vpunpckhqdq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHQDQ,*operands,**kwargs)
        def vpunpckhwd(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHWD,*operands,**kwargs)
        def vpunpcklbw(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLBW,*operands,**kwargs)
        def vpunpckldq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLDQ,*operands,**kwargs)
        def vpunpcklqdq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLQDQ,*operands,**kwargs)
        def vpunpcklwd(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLWD,*operands,**kwargs)
        def vpxor(*operands,**kwargs) = add_instruction(Instructions::VPXOR,*operands,**kwargs)
        def vpxord(*operands,**kwargs) = add_instruction(Instructions::VPXORD,*operands,**kwargs)
        def vpxorq(*operands,**kwargs) = add_instruction(Instructions::VPXORQ,*operands,**kwargs)
        def vrangepd(*operands,**kwargs) = add_instruction(Instructions::VRANGEPD,*operands,**kwargs)
        def vrangeps(*operands,**kwargs) = add_instruction(Instructions::VRANGEPS,*operands,**kwargs)
        def vrangesd(*operands,**kwargs) = add_instruction(Instructions::VRANGESD,*operands,**kwargs)
        def vrangess(*operands,**kwargs) = add_instruction(Instructions::VRANGESS,*operands,**kwargs)
        def vrcp14pd(*operands,**kwargs) = add_instruction(Instructions::VRCP14PD,*operands,**kwargs)
        def vrcp14ps(*operands,**kwargs) = add_instruction(Instructions::VRCP14PS,*operands,**kwargs)
        def vrcp14sd(*operands,**kwargs) = add_instruction(Instructions::VRCP14SD,*operands,**kwargs)
        def vrcp14ss(*operands,**kwargs) = add_instruction(Instructions::VRCP14SS,*operands,**kwargs)
        def vrcp28pd(*operands,**kwargs) = add_instruction(Instructions::VRCP28PD,*operands,**kwargs)
        def vrcp28ps(*operands,**kwargs) = add_instruction(Instructions::VRCP28PS,*operands,**kwargs)
        def vrcp28sd(*operands,**kwargs) = add_instruction(Instructions::VRCP28SD,*operands,**kwargs)
        def vrcp28ss(*operands,**kwargs) = add_instruction(Instructions::VRCP28SS,*operands,**kwargs)
        def vrcpph(*operands,**kwargs) = add_instruction(Instructions::VRCPPH,*operands,**kwargs)
        def vrcpps(*operands,**kwargs) = add_instruction(Instructions::VRCPPS,*operands,**kwargs)
        def vrcpsh(*operands,**kwargs) = add_instruction(Instructions::VRCPSH,*operands,**kwargs)
        def vrcpss(*operands,**kwargs) = add_instruction(Instructions::VRCPSS,*operands,**kwargs)
        def vreducepd(*operands,**kwargs) = add_instruction(Instructions::VREDUCEPD,*operands,**kwargs)
        def vreduceph(*operands,**kwargs) = add_instruction(Instructions::VREDUCEPH,*operands,**kwargs)
        def vreduceps(*operands,**kwargs) = add_instruction(Instructions::VREDUCEPS,*operands,**kwargs)
        def vreducesd(*operands,**kwargs) = add_instruction(Instructions::VREDUCESD,*operands,**kwargs)
        def vreducesh(*operands,**kwargs) = add_instruction(Instructions::VREDUCESH,*operands,**kwargs)
        def vreducess(*operands,**kwargs) = add_instruction(Instructions::VREDUCESS,*operands,**kwargs)
        def vrndscalepd(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPD,*operands,**kwargs)
        def vrndscaleph(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPH,*operands,**kwargs)
        def vrndscaleps(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPS,*operands,**kwargs)
        def vrndscalesd(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESD,*operands,**kwargs)
        def vrndscalesh(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESH,*operands,**kwargs)
        def vrndscaless(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESS,*operands,**kwargs)
        def vroundpd(*operands,**kwargs) = add_instruction(Instructions::VROUNDPD,*operands,**kwargs)
        def vroundps(*operands,**kwargs) = add_instruction(Instructions::VROUNDPS,*operands,**kwargs)
        def vroundsd(*operands,**kwargs) = add_instruction(Instructions::VROUNDSD,*operands,**kwargs)
        def vroundss(*operands,**kwargs) = add_instruction(Instructions::VROUNDSS,*operands,**kwargs)
        def vrsqrt14pd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14PD,*operands,**kwargs)
        def vrsqrt14ps(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14PS,*operands,**kwargs)
        def vrsqrt14sd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14SD,*operands,**kwargs)
        def vrsqrt14ss(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14SS,*operands,**kwargs)
        def vrsqrt28pd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28PD,*operands,**kwargs)
        def vrsqrt28ps(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28PS,*operands,**kwargs)
        def vrsqrt28sd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28SD,*operands,**kwargs)
        def vrsqrt28ss(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28SS,*operands,**kwargs)
        def vrsqrtph(*operands,**kwargs) = add_instruction(Instructions::VRSQRTPH,*operands,**kwargs)
        def vrsqrtps(*operands,**kwargs) = add_instruction(Instructions::VRSQRTPS,*operands,**kwargs)
        def vrsqrtsh(*operands,**kwargs) = add_instruction(Instructions::VRSQRTSH,*operands,**kwargs)
        def vrsqrtss(*operands,**kwargs) = add_instruction(Instructions::VRSQRTSS,*operands,**kwargs)
        def vscalefpd(*operands,**kwargs) = add_instruction(Instructions::VSCALEFPD,*operands,**kwargs)
        def vscalefph(*operands,**kwargs) = add_instruction(Instructions::VSCALEFPH,*operands,**kwargs)
        def vscalefps(*operands,**kwargs) = add_instruction(Instructions::VSCALEFPS,*operands,**kwargs)
        def vscalefsd(*operands,**kwargs) = add_instruction(Instructions::VSCALEFSD,*operands,**kwargs)
        def vscalefsh(*operands,**kwargs) = add_instruction(Instructions::VSCALEFSH,*operands,**kwargs)
        def vscalefss(*operands,**kwargs) = add_instruction(Instructions::VSCALEFSS,*operands,**kwargs)
        def vscatterdpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERDPD,*operands,**kwargs)
        def vscatterdps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERDPS,*operands,**kwargs)
        def vscatterpf0dpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0DPD,*operands,**kwargs)
        def vscatterpf0dps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0DPS,*operands,**kwargs)
        def vscatterpf0qpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0QPD,*operands,**kwargs)
        def vscatterpf0qps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0QPS,*operands,**kwargs)
        def vscatterpf1dpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1DPD,*operands,**kwargs)
        def vscatterpf1dps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1DPS,*operands,**kwargs)
        def vscatterpf1qpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1QPD,*operands,**kwargs)
        def vscatterpf1qps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1QPS,*operands,**kwargs)
        def vscatterqpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERQPD,*operands,**kwargs)
        def vscatterqps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERQPS,*operands,**kwargs)
        def vsha512msg1(*operands,**kwargs) = add_instruction(Instructions::VSHA512MSG1,*operands,**kwargs)
        def vsha512msg2(*operands,**kwargs) = add_instruction(Instructions::VSHA512MSG2,*operands,**kwargs)
        def vsha512rnds2(*operands,**kwargs) = add_instruction(Instructions::VSHA512RNDS2,*operands,**kwargs)
        def vshuff32x4(*operands,**kwargs) = add_instruction(Instructions::VSHUFF32X4,*operands,**kwargs)
        def vshuff64x2(*operands,**kwargs) = add_instruction(Instructions::VSHUFF64X2,*operands,**kwargs)
        def vshufi32x4(*operands,**kwargs) = add_instruction(Instructions::VSHUFI32X4,*operands,**kwargs)
        def vshufi64x2(*operands,**kwargs) = add_instruction(Instructions::VSHUFI64X2,*operands,**kwargs)
        def vshufpd(*operands,**kwargs) = add_instruction(Instructions::VSHUFPD,*operands,**kwargs)
        def vshufps(*operands,**kwargs) = add_instruction(Instructions::VSHUFPS,*operands,**kwargs)
        def vsm3msg1(*operands,**kwargs) = add_instruction(Instructions::VSM3MSG1,*operands,**kwargs)
        def vsm3msg2(*operands,**kwargs) = add_instruction(Instructions::VSM3MSG2,*operands,**kwargs)
        def vsm3rnds2(*operands,**kwargs) = add_instruction(Instructions::VSM3RNDS2,*operands,**kwargs)
        def vsm4key4(*operands,**kwargs) = add_instruction(Instructions::VSM4KEY4,*operands,**kwargs)
        def vsm4rnds4(*operands,**kwargs) = add_instruction(Instructions::VSM4RNDS4,*operands,**kwargs)
        def vsqrtpd(*operands,**kwargs) = add_instruction(Instructions::VSQRTPD,*operands,**kwargs)
        def vsqrtph(*operands,**kwargs) = add_instruction(Instructions::VSQRTPH,*operands,**kwargs)
        def vsqrtps(*operands,**kwargs) = add_instruction(Instructions::VSQRTPS,*operands,**kwargs)
        def vsqrtsd(*operands,**kwargs) = add_instruction(Instructions::VSQRTSD,*operands,**kwargs)
        def vsqrtsh(*operands,**kwargs) = add_instruction(Instructions::VSQRTSH,*operands,**kwargs)
        def vsqrtss(*operands,**kwargs) = add_instruction(Instructions::VSQRTSS,*operands,**kwargs)
        def vstmxcsr(*operands,**kwargs) = add_instruction(Instructions::VSTMXCSR,*operands,**kwargs)
        def vsubpd(*operands,**kwargs) = add_instruction(Instructions::VSUBPD,*operands,**kwargs)
        def vsubph(*operands,**kwargs) = add_instruction(Instructions::VSUBPH,*operands,**kwargs)
        def vsubps(*operands,**kwargs) = add_instruction(Instructions::VSUBPS,*operands,**kwargs)
        def vsubsd(*operands,**kwargs) = add_instruction(Instructions::VSUBSD,*operands,**kwargs)
        def vsubsh(*operands,**kwargs) = add_instruction(Instructions::VSUBSH,*operands,**kwargs)
        def vsubss(*operands,**kwargs) = add_instruction(Instructions::VSUBSS,*operands,**kwargs)
        def vtestpd(*operands,**kwargs) = add_instruction(Instructions::VTESTPD,*operands,**kwargs)
        def vtestps(*operands,**kwargs) = add_instruction(Instructions::VTESTPS,*operands,**kwargs)
        def vucomisd(*operands,**kwargs) = add_instruction(Instructions::VUCOMISD,*operands,**kwargs)
        def vucomish(*operands,**kwargs) = add_instruction(Instructions::VUCOMISH,*operands,**kwargs)
        def vucomiss(*operands,**kwargs) = add_instruction(Instructions::VUCOMISS,*operands,**kwargs)
        def vunpckhpd(*operands,**kwargs) = add_instruction(Instructions::VUNPCKHPD,*operands,**kwargs)
        def vunpckhps(*operands,**kwargs) = add_instruction(Instructions::VUNPCKHPS,*operands,**kwargs)
        def vunpcklpd(*operands,**kwargs) = add_instruction(Instructions::VUNPCKLPD,*operands,**kwargs)
        def vunpcklps(*operands,**kwargs) = add_instruction(Instructions::VUNPCKLPS,*operands,**kwargs)
        def vxorpd(*operands,**kwargs) = add_instruction(Instructions::VXORPD,*operands,**kwargs)
        def vxorps(*operands,**kwargs) = add_instruction(Instructions::VXORPS,*operands,**kwargs)
        def vzeroall(*operands,**kwargs) = add_instruction(Instructions::VZEROALL,*operands,**kwargs)
        def vzeroupper(*operands,**kwargs) = add_instruction(Instructions::VZEROUPPER,*operands,**kwargs)
        def wrfsbase(*operands,**kwargs) = add_instruction(Instructions::WRFSBASE,*operands,**kwargs)
        def wrgsbase(*operands,**kwargs) = add_instruction(Instructions::WRGSBASE,*operands,**kwargs)
        def xadd(*operands,**kwargs) = add_instruction(Instructions::XADD,*operands,**kwargs)
        def xchg(*operands,**kwargs) = add_instruction(Instructions::XCHG,*operands,**kwargs)
        def xgetbv(*operands,**kwargs) = add_instruction(Instructions::XGETBV,*operands,**kwargs)
        def xlatb(*operands,**kwargs) = add_instruction(Instructions::XLATB,*operands,**kwargs)
        def xor(*operands,**kwargs) = add_instruction(Instructions::XOR,*operands,**kwargs)
        def xorpd(*operands,**kwargs) = add_instruction(Instructions::XORPD,*operands,**kwargs)
        def xorps(*operands,**kwargs) = add_instruction(Instructions::XORPS,*operands,**kwargs)
      end
    end
  end
end
