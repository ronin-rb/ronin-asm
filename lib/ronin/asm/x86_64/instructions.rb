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

        # Atomically ADD
        # @return [Ronin::ASM::X86_64::Instructions::AADD]
        # @example
        #   aadd [rax], ebx
        #   aadd [rax], rbx
        def aadd(*operands,**kwargs) = add_instruction(Instructions::AADD,*operands,**kwargs)
        # Atomically AND
        # @return [Ronin::ASM::X86_64::Instructions::AAND]
        # @example
        #   aand [rax], ebx
        #   aand [rax], rbx
        def aand(*operands,**kwargs) = add_instruction(Instructions::AAND,*operands,**kwargs)
        # Add with Carry
        # @return [Ronin::ASM::X86_64::Instructions::ADC]
        # @example
        #   adc al, 0x02
        #   adc al, bl
        #   adc al, [rbx]
        #   adc ax, 0x0002
        #   adc ax, 0x02
        #   adc ax, bx
        #   adc ax, [rbx]
        #   adc eax, 0x00000002
        #   adc eax, 0x02
        #   adc eax, ebx
        #   adc eax, [rbx]
        #   adc rax, 0x00000002
        #   adc rax, 0x02
        #   adc rax, rbx
        #   adc rax, [rbx]
        #   adc [rax], 0x02
        #   adc [rax], bl
        #   adc [rax], 0x0002
        #   adc [rax], bx
        #   adc [rax], 0x00000002
        #   adc [rax], ebx
        #   adc [rax], rbx
        def adc(*operands,**kwargs) = add_instruction(Instructions::ADC,*operands,**kwargs)
        # Unsigned Integer Addition of Two Operands with Carry Flag
        # @return [Ronin::ASM::X86_64::Instructions::ADCX]
        # @example
        #   adcx eax, ebx
        #   adcx eax, [rbx]
        #   adcx rax, rbx
        #   adcx rax, [rbx]
        def adcx(*operands,**kwargs) = add_instruction(Instructions::ADCX,*operands,**kwargs)
        # Add
        # @return [Ronin::ASM::X86_64::Instructions::ADD]
        # @example
        #   add al, 0x02
        #   add al, bl
        #   add al, [rbx]
        #   add ax, 0x0002
        #   add ax, 0x02
        #   add ax, bx
        #   add ax, [rbx]
        #   add eax, 0x00000002
        #   add eax, 0x02
        #   add eax, ebx
        #   add eax, [rbx]
        #   add rax, 0x00000002
        #   add rax, 0x02
        #   add rax, rbx
        #   add rax, [rbx]
        #   add [rax], 0x02
        #   add [rax], bl
        #   add [rax], 0x0002
        #   add [rax], bx
        #   add [rax], 0x00000002
        #   add [rax], ebx
        #   add [rax], rbx
        def add(*operands,**kwargs) = add_instruction(Instructions::ADD,*operands,**kwargs)
        # Add Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ADDPD]
        # @example
        #   addpd xmm0, xmm1
        #   addpd xmm0, [rbx]
        def addpd(*operands,**kwargs) = add_instruction(Instructions::ADDPD,*operands,**kwargs)
        # Add Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ADDPS]
        # @example
        #   addps xmm0, xmm1
        #   addps xmm0, [rbx]
        def addps(*operands,**kwargs) = add_instruction(Instructions::ADDPS,*operands,**kwargs)
        # Add Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ADDSD]
        # @example
        #   addsd xmm0, xmm1
        #   addsd xmm0, [rbx]
        def addsd(*operands,**kwargs) = add_instruction(Instructions::ADDSD,*operands,**kwargs)
        # Add Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ADDSS]
        # @example
        #   addss xmm0, xmm1
        #   addss xmm0, [rbx]
        def addss(*operands,**kwargs) = add_instruction(Instructions::ADDSS,*operands,**kwargs)
        # Packed Double-FP Add/Subtract
        # @return [Ronin::ASM::X86_64::Instructions::ADDSUBPD]
        # @example
        #   addsubpd xmm0, xmm1
        #   addsubpd xmm0, [rbx]
        def addsubpd(*operands,**kwargs) = add_instruction(Instructions::ADDSUBPD,*operands,**kwargs)
        # Packed Single-FP Add/Subtract
        # @return [Ronin::ASM::X86_64::Instructions::ADDSUBPS]
        # @example
        #   addsubps xmm0, xmm1
        #   addsubps xmm0, [rbx]
        def addsubps(*operands,**kwargs) = add_instruction(Instructions::ADDSUBPS,*operands,**kwargs)
        # Unsigned Integer Addition of Two Operands with Overflow Flag
        # @return [Ronin::ASM::X86_64::Instructions::ADOX]
        # @example
        #   adox eax, ebx
        #   adox eax, [rbx]
        #   adox rax, rbx
        #   adox rax, [rbx]
        def adox(*operands,**kwargs) = add_instruction(Instructions::ADOX,*operands,**kwargs)
        # Perform One Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::AESDEC]
        # @example
        #   aesdec xmm0, xmm1
        #   aesdec xmm0, [rbx]
        def aesdec(*operands,**kwargs) = add_instruction(Instructions::AESDEC,*operands,**kwargs)
        # Perform Last Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::AESDECLAST]
        # @example
        #   aesdeclast xmm0, xmm1
        #   aesdeclast xmm0, [rbx]
        def aesdeclast(*operands,**kwargs) = add_instruction(Instructions::AESDECLAST,*operands,**kwargs)
        # Perform One Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::AESENC]
        # @example
        #   aesenc xmm0, xmm1
        #   aesenc xmm0, [rbx]
        def aesenc(*operands,**kwargs) = add_instruction(Instructions::AESENC,*operands,**kwargs)
        # Perform Last Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::AESENCLAST]
        # @example
        #   aesenclast xmm0, xmm1
        #   aesenclast xmm0, [rbx]
        def aesenclast(*operands,**kwargs) = add_instruction(Instructions::AESENCLAST,*operands,**kwargs)
        # Perform the AES InvMixColumn Transformation
        # @return [Ronin::ASM::X86_64::Instructions::AESIMC]
        # @example
        #   aesimc xmm0, xmm1
        #   aesimc xmm0, [rbx]
        def aesimc(*operands,**kwargs) = add_instruction(Instructions::AESIMC,*operands,**kwargs)
        # AES Round Key Generation Assist
        # @return [Ronin::ASM::X86_64::Instructions::AESKEYGENASSIST]
        # @example
        #   aeskeygenassist xmm0, xmm1, 0x03
        #   aeskeygenassist xmm0, [rbx], 0x03
        def aeskeygenassist(*operands,**kwargs) = add_instruction(Instructions::AESKEYGENASSIST,*operands,**kwargs)
        # Logical AND
        # @return [Ronin::ASM::X86_64::Instructions::AND]
        # @example
        #   and al, 0x02
        #   and al, bl
        #   and al, [rbx]
        #   and ax, 0x0002
        #   and ax, 0x02
        #   and ax, bx
        #   and ax, [rbx]
        #   and eax, 0x00000002
        #   and eax, 0x02
        #   and eax, ebx
        #   and eax, [rbx]
        #   and rax, 0x00000002
        #   and rax, 0x02
        #   and rax, rbx
        #   and rax, [rbx]
        #   and [rax], 0x02
        #   and [rax], bl
        #   and [rax], 0x0002
        #   and [rax], bx
        #   and [rax], 0x00000002
        #   and [rax], ebx
        #   and [rax], rbx
        def and(*operands,**kwargs) = add_instruction(Instructions::AND,*operands,**kwargs)
        # Logical AND NOT
        # @return [Ronin::ASM::X86_64::Instructions::ANDN]
        # @example
        #   andn eax, ebx, ecx
        #   andn eax, ebx, [rcx]
        #   andn rax, rbx, rcx
        #   andn rax, rbx, [rcx]
        def andn(*operands,**kwargs) = add_instruction(Instructions::ANDN,*operands,**kwargs)
        # Bitwise Logical AND NOT of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ANDNPD]
        # @example
        #   andnpd xmm0, xmm1
        #   andnpd xmm0, [rbx]
        def andnpd(*operands,**kwargs) = add_instruction(Instructions::ANDNPD,*operands,**kwargs)
        # Bitwise Logical AND NOT of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ANDNPS]
        # @example
        #   andnps xmm0, xmm1
        #   andnps xmm0, [rbx]
        def andnps(*operands,**kwargs) = add_instruction(Instructions::ANDNPS,*operands,**kwargs)
        # Bitwise Logical AND of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ANDPD]
        # @example
        #   andpd xmm0, xmm1
        #   andpd xmm0, [rbx]
        def andpd(*operands,**kwargs) = add_instruction(Instructions::ANDPD,*operands,**kwargs)
        # Bitwise Logical AND of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ANDPS]
        # @example
        #   andps xmm0, xmm1
        #   andps xmm0, [rbx]
        def andps(*operands,**kwargs) = add_instruction(Instructions::ANDPS,*operands,**kwargs)
        # Atomically OR
        # @return [Ronin::ASM::X86_64::Instructions::AOR]
        # @example
        #   aor [rax], ebx
        #   aor [rax], rbx
        def aor(*operands,**kwargs) = add_instruction(Instructions::AOR,*operands,**kwargs)
        # Atomically XOR
        # @return [Ronin::ASM::X86_64::Instructions::AXOR]
        # @example
        #   axor [rax], ebx
        #   axor [rax], rbx
        def axor(*operands,**kwargs) = add_instruction(Instructions::AXOR,*operands,**kwargs)
        # Bit Field Extract
        # @return [Ronin::ASM::X86_64::Instructions::BEXTR]
        # @example
        #   bextr eax, ebx, 0x00000003
        #   bextr eax, ebx, ecx
        #   bextr eax, [rbx], 0x00000003
        #   bextr eax, [rbx], ecx
        #   bextr rax, rbx, 0x00000003
        #   bextr rax, rbx, rcx
        #   bextr rax, [rbx], 0x00000003
        #   bextr rax, [rbx], rcx
        def bextr(*operands,**kwargs) = add_instruction(Instructions::BEXTR,*operands,**kwargs)
        # Fill From Lowest Clear Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLCFILL]
        # @example
        #   blcfill eax, ebx
        #   blcfill eax, [rbx]
        #   blcfill rax, rbx
        #   blcfill rax, [rbx]
        def blcfill(*operands,**kwargs) = add_instruction(Instructions::BLCFILL,*operands,**kwargs)
        # Isolate Lowest Clear Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLCI]
        # @example
        #   blci eax, ebx
        #   blci eax, [rbx]
        #   blci rax, rbx
        #   blci rax, [rbx]
        def blci(*operands,**kwargs) = add_instruction(Instructions::BLCI,*operands,**kwargs)
        # Isolate Lowest Set Bit and Complement
        # @return [Ronin::ASM::X86_64::Instructions::BLCIC]
        # @example
        #   blcic eax, ebx
        #   blcic eax, [rbx]
        #   blcic rax, rbx
        #   blcic rax, [rbx]
        def blcic(*operands,**kwargs) = add_instruction(Instructions::BLCIC,*operands,**kwargs)
        # Mask From Lowest Clear Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLCMSK]
        # @example
        #   blcmsk eax, ebx
        #   blcmsk eax, [rbx]
        #   blcmsk rax, rbx
        #   blcmsk rax, [rbx]
        def blcmsk(*operands,**kwargs) = add_instruction(Instructions::BLCMSK,*operands,**kwargs)
        # Set Lowest Clear Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLCS]
        # @example
        #   blcs eax, ebx
        #   blcs eax, [rbx]
        #   blcs rax, rbx
        #   blcs rax, [rbx]
        def blcs(*operands,**kwargs) = add_instruction(Instructions::BLCS,*operands,**kwargs)
        # Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::BLENDPD]
        # @example
        #   blendpd xmm0, xmm1, 0x03
        #   blendpd xmm0, [rbx], 0x03
        def blendpd(*operands,**kwargs) = add_instruction(Instructions::BLENDPD,*operands,**kwargs)
        #  Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::BLENDPS]
        # @example
        #   blendps xmm0, xmm1, 0x03
        #   blendps xmm0, [rbx], 0x03
        def blendps(*operands,**kwargs) = add_instruction(Instructions::BLENDPS,*operands,**kwargs)
        #  Variable Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::BLENDVPD]
        # @example
        #   blendvpd xmm0, xmm1, xmm0
        #   blendvpd xmm0, [rbx], xmm0
        def blendvpd(*operands,**kwargs) = add_instruction(Instructions::BLENDVPD,*operands,**kwargs)
        #  Variable Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::BLENDVPS]
        # @example
        #   blendvps xmm0, xmm1, xmm0
        #   blendvps xmm0, [rbx], xmm0
        def blendvps(*operands,**kwargs) = add_instruction(Instructions::BLENDVPS,*operands,**kwargs)
        # Fill From Lowest Set Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLSFILL]
        # @example
        #   blsfill eax, ebx
        #   blsfill eax, [rbx]
        #   blsfill rax, rbx
        #   blsfill rax, [rbx]
        def blsfill(*operands,**kwargs) = add_instruction(Instructions::BLSFILL,*operands,**kwargs)
        # Isolate Lowest Set Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLSI]
        # @example
        #   blsi eax, ebx
        #   blsi eax, [rbx]
        #   blsi rax, rbx
        #   blsi rax, [rbx]
        def blsi(*operands,**kwargs) = add_instruction(Instructions::BLSI,*operands,**kwargs)
        # Isolate Lowest Set Bit and Complement
        # @return [Ronin::ASM::X86_64::Instructions::BLSIC]
        # @example
        #   blsic eax, ebx
        #   blsic eax, [rbx]
        #   blsic rax, rbx
        #   blsic rax, [rbx]
        def blsic(*operands,**kwargs) = add_instruction(Instructions::BLSIC,*operands,**kwargs)
        # Mask From Lowest Set Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLSMSK]
        # @example
        #   blsmsk eax, ebx
        #   blsmsk eax, [rbx]
        #   blsmsk rax, rbx
        #   blsmsk rax, [rbx]
        def blsmsk(*operands,**kwargs) = add_instruction(Instructions::BLSMSK,*operands,**kwargs)
        # Reset Lowest Set Bit
        # @return [Ronin::ASM::X86_64::Instructions::BLSR]
        # @example
        #   blsr eax, ebx
        #   blsr eax, [rbx]
        #   blsr rax, rbx
        #   blsr rax, [rbx]
        def blsr(*operands,**kwargs) = add_instruction(Instructions::BLSR,*operands,**kwargs)
        # Bit Scan Forward
        # @return [Ronin::ASM::X86_64::Instructions::BSF]
        # @example
        #   bsf ax, bx
        #   bsf ax, [rbx]
        #   bsf eax, ebx
        #   bsf eax, [rbx]
        #   bsf rax, rbx
        #   bsf rax, [rbx]
        def bsf(*operands,**kwargs) = add_instruction(Instructions::BSF,*operands,**kwargs)
        # Bit Scan Reverse
        # @return [Ronin::ASM::X86_64::Instructions::BSR]
        # @example
        #   bsr ax, bx
        #   bsr ax, [rbx]
        #   bsr eax, ebx
        #   bsr eax, [rbx]
        #   bsr rax, rbx
        #   bsr rax, [rbx]
        def bsr(*operands,**kwargs) = add_instruction(Instructions::BSR,*operands,**kwargs)
        # Byte Swap
        # @return [Ronin::ASM::X86_64::Instructions::BSWAP]
        # @example
        #   bswap eax
        #   bswap rax
        def bswap(*operands,**kwargs) = add_instruction(Instructions::BSWAP,*operands,**kwargs)
        # Bit Test
        # @return [Ronin::ASM::X86_64::Instructions::BT]
        # @example
        #   bt ax, 0x02
        #   bt ax, bx
        #   bt eax, 0x02
        #   bt eax, ebx
        #   bt rax, 0x02
        #   bt rax, rbx
        #   bt [rax], 0x02
        #   bt [rax], bx
        #   bt [rax], ebx
        #   bt [rax], rbx
        def bt(*operands,**kwargs) = add_instruction(Instructions::BT,*operands,**kwargs)
        # Bit Test and Complement
        # @return [Ronin::ASM::X86_64::Instructions::BTC]
        # @example
        #   btc ax, 0x02
        #   btc ax, bx
        #   btc eax, 0x02
        #   btc eax, ebx
        #   btc rax, 0x02
        #   btc rax, rbx
        #   btc [rax], 0x02
        #   btc [rax], bx
        #   btc [rax], ebx
        #   btc [rax], rbx
        def btc(*operands,**kwargs) = add_instruction(Instructions::BTC,*operands,**kwargs)
        # Bit Test and Reset
        # @return [Ronin::ASM::X86_64::Instructions::BTR]
        # @example
        #   btr ax, 0x02
        #   btr ax, bx
        #   btr eax, 0x02
        #   btr eax, ebx
        #   btr rax, 0x02
        #   btr rax, rbx
        #   btr [rax], 0x02
        #   btr [rax], bx
        #   btr [rax], ebx
        #   btr [rax], rbx
        def btr(*operands,**kwargs) = add_instruction(Instructions::BTR,*operands,**kwargs)
        # Bit Test and Set
        # @return [Ronin::ASM::X86_64::Instructions::BTS]
        # @example
        #   bts ax, 0x02
        #   bts ax, bx
        #   bts eax, 0x02
        #   bts eax, ebx
        #   bts rax, 0x02
        #   bts rax, rbx
        #   bts [rax], 0x02
        #   bts [rax], bx
        #   bts [rax], ebx
        #   bts [rax], rbx
        def bts(*operands,**kwargs) = add_instruction(Instructions::BTS,*operands,**kwargs)
        # Zero High Bits Starting with Specified Bit Position
        # @return [Ronin::ASM::X86_64::Instructions::BZHI]
        # @example
        #   bzhi eax, ebx, ecx
        #   bzhi eax, [rbx], ecx
        #   bzhi rax, rbx, rcx
        #   bzhi rax, [rbx], rcx
        def bzhi(*operands,**kwargs) = add_instruction(Instructions::BZHI,*operands,**kwargs)
        # Call Procedure
        # @return [Ronin::ASM::X86_64::Instructions::CALL]
        # @example
        #   call rel32(0x10000)
        #   call rax
        #   call [rax]
        def call(*operands,**kwargs) = add_instruction(Instructions::CALL,*operands,**kwargs)
        # Convert Byte to Word
        # @return [Ronin::ASM::X86_64::Instructions::CBW]
        def cbw(*operands,**kwargs) = add_instruction(Instructions::CBW,*operands,**kwargs)
        # Convert Doubleword to Quadword
        # @return [Ronin::ASM::X86_64::Instructions::CDQ]
        def cdq(*operands,**kwargs) = add_instruction(Instructions::CDQ,*operands,**kwargs)
        # Convert Doubleword to Quadword
        # @return [Ronin::ASM::X86_64::Instructions::CDQE]
        def cdqe(*operands,**kwargs) = add_instruction(Instructions::CDQE,*operands,**kwargs)
        # Clear Carry Flag
        # @return [Ronin::ASM::X86_64::Instructions::CLC]
        def clc(*operands,**kwargs) = add_instruction(Instructions::CLC,*operands,**kwargs)
        # Clear Direction Flag
        # @return [Ronin::ASM::X86_64::Instructions::CLD]
        def cld(*operands,**kwargs) = add_instruction(Instructions::CLD,*operands,**kwargs)
        # Cache Line Demote
        # @return [Ronin::ASM::X86_64::Instructions::CLDEMOTE]
        # @example
        #   cldemote [rax]
        def cldemote(*operands,**kwargs) = add_instruction(Instructions::CLDEMOTE,*operands,**kwargs)
        # Flush Cache Line
        # @return [Ronin::ASM::X86_64::Instructions::CLFLUSH]
        # @example
        #   clflush [rax]
        def clflush(*operands,**kwargs) = add_instruction(Instructions::CLFLUSH,*operands,**kwargs)
        # Flush Cache Line Optimized
        # @return [Ronin::ASM::X86_64::Instructions::CLFLUSHOPT]
        # @example
        #   clflushopt [rax]
        def clflushopt(*operands,**kwargs) = add_instruction(Instructions::CLFLUSHOPT,*operands,**kwargs)
        # Cache Line Write Back
        # @return [Ronin::ASM::X86_64::Instructions::CLWB]
        # @example
        #   clwb [rax]
        def clwb(*operands,**kwargs) = add_instruction(Instructions::CLWB,*operands,**kwargs)
        # Zero-out 64-bit Cache Line
        # @return [Ronin::ASM::X86_64::Instructions::CLZERO]
        def clzero(*operands,**kwargs) = add_instruction(Instructions::CLZERO,*operands,**kwargs)
        # Complement Carry Flag
        # @return [Ronin::ASM::X86_64::Instructions::CMC]
        def cmc(*operands,**kwargs) = add_instruction(Instructions::CMC,*operands,**kwargs)
        # Move if above (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVA]
        # @example
        #   cmova ax, bx
        #   cmova ax, [rbx]
        #   cmova eax, ebx
        #   cmova eax, [rbx]
        #   cmova rax, rbx
        #   cmova rax, [rbx]
        def cmova(*operands,**kwargs) = add_instruction(Instructions::CMOVA,*operands,**kwargs)
        # Move if above or equal (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVAE]
        # @example
        #   cmovae ax, bx
        #   cmovae ax, [rbx]
        #   cmovae eax, ebx
        #   cmovae eax, [rbx]
        #   cmovae rax, rbx
        #   cmovae rax, [rbx]
        def cmovae(*operands,**kwargs) = add_instruction(Instructions::CMOVAE,*operands,**kwargs)
        # Move if below (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVB]
        # @example
        #   cmovb ax, bx
        #   cmovb ax, [rbx]
        #   cmovb eax, ebx
        #   cmovb eax, [rbx]
        #   cmovb rax, rbx
        #   cmovb rax, [rbx]
        def cmovb(*operands,**kwargs) = add_instruction(Instructions::CMOVB,*operands,**kwargs)
        # Move if below or equal (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVBE]
        # @example
        #   cmovbe ax, bx
        #   cmovbe ax, [rbx]
        #   cmovbe eax, ebx
        #   cmovbe eax, [rbx]
        #   cmovbe rax, rbx
        #   cmovbe rax, [rbx]
        def cmovbe(*operands,**kwargs) = add_instruction(Instructions::CMOVBE,*operands,**kwargs)
        # Move if carry (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVC]
        # @example
        #   cmovc ax, bx
        #   cmovc ax, [rbx]
        #   cmovc eax, ebx
        #   cmovc eax, [rbx]
        #   cmovc rax, rbx
        #   cmovc rax, [rbx]
        def cmovc(*operands,**kwargs) = add_instruction(Instructions::CMOVC,*operands,**kwargs)
        # Move if equal (ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVE]
        # @example
        #   cmove ax, bx
        #   cmove ax, [rbx]
        #   cmove eax, ebx
        #   cmove eax, [rbx]
        #   cmove rax, rbx
        #   cmove rax, [rbx]
        def cmove(*operands,**kwargs) = add_instruction(Instructions::CMOVE,*operands,**kwargs)
        # Move if greater (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVG]
        # @example
        #   cmovg ax, bx
        #   cmovg ax, [rbx]
        #   cmovg eax, ebx
        #   cmovg eax, [rbx]
        #   cmovg rax, rbx
        #   cmovg rax, [rbx]
        def cmovg(*operands,**kwargs) = add_instruction(Instructions::CMOVG,*operands,**kwargs)
        # Move if greater or equal (SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVGE]
        # @example
        #   cmovge ax, bx
        #   cmovge ax, [rbx]
        #   cmovge eax, ebx
        #   cmovge eax, [rbx]
        #   cmovge rax, rbx
        #   cmovge rax, [rbx]
        def cmovge(*operands,**kwargs) = add_instruction(Instructions::CMOVGE,*operands,**kwargs)
        # Move if less (SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVL]
        # @example
        #   cmovl ax, bx
        #   cmovl ax, [rbx]
        #   cmovl eax, ebx
        #   cmovl eax, [rbx]
        #   cmovl rax, rbx
        #   cmovl rax, [rbx]
        def cmovl(*operands,**kwargs) = add_instruction(Instructions::CMOVL,*operands,**kwargs)
        # Move if less or equal (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVLE]
        # @example
        #   cmovle ax, bx
        #   cmovle ax, [rbx]
        #   cmovle eax, ebx
        #   cmovle eax, [rbx]
        #   cmovle rax, rbx
        #   cmovle rax, [rbx]
        def cmovle(*operands,**kwargs) = add_instruction(Instructions::CMOVLE,*operands,**kwargs)
        # Move if not above (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNA]
        # @example
        #   cmovna ax, bx
        #   cmovna ax, [rbx]
        #   cmovna eax, ebx
        #   cmovna eax, [rbx]
        #   cmovna rax, rbx
        #   cmovna rax, [rbx]
        def cmovna(*operands,**kwargs) = add_instruction(Instructions::CMOVNA,*operands,**kwargs)
        # Move if not above or equal (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNAE]
        # @example
        #   cmovnae ax, bx
        #   cmovnae ax, [rbx]
        #   cmovnae eax, ebx
        #   cmovnae eax, [rbx]
        #   cmovnae rax, rbx
        #   cmovnae rax, [rbx]
        def cmovnae(*operands,**kwargs) = add_instruction(Instructions::CMOVNAE,*operands,**kwargs)
        # Move if not below (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNB]
        # @example
        #   cmovnb ax, bx
        #   cmovnb ax, [rbx]
        #   cmovnb eax, ebx
        #   cmovnb eax, [rbx]
        #   cmovnb rax, rbx
        #   cmovnb rax, [rbx]
        def cmovnb(*operands,**kwargs) = add_instruction(Instructions::CMOVNB,*operands,**kwargs)
        # Move if not below or equal (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNBE]
        # @example
        #   cmovnbe ax, bx
        #   cmovnbe ax, [rbx]
        #   cmovnbe eax, ebx
        #   cmovnbe eax, [rbx]
        #   cmovnbe rax, rbx
        #   cmovnbe rax, [rbx]
        def cmovnbe(*operands,**kwargs) = add_instruction(Instructions::CMOVNBE,*operands,**kwargs)
        # Move if not carry (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNC]
        # @example
        #   cmovnc ax, bx
        #   cmovnc ax, [rbx]
        #   cmovnc eax, ebx
        #   cmovnc eax, [rbx]
        #   cmovnc rax, rbx
        #   cmovnc rax, [rbx]
        def cmovnc(*operands,**kwargs) = add_instruction(Instructions::CMOVNC,*operands,**kwargs)
        # Move if not equal (ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNE]
        # @example
        #   cmovne ax, bx
        #   cmovne ax, [rbx]
        #   cmovne eax, ebx
        #   cmovne eax, [rbx]
        #   cmovne rax, rbx
        #   cmovne rax, [rbx]
        def cmovne(*operands,**kwargs) = add_instruction(Instructions::CMOVNE,*operands,**kwargs)
        # Move if not greater (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNG]
        # @example
        #   cmovng ax, bx
        #   cmovng ax, [rbx]
        #   cmovng eax, ebx
        #   cmovng eax, [rbx]
        #   cmovng rax, rbx
        #   cmovng rax, [rbx]
        def cmovng(*operands,**kwargs) = add_instruction(Instructions::CMOVNG,*operands,**kwargs)
        # Move if not greater or equal (SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNGE]
        # @example
        #   cmovnge ax, bx
        #   cmovnge ax, [rbx]
        #   cmovnge eax, ebx
        #   cmovnge eax, [rbx]
        #   cmovnge rax, rbx
        #   cmovnge rax, [rbx]
        def cmovnge(*operands,**kwargs) = add_instruction(Instructions::CMOVNGE,*operands,**kwargs)
        # Move if not less (SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNL]
        # @example
        #   cmovnl ax, bx
        #   cmovnl ax, [rbx]
        #   cmovnl eax, ebx
        #   cmovnl eax, [rbx]
        #   cmovnl rax, rbx
        #   cmovnl rax, [rbx]
        def cmovnl(*operands,**kwargs) = add_instruction(Instructions::CMOVNL,*operands,**kwargs)
        # Move if not less or equal (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNLE]
        # @example
        #   cmovnle ax, bx
        #   cmovnle ax, [rbx]
        #   cmovnle eax, ebx
        #   cmovnle eax, [rbx]
        #   cmovnle rax, rbx
        #   cmovnle rax, [rbx]
        def cmovnle(*operands,**kwargs) = add_instruction(Instructions::CMOVNLE,*operands,**kwargs)
        # Move if not overflow (OF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNO]
        # @example
        #   cmovno ax, bx
        #   cmovno ax, [rbx]
        #   cmovno eax, ebx
        #   cmovno eax, [rbx]
        #   cmovno rax, rbx
        #   cmovno rax, [rbx]
        def cmovno(*operands,**kwargs) = add_instruction(Instructions::CMOVNO,*operands,**kwargs)
        # Move if not parity (PF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNP]
        # @example
        #   cmovnp ax, bx
        #   cmovnp ax, [rbx]
        #   cmovnp eax, ebx
        #   cmovnp eax, [rbx]
        #   cmovnp rax, rbx
        #   cmovnp rax, [rbx]
        def cmovnp(*operands,**kwargs) = add_instruction(Instructions::CMOVNP,*operands,**kwargs)
        # Move if not sign (SF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNS]
        # @example
        #   cmovns ax, bx
        #   cmovns ax, [rbx]
        #   cmovns eax, ebx
        #   cmovns eax, [rbx]
        #   cmovns rax, rbx
        #   cmovns rax, [rbx]
        def cmovns(*operands,**kwargs) = add_instruction(Instructions::CMOVNS,*operands,**kwargs)
        # Move if not zero (ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVNZ]
        # @example
        #   cmovnz ax, bx
        #   cmovnz ax, [rbx]
        #   cmovnz eax, ebx
        #   cmovnz eax, [rbx]
        #   cmovnz rax, rbx
        #   cmovnz rax, [rbx]
        def cmovnz(*operands,**kwargs) = add_instruction(Instructions::CMOVNZ,*operands,**kwargs)
        # Move if overflow (OF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVO]
        # @example
        #   cmovo ax, bx
        #   cmovo ax, [rbx]
        #   cmovo eax, ebx
        #   cmovo eax, [rbx]
        #   cmovo rax, rbx
        #   cmovo rax, [rbx]
        def cmovo(*operands,**kwargs) = add_instruction(Instructions::CMOVO,*operands,**kwargs)
        # Move if parity (PF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVP]
        # @example
        #   cmovp ax, bx
        #   cmovp ax, [rbx]
        #   cmovp eax, ebx
        #   cmovp eax, [rbx]
        #   cmovp rax, rbx
        #   cmovp rax, [rbx]
        def cmovp(*operands,**kwargs) = add_instruction(Instructions::CMOVP,*operands,**kwargs)
        # Move if parity even (PF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVPE]
        # @example
        #   cmovpe ax, bx
        #   cmovpe ax, [rbx]
        #   cmovpe eax, ebx
        #   cmovpe eax, [rbx]
        #   cmovpe rax, rbx
        #   cmovpe rax, [rbx]
        def cmovpe(*operands,**kwargs) = add_instruction(Instructions::CMOVPE,*operands,**kwargs)
        # Move if parity odd (PF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVPO]
        # @example
        #   cmovpo ax, bx
        #   cmovpo ax, [rbx]
        #   cmovpo eax, ebx
        #   cmovpo eax, [rbx]
        #   cmovpo rax, rbx
        #   cmovpo rax, [rbx]
        def cmovpo(*operands,**kwargs) = add_instruction(Instructions::CMOVPO,*operands,**kwargs)
        # Move if sign (SF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVS]
        # @example
        #   cmovs ax, bx
        #   cmovs ax, [rbx]
        #   cmovs eax, ebx
        #   cmovs eax, [rbx]
        #   cmovs rax, rbx
        #   cmovs rax, [rbx]
        def cmovs(*operands,**kwargs) = add_instruction(Instructions::CMOVS,*operands,**kwargs)
        # Move if zero (ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::CMOVZ]
        # @example
        #   cmovz ax, bx
        #   cmovz ax, [rbx]
        #   cmovz eax, ebx
        #   cmovz eax, [rbx]
        #   cmovz rax, rbx
        #   cmovz rax, [rbx]
        def cmovz(*operands,**kwargs) = add_instruction(Instructions::CMOVZ,*operands,**kwargs)
        # Compare Two Operands
        # @return [Ronin::ASM::X86_64::Instructions::CMP]
        # @example
        #   cmp al, 0x02
        #   cmp al, bl
        #   cmp al, [rbx]
        #   cmp ax, 0x0002
        #   cmp ax, 0x02
        #   cmp ax, bx
        #   cmp ax, [rbx]
        #   cmp eax, 0x00000002
        #   cmp eax, 0x02
        #   cmp eax, ebx
        #   cmp eax, [rbx]
        #   cmp rax, 0x00000002
        #   cmp rax, 0x02
        #   cmp rax, rbx
        #   cmp rax, [rbx]
        #   cmp [rax], 0x02
        #   cmp [rax], bl
        #   cmp [rax], 0x0002
        #   cmp [rax], bx
        #   cmp [rax], 0x00000002
        #   cmp [rax], ebx
        #   cmp [rax], rbx
        def cmp(*operands,**kwargs) = add_instruction(Instructions::CMP,*operands,**kwargs)
        # Compare for Below or Equals and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPBEXADD]
        # @example
        #   cmpbexadd [rax], ebx, ecx
        #   cmpbexadd [rax], rbx, rcx
        def cmpbexadd(*operands,**kwargs) = add_instruction(Instructions::CMPBEXADD,*operands,**kwargs)
        # Compare for Below and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPBXADD]
        # @example
        #   cmpbxadd [rax], ebx, ecx
        #   cmpbxadd [rax], rbx, rcx
        def cmpbxadd(*operands,**kwargs) = add_instruction(Instructions::CMPBXADD,*operands,**kwargs)
        # Compare for Less or Equals and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPLEXADD]
        # @example
        #   cmplexadd [rax], ebx, ecx
        #   cmplexadd [rax], rbx, rcx
        def cmplexadd(*operands,**kwargs) = add_instruction(Instructions::CMPLEXADD,*operands,**kwargs)
        # Compare for Less and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPLXADD]
        # @example
        #   cmplxadd [rax], ebx, ecx
        #   cmplxadd [rax], rbx, rcx
        def cmplxadd(*operands,**kwargs) = add_instruction(Instructions::CMPLXADD,*operands,**kwargs)
        # Compare for Not Below or Equals and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNBEXADD]
        # @example
        #   cmpnbexadd [rax], ebx, ecx
        #   cmpnbexadd [rax], rbx, rcx
        def cmpnbexadd(*operands,**kwargs) = add_instruction(Instructions::CMPNBEXADD,*operands,**kwargs)
        # Compare for Not Below and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNBXADD]
        # @example
        #   cmpnbxadd [rax], ebx, ecx
        #   cmpnbxadd [rax], rbx, rcx
        def cmpnbxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNBXADD,*operands,**kwargs)
        # Compare for Not Less or Equals and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNLEXADD]
        # @example
        #   cmpnlexadd [rax], ebx, ecx
        #   cmpnlexadd [rax], rbx, rcx
        def cmpnlexadd(*operands,**kwargs) = add_instruction(Instructions::CMPNLEXADD,*operands,**kwargs)
        # Compare for Not Less and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNLXADD]
        # @example
        #   cmpnlxadd [rax], ebx, ecx
        #   cmpnlxadd [rax], rbx, rcx
        def cmpnlxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNLXADD,*operands,**kwargs)
        # Compare for Not Overflow and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNOXADD]
        # @example
        #   cmpnoxadd [rax], ebx, ecx
        #   cmpnoxadd [rax], rbx, rcx
        def cmpnoxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNOXADD,*operands,**kwargs)
        # Compare for Not Parity and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNPXADD]
        # @example
        #   cmpnpxadd [rax], ebx, ecx
        #   cmpnpxadd [rax], rbx, rcx
        def cmpnpxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNPXADD,*operands,**kwargs)
        # Compare for Not Sign and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNSXADD]
        # @example
        #   cmpnsxadd [rax], ebx, ecx
        #   cmpnsxadd [rax], rbx, rcx
        def cmpnsxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNSXADD,*operands,**kwargs)
        # Compare for Not Zero and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPNZXADD]
        # @example
        #   cmpnzxadd [rax], ebx, ecx
        #   cmpnzxadd [rax], rbx, rcx
        def cmpnzxadd(*operands,**kwargs) = add_instruction(Instructions::CMPNZXADD,*operands,**kwargs)
        # Compare for Overflow and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPOXADD]
        # @example
        #   cmpoxadd [rax], ebx, ecx
        #   cmpoxadd [rax], rbx, rcx
        def cmpoxadd(*operands,**kwargs) = add_instruction(Instructions::CMPOXADD,*operands,**kwargs)
        # Compare Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::CMPPD]
        # @example
        #   cmppd xmm0, xmm1, 0x03
        #   cmppd xmm0, [rbx], 0x03
        def cmppd(*operands,**kwargs) = add_instruction(Instructions::CMPPD,*operands,**kwargs)
        # Compare Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::CMPPS]
        # @example
        #   cmpps xmm0, xmm1, 0x03
        #   cmpps xmm0, [rbx], 0x03
        def cmpps(*operands,**kwargs) = add_instruction(Instructions::CMPPS,*operands,**kwargs)
        # Compare for Parity and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPPXADD]
        # @example
        #   cmppxadd [rax], ebx, ecx
        #   cmppxadd [rax], rbx, rcx
        def cmppxadd(*operands,**kwargs) = add_instruction(Instructions::CMPPXADD,*operands,**kwargs)
        # Compare Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::CMPSD]
        # @example
        #   cmpsd xmm0, xmm1, 0x03
        #   cmpsd xmm0, [rbx], 0x03
        def cmpsd(*operands,**kwargs) = add_instruction(Instructions::CMPSD,*operands,**kwargs)
        # Compare Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::CMPSS]
        # @example
        #   cmpss xmm0, xmm1, 0x03
        #   cmpss xmm0, [rbx], 0x03
        def cmpss(*operands,**kwargs) = add_instruction(Instructions::CMPSS,*operands,**kwargs)
        # Compare for Sign and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPSXADD]
        # @example
        #   cmpsxadd [rax], ebx, ecx
        #   cmpsxadd [rax], rbx, rcx
        def cmpsxadd(*operands,**kwargs) = add_instruction(Instructions::CMPSXADD,*operands,**kwargs)
        # Compare and Exchange
        # @return [Ronin::ASM::X86_64::Instructions::CMPXCHG]
        # @example
        #   cmpxchg al, bl
        #   cmpxchg ax, bx
        #   cmpxchg eax, ebx
        #   cmpxchg rax, rbx
        #   cmpxchg [rax], bl
        #   cmpxchg [rax], bx
        #   cmpxchg [rax], ebx
        #   cmpxchg [rax], rbx
        def cmpxchg(*operands,**kwargs) = add_instruction(Instructions::CMPXCHG,*operands,**kwargs)
        # Compare and Exchange 16 Bytes
        # @return [Ronin::ASM::X86_64::Instructions::CMPXCHG16B]
        # @example
        #   cmpxchg16b [rax]
        def cmpxchg16b(*operands,**kwargs) = add_instruction(Instructions::CMPXCHG16B,*operands,**kwargs)
        # Compare and Exchange 8 Bytes
        # @return [Ronin::ASM::X86_64::Instructions::CMPXCHG8B]
        # @example
        #   cmpxchg8b [rax]
        def cmpxchg8b(*operands,**kwargs) = add_instruction(Instructions::CMPXCHG8B,*operands,**kwargs)
        # Compare for Zero and Add
        # @return [Ronin::ASM::X86_64::Instructions::CMPZXADD]
        # @example
        #   cmpzxadd [rax], ebx, ecx
        #   cmpzxadd [rax], rbx, rcx
        def cmpzxadd(*operands,**kwargs) = add_instruction(Instructions::CMPZXADD,*operands,**kwargs)
        # Compare Scalar Ordered Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::COMISD]
        # @example
        #   comisd xmm0, xmm1
        #   comisd xmm0, [rbx]
        def comisd(*operands,**kwargs) = add_instruction(Instructions::COMISD,*operands,**kwargs)
        # Compare Scalar Ordered Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::COMISS]
        # @example
        #   comiss xmm0, xmm1
        #   comiss xmm0, [rbx]
        def comiss(*operands,**kwargs) = add_instruction(Instructions::COMISS,*operands,**kwargs)
        # CPU Identification
        # @return [Ronin::ASM::X86_64::Instructions::CPUID]
        def cpuid(*operands,**kwargs) = add_instruction(Instructions::CPUID,*operands,**kwargs)
        # Convert Quadword to Octaword
        # @return [Ronin::ASM::X86_64::Instructions::CQO]
        def cqo(*operands,**kwargs) = add_instruction(Instructions::CQO,*operands,**kwargs)
        # Accumulate CRC32 Value
        # @return [Ronin::ASM::X86_64::Instructions::CRC32]
        # @example
        #   crc32 eax, bl
        #   crc32 eax, bx
        #   crc32 eax, ebx
        #   crc32 eax, [rbx]
        #   crc32 rax, bl
        #   crc32 rax, rbx
        #   crc32 rax, [rbx]
        def crc32(*operands,**kwargs) = add_instruction(Instructions::CRC32,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::CVTDQ2PD]
        # @example
        #   cvtdq2pd xmm0, xmm1
        #   cvtdq2pd xmm0, [rbx]
        def cvtdq2pd(*operands,**kwargs) = add_instruction(Instructions::CVTDQ2PD,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::CVTDQ2PS]
        # @example
        #   cvtdq2ps xmm0, xmm1
        #   cvtdq2ps xmm0, [rbx]
        def cvtdq2ps(*operands,**kwargs) = add_instruction(Instructions::CVTDQ2PS,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTPD2DQ]
        # @example
        #   cvtpd2dq xmm0, xmm1
        #   cvtpd2dq xmm0, [rbx]
        def cvtpd2dq(*operands,**kwargs) = add_instruction(Instructions::CVTPD2DQ,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTPD2PI]
        # @example
        #   cvtpd2pi mm0, xmm1
        #   cvtpd2pi mm0, [rbx]
        def cvtpd2pi(*operands,**kwargs) = add_instruction(Instructions::CVTPD2PI,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::CVTPD2PS]
        # @example
        #   cvtpd2ps xmm0, xmm1
        #   cvtpd2ps xmm0, [rbx]
        def cvtpd2ps(*operands,**kwargs) = add_instruction(Instructions::CVTPD2PS,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::CVTPI2PD]
        # @example
        #   cvtpi2pd xmm0, mm1
        #   cvtpi2pd xmm0, [rbx]
        def cvtpi2pd(*operands,**kwargs) = add_instruction(Instructions::CVTPI2PD,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::CVTPI2PS]
        # @example
        #   cvtpi2ps xmm0, mm1
        #   cvtpi2ps xmm0, [rbx]
        def cvtpi2ps(*operands,**kwargs) = add_instruction(Instructions::CVTPI2PS,*operands,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTPS2DQ]
        # @example
        #   cvtps2dq xmm0, xmm1
        #   cvtps2dq xmm0, [rbx]
        def cvtps2dq(*operands,**kwargs) = add_instruction(Instructions::CVTPS2DQ,*operands,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::CVTPS2PD]
        # @example
        #   cvtps2pd xmm0, xmm1
        #   cvtps2pd xmm0, [rbx]
        def cvtps2pd(*operands,**kwargs) = add_instruction(Instructions::CVTPS2PD,*operands,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTPS2PI]
        # @example
        #   cvtps2pi mm0, xmm1
        #   cvtps2pi mm0, [rbx]
        def cvtps2pi(*operands,**kwargs) = add_instruction(Instructions::CVTPS2PI,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Integer
        # @return [Ronin::ASM::X86_64::Instructions::CVTSD2SI]
        # @example
        #   cvtsd2si eax, xmm1
        #   cvtsd2si eax, [rbx]
        #   cvtsd2si rax, xmm1
        #   cvtsd2si rax, [rbx]
        def cvtsd2si(*operands,**kwargs) = add_instruction(Instructions::CVTSD2SI,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::CVTSD2SS]
        # @example
        #   cvtsd2ss xmm0, xmm1
        #   cvtsd2ss xmm0, [rbx]
        def cvtsd2ss(*operands,**kwargs) = add_instruction(Instructions::CVTSD2SS,*operands,**kwargs)
        # Convert Dword Integer to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::CVTSI2SD]
        # @example
        #   cvtsi2sd xmm0, ebx
        #   cvtsi2sd xmm0, rbx
        #   cvtsi2sd xmm0, [rbx]
        def cvtsi2sd(*operands,**kwargs) = add_instruction(Instructions::CVTSI2SD,*operands,**kwargs)
        # Convert Dword Integer to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::CVTSI2SS]
        # @example
        #   cvtsi2ss xmm0, ebx
        #   cvtsi2ss xmm0, rbx
        #   cvtsi2ss xmm0, [rbx]
        def cvtsi2ss(*operands,**kwargs) = add_instruction(Instructions::CVTSI2SS,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::CVTSS2SD]
        # @example
        #   cvtss2sd xmm0, xmm1
        #   cvtss2sd xmm0, [rbx]
        def cvtss2sd(*operands,**kwargs) = add_instruction(Instructions::CVTSS2SD,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86_64::Instructions::CVTSS2SI]
        # @example
        #   cvtss2si eax, xmm1
        #   cvtss2si eax, [rbx]
        #   cvtss2si rax, xmm1
        #   cvtss2si rax, [rbx]
        def cvtss2si(*operands,**kwargs) = add_instruction(Instructions::CVTSS2SI,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTTPD2DQ]
        # @example
        #   cvttpd2dq xmm0, xmm1
        #   cvttpd2dq xmm0, [rbx]
        def cvttpd2dq(*operands,**kwargs) = add_instruction(Instructions::CVTTPD2DQ,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTTPD2PI]
        # @example
        #   cvttpd2pi mm0, xmm1
        #   cvttpd2pi mm0, [rbx]
        def cvttpd2pi(*operands,**kwargs) = add_instruction(Instructions::CVTTPD2PI,*operands,**kwargs)
        # Convert with Truncation Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTTPS2DQ]
        # @example
        #   cvttps2dq xmm0, xmm1
        #   cvttps2dq xmm0, [rbx]
        def cvttps2dq(*operands,**kwargs) = add_instruction(Instructions::CVTTPS2DQ,*operands,**kwargs)
        # Convert with Truncation Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::CVTTPS2PI]
        # @example
        #   cvttps2pi mm0, xmm1
        #   cvttps2pi mm0, [rbx]
        def cvttps2pi(*operands,**kwargs) = add_instruction(Instructions::CVTTPS2PI,*operands,**kwargs)
        # Convert with Truncation Scalar Double-Precision FP Value to Signed Integer
        # @return [Ronin::ASM::X86_64::Instructions::CVTTSD2SI]
        # @example
        #   cvttsd2si eax, xmm1
        #   cvttsd2si eax, [rbx]
        #   cvttsd2si rax, xmm1
        #   cvttsd2si rax, [rbx]
        def cvttsd2si(*operands,**kwargs) = add_instruction(Instructions::CVTTSD2SI,*operands,**kwargs)
        # Convert with Truncation Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86_64::Instructions::CVTTSS2SI]
        # @example
        #   cvttss2si eax, xmm1
        #   cvttss2si eax, [rbx]
        #   cvttss2si rax, xmm1
        #   cvttss2si rax, [rbx]
        def cvttss2si(*operands,**kwargs) = add_instruction(Instructions::CVTTSS2SI,*operands,**kwargs)
        # Convert Word to Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::CWD]
        def cwd(*operands,**kwargs) = add_instruction(Instructions::CWD,*operands,**kwargs)
        # Convert Word to Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::CWDE]
        def cwde(*operands,**kwargs) = add_instruction(Instructions::CWDE,*operands,**kwargs)
        # Decrement by 1
        # @return [Ronin::ASM::X86_64::Instructions::DEC]
        # @example
        #   dec al
        #   dec ax
        #   dec eax
        #   dec rax
        #   dec [rax]
        def dec(*operands,**kwargs) = add_instruction(Instructions::DEC,*operands,**kwargs)
        # Unsigned Divide
        # @return [Ronin::ASM::X86_64::Instructions::DIV]
        # @example
        #   div al
        #   div ax
        #   div eax
        #   div rax
        #   div [rax]
        def div(*operands,**kwargs) = add_instruction(Instructions::DIV,*operands,**kwargs)
        # Divide Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::DIVPD]
        # @example
        #   divpd xmm0, xmm1
        #   divpd xmm0, [rbx]
        def divpd(*operands,**kwargs) = add_instruction(Instructions::DIVPD,*operands,**kwargs)
        # Divide Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::DIVPS]
        # @example
        #   divps xmm0, xmm1
        #   divps xmm0, [rbx]
        def divps(*operands,**kwargs) = add_instruction(Instructions::DIVPS,*operands,**kwargs)
        # Divide Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::DIVSD]
        # @example
        #   divsd xmm0, xmm1
        #   divsd xmm0, [rbx]
        def divsd(*operands,**kwargs) = add_instruction(Instructions::DIVSD,*operands,**kwargs)
        # Divide Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::DIVSS]
        # @example
        #   divss xmm0, xmm1
        #   divss xmm0, [rbx]
        def divss(*operands,**kwargs) = add_instruction(Instructions::DIVSS,*operands,**kwargs)
        # Dot Product of Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::DPPD]
        # @example
        #   dppd xmm0, xmm1, 0x03
        #   dppd xmm0, [rbx], 0x03
        def dppd(*operands,**kwargs) = add_instruction(Instructions::DPPD,*operands,**kwargs)
        # Dot Product of Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::DPPS]
        # @example
        #   dpps xmm0, xmm1, 0x03
        #   dpps xmm0, [rbx], 0x03
        def dpps(*operands,**kwargs) = add_instruction(Instructions::DPPS,*operands,**kwargs)
        # Exit MMX State
        # @return [Ronin::ASM::X86_64::Instructions::EMMS]
        def emms(*operands,**kwargs) = add_instruction(Instructions::EMMS,*operands,**kwargs)
        # END (terminate) BRanch in 64-bit mode
        # @return [Ronin::ASM::X86_64::Instructions::ENDBR64]
        def endbr64(*operands,**kwargs) = add_instruction(Instructions::ENDBR64,*operands,**kwargs)
        # Extract Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::EXTRACTPS]
        # @example
        #   extractps eax, xmm1, 0x03
        #   extractps [rax], xmm1, 0x03
        def extractps(*operands,**kwargs) = add_instruction(Instructions::EXTRACTPS,*operands,**kwargs)
        # Extract Field
        # @return [Ronin::ASM::X86_64::Instructions::EXTRQ]
        # @example
        #   extrq xmm0, xmm1
        #   extrq xmm0, 0x02, 0x03
        def extrq(*operands,**kwargs) = add_instruction(Instructions::EXTRQ,*operands,**kwargs)
        # Fast Exit Multimedia State
        # @return [Ronin::ASM::X86_64::Instructions::FEMMS]
        def femms(*operands,**kwargs) = add_instruction(Instructions::FEMMS,*operands,**kwargs)
        # Galois Field (2^8) Affine Inverse Transformation
        # @return [Ronin::ASM::X86_64::Instructions::GF2P8AFFINEINVQB]
        # @example
        #   gf2p8affineinvqb xmm0, xmm1, 0x03
        #   gf2p8affineinvqb xmm0, [rbx], 0x03
        def gf2p8affineinvqb(*operands,**kwargs) = add_instruction(Instructions::GF2P8AFFINEINVQB,*operands,**kwargs)
        # Galois Field (2^8) Affine Transformation
        # @return [Ronin::ASM::X86_64::Instructions::GF2P8AFFINEQB]
        # @example
        #   gf2p8affineqb xmm0, xmm1, 0x03
        #   gf2p8affineqb xmm0, [rbx], 0x03
        def gf2p8affineqb(*operands,**kwargs) = add_instruction(Instructions::GF2P8AFFINEQB,*operands,**kwargs)
        # Galois Field Multiply Bytes
        # @return [Ronin::ASM::X86_64::Instructions::GF2P8MULB]
        # @example
        #   gf2p8mulb xmm0, xmm1
        #   gf2p8mulb xmm0, [rbx]
        def gf2p8mulb(*operands,**kwargs) = add_instruction(Instructions::GF2P8MULB,*operands,**kwargs)
        # Packed Double-FP Horizontal Add
        # @return [Ronin::ASM::X86_64::Instructions::HADDPD]
        # @example
        #   haddpd xmm0, xmm1
        #   haddpd xmm0, [rbx]
        def haddpd(*operands,**kwargs) = add_instruction(Instructions::HADDPD,*operands,**kwargs)
        # Packed Single-FP Horizontal Add
        # @return [Ronin::ASM::X86_64::Instructions::HADDPS]
        # @example
        #   haddps xmm0, xmm1
        #   haddps xmm0, [rbx]
        def haddps(*operands,**kwargs) = add_instruction(Instructions::HADDPS,*operands,**kwargs)
        # Packed Double-FP Horizontal Subtract
        # @return [Ronin::ASM::X86_64::Instructions::HSUBPD]
        # @example
        #   hsubpd xmm0, xmm1
        #   hsubpd xmm0, [rbx]
        def hsubpd(*operands,**kwargs) = add_instruction(Instructions::HSUBPD,*operands,**kwargs)
        # Packed Single-FP Horizontal Subtract
        # @return [Ronin::ASM::X86_64::Instructions::HSUBPS]
        # @example
        #   hsubps xmm0, xmm1
        #   hsubps xmm0, [rbx]
        def hsubps(*operands,**kwargs) = add_instruction(Instructions::HSUBPS,*operands,**kwargs)
        # Signed Divide
        # @return [Ronin::ASM::X86_64::Instructions::IDIV]
        # @example
        #   idiv al
        #   idiv ax
        #   idiv eax
        #   idiv rax
        #   idiv [rax]
        def idiv(*operands,**kwargs) = add_instruction(Instructions::IDIV,*operands,**kwargs)
        # Signed Multiply
        # @return [Ronin::ASM::X86_64::Instructions::IMUL]
        # @example
        #   imul al
        #   imul ax
        #   imul eax
        #   imul rax
        #   imul [rax]
        #   imul ax, bx
        #   imul ax, [rbx]
        #   imul eax, ebx
        #   imul eax, [rbx]
        #   imul rax, rbx
        #   imul rax, [rbx]
        #   imul ax, bx, 0x03
        #   imul ax, bx, 0x0003
        #   imul ax, [rbx], 0x03
        #   imul ax, [rbx], 0x0003
        #   imul eax, ebx, 0x03
        #   imul eax, ebx, 0x00000003
        #   imul eax, [rbx], 0x03
        #   imul eax, [rbx], 0x00000003
        #   imul rax, rbx, 0x03
        #   imul rax, rbx, 0x00000003
        #   imul rax, [rbx], 0x03
        #   imul rax, [rbx], 0x00000003
        def imul(*operands,**kwargs) = add_instruction(Instructions::IMUL,*operands,**kwargs)
        # Increment by 1
        # @return [Ronin::ASM::X86_64::Instructions::INC]
        # @example
        #   inc al
        #   inc ax
        #   inc eax
        #   inc rax
        #   inc [rax]
        def inc(*operands,**kwargs) = add_instruction(Instructions::INC,*operands,**kwargs)
        # Insert Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::INSERTPS]
        # @example
        #   insertps xmm0, xmm1, 0x03
        #   insertps xmm0, [rbx], 0x03
        def insertps(*operands,**kwargs) = add_instruction(Instructions::INSERTPS,*operands,**kwargs)
        # Insert Field
        # @return [Ronin::ASM::X86_64::Instructions::INSERTQ]
        # @example
        #   insertq xmm0, xmm1
        #   insertq xmm0, xmm1, 0x03, 0x04
        def insertq(*operands,**kwargs) = add_instruction(Instructions::INSERTQ,*operands,**kwargs)
        # Call to Interrupt Procedure
        # @return [Ronin::ASM::X86_64::Instructions::INT]
        # @example
        #   int 0x01
        def int(*operands,**kwargs) = add_instruction(Instructions::INT,*operands,**kwargs)
        # Interrupt 3 (debug trap)
        # @return [Ronin::ASM::X86_64::Instructions::INT3]
        def int3(*operands,**kwargs) = add_instruction(Instructions::INT3,*operands,**kwargs)
        # Jump if above (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JA]
        # @example
        #   ja rel8(-4)
        #   ja rel32(0x10000)
        def ja(*operands,**kwargs) = add_instruction(Instructions::JA,*operands,**kwargs)
        # Jump if above or equal (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JAE]
        # @example
        #   jae rel8(-4)
        #   jae rel32(0x10000)
        def jae(*operands,**kwargs) = add_instruction(Instructions::JAE,*operands,**kwargs)
        # Jump if below (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JB]
        # @example
        #   jb rel8(-4)
        #   jb rel32(0x10000)
        def jb(*operands,**kwargs) = add_instruction(Instructions::JB,*operands,**kwargs)
        # Jump if below or equal (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JBE]
        # @example
        #   jbe rel8(-4)
        #   jbe rel32(0x10000)
        def jbe(*operands,**kwargs) = add_instruction(Instructions::JBE,*operands,**kwargs)
        # Jump if carry (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JC]
        # @example
        #   jc rel8(-4)
        #   jc rel32(0x10000)
        def jc(*operands,**kwargs) = add_instruction(Instructions::JC,*operands,**kwargs)
        # Jump if equal (ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JE]
        # @example
        #   je rel8(-4)
        #   je rel32(0x10000)
        def je(*operands,**kwargs) = add_instruction(Instructions::JE,*operands,**kwargs)
        # Jump if ECX register is 0
        # @return [Ronin::ASM::X86_64::Instructions::JECXZ]
        # @example
        #   jecxz rel8(-4)
        def jecxz(*operands,**kwargs) = add_instruction(Instructions::JECXZ,*operands,**kwargs)
        # Jump if greater (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::JG]
        # @example
        #   jg rel8(-4)
        #   jg rel32(0x10000)
        def jg(*operands,**kwargs) = add_instruction(Instructions::JG,*operands,**kwargs)
        # Jump if greater or equal (SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::JGE]
        # @example
        #   jge rel8(-4)
        #   jge rel32(0x10000)
        def jge(*operands,**kwargs) = add_instruction(Instructions::JGE,*operands,**kwargs)
        # Jump if less (SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::JL]
        # @example
        #   jl rel8(-4)
        #   jl rel32(0x10000)
        def jl(*operands,**kwargs) = add_instruction(Instructions::JL,*operands,**kwargs)
        # Jump if less or equal (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::JLE]
        # @example
        #   jle rel8(-4)
        #   jle rel32(0x10000)
        def jle(*operands,**kwargs) = add_instruction(Instructions::JLE,*operands,**kwargs)
        # Jump Unconditionally
        # @return [Ronin::ASM::X86_64::Instructions::JMP]
        # @example
        #   jmp rel8(-4)
        #   jmp rel32(0x10000)
        #   jmp rax
        #   jmp [rax]
        def jmp(*operands,**kwargs) = add_instruction(Instructions::JMP,*operands,**kwargs)
        # Jump if not above (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JNA]
        # @example
        #   jna rel8(-4)
        #   jna rel32(0x10000)
        def jna(*operands,**kwargs) = add_instruction(Instructions::JNA,*operands,**kwargs)
        # Jump if not above or equal (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JNAE]
        # @example
        #   jnae rel8(-4)
        #   jnae rel32(0x10000)
        def jnae(*operands,**kwargs) = add_instruction(Instructions::JNAE,*operands,**kwargs)
        # Jump if not below (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNB]
        # @example
        #   jnb rel8(-4)
        #   jnb rel32(0x10000)
        def jnb(*operands,**kwargs) = add_instruction(Instructions::JNB,*operands,**kwargs)
        # Jump if not below or equal (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNBE]
        # @example
        #   jnbe rel8(-4)
        #   jnbe rel32(0x10000)
        def jnbe(*operands,**kwargs) = add_instruction(Instructions::JNBE,*operands,**kwargs)
        # Jump if not carry (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNC]
        # @example
        #   jnc rel8(-4)
        #   jnc rel32(0x10000)
        def jnc(*operands,**kwargs) = add_instruction(Instructions::JNC,*operands,**kwargs)
        # Jump if not equal (ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNE]
        # @example
        #   jne rel8(-4)
        #   jne rel32(0x10000)
        def jne(*operands,**kwargs) = add_instruction(Instructions::JNE,*operands,**kwargs)
        # Jump if not greater (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::JNG]
        # @example
        #   jng rel8(-4)
        #   jng rel32(0x10000)
        def jng(*operands,**kwargs) = add_instruction(Instructions::JNG,*operands,**kwargs)
        # Jump if not greater or equal (SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::JNGE]
        # @example
        #   jnge rel8(-4)
        #   jnge rel32(0x10000)
        def jnge(*operands,**kwargs) = add_instruction(Instructions::JNGE,*operands,**kwargs)
        # Jump if not less (SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::JNL]
        # @example
        #   jnl rel8(-4)
        #   jnl rel32(0x10000)
        def jnl(*operands,**kwargs) = add_instruction(Instructions::JNL,*operands,**kwargs)
        # Jump if not less or equal (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::JNLE]
        # @example
        #   jnle rel8(-4)
        #   jnle rel32(0x10000)
        def jnle(*operands,**kwargs) = add_instruction(Instructions::JNLE,*operands,**kwargs)
        # Jump if not overflow (OF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNO]
        # @example
        #   jno rel8(-4)
        #   jno rel32(0x10000)
        def jno(*operands,**kwargs) = add_instruction(Instructions::JNO,*operands,**kwargs)
        # Jump if not parity (PF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNP]
        # @example
        #   jnp rel8(-4)
        #   jnp rel32(0x10000)
        def jnp(*operands,**kwargs) = add_instruction(Instructions::JNP,*operands,**kwargs)
        # Jump if not sign (SF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNS]
        # @example
        #   jns rel8(-4)
        #   jns rel32(0x10000)
        def jns(*operands,**kwargs) = add_instruction(Instructions::JNS,*operands,**kwargs)
        # Jump if not zero (ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JNZ]
        # @example
        #   jnz rel8(-4)
        #   jnz rel32(0x10000)
        def jnz(*operands,**kwargs) = add_instruction(Instructions::JNZ,*operands,**kwargs)
        # Jump if overflow (OF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JO]
        # @example
        #   jo rel8(-4)
        #   jo rel32(0x10000)
        def jo(*operands,**kwargs) = add_instruction(Instructions::JO,*operands,**kwargs)
        # Jump if parity (PF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JP]
        # @example
        #   jp rel8(-4)
        #   jp rel32(0x10000)
        def jp(*operands,**kwargs) = add_instruction(Instructions::JP,*operands,**kwargs)
        # Jump if parity even (PF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JPE]
        # @example
        #   jpe rel8(-4)
        #   jpe rel32(0x10000)
        def jpe(*operands,**kwargs) = add_instruction(Instructions::JPE,*operands,**kwargs)
        # Jump if parity odd (PF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::JPO]
        # @example
        #   jpo rel8(-4)
        #   jpo rel32(0x10000)
        def jpo(*operands,**kwargs) = add_instruction(Instructions::JPO,*operands,**kwargs)
        # Jump if RCX register is 0
        # @return [Ronin::ASM::X86_64::Instructions::JRCXZ]
        # @example
        #   jrcxz rel8(-4)
        def jrcxz(*operands,**kwargs) = add_instruction(Instructions::JRCXZ,*operands,**kwargs)
        # Jump if sign (SF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JS]
        # @example
        #   js rel8(-4)
        #   js rel32(0x10000)
        def js(*operands,**kwargs) = add_instruction(Instructions::JS,*operands,**kwargs)
        # Jump if zero (ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::JZ]
        # @example
        #   jz rel8(-4)
        #   jz rel32(0x10000)
        def jz(*operands,**kwargs) = add_instruction(Instructions::JZ,*operands,**kwargs)
        # ADD Two 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KADDB]
        # @example
        #   kaddb k1, k2, k3
        def kaddb(*operands,**kwargs) = add_instruction(Instructions::KADDB,*operands,**kwargs)
        # ADD Two 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KADDD]
        # @example
        #   kaddd k1, k2, k3
        def kaddd(*operands,**kwargs) = add_instruction(Instructions::KADDD,*operands,**kwargs)
        # ADD Two 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KADDQ]
        # @example
        #   kaddq k1, k2, k3
        def kaddq(*operands,**kwargs) = add_instruction(Instructions::KADDQ,*operands,**kwargs)
        # ADD Two 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KADDW]
        # @example
        #   kaddw k1, k2, k3
        def kaddw(*operands,**kwargs) = add_instruction(Instructions::KADDW,*operands,**kwargs)
        # Bitwise Logical AND 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDB]
        # @example
        #   kandb k1, k2, k3
        def kandb(*operands,**kwargs) = add_instruction(Instructions::KANDB,*operands,**kwargs)
        # Bitwise Logical AND 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDD]
        # @example
        #   kandd k1, k2, k3
        def kandd(*operands,**kwargs) = add_instruction(Instructions::KANDD,*operands,**kwargs)
        # Bitwise Logical AND NOT 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDNB]
        # @example
        #   kandnb k1, k2, k3
        def kandnb(*operands,**kwargs) = add_instruction(Instructions::KANDNB,*operands,**kwargs)
        # Bitwise Logical AND NOT 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDND]
        # @example
        #   kandnd k1, k2, k3
        def kandnd(*operands,**kwargs) = add_instruction(Instructions::KANDND,*operands,**kwargs)
        # Bitwise Logical AND NOT 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDNQ]
        # @example
        #   kandnq k1, k2, k3
        def kandnq(*operands,**kwargs) = add_instruction(Instructions::KANDNQ,*operands,**kwargs)
        # Bitwise Logical AND NOT 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDNW]
        # @example
        #   kandnw k1, k2, k3
        def kandnw(*operands,**kwargs) = add_instruction(Instructions::KANDNW,*operands,**kwargs)
        # Bitwise Logical AND 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDQ]
        # @example
        #   kandq k1, k2, k3
        def kandq(*operands,**kwargs) = add_instruction(Instructions::KANDQ,*operands,**kwargs)
        # Bitwise Logical AND 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KANDW]
        # @example
        #   kandw k1, k2, k3
        def kandw(*operands,**kwargs) = add_instruction(Instructions::KANDW,*operands,**kwargs)
        # Move 8-bit Mask
        # @return [Ronin::ASM::X86_64::Instructions::KMOVB]
        # @example
        #   kmovb k1, k2
        #   kmovb k1, ebx
        #   kmovb k1, [rbx]
        #   kmovb eax, k2
        #   kmovb [rax], k2
        def kmovb(*operands,**kwargs) = add_instruction(Instructions::KMOVB,*operands,**kwargs)
        # Move 32-bit Mask
        # @return [Ronin::ASM::X86_64::Instructions::KMOVD]
        # @example
        #   kmovd k1, k2
        #   kmovd k1, ebx
        #   kmovd k1, [rbx]
        #   kmovd eax, k2
        #   kmovd [rax], k2
        def kmovd(*operands,**kwargs) = add_instruction(Instructions::KMOVD,*operands,**kwargs)
        # Move 64-bit Mask
        # @return [Ronin::ASM::X86_64::Instructions::KMOVQ]
        # @example
        #   kmovq k1, k2
        #   kmovq k1, rbx
        #   kmovq k1, [rbx]
        #   kmovq rax, k2
        #   kmovq [rax], k2
        def kmovq(*operands,**kwargs) = add_instruction(Instructions::KMOVQ,*operands,**kwargs)
        # Move 16-bit Mask
        # @return [Ronin::ASM::X86_64::Instructions::KMOVW]
        # @example
        #   kmovw k1, k2
        #   kmovw k1, ebx
        #   kmovw k1, [rbx]
        #   kmovw eax, k2
        #   kmovw [rax], k2
        def kmovw(*operands,**kwargs) = add_instruction(Instructions::KMOVW,*operands,**kwargs)
        # NOT 8-bit Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::KNOTB]
        # @example
        #   knotb k1, k2
        def knotb(*operands,**kwargs) = add_instruction(Instructions::KNOTB,*operands,**kwargs)
        # NOT 32-bit Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::KNOTD]
        # @example
        #   knotd k1, k2
        def knotd(*operands,**kwargs) = add_instruction(Instructions::KNOTD,*operands,**kwargs)
        # NOT 64-bit Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::KNOTQ]
        # @example
        #   knotq k1, k2
        def knotq(*operands,**kwargs) = add_instruction(Instructions::KNOTQ,*operands,**kwargs)
        # NOT 16-bit Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::KNOTW]
        # @example
        #   knotw k1, k2
        def knotw(*operands,**kwargs) = add_instruction(Instructions::KNOTW,*operands,**kwargs)
        # Bitwise Logical OR 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KORB]
        # @example
        #   korb k1, k2, k3
        def korb(*operands,**kwargs) = add_instruction(Instructions::KORB,*operands,**kwargs)
        # Bitwise Logical OR 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KORD]
        # @example
        #   kord k1, k2, k3
        def kord(*operands,**kwargs) = add_instruction(Instructions::KORD,*operands,**kwargs)
        # Bitwise Logical OR 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KORQ]
        # @example
        #   korq k1, k2, k3
        def korq(*operands,**kwargs) = add_instruction(Instructions::KORQ,*operands,**kwargs)
        # OR 8-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KORTESTB]
        # @example
        #   kortestb k1, k2
        def kortestb(*operands,**kwargs) = add_instruction(Instructions::KORTESTB,*operands,**kwargs)
        # OR 32-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KORTESTD]
        # @example
        #   kortestd k1, k2
        def kortestd(*operands,**kwargs) = add_instruction(Instructions::KORTESTD,*operands,**kwargs)
        # OR 64-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KORTESTQ]
        # @example
        #   kortestq k1, k2
        def kortestq(*operands,**kwargs) = add_instruction(Instructions::KORTESTQ,*operands,**kwargs)
        # OR 16-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KORTESTW]
        # @example
        #   kortestw k1, k2
        def kortestw(*operands,**kwargs) = add_instruction(Instructions::KORTESTW,*operands,**kwargs)
        # Bitwise Logical OR 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KORW]
        # @example
        #   korw k1, k2, k3
        def korw(*operands,**kwargs) = add_instruction(Instructions::KORW,*operands,**kwargs)
        # Shift Left 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTLB]
        # @example
        #   kshiftlb k1, k2, 0x03
        def kshiftlb(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLB,*operands,**kwargs)
        # Shift Left 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTLD]
        # @example
        #   kshiftld k1, k2, 0x03
        def kshiftld(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLD,*operands,**kwargs)
        # Shift Left 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTLQ]
        # @example
        #   kshiftlq k1, k2, 0x03
        def kshiftlq(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLQ,*operands,**kwargs)
        # Shift Left 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTLW]
        # @example
        #   kshiftlw k1, k2, 0x03
        def kshiftlw(*operands,**kwargs) = add_instruction(Instructions::KSHIFTLW,*operands,**kwargs)
        # Shift Right 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTRB]
        # @example
        #   kshiftrb k1, k2, 0x03
        def kshiftrb(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRB,*operands,**kwargs)
        # Shift Right 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTRD]
        # @example
        #   kshiftrd k1, k2, 0x03
        def kshiftrd(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRD,*operands,**kwargs)
        # Shift Right 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTRQ]
        # @example
        #   kshiftrq k1, k2, 0x03
        def kshiftrq(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRQ,*operands,**kwargs)
        # Shift Right 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KSHIFTRW]
        # @example
        #   kshiftrw k1, k2, 0x03
        def kshiftrw(*operands,**kwargs) = add_instruction(Instructions::KSHIFTRW,*operands,**kwargs)
        # Bit Test 8-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KTESTB]
        # @example
        #   ktestb k1, k2
        def ktestb(*operands,**kwargs) = add_instruction(Instructions::KTESTB,*operands,**kwargs)
        # Bit Test 32-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KTESTD]
        # @example
        #   ktestd k1, k2
        def ktestd(*operands,**kwargs) = add_instruction(Instructions::KTESTD,*operands,**kwargs)
        # Bit Test 64-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KTESTQ]
        # @example
        #   ktestq k1, k2
        def ktestq(*operands,**kwargs) = add_instruction(Instructions::KTESTQ,*operands,**kwargs)
        # Bit Test 16-bit Masks and Set Flags
        # @return [Ronin::ASM::X86_64::Instructions::KTESTW]
        # @example
        #   ktestw k1, k2
        def ktestw(*operands,**kwargs) = add_instruction(Instructions::KTESTW,*operands,**kwargs)
        # Unpack and Interleave 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KUNPCKBW]
        # @example
        #   kunpckbw k1, k2, k3
        def kunpckbw(*operands,**kwargs) = add_instruction(Instructions::KUNPCKBW,*operands,**kwargs)
        # Unpack and Interleave 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KUNPCKDQ]
        # @example
        #   kunpckdq k1, k2, k3
        def kunpckdq(*operands,**kwargs) = add_instruction(Instructions::KUNPCKDQ,*operands,**kwargs)
        # Unpack and Interleave 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KUNPCKWD]
        # @example
        #   kunpckwd k1, k2, k3
        def kunpckwd(*operands,**kwargs) = add_instruction(Instructions::KUNPCKWD,*operands,**kwargs)
        # Bitwise Logical XNOR 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXNORB]
        # @example
        #   kxnorb k1, k2, k3
        def kxnorb(*operands,**kwargs) = add_instruction(Instructions::KXNORB,*operands,**kwargs)
        # Bitwise Logical XNOR 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXNORD]
        # @example
        #   kxnord k1, k2, k3
        def kxnord(*operands,**kwargs) = add_instruction(Instructions::KXNORD,*operands,**kwargs)
        # Bitwise Logical XNOR 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXNORQ]
        # @example
        #   kxnorq k1, k2, k3
        def kxnorq(*operands,**kwargs) = add_instruction(Instructions::KXNORQ,*operands,**kwargs)
        # Bitwise Logical XNOR 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXNORW]
        # @example
        #   kxnorw k1, k2, k3
        def kxnorw(*operands,**kwargs) = add_instruction(Instructions::KXNORW,*operands,**kwargs)
        # Bitwise Logical XOR 8-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXORB]
        # @example
        #   kxorb k1, k2, k3
        def kxorb(*operands,**kwargs) = add_instruction(Instructions::KXORB,*operands,**kwargs)
        # Bitwise Logical XOR 32-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXORD]
        # @example
        #   kxord k1, k2, k3
        def kxord(*operands,**kwargs) = add_instruction(Instructions::KXORD,*operands,**kwargs)
        # Bitwise Logical XOR 64-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXORQ]
        # @example
        #   kxorq k1, k2, k3
        def kxorq(*operands,**kwargs) = add_instruction(Instructions::KXORQ,*operands,**kwargs)
        # Bitwise Logical XOR 16-bit Masks
        # @return [Ronin::ASM::X86_64::Instructions::KXORW]
        # @example
        #   kxorw k1, k2, k3
        def kxorw(*operands,**kwargs) = add_instruction(Instructions::KXORW,*operands,**kwargs)
        # Load AH from Flags
        # @return [Ronin::ASM::X86_64::Instructions::LAHF]
        def lahf(*operands,**kwargs) = add_instruction(Instructions::LAHF,*operands,**kwargs)
        # Load Unaligned Integer 128 Bits
        # @return [Ronin::ASM::X86_64::Instructions::LDDQU]
        # @example
        #   lddqu xmm0, [rbx]
        def lddqu(*operands,**kwargs) = add_instruction(Instructions::LDDQU,*operands,**kwargs)
        # Load MXCSR Register
        # @return [Ronin::ASM::X86_64::Instructions::LDMXCSR]
        # @example
        #   ldmxcsr [rax]
        def ldmxcsr(*operands,**kwargs) = add_instruction(Instructions::LDMXCSR,*operands,**kwargs)
        # LoaD TILE ConFiGuration
        # @return [Ronin::ASM::X86_64::Instructions::LDTILECFG]
        # @example
        #   ldtilecfg [rax]
        def ldtilecfg(*operands,**kwargs) = add_instruction(Instructions::LDTILECFG,*operands,**kwargs)
        # Load Effective Address
        # @return [Ronin::ASM::X86_64::Instructions::LEA]
        # @example
        #   lea ax, [rbx]
        #   lea eax, [rbx]
        #   lea rax, [rbx]
        def lea(*operands,**kwargs) = add_instruction(Instructions::LEA,*operands,**kwargs)
        # Load Fence
        # @return [Ronin::ASM::X86_64::Instructions::LFENCE]
        def lfence(*operands,**kwargs) = add_instruction(Instructions::LFENCE,*operands,**kwargs)
        # Count the Number of Leading Zero Bits
        # @return [Ronin::ASM::X86_64::Instructions::LZCNT]
        # @example
        #   lzcnt ax, bx
        #   lzcnt ax, [rbx]
        #   lzcnt eax, ebx
        #   lzcnt eax, [rbx]
        #   lzcnt rax, rbx
        #   lzcnt rax, [rbx]
        def lzcnt(*operands,**kwargs) = add_instruction(Instructions::LZCNT,*operands,**kwargs)
        # Store Selected Bytes of Double Quadword
        # @return [Ronin::ASM::X86_64::Instructions::MASKMOVDQU]
        # @example
        #   maskmovdqu xmm0, xmm1
        def maskmovdqu(*operands,**kwargs) = add_instruction(Instructions::MASKMOVDQU,*operands,**kwargs)
        # Store Selected Bytes of Quadword
        # @return [Ronin::ASM::X86_64::Instructions::MASKMOVQ]
        # @example
        #   maskmovq mm0, mm1
        def maskmovq(*operands,**kwargs) = add_instruction(Instructions::MASKMOVQ,*operands,**kwargs)
        # Return Maximum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MAXPD]
        # @example
        #   maxpd xmm0, xmm1
        #   maxpd xmm0, [rbx]
        def maxpd(*operands,**kwargs) = add_instruction(Instructions::MAXPD,*operands,**kwargs)
        # Return Maximum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MAXPS]
        # @example
        #   maxps xmm0, xmm1
        #   maxps xmm0, [rbx]
        def maxps(*operands,**kwargs) = add_instruction(Instructions::MAXPS,*operands,**kwargs)
        # Return Maximum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::MAXSD]
        # @example
        #   maxsd xmm0, xmm1
        #   maxsd xmm0, [rbx]
        def maxsd(*operands,**kwargs) = add_instruction(Instructions::MAXSD,*operands,**kwargs)
        # Return Maximum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::MAXSS]
        # @example
        #   maxss xmm0, xmm1
        #   maxss xmm0, [rbx]
        def maxss(*operands,**kwargs) = add_instruction(Instructions::MAXSS,*operands,**kwargs)
        # Memory COMMIT
        # @return [Ronin::ASM::X86_64::Instructions::MCOMMIT]
        def mcommit(*operands,**kwargs) = add_instruction(Instructions::MCOMMIT,*operands,**kwargs)
        # Memory Fence
        # @return [Ronin::ASM::X86_64::Instructions::MFENCE]
        def mfence(*operands,**kwargs) = add_instruction(Instructions::MFENCE,*operands,**kwargs)
        # Return Minimum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MINPD]
        # @example
        #   minpd xmm0, xmm1
        #   minpd xmm0, [rbx]
        def minpd(*operands,**kwargs) = add_instruction(Instructions::MINPD,*operands,**kwargs)
        # Return Minimum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MINPS]
        # @example
        #   minps xmm0, xmm1
        #   minps xmm0, [rbx]
        def minps(*operands,**kwargs) = add_instruction(Instructions::MINPS,*operands,**kwargs)
        # Return Minimum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::MINSD]
        # @example
        #   minsd xmm0, xmm1
        #   minsd xmm0, [rbx]
        def minsd(*operands,**kwargs) = add_instruction(Instructions::MINSD,*operands,**kwargs)
        # Return Minimum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::MINSS]
        # @example
        #   minss xmm0, xmm1
        #   minss xmm0, [rbx]
        def minss(*operands,**kwargs) = add_instruction(Instructions::MINSS,*operands,**kwargs)
        # Monitor a Linear Address Range
        # @return [Ronin::ASM::X86_64::Instructions::MONITOR]
        def monitor(*operands,**kwargs) = add_instruction(Instructions::MONITOR,*operands,**kwargs)
        # Monitor a Linear Address Range with Timeout
        # @return [Ronin::ASM::X86_64::Instructions::MONITORX]
        def monitorx(*operands,**kwargs) = add_instruction(Instructions::MONITORX,*operands,**kwargs)
        # Move
        # @return [Ronin::ASM::X86_64::Instructions::MOV]
        # @example
        #   mov al, 0x02
        #   mov al, bl
        #   mov al, [rbx]
        #   mov ax, 0x0002
        #   mov ax, bx
        #   mov ax, [rbx]
        #   mov eax, moffset32(0x10000)
        #   mov eax, 0x00000002
        #   mov eax, ebx
        #   mov eax, [rbx]
        #   mov rax, moffset64(0x10000)
        #   mov rax, 0x00000002
        #   mov rax, 0x0000000000000002
        #   mov rax, rbx
        #   mov rax, [rbx]
        #   mov [rax], 0x02
        #   mov [rax], bl
        #   mov [rax], 0x0002
        #   mov [rax], bx
        #   mov [rax], 0x00000002
        #   mov [rax], ebx
        #   mov [rax], rbx
        #   mov moffset32(0x10000), eax
        #   mov moffset64(0x10000), rax
        def mov(*operands,**kwargs) = add_instruction(Instructions::MOV,*operands,**kwargs)
        # Move Aligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MOVAPD]
        # @example
        #   movapd xmm0, xmm1
        #   movapd xmm0, [rbx]
        #   movapd [rax], xmm1
        def movapd(*operands,**kwargs) = add_instruction(Instructions::MOVAPD,*operands,**kwargs)
        # Move Aligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MOVAPS]
        # @example
        #   movaps xmm0, xmm1
        #   movaps xmm0, [rbx]
        #   movaps [rax], xmm1
        def movaps(*operands,**kwargs) = add_instruction(Instructions::MOVAPS,*operands,**kwargs)
        # Move Data After Swapping Bytes
        # @return [Ronin::ASM::X86_64::Instructions::MOVBE]
        # @example
        #   movbe ax, [rbx]
        #   movbe eax, [rbx]
        #   movbe rax, [rbx]
        #   movbe [rax], bx
        #   movbe [rax], ebx
        #   movbe [rax], rbx
        def movbe(*operands,**kwargs) = add_instruction(Instructions::MOVBE,*operands,**kwargs)
        # Move Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::MOVD]
        # @example
        #   movd eax, mm1
        #   movd eax, xmm1
        #   movd mm0, ebx
        #   movd mm0, [rbx]
        #   movd xmm0, ebx
        #   movd xmm0, [rbx]
        #   movd [rax], mm1
        #   movd [rax], xmm1
        def movd(*operands,**kwargs) = add_instruction(Instructions::MOVD,*operands,**kwargs)
        # Move One Double-FP and Duplicate
        # @return [Ronin::ASM::X86_64::Instructions::MOVDDUP]
        # @example
        #   movddup xmm0, xmm1
        #   movddup xmm0, [rbx]
        def movddup(*operands,**kwargs) = add_instruction(Instructions::MOVDDUP,*operands,**kwargs)
        # MOVe to DIRect store 64 Bytes
        # @return [Ronin::ASM::X86_64::Instructions::MOVDIR64B]
        # @example
        #   movdir64b rax, [rbx]
        def movdir64b(*operands,**kwargs) = add_instruction(Instructions::MOVDIR64B,*operands,**kwargs)
        # MOVe to DIRect store Integer
        # @return [Ronin::ASM::X86_64::Instructions::MOVDIRI]
        # @example
        #   movdiri [rax], ebx
        #   movdiri [rax], rbx
        def movdiri(*operands,**kwargs) = add_instruction(Instructions::MOVDIRI,*operands,**kwargs)
        # Move Quadword from XMM to MMX Technology Register
        # @return [Ronin::ASM::X86_64::Instructions::MOVDQ2Q]
        # @example
        #   movdq2q mm0, xmm1
        def movdq2q(*operands,**kwargs) = add_instruction(Instructions::MOVDQ2Q,*operands,**kwargs)
        # Move Aligned Double Quadword
        # @return [Ronin::ASM::X86_64::Instructions::MOVDQA]
        # @example
        #   movdqa xmm0, xmm1
        #   movdqa xmm0, [rbx]
        #   movdqa [rax], xmm1
        def movdqa(*operands,**kwargs) = add_instruction(Instructions::MOVDQA,*operands,**kwargs)
        # Move Unaligned Double Quadword
        # @return [Ronin::ASM::X86_64::Instructions::MOVDQU]
        # @example
        #   movdqu xmm0, xmm1
        #   movdqu xmm0, [rbx]
        #   movdqu [rax], xmm1
        def movdqu(*operands,**kwargs) = add_instruction(Instructions::MOVDQU,*operands,**kwargs)
        # Move Packed Single-Precision Floating-Point Values High to Low
        # @return [Ronin::ASM::X86_64::Instructions::MOVHLPS]
        # @example
        #   movhlps xmm0, xmm1
        def movhlps(*operands,**kwargs) = add_instruction(Instructions::MOVHLPS,*operands,**kwargs)
        # Move High Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::MOVHPD]
        # @example
        #   movhpd xmm0, [rbx]
        #   movhpd [rax], xmm1
        def movhpd(*operands,**kwargs) = add_instruction(Instructions::MOVHPD,*operands,**kwargs)
        # Move High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MOVHPS]
        # @example
        #   movhps xmm0, [rbx]
        #   movhps [rax], xmm1
        def movhps(*operands,**kwargs) = add_instruction(Instructions::MOVHPS,*operands,**kwargs)
        # Move Packed Single-Precision Floating-Point Values Low to High
        # @return [Ronin::ASM::X86_64::Instructions::MOVLHPS]
        # @example
        #   movlhps xmm0, xmm1
        def movlhps(*operands,**kwargs) = add_instruction(Instructions::MOVLHPS,*operands,**kwargs)
        # Move Low Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::MOVLPD]
        # @example
        #   movlpd xmm0, [rbx]
        #   movlpd [rax], xmm1
        def movlpd(*operands,**kwargs) = add_instruction(Instructions::MOVLPD,*operands,**kwargs)
        # Move Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MOVLPS]
        # @example
        #   movlps xmm0, [rbx]
        #   movlps [rax], xmm1
        def movlps(*operands,**kwargs) = add_instruction(Instructions::MOVLPS,*operands,**kwargs)
        # Extract Packed Double-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86_64::Instructions::MOVMSKPD]
        # @example
        #   movmskpd eax, xmm1
        def movmskpd(*operands,**kwargs) = add_instruction(Instructions::MOVMSKPD,*operands,**kwargs)
        # Extract Packed Single-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86_64::Instructions::MOVMSKPS]
        # @example
        #   movmskps eax, xmm1
        def movmskps(*operands,**kwargs) = add_instruction(Instructions::MOVMSKPS,*operands,**kwargs)
        # Store Double Quadword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTDQ]
        # @example
        #   movntdq [rax], xmm1
        def movntdq(*operands,**kwargs) = add_instruction(Instructions::MOVNTDQ,*operands,**kwargs)
        # Load Double Quadword Non-Temporal Aligned Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTDQA]
        # @example
        #   movntdqa xmm0, [rbx]
        def movntdqa(*operands,**kwargs) = add_instruction(Instructions::MOVNTDQA,*operands,**kwargs)
        # Store Doubleword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTI]
        # @example
        #   movnti [rax], ebx
        #   movnti [rax], rbx
        def movnti(*operands,**kwargs) = add_instruction(Instructions::MOVNTI,*operands,**kwargs)
        # Store Packed Double-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTPD]
        # @example
        #   movntpd [rax], xmm1
        def movntpd(*operands,**kwargs) = add_instruction(Instructions::MOVNTPD,*operands,**kwargs)
        # Store Packed Single-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTPS]
        # @example
        #   movntps [rax], xmm1
        def movntps(*operands,**kwargs) = add_instruction(Instructions::MOVNTPS,*operands,**kwargs)
        # Store of Quadword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTQ]
        # @example
        #   movntq [rax], mm1
        def movntq(*operands,**kwargs) = add_instruction(Instructions::MOVNTQ,*operands,**kwargs)
        # Store Scalar Double-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTSD]
        # @example
        #   movntsd [rax], xmm1
        def movntsd(*operands,**kwargs) = add_instruction(Instructions::MOVNTSD,*operands,**kwargs)
        # Store Scalar Single-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::MOVNTSS]
        # @example
        #   movntss [rax], xmm1
        def movntss(*operands,**kwargs) = add_instruction(Instructions::MOVNTSS,*operands,**kwargs)
        # Move Quadword
        # @return [Ronin::ASM::X86_64::Instructions::MOVQ]
        # @example
        #   movq rax, mm1
        #   movq rax, xmm1
        #   movq mm0, rbx
        #   movq mm0, mm1
        #   movq mm0, [rbx]
        #   movq xmm0, rbx
        #   movq xmm0, xmm1
        #   movq xmm0, [rbx]
        #   movq [rax], mm1
        #   movq [rax], xmm1
        def movq(*operands,**kwargs) = add_instruction(Instructions::MOVQ,*operands,**kwargs)
        # Move Quadword from MMX Technology to XMM Register
        # @return [Ronin::ASM::X86_64::Instructions::MOVQ2DQ]
        # @example
        #   movq2dq xmm0, mm1
        def movq2dq(*operands,**kwargs) = add_instruction(Instructions::MOVQ2DQ,*operands,**kwargs)
        # Move Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::MOVSD]
        # @example
        #   movsd xmm0, xmm1
        #   movsd xmm0, [rbx]
        #   movsd [rax], xmm1
        def movsd(*operands,**kwargs) = add_instruction(Instructions::MOVSD,*operands,**kwargs)
        # Move Packed Single-FP High and Duplicate
        # @return [Ronin::ASM::X86_64::Instructions::MOVSHDUP]
        # @example
        #   movshdup xmm0, xmm1
        #   movshdup xmm0, [rbx]
        def movshdup(*operands,**kwargs) = add_instruction(Instructions::MOVSHDUP,*operands,**kwargs)
        # Move Packed Single-FP Low and Duplicate
        # @return [Ronin::ASM::X86_64::Instructions::MOVSLDUP]
        # @example
        #   movsldup xmm0, xmm1
        #   movsldup xmm0, [rbx]
        def movsldup(*operands,**kwargs) = add_instruction(Instructions::MOVSLDUP,*operands,**kwargs)
        # Move Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MOVSS]
        # @example
        #   movss xmm0, xmm1
        #   movss xmm0, [rbx]
        #   movss [rax], xmm1
        def movss(*operands,**kwargs) = add_instruction(Instructions::MOVSS,*operands,**kwargs)
        # Move with Sign-Extension
        # @return [Ronin::ASM::X86_64::Instructions::MOVSX]
        # @example
        #   movsx ax, bl
        #   movsx ax, [rbx]
        #   movsx eax, bl
        #   movsx eax, bx
        #   movsx eax, [rbx]
        #   movsx rax, bl
        #   movsx rax, bx
        #   movsx rax, [rbx]
        def movsx(*operands,**kwargs) = add_instruction(Instructions::MOVSX,*operands,**kwargs)
        # Move Doubleword to Quadword with Sign-Extension
        # @return [Ronin::ASM::X86_64::Instructions::MOVSXD]
        # @example
        #   movsxd rax, ebx
        #   movsxd rax, [rbx]
        def movsxd(*operands,**kwargs) = add_instruction(Instructions::MOVSXD,*operands,**kwargs)
        # Move Unaligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MOVUPD]
        # @example
        #   movupd xmm0, xmm1
        #   movupd xmm0, [rbx]
        #   movupd [rax], xmm1
        def movupd(*operands,**kwargs) = add_instruction(Instructions::MOVUPD,*operands,**kwargs)
        # Move Unaligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MOVUPS]
        # @example
        #   movups xmm0, xmm1
        #   movups xmm0, [rbx]
        #   movups [rax], xmm1
        def movups(*operands,**kwargs) = add_instruction(Instructions::MOVUPS,*operands,**kwargs)
        # Move with Zero-Extend
        # @return [Ronin::ASM::X86_64::Instructions::MOVZX]
        # @example
        #   movzx ax, bl
        #   movzx ax, [rbx]
        #   movzx eax, bl
        #   movzx eax, bx
        #   movzx eax, [rbx]
        #   movzx rax, bl
        #   movzx rax, bx
        #   movzx rax, [rbx]
        def movzx(*operands,**kwargs) = add_instruction(Instructions::MOVZX,*operands,**kwargs)
        # Compute Multiple Packed Sums of Absolute Difference
        # @return [Ronin::ASM::X86_64::Instructions::MPSADBW]
        # @example
        #   mpsadbw xmm0, xmm1, 0x03
        #   mpsadbw xmm0, [rbx], 0x03
        def mpsadbw(*operands,**kwargs) = add_instruction(Instructions::MPSADBW,*operands,**kwargs)
        # Unsigned Multiply
        # @return [Ronin::ASM::X86_64::Instructions::MUL]
        # @example
        #   mul al
        #   mul ax
        #   mul eax
        #   mul rax
        #   mul [rax]
        def mul(*operands,**kwargs) = add_instruction(Instructions::MUL,*operands,**kwargs)
        # Multiply Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MULPD]
        # @example
        #   mulpd xmm0, xmm1
        #   mulpd xmm0, [rbx]
        def mulpd(*operands,**kwargs) = add_instruction(Instructions::MULPD,*operands,**kwargs)
        # Multiply Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MULPS]
        # @example
        #   mulps xmm0, xmm1
        #   mulps xmm0, [rbx]
        def mulps(*operands,**kwargs) = add_instruction(Instructions::MULPS,*operands,**kwargs)
        # Multiply Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MULSD]
        # @example
        #   mulsd xmm0, xmm1
        #   mulsd xmm0, [rbx]
        def mulsd(*operands,**kwargs) = add_instruction(Instructions::MULSD,*operands,**kwargs)
        # Multiply Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::MULSS]
        # @example
        #   mulss xmm0, xmm1
        #   mulss xmm0, [rbx]
        def mulss(*operands,**kwargs) = add_instruction(Instructions::MULSS,*operands,**kwargs)
        # Unsigned Multiply Without Affecting Flags
        # @return [Ronin::ASM::X86_64::Instructions::MULX]
        # @example
        #   mulx eax, ebx, ecx
        #   mulx eax, ebx, [rcx]
        #   mulx rax, rbx, rcx
        #   mulx rax, rbx, [rcx]
        def mulx(*operands,**kwargs) = add_instruction(Instructions::MULX,*operands,**kwargs)
        # Monitor Wait
        # @return [Ronin::ASM::X86_64::Instructions::MWAIT]
        def mwait(*operands,**kwargs) = add_instruction(Instructions::MWAIT,*operands,**kwargs)
        # Monitor Wait with Timeout
        # @return [Ronin::ASM::X86_64::Instructions::MWAITX]
        def mwaitx(*operands,**kwargs) = add_instruction(Instructions::MWAITX,*operands,**kwargs)
        # Two's Complement Negation
        # @return [Ronin::ASM::X86_64::Instructions::NEG]
        # @example
        #   neg al
        #   neg ax
        #   neg eax
        #   neg rax
        #   neg [rax]
        def neg(*operands,**kwargs) = add_instruction(Instructions::NEG,*operands,**kwargs)
        # No Operation
        # @return [Ronin::ASM::X86_64::Instructions::NOP]
        def nop(*operands,**kwargs) = add_instruction(Instructions::NOP,*operands,**kwargs)
        # One's Complement Negation
        # @return [Ronin::ASM::X86_64::Instructions::NOT]
        # @example
        #   not al
        #   not ax
        #   not eax
        #   not rax
        #   not [rax]
        def not(*operands,**kwargs) = add_instruction(Instructions::NOT,*operands,**kwargs)
        # Logical Inclusive OR
        # @return [Ronin::ASM::X86_64::Instructions::OR]
        # @example
        #   or al, 0x02
        #   or al, bl
        #   or al, [rbx]
        #   or ax, 0x0002
        #   or ax, 0x02
        #   or ax, bx
        #   or ax, [rbx]
        #   or eax, 0x00000002
        #   or eax, 0x02
        #   or eax, ebx
        #   or eax, [rbx]
        #   or rax, 0x00000002
        #   or rax, 0x02
        #   or rax, rbx
        #   or rax, [rbx]
        #   or [rax], 0x02
        #   or [rax], bl
        #   or [rax], 0x0002
        #   or [rax], bx
        #   or [rax], 0x00000002
        #   or [rax], ebx
        #   or [rax], rbx
        def or(*operands,**kwargs) = add_instruction(Instructions::OR,*operands,**kwargs)
        # Bitwise Logical OR of Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ORPD]
        # @example
        #   orpd xmm0, xmm1
        #   orpd xmm0, [rbx]
        def orpd(*operands,**kwargs) = add_instruction(Instructions::ORPD,*operands,**kwargs)
        # Bitwise Logical OR of Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ORPS]
        # @example
        #   orps xmm0, xmm1
        #   orps xmm0, [rbx]
        def orps(*operands,**kwargs) = add_instruction(Instructions::ORPS,*operands,**kwargs)
        # Packed Absolute Value of Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PABSB]
        # @example
        #   pabsb mm0, mm1
        #   pabsb mm0, [rbx]
        #   pabsb xmm0, xmm1
        #   pabsb xmm0, [rbx]
        def pabsb(*operands,**kwargs) = add_instruction(Instructions::PABSB,*operands,**kwargs)
        # Packed Absolute Value of Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PABSD]
        # @example
        #   pabsd mm0, mm1
        #   pabsd mm0, [rbx]
        #   pabsd xmm0, xmm1
        #   pabsd xmm0, [rbx]
        def pabsd(*operands,**kwargs) = add_instruction(Instructions::PABSD,*operands,**kwargs)
        # Packed Absolute Value of Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PABSW]
        # @example
        #   pabsw mm0, mm1
        #   pabsw mm0, [rbx]
        #   pabsw xmm0, xmm1
        #   pabsw xmm0, [rbx]
        def pabsw(*operands,**kwargs) = add_instruction(Instructions::PABSW,*operands,**kwargs)
        # Pack Doublewords into Words with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PACKSSDW]
        # @example
        #   packssdw mm0, mm1
        #   packssdw mm0, [rbx]
        #   packssdw xmm0, xmm1
        #   packssdw xmm0, [rbx]
        def packssdw(*operands,**kwargs) = add_instruction(Instructions::PACKSSDW,*operands,**kwargs)
        # Pack Words into Bytes with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PACKSSWB]
        # @example
        #   packsswb mm0, mm1
        #   packsswb mm0, [rbx]
        #   packsswb xmm0, xmm1
        #   packsswb xmm0, [rbx]
        def packsswb(*operands,**kwargs) = add_instruction(Instructions::PACKSSWB,*operands,**kwargs)
        # Pack Doublewords into Words with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PACKUSDW]
        # @example
        #   packusdw xmm0, xmm1
        #   packusdw xmm0, [rbx]
        def packusdw(*operands,**kwargs) = add_instruction(Instructions::PACKUSDW,*operands,**kwargs)
        # Pack Words into Bytes with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PACKUSWB]
        # @example
        #   packuswb mm0, mm1
        #   packuswb mm0, [rbx]
        #   packuswb xmm0, xmm1
        #   packuswb xmm0, [rbx]
        def packuswb(*operands,**kwargs) = add_instruction(Instructions::PACKUSWB,*operands,**kwargs)
        # Add Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PADDB]
        # @example
        #   paddb mm0, mm1
        #   paddb mm0, [rbx]
        #   paddb xmm0, xmm1
        #   paddb xmm0, [rbx]
        def paddb(*operands,**kwargs) = add_instruction(Instructions::PADDB,*operands,**kwargs)
        # Add Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PADDD]
        # @example
        #   paddd mm0, mm1
        #   paddd mm0, [rbx]
        #   paddd xmm0, xmm1
        #   paddd xmm0, [rbx]
        def paddd(*operands,**kwargs) = add_instruction(Instructions::PADDD,*operands,**kwargs)
        # Add Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PADDQ]
        # @example
        #   paddq mm0, mm1
        #   paddq mm0, [rbx]
        #   paddq xmm0, xmm1
        #   paddq xmm0, [rbx]
        def paddq(*operands,**kwargs) = add_instruction(Instructions::PADDQ,*operands,**kwargs)
        # Add Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PADDSB]
        # @example
        #   paddsb mm0, mm1
        #   paddsb mm0, [rbx]
        #   paddsb xmm0, xmm1
        #   paddsb xmm0, [rbx]
        def paddsb(*operands,**kwargs) = add_instruction(Instructions::PADDSB,*operands,**kwargs)
        # Add Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PADDSW]
        # @example
        #   paddsw mm0, mm1
        #   paddsw mm0, [rbx]
        #   paddsw xmm0, xmm1
        #   paddsw xmm0, [rbx]
        def paddsw(*operands,**kwargs) = add_instruction(Instructions::PADDSW,*operands,**kwargs)
        # Add Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PADDUSB]
        # @example
        #   paddusb mm0, mm1
        #   paddusb mm0, [rbx]
        #   paddusb xmm0, xmm1
        #   paddusb xmm0, [rbx]
        def paddusb(*operands,**kwargs) = add_instruction(Instructions::PADDUSB,*operands,**kwargs)
        # Add Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PADDUSW]
        # @example
        #   paddusw mm0, mm1
        #   paddusw mm0, [rbx]
        #   paddusw xmm0, xmm1
        #   paddusw xmm0, [rbx]
        def paddusw(*operands,**kwargs) = add_instruction(Instructions::PADDUSW,*operands,**kwargs)
        # Add Packed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PADDW]
        # @example
        #   paddw mm0, mm1
        #   paddw mm0, [rbx]
        #   paddw xmm0, xmm1
        #   paddw xmm0, [rbx]
        def paddw(*operands,**kwargs) = add_instruction(Instructions::PADDW,*operands,**kwargs)
        # Packed Align Right
        # @return [Ronin::ASM::X86_64::Instructions::PALIGNR]
        # @example
        #   palignr mm0, mm1, 0x03
        #   palignr mm0, [rbx], 0x03
        #   palignr xmm0, xmm1, 0x03
        #   palignr xmm0, [rbx], 0x03
        def palignr(*operands,**kwargs) = add_instruction(Instructions::PALIGNR,*operands,**kwargs)
        # Packed Bitwise Logical AND
        # @return [Ronin::ASM::X86_64::Instructions::PAND]
        # @example
        #   pand mm0, mm1
        #   pand mm0, [rbx]
        #   pand xmm0, xmm1
        #   pand xmm0, [rbx]
        def pand(*operands,**kwargs) = add_instruction(Instructions::PAND,*operands,**kwargs)
        # Packed Bitwise Logical AND NOT
        # @return [Ronin::ASM::X86_64::Instructions::PANDN]
        # @example
        #   pandn mm0, mm1
        #   pandn mm0, [rbx]
        #   pandn xmm0, xmm1
        #   pandn xmm0, [rbx]
        def pandn(*operands,**kwargs) = add_instruction(Instructions::PANDN,*operands,**kwargs)
        # Spin Loop Hint
        # @return [Ronin::ASM::X86_64::Instructions::PAUSE]
        def pause(*operands,**kwargs) = add_instruction(Instructions::PAUSE,*operands,**kwargs)
        # Average Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PAVGB]
        # @example
        #   pavgb mm0, mm1
        #   pavgb mm0, [rbx]
        #   pavgb xmm0, xmm1
        #   pavgb xmm0, [rbx]
        def pavgb(*operands,**kwargs) = add_instruction(Instructions::PAVGB,*operands,**kwargs)
        # Average Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PAVGUSB]
        # @example
        #   pavgusb mm0, mm1
        #   pavgusb mm0, [rbx]
        def pavgusb(*operands,**kwargs) = add_instruction(Instructions::PAVGUSB,*operands,**kwargs)
        # Average Packed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PAVGW]
        # @example
        #   pavgw mm0, mm1
        #   pavgw mm0, [rbx]
        #   pavgw xmm0, xmm1
        #   pavgw xmm0, [rbx]
        def pavgw(*operands,**kwargs) = add_instruction(Instructions::PAVGW,*operands,**kwargs)
        # Variable Blend Packed Bytes
        # @return [Ronin::ASM::X86_64::Instructions::PBLENDVB]
        # @example
        #   pblendvb xmm0, xmm1, xmm0
        #   pblendvb xmm0, [rbx], xmm0
        def pblendvb(*operands,**kwargs) = add_instruction(Instructions::PBLENDVB,*operands,**kwargs)
        # Blend Packed Words
        # @return [Ronin::ASM::X86_64::Instructions::PBLENDW]
        # @example
        #   pblendw xmm0, xmm1, 0x03
        #   pblendw xmm0, [rbx], 0x03
        def pblendw(*operands,**kwargs) = add_instruction(Instructions::PBLENDW,*operands,**kwargs)
        # Carry-Less Quadword Multiplication
        # @return [Ronin::ASM::X86_64::Instructions::PCLMULQDQ]
        # @example
        #   pclmulqdq xmm0, xmm1, 0x03
        #   pclmulqdq xmm0, [rbx], 0x03
        def pclmulqdq(*operands,**kwargs) = add_instruction(Instructions::PCLMULQDQ,*operands,**kwargs)
        # Compare Packed Byte Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::PCMPEQB]
        # @example
        #   pcmpeqb mm0, mm1
        #   pcmpeqb mm0, [rbx]
        #   pcmpeqb xmm0, xmm1
        #   pcmpeqb xmm0, [rbx]
        def pcmpeqb(*operands,**kwargs) = add_instruction(Instructions::PCMPEQB,*operands,**kwargs)
        # Compare Packed Doubleword Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::PCMPEQD]
        # @example
        #   pcmpeqd mm0, mm1
        #   pcmpeqd mm0, [rbx]
        #   pcmpeqd xmm0, xmm1
        #   pcmpeqd xmm0, [rbx]
        def pcmpeqd(*operands,**kwargs) = add_instruction(Instructions::PCMPEQD,*operands,**kwargs)
        # Compare Packed Quadword Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::PCMPEQQ]
        # @example
        #   pcmpeqq xmm0, xmm1
        #   pcmpeqq xmm0, [rbx]
        def pcmpeqq(*operands,**kwargs) = add_instruction(Instructions::PCMPEQQ,*operands,**kwargs)
        # Compare Packed Word Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::PCMPEQW]
        # @example
        #   pcmpeqw mm0, mm1
        #   pcmpeqw mm0, [rbx]
        #   pcmpeqw xmm0, xmm1
        #   pcmpeqw xmm0, [rbx]
        def pcmpeqw(*operands,**kwargs) = add_instruction(Instructions::PCMPEQW,*operands,**kwargs)
        # Packed Compare Explicit Length Strings, Return Index
        # @return [Ronin::ASM::X86_64::Instructions::PCMPESTRI]
        # @example
        #   pcmpestri xmm0, xmm1, 0x03
        #   pcmpestri xmm0, [rbx], 0x03
        def pcmpestri(*operands,**kwargs) = add_instruction(Instructions::PCMPESTRI,*operands,**kwargs)
        # Packed Compare Explicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86_64::Instructions::PCMPESTRM]
        # @example
        #   pcmpestrm xmm0, xmm1, 0x03
        #   pcmpestrm xmm0, [rbx], 0x03
        def pcmpestrm(*operands,**kwargs) = add_instruction(Instructions::PCMPESTRM,*operands,**kwargs)
        # Compare Packed Signed Byte Integers for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::PCMPGTB]
        # @example
        #   pcmpgtb mm0, mm1
        #   pcmpgtb mm0, [rbx]
        #   pcmpgtb xmm0, xmm1
        #   pcmpgtb xmm0, [rbx]
        def pcmpgtb(*operands,**kwargs) = add_instruction(Instructions::PCMPGTB,*operands,**kwargs)
        # Compare Packed Signed Doubleword Integers for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::PCMPGTD]
        # @example
        #   pcmpgtd mm0, mm1
        #   pcmpgtd mm0, [rbx]
        #   pcmpgtd xmm0, xmm1
        #   pcmpgtd xmm0, [rbx]
        def pcmpgtd(*operands,**kwargs) = add_instruction(Instructions::PCMPGTD,*operands,**kwargs)
        # Compare Packed Data for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::PCMPGTQ]
        # @example
        #   pcmpgtq xmm0, xmm1
        #   pcmpgtq xmm0, [rbx]
        def pcmpgtq(*operands,**kwargs) = add_instruction(Instructions::PCMPGTQ,*operands,**kwargs)
        # Compare Packed Signed Word Integers for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::PCMPGTW]
        # @example
        #   pcmpgtw mm0, mm1
        #   pcmpgtw mm0, [rbx]
        #   pcmpgtw xmm0, xmm1
        #   pcmpgtw xmm0, [rbx]
        def pcmpgtw(*operands,**kwargs) = add_instruction(Instructions::PCMPGTW,*operands,**kwargs)
        # Packed Compare Implicit Length Strings, Return Index
        # @return [Ronin::ASM::X86_64::Instructions::PCMPISTRI]
        # @example
        #   pcmpistri xmm0, xmm1, 0x03
        #   pcmpistri xmm0, [rbx], 0x03
        def pcmpistri(*operands,**kwargs) = add_instruction(Instructions::PCMPISTRI,*operands,**kwargs)
        # Packed Compare Implicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86_64::Instructions::PCMPISTRM]
        # @example
        #   pcmpistrm xmm0, xmm1, 0x03
        #   pcmpistrm xmm0, [rbx], 0x03
        def pcmpistrm(*operands,**kwargs) = add_instruction(Instructions::PCMPISTRM,*operands,**kwargs)
        # Parallel Bits Deposit
        # @return [Ronin::ASM::X86_64::Instructions::PDEP]
        # @example
        #   pdep eax, ebx, ecx
        #   pdep eax, ebx, [rcx]
        #   pdep rax, rbx, rcx
        #   pdep rax, rbx, [rcx]
        def pdep(*operands,**kwargs) = add_instruction(Instructions::PDEP,*operands,**kwargs)
        # Parallel Bits Extract
        # @return [Ronin::ASM::X86_64::Instructions::PEXT]
        # @example
        #   pext eax, ebx, ecx
        #   pext eax, ebx, [rcx]
        #   pext rax, rbx, rcx
        #   pext rax, rbx, [rcx]
        def pext(*operands,**kwargs) = add_instruction(Instructions::PEXT,*operands,**kwargs)
        # Extract Byte
        # @return [Ronin::ASM::X86_64::Instructions::PEXTRB]
        # @example
        #   pextrb eax, xmm1, 0x03
        #   pextrb [rax], xmm1, 0x03
        def pextrb(*operands,**kwargs) = add_instruction(Instructions::PEXTRB,*operands,**kwargs)
        # Extract Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::PEXTRD]
        # @example
        #   pextrd eax, xmm1, 0x03
        #   pextrd [rax], xmm1, 0x03
        def pextrd(*operands,**kwargs) = add_instruction(Instructions::PEXTRD,*operands,**kwargs)
        # Extract Quadword
        # @return [Ronin::ASM::X86_64::Instructions::PEXTRQ]
        # @example
        #   pextrq rax, xmm1, 0x03
        #   pextrq [rax], xmm1, 0x03
        def pextrq(*operands,**kwargs) = add_instruction(Instructions::PEXTRQ,*operands,**kwargs)
        # Extract Word
        # @return [Ronin::ASM::X86_64::Instructions::PEXTRW]
        # @example
        #   pextrw eax, mm1, 0x03
        #   pextrw eax, xmm1, 0x03
        #   pextrw [rax], xmm1, 0x03
        def pextrw(*operands,**kwargs) = add_instruction(Instructions::PEXTRW,*operands,**kwargs)
        # Packed Floating-Point to Integer Doubleword Converson
        # @return [Ronin::ASM::X86_64::Instructions::PF2ID]
        # @example
        #   pf2id mm0, mm1
        #   pf2id mm0, [rbx]
        def pf2id(*operands,**kwargs) = add_instruction(Instructions::PF2ID,*operands,**kwargs)
        # Packed Floating-Point to Integer Word Conversion
        # @return [Ronin::ASM::X86_64::Instructions::PF2IW]
        # @example
        #   pf2iw mm0, mm1
        #   pf2iw mm0, [rbx]
        def pf2iw(*operands,**kwargs) = add_instruction(Instructions::PF2IW,*operands,**kwargs)
        # Packed Floating-Point Accumulate
        # @return [Ronin::ASM::X86_64::Instructions::PFACC]
        # @example
        #   pfacc mm0, mm1
        #   pfacc mm0, [rbx]
        def pfacc(*operands,**kwargs) = add_instruction(Instructions::PFACC,*operands,**kwargs)
        # Packed Floating-Point Add
        # @return [Ronin::ASM::X86_64::Instructions::PFADD]
        # @example
        #   pfadd mm0, mm1
        #   pfadd mm0, [rbx]
        def pfadd(*operands,**kwargs) = add_instruction(Instructions::PFADD,*operands,**kwargs)
        # Packed Floating-Point Compare for Equal
        # @return [Ronin::ASM::X86_64::Instructions::PFCMPEQ]
        # @example
        #   pfcmpeq mm0, mm1
        #   pfcmpeq mm0, [rbx]
        def pfcmpeq(*operands,**kwargs) = add_instruction(Instructions::PFCMPEQ,*operands,**kwargs)
        # Packed Floating-Point Compare for Greater or Equal
        # @return [Ronin::ASM::X86_64::Instructions::PFCMPGE]
        # @example
        #   pfcmpge mm0, mm1
        #   pfcmpge mm0, [rbx]
        def pfcmpge(*operands,**kwargs) = add_instruction(Instructions::PFCMPGE,*operands,**kwargs)
        # Packed Floating-Point Compare for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::PFCMPGT]
        # @example
        #   pfcmpgt mm0, mm1
        #   pfcmpgt mm0, [rbx]
        def pfcmpgt(*operands,**kwargs) = add_instruction(Instructions::PFCMPGT,*operands,**kwargs)
        # Packed Floating-Point Maximum
        # @return [Ronin::ASM::X86_64::Instructions::PFMAX]
        # @example
        #   pfmax mm0, mm1
        #   pfmax mm0, [rbx]
        def pfmax(*operands,**kwargs) = add_instruction(Instructions::PFMAX,*operands,**kwargs)
        # Packed Floating-Point Minimum
        # @return [Ronin::ASM::X86_64::Instructions::PFMIN]
        # @example
        #   pfmin mm0, mm1
        #   pfmin mm0, [rbx]
        def pfmin(*operands,**kwargs) = add_instruction(Instructions::PFMIN,*operands,**kwargs)
        # Packed Floating-Point Multiply
        # @return [Ronin::ASM::X86_64::Instructions::PFMUL]
        # @example
        #   pfmul mm0, mm1
        #   pfmul mm0, [rbx]
        def pfmul(*operands,**kwargs) = add_instruction(Instructions::PFMUL,*operands,**kwargs)
        # Packed Floating-Point Negative Accumulate
        # @return [Ronin::ASM::X86_64::Instructions::PFNACC]
        # @example
        #   pfnacc mm0, mm1
        #   pfnacc mm0, [rbx]
        def pfnacc(*operands,**kwargs) = add_instruction(Instructions::PFNACC,*operands,**kwargs)
        # Packed Floating-Point Positive-Negative Accumulate
        # @return [Ronin::ASM::X86_64::Instructions::PFPNACC]
        # @example
        #   pfpnacc mm0, mm1
        #   pfpnacc mm0, [rbx]
        def pfpnacc(*operands,**kwargs) = add_instruction(Instructions::PFPNACC,*operands,**kwargs)
        # Packed Floating-Point Reciprocal Approximation
        # @return [Ronin::ASM::X86_64::Instructions::PFRCP]
        # @example
        #   pfrcp mm0, mm1
        #   pfrcp mm0, [rbx]
        def pfrcp(*operands,**kwargs) = add_instruction(Instructions::PFRCP,*operands,**kwargs)
        # Packed Floating-Point Reciprocal Iteration 1
        # @return [Ronin::ASM::X86_64::Instructions::PFRCPIT1]
        # @example
        #   pfrcpit1 mm0, mm1
        #   pfrcpit1 mm0, [rbx]
        def pfrcpit1(*operands,**kwargs) = add_instruction(Instructions::PFRCPIT1,*operands,**kwargs)
        # Packed Floating-Point Reciprocal Iteration 2
        # @return [Ronin::ASM::X86_64::Instructions::PFRCPIT2]
        # @example
        #   pfrcpit2 mm0, mm1
        #   pfrcpit2 mm0, [rbx]
        def pfrcpit2(*operands,**kwargs) = add_instruction(Instructions::PFRCPIT2,*operands,**kwargs)
        # Packed Floating-Point Reciprocal Square Root Iteration 1
        # @return [Ronin::ASM::X86_64::Instructions::PFRSQIT1]
        # @example
        #   pfrsqit1 mm0, mm1
        #   pfrsqit1 mm0, [rbx]
        def pfrsqit1(*operands,**kwargs) = add_instruction(Instructions::PFRSQIT1,*operands,**kwargs)
        # Packed Floating-Point Reciprocal Square Root Approximation
        # @return [Ronin::ASM::X86_64::Instructions::PFRSQRT]
        # @example
        #   pfrsqrt mm0, mm1
        #   pfrsqrt mm0, [rbx]
        def pfrsqrt(*operands,**kwargs) = add_instruction(Instructions::PFRSQRT,*operands,**kwargs)
        # Packed Floating-Point Subtract
        # @return [Ronin::ASM::X86_64::Instructions::PFSUB]
        # @example
        #   pfsub mm0, mm1
        #   pfsub mm0, [rbx]
        def pfsub(*operands,**kwargs) = add_instruction(Instructions::PFSUB,*operands,**kwargs)
        # Packed Floating-Point Subtract Reverse
        # @return [Ronin::ASM::X86_64::Instructions::PFSUBR]
        # @example
        #   pfsubr mm0, mm1
        #   pfsubr mm0, [rbx]
        def pfsubr(*operands,**kwargs) = add_instruction(Instructions::PFSUBR,*operands,**kwargs)
        # Packed Horizontal Add Doubleword Integer
        # @return [Ronin::ASM::X86_64::Instructions::PHADDD]
        # @example
        #   phaddd mm0, mm1
        #   phaddd mm0, [rbx]
        #   phaddd xmm0, xmm1
        #   phaddd xmm0, [rbx]
        def phaddd(*operands,**kwargs) = add_instruction(Instructions::PHADDD,*operands,**kwargs)
        # Packed Horizontal Add Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PHADDSW]
        # @example
        #   phaddsw mm0, mm1
        #   phaddsw mm0, [rbx]
        #   phaddsw xmm0, xmm1
        #   phaddsw xmm0, [rbx]
        def phaddsw(*operands,**kwargs) = add_instruction(Instructions::PHADDSW,*operands,**kwargs)
        # Packed Horizontal Add Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PHADDW]
        # @example
        #   phaddw mm0, mm1
        #   phaddw mm0, [rbx]
        #   phaddw xmm0, xmm1
        #   phaddw xmm0, [rbx]
        def phaddw(*operands,**kwargs) = add_instruction(Instructions::PHADDW,*operands,**kwargs)
        # Packed Horizontal Minimum of Unsigned Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PHMINPOSUW]
        # @example
        #   phminposuw xmm0, xmm1
        #   phminposuw xmm0, [rbx]
        def phminposuw(*operands,**kwargs) = add_instruction(Instructions::PHMINPOSUW,*operands,**kwargs)
        # Packed Horizontal Subtract Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PHSUBD]
        # @example
        #   phsubd mm0, mm1
        #   phsubd mm0, [rbx]
        #   phsubd xmm0, xmm1
        #   phsubd xmm0, [rbx]
        def phsubd(*operands,**kwargs) = add_instruction(Instructions::PHSUBD,*operands,**kwargs)
        # Packed Horizontal Subtract Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PHSUBSW]
        # @example
        #   phsubsw mm0, mm1
        #   phsubsw mm0, [rbx]
        #   phsubsw xmm0, xmm1
        #   phsubsw xmm0, [rbx]
        def phsubsw(*operands,**kwargs) = add_instruction(Instructions::PHSUBSW,*operands,**kwargs)
        # Packed Horizontal Subtract Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PHSUBW]
        # @example
        #   phsubw mm0, mm1
        #   phsubw mm0, [rbx]
        #   phsubw xmm0, xmm1
        #   phsubw xmm0, [rbx]
        def phsubw(*operands,**kwargs) = add_instruction(Instructions::PHSUBW,*operands,**kwargs)
        # Packed Integer to Floating-Point Doubleword Conversion
        # @return [Ronin::ASM::X86_64::Instructions::PI2FD]
        # @example
        #   pi2fd mm0, mm1
        #   pi2fd mm0, [rbx]
        def pi2fd(*operands,**kwargs) = add_instruction(Instructions::PI2FD,*operands,**kwargs)
        # Packed Integer to Floating-Point Word Conversion
        # @return [Ronin::ASM::X86_64::Instructions::PI2FW]
        # @example
        #   pi2fw mm0, mm1
        #   pi2fw mm0, [rbx]
        def pi2fw(*operands,**kwargs) = add_instruction(Instructions::PI2FW,*operands,**kwargs)
        # Insert Byte
        # @return [Ronin::ASM::X86_64::Instructions::PINSRB]
        # @example
        #   pinsrb xmm0, ebx, 0x03
        #   pinsrb xmm0, [rbx], 0x03
        def pinsrb(*operands,**kwargs) = add_instruction(Instructions::PINSRB,*operands,**kwargs)
        # Insert Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::PINSRD]
        # @example
        #   pinsrd xmm0, ebx, 0x03
        #   pinsrd xmm0, [rbx], 0x03
        def pinsrd(*operands,**kwargs) = add_instruction(Instructions::PINSRD,*operands,**kwargs)
        # Insert Quadword
        # @return [Ronin::ASM::X86_64::Instructions::PINSRQ]
        # @example
        #   pinsrq xmm0, rbx, 0x03
        #   pinsrq xmm0, [rbx], 0x03
        def pinsrq(*operands,**kwargs) = add_instruction(Instructions::PINSRQ,*operands,**kwargs)
        # Insert Word
        # @return [Ronin::ASM::X86_64::Instructions::PINSRW]
        # @example
        #   pinsrw mm0, ebx, 0x03
        #   pinsrw mm0, [rbx], 0x03
        #   pinsrw xmm0, ebx, 0x03
        #   pinsrw xmm0, [rbx], 0x03
        def pinsrw(*operands,**kwargs) = add_instruction(Instructions::PINSRW,*operands,**kwargs)
        # Multiply and Add Packed Signed and Unsigned Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMADDUBSW]
        # @example
        #   pmaddubsw mm0, mm1
        #   pmaddubsw mm0, [rbx]
        #   pmaddubsw xmm0, xmm1
        #   pmaddubsw xmm0, [rbx]
        def pmaddubsw(*operands,**kwargs) = add_instruction(Instructions::PMADDUBSW,*operands,**kwargs)
        # Multiply and Add Packed Signed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMADDWD]
        # @example
        #   pmaddwd mm0, mm1
        #   pmaddwd mm0, [rbx]
        #   pmaddwd xmm0, xmm1
        #   pmaddwd xmm0, [rbx]
        def pmaddwd(*operands,**kwargs) = add_instruction(Instructions::PMADDWD,*operands,**kwargs)
        # Maximum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMAXSB]
        # @example
        #   pmaxsb xmm0, xmm1
        #   pmaxsb xmm0, [rbx]
        def pmaxsb(*operands,**kwargs) = add_instruction(Instructions::PMAXSB,*operands,**kwargs)
        # Maximum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMAXSD]
        # @example
        #   pmaxsd xmm0, xmm1
        #   pmaxsd xmm0, [rbx]
        def pmaxsd(*operands,**kwargs) = add_instruction(Instructions::PMAXSD,*operands,**kwargs)
        # Maximum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMAXSW]
        # @example
        #   pmaxsw mm0, mm1
        #   pmaxsw mm0, [rbx]
        #   pmaxsw xmm0, xmm1
        #   pmaxsw xmm0, [rbx]
        def pmaxsw(*operands,**kwargs) = add_instruction(Instructions::PMAXSW,*operands,**kwargs)
        # Maximum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMAXUB]
        # @example
        #   pmaxub mm0, mm1
        #   pmaxub mm0, [rbx]
        #   pmaxub xmm0, xmm1
        #   pmaxub xmm0, [rbx]
        def pmaxub(*operands,**kwargs) = add_instruction(Instructions::PMAXUB,*operands,**kwargs)
        # Maximum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMAXUD]
        # @example
        #   pmaxud xmm0, xmm1
        #   pmaxud xmm0, [rbx]
        def pmaxud(*operands,**kwargs) = add_instruction(Instructions::PMAXUD,*operands,**kwargs)
        # Maximum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMAXUW]
        # @example
        #   pmaxuw xmm0, xmm1
        #   pmaxuw xmm0, [rbx]
        def pmaxuw(*operands,**kwargs) = add_instruction(Instructions::PMAXUW,*operands,**kwargs)
        # Minimum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMINSB]
        # @example
        #   pminsb xmm0, xmm1
        #   pminsb xmm0, [rbx]
        def pminsb(*operands,**kwargs) = add_instruction(Instructions::PMINSB,*operands,**kwargs)
        # Minimum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMINSD]
        # @example
        #   pminsd xmm0, xmm1
        #   pminsd xmm0, [rbx]
        def pminsd(*operands,**kwargs) = add_instruction(Instructions::PMINSD,*operands,**kwargs)
        # Minimum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMINSW]
        # @example
        #   pminsw mm0, mm1
        #   pminsw mm0, [rbx]
        #   pminsw xmm0, xmm1
        #   pminsw xmm0, [rbx]
        def pminsw(*operands,**kwargs) = add_instruction(Instructions::PMINSW,*operands,**kwargs)
        # Minimum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMINUB]
        # @example
        #   pminub mm0, mm1
        #   pminub mm0, [rbx]
        #   pminub xmm0, xmm1
        #   pminub xmm0, [rbx]
        def pminub(*operands,**kwargs) = add_instruction(Instructions::PMINUB,*operands,**kwargs)
        # Minimum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMINUD]
        # @example
        #   pminud xmm0, xmm1
        #   pminud xmm0, [rbx]
        def pminud(*operands,**kwargs) = add_instruction(Instructions::PMINUD,*operands,**kwargs)
        # Minimum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMINUW]
        # @example
        #   pminuw xmm0, xmm1
        #   pminuw xmm0, [rbx]
        def pminuw(*operands,**kwargs) = add_instruction(Instructions::PMINUW,*operands,**kwargs)
        # Move Byte Mask
        # @return [Ronin::ASM::X86_64::Instructions::PMOVMSKB]
        # @example
        #   pmovmskb eax, mm1
        #   pmovmskb eax, xmm1
        def pmovmskb(*operands,**kwargs) = add_instruction(Instructions::PMOVMSKB,*operands,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVSXBD]
        # @example
        #   pmovsxbd xmm0, xmm1
        #   pmovsxbd xmm0, [rbx]
        def pmovsxbd(*operands,**kwargs) = add_instruction(Instructions::PMOVSXBD,*operands,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVSXBQ]
        # @example
        #   pmovsxbq xmm0, xmm1
        #   pmovsxbq xmm0, [rbx]
        def pmovsxbq(*operands,**kwargs) = add_instruction(Instructions::PMOVSXBQ,*operands,**kwargs)
        # Move Packed Byte Integers to Word Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVSXBW]
        # @example
        #   pmovsxbw xmm0, xmm1
        #   pmovsxbw xmm0, [rbx]
        def pmovsxbw(*operands,**kwargs) = add_instruction(Instructions::PMOVSXBW,*operands,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVSXDQ]
        # @example
        #   pmovsxdq xmm0, xmm1
        #   pmovsxdq xmm0, [rbx]
        def pmovsxdq(*operands,**kwargs) = add_instruction(Instructions::PMOVSXDQ,*operands,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVSXWD]
        # @example
        #   pmovsxwd xmm0, xmm1
        #   pmovsxwd xmm0, [rbx]
        def pmovsxwd(*operands,**kwargs) = add_instruction(Instructions::PMOVSXWD,*operands,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVSXWQ]
        # @example
        #   pmovsxwq xmm0, xmm1
        #   pmovsxwq xmm0, [rbx]
        def pmovsxwq(*operands,**kwargs) = add_instruction(Instructions::PMOVSXWQ,*operands,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVZXBD]
        # @example
        #   pmovzxbd xmm0, xmm1
        #   pmovzxbd xmm0, [rbx]
        def pmovzxbd(*operands,**kwargs) = add_instruction(Instructions::PMOVZXBD,*operands,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVZXBQ]
        # @example
        #   pmovzxbq xmm0, xmm1
        #   pmovzxbq xmm0, [rbx]
        def pmovzxbq(*operands,**kwargs) = add_instruction(Instructions::PMOVZXBQ,*operands,**kwargs)
        # Move Packed Byte Integers to Word Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVZXBW]
        # @example
        #   pmovzxbw xmm0, xmm1
        #   pmovzxbw xmm0, [rbx]
        def pmovzxbw(*operands,**kwargs) = add_instruction(Instructions::PMOVZXBW,*operands,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVZXDQ]
        # @example
        #   pmovzxdq xmm0, xmm1
        #   pmovzxdq xmm0, [rbx]
        def pmovzxdq(*operands,**kwargs) = add_instruction(Instructions::PMOVZXDQ,*operands,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVZXWD]
        # @example
        #   pmovzxwd xmm0, xmm1
        #   pmovzxwd xmm0, [rbx]
        def pmovzxwd(*operands,**kwargs) = add_instruction(Instructions::PMOVZXWD,*operands,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::PMOVZXWQ]
        # @example
        #   pmovzxwq xmm0, xmm1
        #   pmovzxwq xmm0, [rbx]
        def pmovzxwq(*operands,**kwargs) = add_instruction(Instructions::PMOVZXWQ,*operands,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Quadword Result
        # @return [Ronin::ASM::X86_64::Instructions::PMULDQ]
        # @example
        #   pmuldq xmm0, xmm1
        #   pmuldq xmm0, [rbx]
        def pmuldq(*operands,**kwargs) = add_instruction(Instructions::PMULDQ,*operands,**kwargs)
        # Packed Multiply Signed Word Integers and Store High Result with Round and Scale
        # @return [Ronin::ASM::X86_64::Instructions::PMULHRSW]
        # @example
        #   pmulhrsw mm0, mm1
        #   pmulhrsw mm0, [rbx]
        #   pmulhrsw xmm0, xmm1
        #   pmulhrsw xmm0, [rbx]
        def pmulhrsw(*operands,**kwargs) = add_instruction(Instructions::PMULHRSW,*operands,**kwargs)
        # Packed Multiply High Rounded Word
        # @return [Ronin::ASM::X86_64::Instructions::PMULHRW]
        # @example
        #   pmulhrw mm0, mm1
        #   pmulhrw mm0, [rbx]
        def pmulhrw(*operands,**kwargs) = add_instruction(Instructions::PMULHRW,*operands,**kwargs)
        # Multiply Packed Unsigned Word Integers and Store High Result
        # @return [Ronin::ASM::X86_64::Instructions::PMULHUW]
        # @example
        #   pmulhuw mm0, mm1
        #   pmulhuw mm0, [rbx]
        #   pmulhuw xmm0, xmm1
        #   pmulhuw xmm0, [rbx]
        def pmulhuw(*operands,**kwargs) = add_instruction(Instructions::PMULHUW,*operands,**kwargs)
        # Multiply Packed Signed Word Integers and Store High Result
        # @return [Ronin::ASM::X86_64::Instructions::PMULHW]
        # @example
        #   pmulhw mm0, mm1
        #   pmulhw mm0, [rbx]
        #   pmulhw xmm0, xmm1
        #   pmulhw xmm0, [rbx]
        def pmulhw(*operands,**kwargs) = add_instruction(Instructions::PMULHW,*operands,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Low Result
        # @return [Ronin::ASM::X86_64::Instructions::PMULLD]
        # @example
        #   pmulld xmm0, xmm1
        #   pmulld xmm0, [rbx]
        def pmulld(*operands,**kwargs) = add_instruction(Instructions::PMULLD,*operands,**kwargs)
        # Multiply Packed Signed Word Integers and Store Low Result
        # @return [Ronin::ASM::X86_64::Instructions::PMULLW]
        # @example
        #   pmullw mm0, mm1
        #   pmullw mm0, [rbx]
        #   pmullw xmm0, xmm1
        #   pmullw xmm0, [rbx]
        def pmullw(*operands,**kwargs) = add_instruction(Instructions::PMULLW,*operands,**kwargs)
        # Multiply Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PMULUDQ]
        # @example
        #   pmuludq mm0, mm1
        #   pmuludq mm0, [rbx]
        #   pmuludq xmm0, xmm1
        #   pmuludq xmm0, [rbx]
        def pmuludq(*operands,**kwargs) = add_instruction(Instructions::PMULUDQ,*operands,**kwargs)
        # Pop a Value from the Stack
        # @return [Ronin::ASM::X86_64::Instructions::POP]
        # @example
        #   pop ax
        #   pop rax
        #   pop [rax]
        def pop(*operands,**kwargs) = add_instruction(Instructions::POP,*operands,**kwargs)
        # Count of Number of Bits Set to 1
        # @return [Ronin::ASM::X86_64::Instructions::POPCNT]
        # @example
        #   popcnt ax, bx
        #   popcnt ax, [rbx]
        #   popcnt eax, ebx
        #   popcnt eax, [rbx]
        #   popcnt rax, rbx
        #   popcnt rax, [rbx]
        def popcnt(*operands,**kwargs) = add_instruction(Instructions::POPCNT,*operands,**kwargs)
        # Packed Bitwise Logical OR
        # @return [Ronin::ASM::X86_64::Instructions::POR]
        # @example
        #   por mm0, mm1
        #   por mm0, [rbx]
        #   por xmm0, xmm1
        #   por xmm0, [rbx]
        def por(*operands,**kwargs) = add_instruction(Instructions::POR,*operands,**kwargs)
        # Prefetch Data into Caches
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCH]
        # @example
        #   prefetch [rax]
        def prefetch(*operands,**kwargs) = add_instruction(Instructions::PREFETCH,*operands,**kwargs)
        # Prefetch Code Into Instruction Caches using IT0 Hint
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHIT0]
        # @example
        #   prefetchit0 [rax]
        def prefetchit0(*operands,**kwargs) = add_instruction(Instructions::PREFETCHIT0,*operands,**kwargs)
        # Prefetch Code Into Instruction Caches using IT1 Hint
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHIT1]
        # @example
        #   prefetchit1 [rax]
        def prefetchit1(*operands,**kwargs) = add_instruction(Instructions::PREFETCHIT1,*operands,**kwargs)
        # Prefetch Data Into Caches using NTA Hint
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHNTA]
        # @example
        #   prefetchnta [rax]
        def prefetchnta(*operands,**kwargs) = add_instruction(Instructions::PREFETCHNTA,*operands,**kwargs)
        # Prefetch Data Into Caches using T0 Hint
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHT0]
        # @example
        #   prefetcht0 [rax]
        def prefetcht0(*operands,**kwargs) = add_instruction(Instructions::PREFETCHT0,*operands,**kwargs)
        # Prefetch Data Into Caches using T1 Hint
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHT1]
        # @example
        #   prefetcht1 [rax]
        def prefetcht1(*operands,**kwargs) = add_instruction(Instructions::PREFETCHT1,*operands,**kwargs)
        # Prefetch Data Into Caches using T2 Hint
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHT2]
        # @example
        #   prefetcht2 [rax]
        def prefetcht2(*operands,**kwargs) = add_instruction(Instructions::PREFETCHT2,*operands,**kwargs)
        # Prefetch Data into Caches in Anticipation of a Write
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHW]
        # @example
        #   prefetchw [rax]
        def prefetchw(*operands,**kwargs) = add_instruction(Instructions::PREFETCHW,*operands,**kwargs)
        # Prefetch Vector Data Into Caches with Intent to Write and T1 Hint
        # @return [Ronin::ASM::X86_64::Instructions::PREFETCHWT1]
        # @example
        #   prefetchwt1 [rax]
        def prefetchwt1(*operands,**kwargs) = add_instruction(Instructions::PREFETCHWT1,*operands,**kwargs)
        # Compute Sum of Absolute Differences
        # @return [Ronin::ASM::X86_64::Instructions::PSADBW]
        # @example
        #   psadbw mm0, mm1
        #   psadbw mm0, [rbx]
        #   psadbw xmm0, xmm1
        #   psadbw xmm0, [rbx]
        def psadbw(*operands,**kwargs) = add_instruction(Instructions::PSADBW,*operands,**kwargs)
        # Packed Shuffle Bytes
        # @return [Ronin::ASM::X86_64::Instructions::PSHUFB]
        # @example
        #   pshufb mm0, mm1
        #   pshufb mm0, [rbx]
        #   pshufb xmm0, xmm1
        #   pshufb xmm0, [rbx]
        def pshufb(*operands,**kwargs) = add_instruction(Instructions::PSHUFB,*operands,**kwargs)
        # Shuffle Packed Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::PSHUFD]
        # @example
        #   pshufd xmm0, xmm1, 0x03
        #   pshufd xmm0, [rbx], 0x03
        def pshufd(*operands,**kwargs) = add_instruction(Instructions::PSHUFD,*operands,**kwargs)
        # Shuffle Packed High Words
        # @return [Ronin::ASM::X86_64::Instructions::PSHUFHW]
        # @example
        #   pshufhw xmm0, xmm1, 0x03
        #   pshufhw xmm0, [rbx], 0x03
        def pshufhw(*operands,**kwargs) = add_instruction(Instructions::PSHUFHW,*operands,**kwargs)
        # Shuffle Packed Low Words
        # @return [Ronin::ASM::X86_64::Instructions::PSHUFLW]
        # @example
        #   pshuflw xmm0, xmm1, 0x03
        #   pshuflw xmm0, [rbx], 0x03
        def pshuflw(*operands,**kwargs) = add_instruction(Instructions::PSHUFLW,*operands,**kwargs)
        # Shuffle Packed Words
        # @return [Ronin::ASM::X86_64::Instructions::PSHUFW]
        # @example
        #   pshufw mm0, mm1, 0x03
        #   pshufw mm0, [rbx], 0x03
        def pshufw(*operands,**kwargs) = add_instruction(Instructions::PSHUFW,*operands,**kwargs)
        # Packed Sign of Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PSIGNB]
        # @example
        #   psignb mm0, mm1
        #   psignb mm0, [rbx]
        #   psignb xmm0, xmm1
        #   psignb xmm0, [rbx]
        def psignb(*operands,**kwargs) = add_instruction(Instructions::PSIGNB,*operands,**kwargs)
        # Packed Sign of Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PSIGND]
        # @example
        #   psignd mm0, mm1
        #   psignd mm0, [rbx]
        #   psignd xmm0, xmm1
        #   psignd xmm0, [rbx]
        def psignd(*operands,**kwargs) = add_instruction(Instructions::PSIGND,*operands,**kwargs)
        # Packed Sign of Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PSIGNW]
        # @example
        #   psignw mm0, mm1
        #   psignw mm0, [rbx]
        #   psignw xmm0, xmm1
        #   psignw xmm0, [rbx]
        def psignw(*operands,**kwargs) = add_instruction(Instructions::PSIGNW,*operands,**kwargs)
        # Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSLLD]
        # @example
        #   pslld mm0, 0x02
        #   pslld mm0, mm1
        #   pslld mm0, [rbx]
        #   pslld xmm0, 0x02
        #   pslld xmm0, xmm1
        #   pslld xmm0, [rbx]
        def pslld(*operands,**kwargs) = add_instruction(Instructions::PSLLD,*operands,**kwargs)
        # Shift Packed Double Quadword Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSLLDQ]
        # @example
        #   pslldq xmm0, 0x02
        def pslldq(*operands,**kwargs) = add_instruction(Instructions::PSLLDQ,*operands,**kwargs)
        # Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSLLQ]
        # @example
        #   psllq mm0, 0x02
        #   psllq mm0, mm1
        #   psllq mm0, [rbx]
        #   psllq xmm0, 0x02
        #   psllq xmm0, xmm1
        #   psllq xmm0, [rbx]
        def psllq(*operands,**kwargs) = add_instruction(Instructions::PSLLQ,*operands,**kwargs)
        # Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSLLW]
        # @example
        #   psllw mm0, 0x02
        #   psllw mm0, mm1
        #   psllw mm0, [rbx]
        #   psllw xmm0, 0x02
        #   psllw xmm0, xmm1
        #   psllw xmm0, [rbx]
        def psllw(*operands,**kwargs) = add_instruction(Instructions::PSLLW,*operands,**kwargs)
        # Shift Packed Doubleword Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::PSRAD]
        # @example
        #   psrad mm0, 0x02
        #   psrad mm0, mm1
        #   psrad mm0, [rbx]
        #   psrad xmm0, 0x02
        #   psrad xmm0, xmm1
        #   psrad xmm0, [rbx]
        def psrad(*operands,**kwargs) = add_instruction(Instructions::PSRAD,*operands,**kwargs)
        # Shift Packed Word Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::PSRAW]
        # @example
        #   psraw mm0, 0x02
        #   psraw mm0, mm1
        #   psraw mm0, [rbx]
        #   psraw xmm0, 0x02
        #   psraw xmm0, xmm1
        #   psraw xmm0, [rbx]
        def psraw(*operands,**kwargs) = add_instruction(Instructions::PSRAW,*operands,**kwargs)
        # Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSRLD]
        # @example
        #   psrld mm0, 0x02
        #   psrld mm0, mm1
        #   psrld mm0, [rbx]
        #   psrld xmm0, 0x02
        #   psrld xmm0, xmm1
        #   psrld xmm0, [rbx]
        def psrld(*operands,**kwargs) = add_instruction(Instructions::PSRLD,*operands,**kwargs)
        # Shift Packed Double Quadword Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSRLDQ]
        # @example
        #   psrldq xmm0, 0x02
        def psrldq(*operands,**kwargs) = add_instruction(Instructions::PSRLDQ,*operands,**kwargs)
        # Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSRLQ]
        # @example
        #   psrlq mm0, 0x02
        #   psrlq mm0, mm1
        #   psrlq mm0, [rbx]
        #   psrlq xmm0, 0x02
        #   psrlq xmm0, xmm1
        #   psrlq xmm0, [rbx]
        def psrlq(*operands,**kwargs) = add_instruction(Instructions::PSRLQ,*operands,**kwargs)
        # Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::PSRLW]
        # @example
        #   psrlw mm0, 0x02
        #   psrlw mm0, mm1
        #   psrlw mm0, [rbx]
        #   psrlw xmm0, 0x02
        #   psrlw xmm0, xmm1
        #   psrlw xmm0, [rbx]
        def psrlw(*operands,**kwargs) = add_instruction(Instructions::PSRLW,*operands,**kwargs)
        # Subtract Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::PSUBB]
        # @example
        #   psubb mm0, mm1
        #   psubb mm0, [rbx]
        #   psubb xmm0, xmm1
        #   psubb xmm0, [rbx]
        def psubb(*operands,**kwargs) = add_instruction(Instructions::PSUBB,*operands,**kwargs)
        # Subtract Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PSUBD]
        # @example
        #   psubd mm0, mm1
        #   psubd mm0, [rbx]
        #   psubd xmm0, xmm1
        #   psubd xmm0, [rbx]
        def psubd(*operands,**kwargs) = add_instruction(Instructions::PSUBD,*operands,**kwargs)
        # Subtract Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::PSUBQ]
        # @example
        #   psubq mm0, mm1
        #   psubq mm0, [rbx]
        #   psubq xmm0, xmm1
        #   psubq xmm0, [rbx]
        def psubq(*operands,**kwargs) = add_instruction(Instructions::PSUBQ,*operands,**kwargs)
        # Subtract Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PSUBSB]
        # @example
        #   psubsb mm0, mm1
        #   psubsb mm0, [rbx]
        #   psubsb xmm0, xmm1
        #   psubsb xmm0, [rbx]
        def psubsb(*operands,**kwargs) = add_instruction(Instructions::PSUBSB,*operands,**kwargs)
        # Subtract Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PSUBSW]
        # @example
        #   psubsw mm0, mm1
        #   psubsw mm0, [rbx]
        #   psubsw xmm0, xmm1
        #   psubsw xmm0, [rbx]
        def psubsw(*operands,**kwargs) = add_instruction(Instructions::PSUBSW,*operands,**kwargs)
        # Subtract Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PSUBUSB]
        # @example
        #   psubusb mm0, mm1
        #   psubusb mm0, [rbx]
        #   psubusb xmm0, xmm1
        #   psubusb xmm0, [rbx]
        def psubusb(*operands,**kwargs) = add_instruction(Instructions::PSUBUSB,*operands,**kwargs)
        # Subtract Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::PSUBUSW]
        # @example
        #   psubusw mm0, mm1
        #   psubusw mm0, [rbx]
        #   psubusw xmm0, xmm1
        #   psubusw xmm0, [rbx]
        def psubusw(*operands,**kwargs) = add_instruction(Instructions::PSUBUSW,*operands,**kwargs)
        # Subtract Packed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::PSUBW]
        # @example
        #   psubw mm0, mm1
        #   psubw mm0, [rbx]
        #   psubw xmm0, xmm1
        #   psubw xmm0, [rbx]
        def psubw(*operands,**kwargs) = add_instruction(Instructions::PSUBW,*operands,**kwargs)
        # Packed Swap Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::PSWAPD]
        # @example
        #   pswapd mm0, mm1
        #   pswapd mm0, [rbx]
        def pswapd(*operands,**kwargs) = add_instruction(Instructions::PSWAPD,*operands,**kwargs)
        # Packed Logical Compare
        # @return [Ronin::ASM::X86_64::Instructions::PTEST]
        # @example
        #   ptest xmm0, xmm1
        #   ptest xmm0, [rbx]
        def ptest(*operands,**kwargs) = add_instruction(Instructions::PTEST,*operands,**kwargs)
        # Unpack and Interleave High-Order Bytes into Words
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKHBW]
        # @example
        #   punpckhbw mm0, mm1
        #   punpckhbw mm0, [rbx]
        #   punpckhbw xmm0, xmm1
        #   punpckhbw xmm0, [rbx]
        def punpckhbw(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHBW,*operands,**kwargs)
        # Unpack and Interleave High-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKHDQ]
        # @example
        #   punpckhdq mm0, mm1
        #   punpckhdq mm0, [rbx]
        #   punpckhdq xmm0, xmm1
        #   punpckhdq xmm0, [rbx]
        def punpckhdq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHDQ,*operands,**kwargs)
        # Unpack and Interleave High-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKHQDQ]
        # @example
        #   punpckhqdq xmm0, xmm1
        #   punpckhqdq xmm0, [rbx]
        def punpckhqdq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHQDQ,*operands,**kwargs)
        # Unpack and Interleave High-Order Words into Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKHWD]
        # @example
        #   punpckhwd mm0, mm1
        #   punpckhwd mm0, [rbx]
        #   punpckhwd xmm0, xmm1
        #   punpckhwd xmm0, [rbx]
        def punpckhwd(*operands,**kwargs) = add_instruction(Instructions::PUNPCKHWD,*operands,**kwargs)
        # Unpack and Interleave Low-Order Bytes into Words
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKLBW]
        # @example
        #   punpcklbw mm0, mm1
        #   punpcklbw mm0, [rbx]
        #   punpcklbw xmm0, xmm1
        #   punpcklbw xmm0, [rbx]
        def punpcklbw(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLBW,*operands,**kwargs)
        # Unpack and Interleave Low-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKLDQ]
        # @example
        #   punpckldq mm0, mm1
        #   punpckldq mm0, [rbx]
        #   punpckldq xmm0, xmm1
        #   punpckldq xmm0, [rbx]
        def punpckldq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLDQ,*operands,**kwargs)
        # Unpack and Interleave Low-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKLQDQ]
        # @example
        #   punpcklqdq xmm0, xmm1
        #   punpcklqdq xmm0, [rbx]
        def punpcklqdq(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLQDQ,*operands,**kwargs)
        # Unpack and Interleave Low-Order Words into Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::PUNPCKLWD]
        # @example
        #   punpcklwd mm0, mm1
        #   punpcklwd mm0, [rbx]
        #   punpcklwd xmm0, xmm1
        #   punpcklwd xmm0, [rbx]
        def punpcklwd(*operands,**kwargs) = add_instruction(Instructions::PUNPCKLWD,*operands,**kwargs)
        # Push Value Onto the Stack
        # @return [Ronin::ASM::X86_64::Instructions::PUSH]
        # @example
        #   push 0x01
        #   push 0x00000001
        #   push ax
        #   push rax
        #   push [rax]
        def push(*operands,**kwargs) = add_instruction(Instructions::PUSH,*operands,**kwargs)
        # Packed Bitwise Logical Exclusive OR
        # @return [Ronin::ASM::X86_64::Instructions::PXOR]
        # @example
        #   pxor mm0, mm1
        #   pxor mm0, [rbx]
        #   pxor xmm0, xmm1
        #   pxor xmm0, [rbx]
        def pxor(*operands,**kwargs) = add_instruction(Instructions::PXOR,*operands,**kwargs)
        # Rotate Left through Carry Flag
        # @return [Ronin::ASM::X86_64::Instructions::RCL]
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
        #   rcl rax, 1
        #   rcl rax, 0x02
        #   rcl rax, cl
        #   rcl [rax], 1
        #   rcl [rax], 0x02
        #   rcl [rax], cl
        def rcl(*operands,**kwargs) = add_instruction(Instructions::RCL,*operands,**kwargs)
        # Compute Approximate Reciprocals of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::RCPPS]
        # @example
        #   rcpps xmm0, xmm1
        #   rcpps xmm0, [rbx]
        def rcpps(*operands,**kwargs) = add_instruction(Instructions::RCPPS,*operands,**kwargs)
        # Compute Approximate Reciprocal of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::RCPSS]
        # @example
        #   rcpss xmm0, xmm1
        #   rcpss xmm0, [rbx]
        def rcpss(*operands,**kwargs) = add_instruction(Instructions::RCPSS,*operands,**kwargs)
        # Rotate Right through Carry Flag
        # @return [Ronin::ASM::X86_64::Instructions::RCR]
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
        #   rcr rax, 1
        #   rcr rax, 0x02
        #   rcr rax, cl
        #   rcr [rax], 1
        #   rcr [rax], 0x02
        #   rcr [rax], cl
        def rcr(*operands,**kwargs) = add_instruction(Instructions::RCR,*operands,**kwargs)
        # ReaD FS segment BASE
        # @return [Ronin::ASM::X86_64::Instructions::RDFSBASE]
        # @example
        #   rdfsbase eax
        #   rdfsbase rax
        def rdfsbase(*operands,**kwargs) = add_instruction(Instructions::RDFSBASE,*operands,**kwargs)
        # ReaD GS segment BASE
        # @return [Ronin::ASM::X86_64::Instructions::RDGSBASE]
        # @example
        #   rdgsbase eax
        #   rdgsbase rax
        def rdgsbase(*operands,**kwargs) = add_instruction(Instructions::RDGSBASE,*operands,**kwargs)
        # Read Processor ID
        # @return [Ronin::ASM::X86_64::Instructions::RDPID]
        # @example
        #   rdpid rax
        def rdpid(*operands,**kwargs) = add_instruction(Instructions::RDPID,*operands,**kwargs)
        # Read Performance-Monitoring Counter
        # @return [Ronin::ASM::X86_64::Instructions::RDPMC]
        def rdpmc(*operands,**kwargs) = add_instruction(Instructions::RDPMC,*operands,**kwargs)
        # Read Processor Register in User mode
        # @return [Ronin::ASM::X86_64::Instructions::RDPRU]
        def rdpru(*operands,**kwargs) = add_instruction(Instructions::RDPRU,*operands,**kwargs)
        # Read Random Number
        # @return [Ronin::ASM::X86_64::Instructions::RDRAND]
        # @example
        #   rdrand ax
        #   rdrand eax
        #   rdrand rax
        def rdrand(*operands,**kwargs) = add_instruction(Instructions::RDRAND,*operands,**kwargs)
        # Read Random SEED
        # @return [Ronin::ASM::X86_64::Instructions::RDSEED]
        # @example
        #   rdseed ax
        #   rdseed eax
        #   rdseed rax
        def rdseed(*operands,**kwargs) = add_instruction(Instructions::RDSEED,*operands,**kwargs)
        # Read Time-Stamp Counter
        # @return [Ronin::ASM::X86_64::Instructions::RDTSC]
        def rdtsc(*operands,**kwargs) = add_instruction(Instructions::RDTSC,*operands,**kwargs)
        # Read Time-Stamp Counter and Processor ID
        # @return [Ronin::ASM::X86_64::Instructions::RDTSCP]
        def rdtscp(*operands,**kwargs) = add_instruction(Instructions::RDTSCP,*operands,**kwargs)
        # Return from Procedure
        # @return [Ronin::ASM::X86_64::Instructions::RET]
        # @example
        #   ret
        #   ret 0x0001
        def ret(*operands,**kwargs) = add_instruction(Instructions::RET,*operands,**kwargs)
        # Rotate Left
        # @return [Ronin::ASM::X86_64::Instructions::ROL]
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
        #   rol rax, 1
        #   rol rax, 0x02
        #   rol rax, cl
        #   rol [rax], 1
        #   rol [rax], 0x02
        #   rol [rax], cl
        def rol(*operands,**kwargs) = add_instruction(Instructions::ROL,*operands,**kwargs)
        # Rotate Right
        # @return [Ronin::ASM::X86_64::Instructions::ROR]
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
        #   ror rax, 1
        #   ror rax, 0x02
        #   ror rax, cl
        #   ror [rax], 1
        #   ror [rax], 0x02
        #   ror [rax], cl
        def ror(*operands,**kwargs) = add_instruction(Instructions::ROR,*operands,**kwargs)
        # Rotate Right Logical Without Affecting Flags
        # @return [Ronin::ASM::X86_64::Instructions::RORX]
        # @example
        #   rorx eax, ebx, 0x03
        #   rorx eax, [rbx], 0x03
        #   rorx rax, rbx, 0x03
        #   rorx rax, [rbx], 0x03
        def rorx(*operands,**kwargs) = add_instruction(Instructions::RORX,*operands,**kwargs)
        # Round Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ROUNDPD]
        # @example
        #   roundpd xmm0, xmm1, 0x03
        #   roundpd xmm0, [rbx], 0x03
        def roundpd(*operands,**kwargs) = add_instruction(Instructions::ROUNDPD,*operands,**kwargs)
        # Round Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ROUNDPS]
        # @example
        #   roundps xmm0, xmm1, 0x03
        #   roundps xmm0, [rbx], 0x03
        def roundps(*operands,**kwargs) = add_instruction(Instructions::ROUNDPS,*operands,**kwargs)
        # Round Scalar Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ROUNDSD]
        # @example
        #   roundsd xmm0, xmm1, 0x03
        #   roundsd xmm0, [rbx], 0x03
        def roundsd(*operands,**kwargs) = add_instruction(Instructions::ROUNDSD,*operands,**kwargs)
        # Round Scalar Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::ROUNDSS]
        # @example
        #   roundss xmm0, xmm1, 0x03
        #   roundss xmm0, [rbx], 0x03
        def roundss(*operands,**kwargs) = add_instruction(Instructions::ROUNDSS,*operands,**kwargs)
        # Compute Reciprocals of Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::RSQRTPS]
        # @example
        #   rsqrtps xmm0, xmm1
        #   rsqrtps xmm0, [rbx]
        def rsqrtps(*operands,**kwargs) = add_instruction(Instructions::RSQRTPS,*operands,**kwargs)
        # Compute Reciprocal of Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::RSQRTSS]
        # @example
        #   rsqrtss xmm0, xmm1
        #   rsqrtss xmm0, [rbx]
        def rsqrtss(*operands,**kwargs) = add_instruction(Instructions::RSQRTSS,*operands,**kwargs)
        # Store AH into Flags
        # @return [Ronin::ASM::X86_64::Instructions::SAHF]
        def sahf(*operands,**kwargs) = add_instruction(Instructions::SAHF,*operands,**kwargs)
        # Arithmetic Shift Left
        # @return [Ronin::ASM::X86_64::Instructions::SAL]
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
        #   sal rax, 1
        #   sal rax, 0x02
        #   sal rax, cl
        #   sal [rax], 1
        #   sal [rax], 0x02
        #   sal [rax], cl
        def sal(*operands,**kwargs) = add_instruction(Instructions::SAL,*operands,**kwargs)
        # Arithmetic Shift Right
        # @return [Ronin::ASM::X86_64::Instructions::SAR]
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
        #   sar rax, 1
        #   sar rax, 0x02
        #   sar rax, cl
        #   sar [rax], 1
        #   sar [rax], 0x02
        #   sar [rax], cl
        def sar(*operands,**kwargs) = add_instruction(Instructions::SAR,*operands,**kwargs)
        # Arithmetic Shift Right Without Affecting Flags
        # @return [Ronin::ASM::X86_64::Instructions::SARX]
        # @example
        #   sarx eax, ebx, ecx
        #   sarx eax, [rbx], ecx
        #   sarx rax, rbx, rcx
        #   sarx rax, [rbx], rcx
        def sarx(*operands,**kwargs) = add_instruction(Instructions::SARX,*operands,**kwargs)
        # Subtract with Borrow
        # @return [Ronin::ASM::X86_64::Instructions::SBB]
        # @example
        #   sbb al, 0x02
        #   sbb al, bl
        #   sbb al, [rbx]
        #   sbb ax, 0x0002
        #   sbb ax, 0x02
        #   sbb ax, bx
        #   sbb ax, [rbx]
        #   sbb eax, 0x00000002
        #   sbb eax, 0x02
        #   sbb eax, ebx
        #   sbb eax, [rbx]
        #   sbb rax, 0x00000002
        #   sbb rax, 0x02
        #   sbb rax, rbx
        #   sbb rax, [rbx]
        #   sbb [rax], 0x02
        #   sbb [rax], bl
        #   sbb [rax], 0x0002
        #   sbb [rax], bx
        #   sbb [rax], 0x00000002
        #   sbb [rax], ebx
        #   sbb [rax], rbx
        def sbb(*operands,**kwargs) = add_instruction(Instructions::SBB,*operands,**kwargs)
        # Serialize Instruction Execution
        # @return [Ronin::ASM::X86_64::Instructions::SERIALIZE]
        def serialize(*operands,**kwargs) = add_instruction(Instructions::SERIALIZE,*operands,**kwargs)
        # Set byte if above (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETA]
        # @example
        #   seta al
        #   seta [rax]
        def seta(*operands,**kwargs) = add_instruction(Instructions::SETA,*operands,**kwargs)
        # Set byte if above or equal (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETAE]
        # @example
        #   setae al
        #   setae [rax]
        def setae(*operands,**kwargs) = add_instruction(Instructions::SETAE,*operands,**kwargs)
        # Set byte if below (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETB]
        # @example
        #   setb al
        #   setb [rax]
        def setb(*operands,**kwargs) = add_instruction(Instructions::SETB,*operands,**kwargs)
        # Set byte if below or equal (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETBE]
        # @example
        #   setbe al
        #   setbe [rax]
        def setbe(*operands,**kwargs) = add_instruction(Instructions::SETBE,*operands,**kwargs)
        # Set byte if carry (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETC]
        # @example
        #   setc al
        #   setc [rax]
        def setc(*operands,**kwargs) = add_instruction(Instructions::SETC,*operands,**kwargs)
        # Set byte if equal (ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETE]
        # @example
        #   sete al
        #   sete [rax]
        def sete(*operands,**kwargs) = add_instruction(Instructions::SETE,*operands,**kwargs)
        # Set byte if greater (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETG]
        # @example
        #   setg al
        #   setg [rax]
        def setg(*operands,**kwargs) = add_instruction(Instructions::SETG,*operands,**kwargs)
        # Set byte if greater or equal (SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETGE]
        # @example
        #   setge al
        #   setge [rax]
        def setge(*operands,**kwargs) = add_instruction(Instructions::SETGE,*operands,**kwargs)
        # Set byte if less (SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETL]
        # @example
        #   setl al
        #   setl [rax]
        def setl(*operands,**kwargs) = add_instruction(Instructions::SETL,*operands,**kwargs)
        # Set byte if less or equal (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETLE]
        # @example
        #   setle al
        #   setle [rax]
        def setle(*operands,**kwargs) = add_instruction(Instructions::SETLE,*operands,**kwargs)
        # Set byte if not above (CF == 1 or ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETNA]
        # @example
        #   setna al
        #   setna [rax]
        def setna(*operands,**kwargs) = add_instruction(Instructions::SETNA,*operands,**kwargs)
        # Set byte if not above or equal (CF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETNAE]
        # @example
        #   setnae al
        #   setnae [rax]
        def setnae(*operands,**kwargs) = add_instruction(Instructions::SETNAE,*operands,**kwargs)
        # Set byte if not below (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNB]
        # @example
        #   setnb al
        #   setnb [rax]
        def setnb(*operands,**kwargs) = add_instruction(Instructions::SETNB,*operands,**kwargs)
        # Set byte if not below or equal (CF == 0 and ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNBE]
        # @example
        #   setnbe al
        #   setnbe [rax]
        def setnbe(*operands,**kwargs) = add_instruction(Instructions::SETNBE,*operands,**kwargs)
        # Set byte if not carry (CF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNC]
        # @example
        #   setnc al
        #   setnc [rax]
        def setnc(*operands,**kwargs) = add_instruction(Instructions::SETNC,*operands,**kwargs)
        # Set byte if not equal (ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNE]
        # @example
        #   setne al
        #   setne [rax]
        def setne(*operands,**kwargs) = add_instruction(Instructions::SETNE,*operands,**kwargs)
        # Set byte if not greater (ZF == 1 or SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETNG]
        # @example
        #   setng al
        #   setng [rax]
        def setng(*operands,**kwargs) = add_instruction(Instructions::SETNG,*operands,**kwargs)
        # Set byte if not greater or equal (SF != OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETNGE]
        # @example
        #   setnge al
        #   setnge [rax]
        def setnge(*operands,**kwargs) = add_instruction(Instructions::SETNGE,*operands,**kwargs)
        # Set byte if not less (SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETNL]
        # @example
        #   setnl al
        #   setnl [rax]
        def setnl(*operands,**kwargs) = add_instruction(Instructions::SETNL,*operands,**kwargs)
        # Set byte if not less or equal (ZF == 0 and SF == OF)
        # @return [Ronin::ASM::X86_64::Instructions::SETNLE]
        # @example
        #   setnle al
        #   setnle [rax]
        def setnle(*operands,**kwargs) = add_instruction(Instructions::SETNLE,*operands,**kwargs)
        # Set byte if not overflow (OF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNO]
        # @example
        #   setno al
        #   setno [rax]
        def setno(*operands,**kwargs) = add_instruction(Instructions::SETNO,*operands,**kwargs)
        # Set byte if not parity (PF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNP]
        # @example
        #   setnp al
        #   setnp [rax]
        def setnp(*operands,**kwargs) = add_instruction(Instructions::SETNP,*operands,**kwargs)
        # Set byte if not sign (SF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNS]
        # @example
        #   setns al
        #   setns [rax]
        def setns(*operands,**kwargs) = add_instruction(Instructions::SETNS,*operands,**kwargs)
        # Set byte if not zero (ZF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETNZ]
        # @example
        #   setnz al
        #   setnz [rax]
        def setnz(*operands,**kwargs) = add_instruction(Instructions::SETNZ,*operands,**kwargs)
        # Set byte if overflow (OF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETO]
        # @example
        #   seto al
        #   seto [rax]
        def seto(*operands,**kwargs) = add_instruction(Instructions::SETO,*operands,**kwargs)
        # Set byte if parity (PF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETP]
        # @example
        #   setp al
        #   setp [rax]
        def setp(*operands,**kwargs) = add_instruction(Instructions::SETP,*operands,**kwargs)
        # Set byte if parity even (PF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETPE]
        # @example
        #   setpe al
        #   setpe [rax]
        def setpe(*operands,**kwargs) = add_instruction(Instructions::SETPE,*operands,**kwargs)
        # Set byte if parity odd (PF == 0)
        # @return [Ronin::ASM::X86_64::Instructions::SETPO]
        # @example
        #   setpo al
        #   setpo [rax]
        def setpo(*operands,**kwargs) = add_instruction(Instructions::SETPO,*operands,**kwargs)
        # Set byte if sign (SF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETS]
        # @example
        #   sets al
        #   sets [rax]
        def sets(*operands,**kwargs) = add_instruction(Instructions::SETS,*operands,**kwargs)
        # Set byte if zero (ZF == 1)
        # @return [Ronin::ASM::X86_64::Instructions::SETZ]
        # @example
        #   setz al
        #   setz [rax]
        def setz(*operands,**kwargs) = add_instruction(Instructions::SETZ,*operands,**kwargs)
        # Store Fence
        # @return [Ronin::ASM::X86_64::Instructions::SFENCE]
        def sfence(*operands,**kwargs) = add_instruction(Instructions::SFENCE,*operands,**kwargs)
        # Perform an Intermediate Calculation for the Next Four SHA1 Message Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::SHA1MSG1]
        # @example
        #   sha1msg1 xmm0, xmm1
        #   sha1msg1 xmm0, [rbx]
        def sha1msg1(*operands,**kwargs) = add_instruction(Instructions::SHA1MSG1,*operands,**kwargs)
        # Perform a Final Calculation for the Next Four SHA1 Message Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::SHA1MSG2]
        # @example
        #   sha1msg2 xmm0, xmm1
        #   sha1msg2 xmm0, [rbx]
        def sha1msg2(*operands,**kwargs) = add_instruction(Instructions::SHA1MSG2,*operands,**kwargs)
        # Calculate SHA1 State Variable E after Four Rounds
        # @return [Ronin::ASM::X86_64::Instructions::SHA1NEXTE]
        # @example
        #   sha1nexte xmm0, xmm1
        #   sha1nexte xmm0, [rbx]
        def sha1nexte(*operands,**kwargs) = add_instruction(Instructions::SHA1NEXTE,*operands,**kwargs)
        # Perform Four Rounds of SHA1 Operation
        # @return [Ronin::ASM::X86_64::Instructions::SHA1RNDS4]
        # @example
        #   sha1rnds4 xmm0, xmm1, 0x03
        #   sha1rnds4 xmm0, [rbx], 0x03
        def sha1rnds4(*operands,**kwargs) = add_instruction(Instructions::SHA1RNDS4,*operands,**kwargs)
        # Perform an Intermediate Calculation for the Next Four SHA256 Message Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::SHA256MSG1]
        # @example
        #   sha256msg1 xmm0, xmm1
        #   sha256msg1 xmm0, [rbx]
        def sha256msg1(*operands,**kwargs) = add_instruction(Instructions::SHA256MSG1,*operands,**kwargs)
        # Perform a Final Calculation for the Next Four SHA256 Message Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::SHA256MSG2]
        # @example
        #   sha256msg2 xmm0, xmm1
        #   sha256msg2 xmm0, [rbx]
        def sha256msg2(*operands,**kwargs) = add_instruction(Instructions::SHA256MSG2,*operands,**kwargs)
        # Perform Two Rounds of SHA256 Operation
        # @return [Ronin::ASM::X86_64::Instructions::SHA256RNDS2]
        # @example
        #   sha256rnds2 xmm0, xmm1, xmm0
        #   sha256rnds2 xmm0, [rbx], xmm0
        def sha256rnds2(*operands,**kwargs) = add_instruction(Instructions::SHA256RNDS2,*operands,**kwargs)
        # Logical Shift Left
        # @return [Ronin::ASM::X86_64::Instructions::SHL]
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
        #   shl rax, 1
        #   shl rax, 0x02
        #   shl rax, cl
        #   shl [rax], 1
        #   shl [rax], 0x02
        #   shl [rax], cl
        def shl(*operands,**kwargs) = add_instruction(Instructions::SHL,*operands,**kwargs)
        # Integer Double Precision Shift Left
        # @return [Ronin::ASM::X86_64::Instructions::SHLD]
        # @example
        #   shld ax, bx, 0x03
        #   shld ax, bx, cl
        #   shld eax, ebx, 0x03
        #   shld eax, ebx, cl
        #   shld rax, rbx, 0x03
        #   shld rax, rbx, cl
        #   shld [rax], bx, 0x03
        #   shld [rax], bx, cl
        #   shld [rax], ebx, 0x03
        #   shld [rax], ebx, cl
        #   shld [rax], rbx, 0x03
        #   shld [rax], rbx, cl
        def shld(*operands,**kwargs) = add_instruction(Instructions::SHLD,*operands,**kwargs)
        # Logical Shift Left Without Affecting Flags
        # @return [Ronin::ASM::X86_64::Instructions::SHLX]
        # @example
        #   shlx eax, ebx, ecx
        #   shlx eax, [rbx], ecx
        #   shlx rax, rbx, rcx
        #   shlx rax, [rbx], rcx
        def shlx(*operands,**kwargs) = add_instruction(Instructions::SHLX,*operands,**kwargs)
        # Logical Shift Right
        # @return [Ronin::ASM::X86_64::Instructions::SHR]
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
        #   shr rax, 1
        #   shr rax, 0x02
        #   shr rax, cl
        #   shr [rax], 1
        #   shr [rax], 0x02
        #   shr [rax], cl
        def shr(*operands,**kwargs) = add_instruction(Instructions::SHR,*operands,**kwargs)
        # Integer Double Precision Shift Right
        # @return [Ronin::ASM::X86_64::Instructions::SHRD]
        # @example
        #   shrd ax, bx, 0x03
        #   shrd ax, bx, cl
        #   shrd eax, ebx, 0x03
        #   shrd eax, ebx, cl
        #   shrd rax, rbx, 0x03
        #   shrd rax, rbx, cl
        #   shrd [rax], bx, 0x03
        #   shrd [rax], bx, cl
        #   shrd [rax], ebx, 0x03
        #   shrd [rax], ebx, cl
        #   shrd [rax], rbx, 0x03
        #   shrd [rax], rbx, cl
        def shrd(*operands,**kwargs) = add_instruction(Instructions::SHRD,*operands,**kwargs)
        # Logical Shift Right Without Affecting Flags
        # @return [Ronin::ASM::X86_64::Instructions::SHRX]
        # @example
        #   shrx eax, ebx, ecx
        #   shrx eax, [rbx], ecx
        #   shrx rax, rbx, rcx
        #   shrx rax, [rbx], rcx
        def shrx(*operands,**kwargs) = add_instruction(Instructions::SHRX,*operands,**kwargs)
        # Shuffle Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SHUFPD]
        # @example
        #   shufpd xmm0, xmm1, 0x03
        #   shufpd xmm0, [rbx], 0x03
        def shufpd(*operands,**kwargs) = add_instruction(Instructions::SHUFPD,*operands,**kwargs)
        # Shuffle Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SHUFPS]
        # @example
        #   shufps xmm0, xmm1, 0x03
        #   shufps xmm0, [rbx], 0x03
        def shufps(*operands,**kwargs) = add_instruction(Instructions::SHUFPS,*operands,**kwargs)
        # Compute Square Roots of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SQRTPD]
        # @example
        #   sqrtpd xmm0, xmm1
        #   sqrtpd xmm0, [rbx]
        def sqrtpd(*operands,**kwargs) = add_instruction(Instructions::SQRTPD,*operands,**kwargs)
        # Compute Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SQRTPS]
        # @example
        #   sqrtps xmm0, xmm1
        #   sqrtps xmm0, [rbx]
        def sqrtps(*operands,**kwargs) = add_instruction(Instructions::SQRTPS,*operands,**kwargs)
        # Compute Square Root of Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::SQRTSD]
        # @example
        #   sqrtsd xmm0, xmm1
        #   sqrtsd xmm0, [rbx]
        def sqrtsd(*operands,**kwargs) = add_instruction(Instructions::SQRTSD,*operands,**kwargs)
        # Compute Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::SQRTSS]
        # @example
        #   sqrtss xmm0, xmm1
        #   sqrtss xmm0, [rbx]
        def sqrtss(*operands,**kwargs) = add_instruction(Instructions::SQRTSS,*operands,**kwargs)
        # Set Carry Flag
        # @return [Ronin::ASM::X86_64::Instructions::STC]
        def stc(*operands,**kwargs) = add_instruction(Instructions::STC,*operands,**kwargs)
        # Set Direction Flag
        # @return [Ronin::ASM::X86_64::Instructions::STD]
        def std(*operands,**kwargs) = add_instruction(Instructions::STD,*operands,**kwargs)
        # Store MXCSR Register State
        # @return [Ronin::ASM::X86_64::Instructions::STMXCSR]
        # @example
        #   stmxcsr [rax]
        def stmxcsr(*operands,**kwargs) = add_instruction(Instructions::STMXCSR,*operands,**kwargs)
        # STore TILE ConFiGuration
        # @return [Ronin::ASM::X86_64::Instructions::STTILECFG]
        # @example
        #   sttilecfg [rax]
        def sttilecfg(*operands,**kwargs) = add_instruction(Instructions::STTILECFG,*operands,**kwargs)
        # Subtract
        # @return [Ronin::ASM::X86_64::Instructions::SUB]
        # @example
        #   sub al, 0x02
        #   sub al, bl
        #   sub al, [rbx]
        #   sub ax, 0x0002
        #   sub ax, 0x02
        #   sub ax, bx
        #   sub ax, [rbx]
        #   sub eax, 0x00000002
        #   sub eax, 0x02
        #   sub eax, ebx
        #   sub eax, [rbx]
        #   sub rax, 0x00000002
        #   sub rax, 0x02
        #   sub rax, rbx
        #   sub rax, [rbx]
        #   sub [rax], 0x02
        #   sub [rax], bl
        #   sub [rax], 0x0002
        #   sub [rax], bx
        #   sub [rax], 0x00000002
        #   sub [rax], ebx
        #   sub [rax], rbx
        def sub(*operands,**kwargs) = add_instruction(Instructions::SUB,*operands,**kwargs)
        # Subtract Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SUBPD]
        # @example
        #   subpd xmm0, xmm1
        #   subpd xmm0, [rbx]
        def subpd(*operands,**kwargs) = add_instruction(Instructions::SUBPD,*operands,**kwargs)
        # Subtract Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SUBPS]
        # @example
        #   subps xmm0, xmm1
        #   subps xmm0, [rbx]
        def subps(*operands,**kwargs) = add_instruction(Instructions::SUBPS,*operands,**kwargs)
        # Subtract Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SUBSD]
        # @example
        #   subsd xmm0, xmm1
        #   subsd xmm0, [rbx]
        def subsd(*operands,**kwargs) = add_instruction(Instructions::SUBSD,*operands,**kwargs)
        # Subtract Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::SUBSS]
        # @example
        #   subss xmm0, xmm1
        #   subss xmm0, [rbx]
        def subss(*operands,**kwargs) = add_instruction(Instructions::SUBSS,*operands,**kwargs)
        # Fast System Call
        # @return [Ronin::ASM::X86_64::Instructions::SYSCALL]
        def syscall(*operands,**kwargs) = add_instruction(Instructions::SYSCALL,*operands,**kwargs)
        # Inverse Mask From Trailing Ones
        # @return [Ronin::ASM::X86_64::Instructions::T1MSKC]
        # @example
        #   t1mskc eax, ebx
        #   t1mskc eax, [rbx]
        #   t1mskc rax, rbx
        #   t1mskc rax, [rbx]
        def t1mskc(*operands,**kwargs) = add_instruction(Instructions::T1MSKC,*operands,**kwargs)
        # Tile Complex Matrix Multiply IMaginary part of FP16 tiles with Packed Single-precision accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TCMMIMFP16PS]
        # @example
        #   tcmmimfp16ps tmm0, tmm1, tmm2
        def tcmmimfp16ps(*operands,**kwargs) = add_instruction(Instructions::TCMMIMFP16PS,*operands,**kwargs)
        # Tile Complex Matrix Multiply ReaL part of FP16 tiles with Packed Single-precision accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TCMMRLFP16PS]
        # @example
        #   tcmmrlfp16ps tmm0, tmm1, tmm2
        def tcmmrlfp16ps(*operands,**kwargs) = add_instruction(Instructions::TCMMRLFP16PS,*operands,**kwargs)
        # Tile Dot Product of BF16 tiles with Packed Single-precision accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TDPBF16PS]
        # @example
        #   tdpbf16ps tmm0, tmm1, tmm2
        def tdpbf16ps(*operands,**kwargs) = add_instruction(Instructions::TDPBF16PS,*operands,**kwargs)
        # Tile Dot Product of Signed bytes by Signed bytes with Doubleword accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TDPBSSD]
        # @example
        #   tdpbssd tmm0, tmm1, tmm2
        def tdpbssd(*operands,**kwargs) = add_instruction(Instructions::TDPBSSD,*operands,**kwargs)
        # Tile Dot Product of Signed bytes by Unsigned bytes with Doubleword accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TDPBSUD]
        # @example
        #   tdpbsud tmm0, tmm1, tmm2
        def tdpbsud(*operands,**kwargs) = add_instruction(Instructions::TDPBSUD,*operands,**kwargs)
        # Tile Dot Product of Unsigned bytes by Signed bytes with Doubleword accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TDPBUSD]
        # @example
        #   tdpbusd tmm0, tmm1, tmm2
        def tdpbusd(*operands,**kwargs) = add_instruction(Instructions::TDPBUSD,*operands,**kwargs)
        # Tile Dot Product of Unsigned bytes by Unsigned bytes with Doubleword accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TDPBUUD]
        # @example
        #   tdpbuud tmm0, tmm1, tmm2
        def tdpbuud(*operands,**kwargs) = add_instruction(Instructions::TDPBUUD,*operands,**kwargs)
        # Tile Dot Product of FP16 tiles with Packed Single-precision accumulation
        # @return [Ronin::ASM::X86_64::Instructions::TDPFP16PS]
        # @example
        #   tdpfp16ps tmm0, tmm1, tmm2
        def tdpfp16ps(*operands,**kwargs) = add_instruction(Instructions::TDPFP16PS,*operands,**kwargs)
        # Logical Compare
        # @return [Ronin::ASM::X86_64::Instructions::TEST]
        # @example
        #   test al, 0x02
        #   test al, bl
        #   test ax, 0x0002
        #   test ax, bx
        #   test eax, 0x00000002
        #   test eax, ebx
        #   test rax, 0x00000002
        #   test rax, rbx
        #   test [rax], 0x02
        #   test [rax], bl
        #   test [rax], 0x0002
        #   test [rax], bx
        #   test [rax], 0x00000002
        #   test [rax], ebx
        #   test [rax], rbx
        def test(*operands,**kwargs) = add_instruction(Instructions::TEST,*operands,**kwargs)
        # TILE LOAD Data
        # @return [Ronin::ASM::X86_64::Instructions::TILELOADD]
        # @example
        #   tileloadd tmm0, [rbx+r10]
        def tileloadd(*operands,**kwargs) = add_instruction(Instructions::TILELOADD,*operands,**kwargs)
        # TILE LOAD Data with T1 caching hint
        # @return [Ronin::ASM::X86_64::Instructions::TILELOADDT1]
        # @example
        #   tileloaddt1 tmm0, [rbx+r10]
        def tileloaddt1(*operands,**kwargs) = add_instruction(Instructions::TILELOADDT1,*operands,**kwargs)
        # TILE RELEASE register state
        # @return [Ronin::ASM::X86_64::Instructions::TILERELEASE]
        def tilerelease(*operands,**kwargs) = add_instruction(Instructions::TILERELEASE,*operands,**kwargs)
        # TILE STORE Data
        # @return [Ronin::ASM::X86_64::Instructions::TILESTORED]
        # @example
        #   tilestored [rax+r10], tmm1
        def tilestored(*operands,**kwargs) = add_instruction(Instructions::TILESTORED,*operands,**kwargs)
        # TILE ZERO data
        # @return [Ronin::ASM::X86_64::Instructions::TILEZERO]
        # @example
        #   tilezero tmm0
        def tilezero(*operands,**kwargs) = add_instruction(Instructions::TILEZERO,*operands,**kwargs)
        # Timed PAUSE
        # @return [Ronin::ASM::X86_64::Instructions::TPAUSE]
        # @example
        #   tpause eax
        def tpause(*operands,**kwargs) = add_instruction(Instructions::TPAUSE,*operands,**kwargs)
        # Count the Number of Trailing Zero Bits
        # @return [Ronin::ASM::X86_64::Instructions::TZCNT]
        # @example
        #   tzcnt ax, bx
        #   tzcnt ax, [rbx]
        #   tzcnt eax, ebx
        #   tzcnt eax, [rbx]
        #   tzcnt rax, rbx
        #   tzcnt rax, [rbx]
        def tzcnt(*operands,**kwargs) = add_instruction(Instructions::TZCNT,*operands,**kwargs)
        # Mask From Trailing Zeros
        # @return [Ronin::ASM::X86_64::Instructions::TZMSK]
        # @example
        #   tzmsk eax, ebx
        #   tzmsk eax, [rbx]
        #   tzmsk rax, rbx
        #   tzmsk rax, [rbx]
        def tzmsk(*operands,**kwargs) = add_instruction(Instructions::TZMSK,*operands,**kwargs)
        # Unordered Compare Scalar Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::UCOMISD]
        # @example
        #   ucomisd xmm0, xmm1
        #   ucomisd xmm0, [rbx]
        def ucomisd(*operands,**kwargs) = add_instruction(Instructions::UCOMISD,*operands,**kwargs)
        # Unordered Compare Scalar Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::UCOMISS]
        # @example
        #   ucomiss xmm0, xmm1
        #   ucomiss xmm0, [rbx]
        def ucomiss(*operands,**kwargs) = add_instruction(Instructions::UCOMISS,*operands,**kwargs)
        # Undefined Instruction
        # @return [Ronin::ASM::X86_64::Instructions::UD2]
        def ud2(*operands,**kwargs) = add_instruction(Instructions::UD2,*operands,**kwargs)
        # User mode Monitor a Linear Address Range
        # @return [Ronin::ASM::X86_64::Instructions::UMONITOR]
        # @example
        #   umonitor rax
        def umonitor(*operands,**kwargs) = add_instruction(Instructions::UMONITOR,*operands,**kwargs)
        # User mode Monitor Wait
        # @return [Ronin::ASM::X86_64::Instructions::UMWAIT]
        # @example
        #   umwait eax
        def umwait(*operands,**kwargs) = add_instruction(Instructions::UMWAIT,*operands,**kwargs)
        # Unpack and Interleave High Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::UNPCKHPD]
        # @example
        #   unpckhpd xmm0, xmm1
        #   unpckhpd xmm0, [rbx]
        def unpckhpd(*operands,**kwargs) = add_instruction(Instructions::UNPCKHPD,*operands,**kwargs)
        # Unpack and Interleave High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::UNPCKHPS]
        # @example
        #   unpckhps xmm0, xmm1
        #   unpckhps xmm0, [rbx]
        def unpckhps(*operands,**kwargs) = add_instruction(Instructions::UNPCKHPS,*operands,**kwargs)
        # Unpack and Interleave Low Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::UNPCKLPD]
        # @example
        #   unpcklpd xmm0, xmm1
        #   unpcklpd xmm0, [rbx]
        def unpcklpd(*operands,**kwargs) = add_instruction(Instructions::UNPCKLPD,*operands,**kwargs)
        # Unpack and Interleave Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::UNPCKLPS]
        # @example
        #   unpcklps xmm0, xmm1
        #   unpcklps xmm0, [rbx]
        def unpcklps(*operands,**kwargs) = add_instruction(Instructions::UNPCKLPS,*operands,**kwargs)
        # Add Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VADDPD]
        # @example
        #   vaddpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vaddpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vaddpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vaddpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vaddpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vaddpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vaddpd xmm0, xmm1, xmm2
        #   vaddpd xmm0, xmm1, [rcx]
        #   vaddpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vaddpd ymm0, ymm1, ymm2
        #   vaddpd ymm0, ymm1, [rcx]
        #   vaddpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vaddpd zmm0, zmm1, zmm2
        #   vaddpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vaddpd zmm0, zmm1, zmm2, er
        def vaddpd(*operands,**kwargs) = add_instruction(Instructions::VADDPD,*operands,**kwargs)
        # Add Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VADDPH]
        # @example
        #   vaddph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vaddph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vaddph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vaddph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vaddph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vaddph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vaddph xmm0, xmm1, xmm2
        #   vaddph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vaddph ymm0, ymm1, ymm2
        #   vaddph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vaddph zmm0, zmm1, zmm2
        #   vaddph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vaddph zmm0, zmm1, zmm2, er
        def vaddph(*operands,**kwargs) = add_instruction(Instructions::VADDPH,*operands,**kwargs)
        # Add Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VADDPS]
        # @example
        #   vaddps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vaddps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vaddps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vaddps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vaddps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vaddps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vaddps xmm0, xmm1, xmm2
        #   vaddps xmm0, xmm1, [rcx]
        #   vaddps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vaddps ymm0, ymm1, ymm2
        #   vaddps ymm0, ymm1, [rcx]
        #   vaddps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vaddps zmm0, zmm1, zmm2
        #   vaddps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vaddps zmm0, zmm1, zmm2, er
        def vaddps(*operands,**kwargs) = add_instruction(Instructions::VADDPS,*operands,**kwargs)
        # Add Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VADDSD]
        # @example
        #   vaddsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vaddsd xmm0, xmm1, xmm2
        #   vaddsd xmm0, xmm1, [rcx]
        #   vaddsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vaddsd xmm0, xmm1, xmm2, er
        def vaddsd(*operands,**kwargs) = add_instruction(Instructions::VADDSD,*operands,**kwargs)
        # Add Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VADDSH]
        # @example
        #   vaddsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vaddsh xmm0, xmm1, xmm2
        #   vaddsh xmm0, xmm1, [rcx]
        #   vaddsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vaddsh xmm0, xmm1, xmm2, er
        def vaddsh(*operands,**kwargs) = add_instruction(Instructions::VADDSH,*operands,**kwargs)
        # Add Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VADDSS]
        # @example
        #   vaddss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vaddss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vaddss xmm0, xmm1, xmm2
        #   vaddss xmm0, xmm1, [rcx]
        #   vaddss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vaddss xmm0, xmm1, xmm2, er
        def vaddss(*operands,**kwargs) = add_instruction(Instructions::VADDSS,*operands,**kwargs)
        # Packed Double-FP Add/Subtract
        # @return [Ronin::ASM::X86_64::Instructions::VADDSUBPD]
        # @example
        #   vaddsubpd xmm0, xmm1, xmm2
        #   vaddsubpd xmm0, xmm1, [rcx]
        #   vaddsubpd ymm0, ymm1, ymm2
        #   vaddsubpd ymm0, ymm1, [rcx]
        def vaddsubpd(*operands,**kwargs) = add_instruction(Instructions::VADDSUBPD,*operands,**kwargs)
        # Packed Single-FP Add/Subtract
        # @return [Ronin::ASM::X86_64::Instructions::VADDSUBPS]
        # @example
        #   vaddsubps xmm0, xmm1, xmm2
        #   vaddsubps xmm0, xmm1, [rcx]
        #   vaddsubps ymm0, ymm1, ymm2
        #   vaddsubps ymm0, ymm1, [rcx]
        def vaddsubps(*operands,**kwargs) = add_instruction(Instructions::VADDSUBPS,*operands,**kwargs)
        # Perform One Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::VAESDEC]
        # @example
        #   vaesdec xmm0, xmm1, xmm2
        #   vaesdec xmm0, xmm1, [rcx]
        #   vaesdec ymm0, ymm1, ymm2
        #   vaesdec ymm0, ymm1, [rcx]
        #   vaesdec zmm0, zmm1, zmm2
        #   vaesdec zmm0, zmm1, [rcx]
        def vaesdec(*operands,**kwargs) = add_instruction(Instructions::VAESDEC,*operands,**kwargs)
        # Perform Last Round of an AES Decryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::VAESDECLAST]
        # @example
        #   vaesdeclast xmm0, xmm1, xmm2
        #   vaesdeclast xmm0, xmm1, [rcx]
        #   vaesdeclast ymm0, ymm1, ymm2
        #   vaesdeclast ymm0, ymm1, [rcx]
        #   vaesdeclast zmm0, zmm1, zmm2
        #   vaesdeclast zmm0, zmm1, [rcx]
        def vaesdeclast(*operands,**kwargs) = add_instruction(Instructions::VAESDECLAST,*operands,**kwargs)
        # Perform One Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::VAESENC]
        # @example
        #   vaesenc xmm0, xmm1, xmm2
        #   vaesenc xmm0, xmm1, [rcx]
        #   vaesenc ymm0, ymm1, ymm2
        #   vaesenc ymm0, ymm1, [rcx]
        #   vaesenc zmm0, zmm1, zmm2
        #   vaesenc zmm0, zmm1, [rcx]
        def vaesenc(*operands,**kwargs) = add_instruction(Instructions::VAESENC,*operands,**kwargs)
        # Perform Last Round of an AES Encryption Flow
        # @return [Ronin::ASM::X86_64::Instructions::VAESENCLAST]
        # @example
        #   vaesenclast xmm0, xmm1, xmm2
        #   vaesenclast xmm0, xmm1, [rcx]
        #   vaesenclast ymm0, ymm1, ymm2
        #   vaesenclast ymm0, ymm1, [rcx]
        #   vaesenclast zmm0, zmm1, zmm2
        #   vaesenclast zmm0, zmm1, [rcx]
        def vaesenclast(*operands,**kwargs) = add_instruction(Instructions::VAESENCLAST,*operands,**kwargs)
        # Perform the AES InvMixColumn Transformation
        # @return [Ronin::ASM::X86_64::Instructions::VAESIMC]
        # @example
        #   vaesimc xmm0, xmm1
        #   vaesimc xmm0, [rbx]
        def vaesimc(*operands,**kwargs) = add_instruction(Instructions::VAESIMC,*operands,**kwargs)
        # AES Round Key Generation Assist
        # @return [Ronin::ASM::X86_64::Instructions::VAESKEYGENASSIST]
        # @example
        #   vaeskeygenassist xmm0, xmm1, 0x03
        #   vaeskeygenassist xmm0, [rbx], 0x03
        def vaeskeygenassist(*operands,**kwargs) = add_instruction(Instructions::VAESKEYGENASSIST,*operands,**kwargs)
        # Align Doubleword Vectors
        # @return [Ronin::ASM::X86_64::Instructions::VALIGND]
        # @example
        #   valignd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4}), 0x04
        #   valignd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   valignd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   valignd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   valignd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   valignd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   valignd xmm0, xmm1, bcst([rcx], {1=>4}), 0x04
        #   valignd xmm0, xmm1, xmm2, 0x04
        #   valignd ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   valignd ymm0, ymm1, ymm2, 0x04
        #   valignd zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   valignd zmm0, zmm1, zmm2, 0x04
        def valignd(*operands,**kwargs) = add_instruction(Instructions::VALIGND,*operands,**kwargs)
        # Align Quadword Vectors
        # @return [Ronin::ASM::X86_64::Instructions::VALIGNQ]
        # @example
        #   valignq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   valignq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   valignq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   valignq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   valignq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   valignq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   valignq xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   valignq xmm0, xmm1, xmm2, 0x04
        #   valignq ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   valignq ymm0, ymm1, ymm2, 0x04
        #   valignq zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   valignq zmm0, zmm1, zmm2, 0x04
        def valignq(*operands,**kwargs) = add_instruction(Instructions::VALIGNQ,*operands,**kwargs)
        # Bitwise Logical AND NOT of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VANDNPD]
        # @example
        #   vandnpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vandnpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandnpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vandnpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandnpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vandnpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandnpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vandnpd xmm0, xmm1, xmm2
        #   vandnpd xmm0, xmm1, [rcx]
        #   vandnpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vandnpd ymm0, ymm1, ymm2
        #   vandnpd ymm0, ymm1, [rcx]
        #   vandnpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vandnpd zmm0, zmm1, zmm2
        def vandnpd(*operands,**kwargs) = add_instruction(Instructions::VANDNPD,*operands,**kwargs)
        # Bitwise Logical AND NOT of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VANDNPS]
        # @example
        #   vandnps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vandnps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandnps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vandnps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandnps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vandnps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandnps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vandnps xmm0, xmm1, xmm2
        #   vandnps xmm0, xmm1, [rcx]
        #   vandnps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vandnps ymm0, ymm1, ymm2
        #   vandnps ymm0, ymm1, [rcx]
        #   vandnps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vandnps zmm0, zmm1, zmm2
        def vandnps(*operands,**kwargs) = add_instruction(Instructions::VANDNPS,*operands,**kwargs)
        # Bitwise Logical AND of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VANDPD]
        # @example
        #   vandpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vandpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vandpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vandpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vandpd xmm0, xmm1, xmm2
        #   vandpd xmm0, xmm1, [rcx]
        #   vandpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vandpd ymm0, ymm1, ymm2
        #   vandpd ymm0, ymm1, [rcx]
        #   vandpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vandpd zmm0, zmm1, zmm2
        def vandpd(*operands,**kwargs) = add_instruction(Instructions::VANDPD,*operands,**kwargs)
        # Bitwise Logical AND of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VANDPS]
        # @example
        #   vandps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vandps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vandps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vandps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vandps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vandps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vandps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vandps xmm0, xmm1, xmm2
        #   vandps xmm0, xmm1, [rcx]
        #   vandps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vandps ymm0, ymm1, ymm2
        #   vandps ymm0, ymm1, [rcx]
        #   vandps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vandps zmm0, zmm1, zmm2
        def vandps(*operands,**kwargs) = add_instruction(Instructions::VANDPS,*operands,**kwargs)
        # Load BF16 Element and Convert to FP32 Element With Broadcas
        # @return [Ronin::ASM::X86_64::Instructions::VBCSTNEBF162PS]
        # @example
        #   vbcstnebf162ps xmm0, [rbx]
        #   vbcstnebf162ps ymm0, [rbx]
        def vbcstnebf162ps(*operands,**kwargs) = add_instruction(Instructions::VBCSTNEBF162PS,*operands,**kwargs)
        # Load FP16 Element and Convert to FP32 Element with Broadcast
        # @return [Ronin::ASM::X86_64::Instructions::VBCSTNESH2PS]
        # @example
        #   vbcstnesh2ps xmm0, [rbx]
        #   vbcstnesh2ps ymm0, [rbx]
        def vbcstnesh2ps(*operands,**kwargs) = add_instruction(Instructions::VBCSTNESH2PS,*operands,**kwargs)
        # Blend Packed Double-Precision Floating-Point Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86_64::Instructions::VBLENDMPD]
        # @example
        #   vblendmpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vblendmpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vblendmpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vblendmpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vblendmpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vblendmpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vblendmpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vblendmpd xmm0, xmm1, xmm2
        #   vblendmpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vblendmpd ymm0, ymm1, ymm2
        #   vblendmpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vblendmpd zmm0, zmm1, zmm2
        def vblendmpd(*operands,**kwargs) = add_instruction(Instructions::VBLENDMPD,*operands,**kwargs)
        # Blend Packed Single-Precision Floating-Point Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86_64::Instructions::VBLENDMPS]
        # @example
        #   vblendmps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vblendmps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vblendmps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vblendmps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vblendmps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vblendmps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vblendmps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vblendmps xmm0, xmm1, xmm2
        #   vblendmps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vblendmps ymm0, ymm1, ymm2
        #   vblendmps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vblendmps zmm0, zmm1, zmm2
        def vblendmps(*operands,**kwargs) = add_instruction(Instructions::VBLENDMPS,*operands,**kwargs)
        # Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VBLENDPD]
        # @example
        #   vblendpd xmm0, xmm1, xmm2, 0x04
        #   vblendpd xmm0, xmm1, [rcx], 0x04
        #   vblendpd ymm0, ymm1, ymm2, 0x04
        #   vblendpd ymm0, ymm1, [rcx], 0x04
        def vblendpd(*operands,**kwargs) = add_instruction(Instructions::VBLENDPD,*operands,**kwargs)
        #  Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VBLENDPS]
        # @example
        #   vblendps xmm0, xmm1, xmm2, 0x04
        #   vblendps xmm0, xmm1, [rcx], 0x04
        #   vblendps ymm0, ymm1, ymm2, 0x04
        #   vblendps ymm0, ymm1, [rcx], 0x04
        def vblendps(*operands,**kwargs) = add_instruction(Instructions::VBLENDPS,*operands,**kwargs)
        #  Variable Blend Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VBLENDVPD]
        # @example
        #   vblendvpd xmm0, xmm1, xmm2, xmm3
        #   vblendvpd xmm0, xmm1, [rcx], xmm3
        #   vblendvpd ymm0, ymm1, ymm2, ymm3
        #   vblendvpd ymm0, ymm1, [rcx], ymm3
        def vblendvpd(*operands,**kwargs) = add_instruction(Instructions::VBLENDVPD,*operands,**kwargs)
        #  Variable Blend Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VBLENDVPS]
        # @example
        #   vblendvps xmm0, xmm1, xmm2, xmm3
        #   vblendvps xmm0, xmm1, [rcx], xmm3
        #   vblendvps ymm0, ymm1, ymm2, ymm3
        #   vblendvps ymm0, ymm1, [rcx], ymm3
        def vblendvps(*operands,**kwargs) = add_instruction(Instructions::VBLENDVPS,*operands,**kwargs)
        # Broadcast 128 Bit of Floating-Point Data
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTF128]
        # @example
        #   vbroadcastf128 ymm0, [rbx]
        def vbroadcastf128(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF128,*operands,**kwargs)
        # Broadcast Two Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTF32X2]
        # @example
        #   vbroadcastf32x2 opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcastf32x2 opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcastf32x2 opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcastf32x2 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcastf32x2 ymm0, xmm1
        #   vbroadcastf32x2 ymm0, [rbx]
        #   vbroadcastf32x2 zmm0, xmm1
        #   vbroadcastf32x2 zmm0, [rbx]
        def vbroadcastf32x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF32X2,*operands,**kwargs)
        # Broadcast Four Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTF32X4]
        # @example
        #   vbroadcastf32x4 opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcastf32x4 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcastf32x4 ymm0, [rbx]
        #   vbroadcastf32x4 zmm0, [rbx]
        def vbroadcastf32x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF32X4,*operands,**kwargs)
        # Broadcast Eight Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTF32X8]
        # @example
        #   vbroadcastf32x8 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcastf32x8 zmm0, [rbx]
        def vbroadcastf32x8(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF32X8,*operands,**kwargs)
        # Broadcast Two Double-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTF64X2]
        # @example
        #   vbroadcastf64x2 opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcastf64x2 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcastf64x2 ymm0, [rbx]
        #   vbroadcastf64x2 zmm0, [rbx]
        def vbroadcastf64x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF64X2,*operands,**kwargs)
        # Broadcast Four Double-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTF64X4]
        # @example
        #   vbroadcastf64x4 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcastf64x4 zmm0, [rbx]
        def vbroadcastf64x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTF64X4,*operands,**kwargs)
        # Broadcast 128 Bits of Integer Data
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTI128]
        # @example
        #   vbroadcasti128 ymm0, [rbx]
        def vbroadcasti128(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI128,*operands,**kwargs)
        # Broadcast Two Doubleword Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTI32X2]
        # @example
        #   vbroadcasti32x2 opmask(xmm0, k1, zero: true), xmm1
        #   vbroadcasti32x2 opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcasti32x2 opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcasti32x2 opmask(xmm0, k1, zero: true), [rbx]
        #   vbroadcasti32x2 opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcasti32x2 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcasti32x2 xmm0, xmm1
        #   vbroadcasti32x2 xmm0, [rbx]
        #   vbroadcasti32x2 ymm0, xmm1
        #   vbroadcasti32x2 ymm0, [rbx]
        #   vbroadcasti32x2 zmm0, xmm1
        #   vbroadcasti32x2 zmm0, [rbx]
        def vbroadcasti32x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI32X2,*operands,**kwargs)
        # Broadcast Four Doubleword Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTI32X4]
        # @example
        #   vbroadcasti32x4 opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcasti32x4 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcasti32x4 ymm0, [rbx]
        #   vbroadcasti32x4 zmm0, [rbx]
        def vbroadcasti32x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI32X4,*operands,**kwargs)
        # Broadcast Eight Doubleword Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTI32X8]
        # @example
        #   vbroadcasti32x8 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcasti32x8 zmm0, [rbx]
        def vbroadcasti32x8(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI32X8,*operands,**kwargs)
        # Broadcast Two Quadword Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTI64X2]
        # @example
        #   vbroadcasti64x2 opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcasti64x2 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcasti64x2 ymm0, [rbx]
        #   vbroadcasti64x2 zmm0, [rbx]
        def vbroadcasti64x2(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI64X2,*operands,**kwargs)
        # Broadcast Four Quadword Elements
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTI64X4]
        # @example
        #   vbroadcasti64x4 opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcasti64x4 zmm0, [rbx]
        def vbroadcasti64x4(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTI64X4,*operands,**kwargs)
        # Broadcast Double-Precision Floating-Point Element
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTSD]
        # @example
        #   vbroadcastsd opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcastsd opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcastsd opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcastsd opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcastsd ymm0, xmm1
        #   vbroadcastsd ymm0, [rbx]
        #   vbroadcastsd zmm0, xmm1
        #   vbroadcastsd zmm0, [rbx]
        def vbroadcastsd(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTSD,*operands,**kwargs)
        # Broadcast Single-Precision Floating-Point Element
        # @return [Ronin::ASM::X86_64::Instructions::VBROADCASTSS]
        # @example
        #   vbroadcastss opmask(ymm0, k1, zero: true), xmm1
        #   vbroadcastss opmask(zmm0, k1, zero: true), xmm1
        #   vbroadcastss opmask(ymm0, k1, zero: true), [rbx]
        #   vbroadcastss opmask(zmm0, k1, zero: true), [rbx]
        #   vbroadcastss xmm0, xmm1
        #   vbroadcastss xmm0, [rbx]
        #   vbroadcastss ymm0, xmm1
        #   vbroadcastss ymm0, [rbx]
        #   vbroadcastss zmm0, xmm1
        #   vbroadcastss zmm0, [rbx]
        def vbroadcastss(*operands,**kwargs) = add_instruction(Instructions::VBROADCASTSS,*operands,**kwargs)
        # Compare Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCMPPD]
        # @example
        #   vcmppd opmask(k1, k2), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vcmppd k1, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vcmppd opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmppd k1, xmm1, xmm2, 0x04
        #   vcmppd opmask(k1, k2), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vcmppd k1, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vcmppd opmask(k1, k2), ymm1, ymm2, 0x04
        #   vcmppd k1, ymm1, ymm2, 0x04
        #   vcmppd opmask(k1, k2), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vcmppd k1, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vcmppd opmask(k1, k2), zmm1, zmm2, 0x04
        #   vcmppd k1, zmm1, zmm2, 0x04
        #   vcmppd xmm0, xmm1, xmm2, 0x04
        #   vcmppd xmm0, xmm1, [rcx], 0x04
        #   vcmppd ymm0, ymm1, ymm2, 0x04
        #   vcmppd ymm0, ymm1, [rcx], 0x04
        #   vcmppd opmask(k1, k2), zmm1, zmm2, sae, 0x05
        #   vcmppd k1, zmm1, zmm2, sae, 0x05
        def vcmppd(*operands,**kwargs) = add_instruction(Instructions::VCMPPD,*operands,**kwargs)
        # Compare Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCMPPH]
        # @example
        #   vcmpph opmask(k1, k2), xmm1, bcst([rcx], {1=>8}), 0x04
        #   vcmpph k1, xmm1, bcst([rcx], {1=>8}), 0x04
        #   vcmpph opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpph k1, xmm1, xmm2, 0x04
        #   vcmpph opmask(k1, k2), ymm1, bcst([rcx], {1=>16}), 0x04
        #   vcmpph k1, ymm1, bcst([rcx], {1=>16}), 0x04
        #   vcmpph opmask(k1, k2), ymm1, ymm2, 0x04
        #   vcmpph k1, ymm1, ymm2, 0x04
        #   vcmpph opmask(k1, k2), zmm1, bcst([rcx], {1=>32}), 0x04
        #   vcmpph k1, zmm1, bcst([rcx], {1=>32}), 0x04
        #   vcmpph opmask(k1, k2), zmm1, zmm2, 0x04
        #   vcmpph k1, zmm1, zmm2, 0x04
        #   vcmpph opmask(k1, k2), zmm1, zmm2, sae, 0x05
        #   vcmpph k1, zmm1, zmm2, sae, 0x05
        def vcmpph(*operands,**kwargs) = add_instruction(Instructions::VCMPPH,*operands,**kwargs)
        # Compare Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCMPPS]
        # @example
        #   vcmpps opmask(k1, k2), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vcmpps k1, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vcmpps opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpps k1, xmm1, xmm2, 0x04
        #   vcmpps opmask(k1, k2), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vcmpps k1, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vcmpps opmask(k1, k2), ymm1, ymm2, 0x04
        #   vcmpps k1, ymm1, ymm2, 0x04
        #   vcmpps opmask(k1, k2), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vcmpps k1, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vcmpps opmask(k1, k2), zmm1, zmm2, 0x04
        #   vcmpps k1, zmm1, zmm2, 0x04
        #   vcmpps xmm0, xmm1, xmm2, 0x04
        #   vcmpps xmm0, xmm1, [rcx], 0x04
        #   vcmpps ymm0, ymm1, ymm2, 0x04
        #   vcmpps ymm0, ymm1, [rcx], 0x04
        #   vcmpps opmask(k1, k2), zmm1, zmm2, sae, 0x05
        #   vcmpps k1, zmm1, zmm2, sae, 0x05
        def vcmpps(*operands,**kwargs) = add_instruction(Instructions::VCMPPS,*operands,**kwargs)
        # Compare Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCMPSD]
        # @example
        #   vcmpsd opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpsd k1, xmm1, xmm2, 0x04
        #   vcmpsd opmask(k1, k2), xmm1, [rcx], 0x04
        #   vcmpsd k1, xmm1, [rcx], 0x04
        #   vcmpsd xmm0, xmm1, xmm2, 0x04
        #   vcmpsd xmm0, xmm1, [rcx], 0x04
        #   vcmpsd opmask(k1, k2), xmm1, xmm2, sae, 0x05
        #   vcmpsd k1, xmm1, xmm2, sae, 0x05
        def vcmpsd(*operands,**kwargs) = add_instruction(Instructions::VCMPSD,*operands,**kwargs)
        # Compare Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCMPSH]
        # @example
        #   vcmpsh opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpsh k1, xmm1, xmm2, 0x04
        #   vcmpsh opmask(k1, k2), xmm1, [rcx], 0x04
        #   vcmpsh k1, xmm1, [rcx], 0x04
        #   vcmpsh opmask(k1, k2), xmm1, xmm2, sae, 0x05
        #   vcmpsh k1, xmm1, xmm2, sae, 0x05
        def vcmpsh(*operands,**kwargs) = add_instruction(Instructions::VCMPSH,*operands,**kwargs)
        # Compare Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCMPSS]
        # @example
        #   vcmpss opmask(k1, k2), xmm1, xmm2, 0x04
        #   vcmpss k1, xmm1, xmm2, 0x04
        #   vcmpss opmask(k1, k2), xmm1, [rcx], 0x04
        #   vcmpss k1, xmm1, [rcx], 0x04
        #   vcmpss xmm0, xmm1, xmm2, 0x04
        #   vcmpss xmm0, xmm1, [rcx], 0x04
        #   vcmpss opmask(k1, k2), xmm1, xmm2, sae, 0x05
        #   vcmpss k1, xmm1, xmm2, sae, 0x05
        def vcmpss(*operands,**kwargs) = add_instruction(Instructions::VCMPSS,*operands,**kwargs)
        # Compare Scalar Ordered Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::VCOMISD]
        # @example
        #   vcomisd xmm0, xmm1
        #   vcomisd xmm0, [rbx]
        #   vcomisd xmm0, xmm1, sae
        def vcomisd(*operands,**kwargs) = add_instruction(Instructions::VCOMISD,*operands,**kwargs)
        # Compare Scalar Ordered Half-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::VCOMISH]
        # @example
        #   vcomish xmm0, xmm1
        #   vcomish xmm0, [rbx]
        #   vcomish xmm0, xmm1, sae
        def vcomish(*operands,**kwargs) = add_instruction(Instructions::VCOMISH,*operands,**kwargs)
        # Compare Scalar Ordered Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::VCOMISS]
        # @example
        #   vcomiss xmm0, xmm1
        #   vcomiss xmm0, [rbx]
        #   vcomiss xmm0, xmm1, sae
        def vcomiss(*operands,**kwargs) = add_instruction(Instructions::VCOMISS,*operands,**kwargs)
        # Store Sparse Packed Double-Precision Floating-Point Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VCOMPRESSPD]
        # @example
        #   vcompresspd opmask(xmm0, k1, zero: true), xmm1
        #   vcompresspd opmask([rax], k1), xmm1
        #   vcompresspd opmask(ymm0, k1, zero: true), ymm1
        #   vcompresspd opmask([rax], k1), ymm1
        #   vcompresspd opmask(zmm0, k1, zero: true), zmm1
        #   vcompresspd opmask([rax], k1), zmm1
        #   vcompresspd xmm0, xmm1
        #   vcompresspd ymm0, ymm1
        #   vcompresspd zmm0, zmm1
        #   vcompresspd [rax], xmm1
        #   vcompresspd [rax], ymm1
        #   vcompresspd [rax], zmm1
        def vcompresspd(*operands,**kwargs) = add_instruction(Instructions::VCOMPRESSPD,*operands,**kwargs)
        # Store Sparse Packed Single-Precision Floating-Point Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VCOMPRESSPS]
        # @example
        #   vcompressps opmask(xmm0, k1, zero: true), xmm1
        #   vcompressps opmask([rax], k1), xmm1
        #   vcompressps opmask(ymm0, k1, zero: true), ymm1
        #   vcompressps opmask([rax], k1), ymm1
        #   vcompressps opmask(zmm0, k1, zero: true), zmm1
        #   vcompressps opmask([rax], k1), zmm1
        #   vcompressps xmm0, xmm1
        #   vcompressps ymm0, ymm1
        #   vcompressps zmm0, zmm1
        #   vcompressps [rax], xmm1
        #   vcompressps [rax], ymm1
        #   vcompressps [rax], zmm1
        def vcompressps(*operands,**kwargs) = add_instruction(Instructions::VCOMPRESSPS,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTDQ2PD]
        # @example
        #   vcvtdq2pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtdq2pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtdq2pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtdq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtdq2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtdq2pd opmask(zmm0, k1, zero: true), ymm1
        #   vcvtdq2pd xmm0, bcst([rbx], {1=>2})
        #   vcvtdq2pd xmm0, xmm1
        #   vcvtdq2pd xmm0, [rbx]
        #   vcvtdq2pd ymm0, bcst([rbx], {1=>4})
        #   vcvtdq2pd ymm0, xmm1
        #   vcvtdq2pd ymm0, [rbx]
        #   vcvtdq2pd zmm0, bcst([rbx], {1=>8})
        #   vcvtdq2pd zmm0, ymm1
        def vcvtdq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PD,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Half-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTDQ2PH]
        # @example
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtdq2ph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtdq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtdq2ph opmask(ymm0, k1, zero: true), zmm1
        #   vcvtdq2ph xmm0, bcst([rbx], {1=>4})
        #   vcvtdq2ph xmm0, bcst([rbx], {1=>8})
        #   vcvtdq2ph xmm0, xmm1
        #   vcvtdq2ph xmm0, ymm1
        #   vcvtdq2ph ymm0, bcst([rbx], {1=>16})
        #   vcvtdq2ph ymm0, zmm1
        #   vcvtdq2ph opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtdq2ph ymm0, zmm1, er
        def vcvtdq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PH,*operands,**kwargs)
        # Convert Packed Dword Integers to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTDQ2PS]
        # @example
        #   vcvtdq2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtdq2ps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtdq2ps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtdq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtdq2ps opmask(ymm0, k1, zero: true), ymm1
        #   vcvtdq2ps opmask(zmm0, k1, zero: true), zmm1
        #   vcvtdq2ps xmm0, bcst([rbx], {1=>4})
        #   vcvtdq2ps xmm0, xmm1
        #   vcvtdq2ps xmm0, [rbx]
        #   vcvtdq2ps ymm0, bcst([rbx], {1=>8})
        #   vcvtdq2ps ymm0, ymm1
        #   vcvtdq2ps ymm0, [rbx]
        #   vcvtdq2ps zmm0, bcst([rbx], {1=>16})
        #   vcvtdq2ps zmm0, zmm1
        #   vcvtdq2ps opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtdq2ps zmm0, zmm1, er
        def vcvtdq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTDQ2PS,*operands,**kwargs)
        # Convert with Nearest-Even rounding 2 Single-Precision FP vectors into BFloat16 FP vector
        # @return [Ronin::ASM::X86_64::Instructions::VCVTNE2PS2BF16]
        # @example
        #   vcvtne2ps2bf16 opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vcvtne2ps2bf16 opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtne2ps2bf16 opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vcvtne2ps2bf16 opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vcvtne2ps2bf16 opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vcvtne2ps2bf16 opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vcvtne2ps2bf16 xmm0, xmm1, bcst([rcx], {1=>4})
        #   vcvtne2ps2bf16 xmm0, xmm1, xmm2
        #   vcvtne2ps2bf16 ymm0, ymm1, bcst([rcx], {1=>8})
        #   vcvtne2ps2bf16 ymm0, ymm1, ymm2
        #   vcvtne2ps2bf16 zmm0, zmm1, bcst([rcx], {1=>16})
        #   vcvtne2ps2bf16 zmm0, zmm1, zmm2
        def vcvtne2ps2bf16(*operands,**kwargs) = add_instruction(Instructions::VCVTNE2PS2BF16,*operands,**kwargs)
        # Convert Even Elements of Packed BF16 Values to FP32 Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTNEEBF162PS]
        # @example
        #   vcvtneebf162ps xmm0, [rbx]
        #   vcvtneebf162ps ymm0, [rbx]
        def vcvtneebf162ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEEBF162PS,*operands,**kwargs)
        # Convert Even Elements of Packed FP16 Values to FP32 Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTNEEPH2PS]
        # @example
        #   vcvtneeph2ps xmm0, [rbx]
        #   vcvtneeph2ps ymm0, [rbx]
        def vcvtneeph2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEEPH2PS,*operands,**kwargs)
        # Convert Odd Elements of Packed BF16 Values to FP32 Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTNEOBF162PS]
        # @example
        #   vcvtneobf162ps xmm0, [rbx]
        #   vcvtneobf162ps ymm0, [rbx]
        def vcvtneobf162ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEOBF162PS,*operands,**kwargs)
        # Convert Odd Elements of Packed FP16 Values to FP32 Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTNEOPH2PS]
        # @example
        #   vcvtneoph2ps xmm0, [rbx]
        #   vcvtneoph2ps ymm0, [rbx]
        def vcvtneoph2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTNEOPH2PS,*operands,**kwargs)
        # Convert with Nearest-Even rounding a Single-Precision FP vector into a BFloat16 FP vector
        # @return [Ronin::ASM::X86_64::Instructions::VCVTNEPS2BF16]
        # @example
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtneps2bf16 opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), xmm1
        #   vcvtneps2bf16 opmask(xmm0, k1, zero: true), ymm1
        #   vcvtneps2bf16 opmask(ymm0, k1, zero: true), zmm1
        #   vcvtneps2bf16 xmm0, bcst([rbx], {1=>4})
        #   vcvtneps2bf16 xmm0, bcst([rbx], {1=>8})
        #   vcvtneps2bf16 xmm0, xmm1
        #   vcvtneps2bf16 xmm0, ymm1
        #   vcvtneps2bf16 xmm0, [rbx]
        #   vcvtneps2bf16 ymm0, bcst([rbx], {1=>16})
        #   vcvtneps2bf16 ymm0, zmm1
        def vcvtneps2bf16(*operands,**kwargs) = add_instruction(Instructions::VCVTNEPS2BF16,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPD2DQ]
        # @example
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtpd2dq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2dq opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2dq opmask(ymm0, k1, zero: true), zmm1
        #   vcvtpd2dq xmm0, bcst([rbx], {1=>2})
        #   vcvtpd2dq xmm0, bcst([rbx], {1=>4})
        #   vcvtpd2dq xmm0, xmm1
        #   vcvtpd2dq xmm0, ymm1
        #   vcvtpd2dq xmm0, [rbx]
        #   vcvtpd2dq ymm0, bcst([rbx], {1=>8})
        #   vcvtpd2dq ymm0, zmm1
        #   vcvtpd2dq opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtpd2dq ymm0, zmm1, er
        def vcvtpd2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2DQ,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Half-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPD2PH]
        # @example
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), zmm1
        #   vcvtpd2ph xmm0, bcst([rbx], {1=>2})
        #   vcvtpd2ph xmm0, bcst([rbx], {1=>4})
        #   vcvtpd2ph xmm0, bcst([rbx], {1=>8})
        #   vcvtpd2ph xmm0, xmm1
        #   vcvtpd2ph xmm0, ymm1
        #   vcvtpd2ph xmm0, zmm1
        #   vcvtpd2ph opmask(xmm0, k1, zero: true), zmm1, er
        #   vcvtpd2ph xmm0, zmm1, er
        def vcvtpd2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2PH,*operands,**kwargs)
        # Convert Packed Double-Precision FP Values to Packed Single-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPD2PS]
        # @example
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtpd2ps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2ps opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2ps opmask(ymm0, k1, zero: true), zmm1
        #   vcvtpd2ps xmm0, bcst([rbx], {1=>2})
        #   vcvtpd2ps xmm0, bcst([rbx], {1=>4})
        #   vcvtpd2ps xmm0, xmm1
        #   vcvtpd2ps xmm0, ymm1
        #   vcvtpd2ps xmm0, [rbx]
        #   vcvtpd2ps ymm0, bcst([rbx], {1=>8})
        #   vcvtpd2ps ymm0, zmm1
        #   vcvtpd2ps opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtpd2ps ymm0, zmm1, er
        def vcvtpd2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2PS,*operands,**kwargs)
        # Convert Packed Double-Precision Floating-Point Values to Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPD2QQ]
        # @example
        #   vcvtpd2qq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtpd2qq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtpd2qq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtpd2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2qq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtpd2qq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtpd2qq xmm0, bcst([rbx], {1=>2})
        #   vcvtpd2qq xmm0, xmm1
        #   vcvtpd2qq ymm0, bcst([rbx], {1=>4})
        #   vcvtpd2qq ymm0, ymm1
        #   vcvtpd2qq zmm0, bcst([rbx], {1=>8})
        #   vcvtpd2qq zmm0, zmm1
        #   vcvtpd2qq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtpd2qq zmm0, zmm1, er
        def vcvtpd2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2QQ,*operands,**kwargs)
        # Convert Packed Double-Precision Floating-Point Values to Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPD2UDQ]
        # @example
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtpd2udq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2udq opmask(xmm0, k1, zero: true), ymm1
        #   vcvtpd2udq opmask(ymm0, k1, zero: true), zmm1
        #   vcvtpd2udq xmm0, bcst([rbx], {1=>2})
        #   vcvtpd2udq xmm0, bcst([rbx], {1=>4})
        #   vcvtpd2udq xmm0, xmm1
        #   vcvtpd2udq xmm0, ymm1
        #   vcvtpd2udq ymm0, bcst([rbx], {1=>8})
        #   vcvtpd2udq ymm0, zmm1
        #   vcvtpd2udq opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtpd2udq ymm0, zmm1, er
        def vcvtpd2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2UDQ,*operands,**kwargs)
        # Convert Packed Double-Precision Floating-Point Values to Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPD2UQQ]
        # @example
        #   vcvtpd2uqq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtpd2uqq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtpd2uqq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtpd2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtpd2uqq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtpd2uqq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtpd2uqq xmm0, bcst([rbx], {1=>2})
        #   vcvtpd2uqq xmm0, xmm1
        #   vcvtpd2uqq ymm0, bcst([rbx], {1=>4})
        #   vcvtpd2uqq ymm0, ymm1
        #   vcvtpd2uqq zmm0, bcst([rbx], {1=>8})
        #   vcvtpd2uqq zmm0, zmm1
        #   vcvtpd2uqq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtpd2uqq zmm0, zmm1, er
        def vcvtpd2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTPD2UQQ,*operands,**kwargs)
        # Convert Packed Half-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2DQ]
        # @example
        #   vcvtph2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtph2dq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2dq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtph2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2dq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2dq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2dq xmm0, bcst([rbx], {1=>4})
        #   vcvtph2dq xmm0, xmm1
        #   vcvtph2dq ymm0, bcst([rbx], {1=>8})
        #   vcvtph2dq ymm0, xmm1
        #   vcvtph2dq zmm0, bcst([rbx], {1=>16})
        #   vcvtph2dq zmm0, ymm1
        #   vcvtph2dq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtph2dq zmm0, ymm1, er
        def vcvtph2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2DQ,*operands,**kwargs)
        # Convert Packed Half-Precision FP Values to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2PD]
        # @example
        #   vcvtph2pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtph2pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtph2pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2pd opmask(zmm0, k1, zero: true), xmm1
        #   vcvtph2pd xmm0, bcst([rbx], {1=>2})
        #   vcvtph2pd xmm0, xmm1
        #   vcvtph2pd ymm0, bcst([rbx], {1=>4})
        #   vcvtph2pd ymm0, xmm1
        #   vcvtph2pd zmm0, bcst([rbx], {1=>8})
        #   vcvtph2pd zmm0, xmm1
        #   vcvtph2pd opmask(zmm0, k1, zero: true), xmm1, sae
        #   vcvtph2pd zmm0, xmm1, sae
        def vcvtph2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PD,*operands,**kwargs)
        # Convert Half-Precision FP Values to Single-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2PS]
        # @example
        #   vcvtph2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2ps opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2ps opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2ps opmask(xmm0, k1, zero: true), [rbx]
        #   vcvtph2ps opmask(ymm0, k1, zero: true), [rbx]
        #   vcvtph2ps opmask(zmm0, k1, zero: true), [rbx]
        #   vcvtph2ps xmm0, xmm1
        #   vcvtph2ps xmm0, [rbx]
        #   vcvtph2ps ymm0, xmm1
        #   vcvtph2ps ymm0, [rbx]
        #   vcvtph2ps zmm0, ymm1
        #   vcvtph2ps zmm0, [rbx]
        #   vcvtph2ps opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvtph2ps zmm0, ymm1, sae
        def vcvtph2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PS,*operands,**kwargs)
        # Convert Half-Precision FP Values to Single-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2PSX]
        # @example
        #   vcvtph2psx opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtph2psx opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2psx opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtph2psx opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2psx opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2psx opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2psx xmm0, bcst([rbx], {1=>4})
        #   vcvtph2psx xmm0, xmm1
        #   vcvtph2psx ymm0, bcst([rbx], {1=>8})
        #   vcvtph2psx ymm0, xmm1
        #   vcvtph2psx zmm0, bcst([rbx], {1=>16})
        #   vcvtph2psx zmm0, ymm1
        #   vcvtph2psx opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvtph2psx zmm0, ymm1, sae
        def vcvtph2psx(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2PSX,*operands,**kwargs)
        # Convert Packed Half Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2QQ]
        # @example
        #   vcvtph2qq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtph2qq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtph2qq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2qq opmask(zmm0, k1, zero: true), xmm1
        #   vcvtph2qq xmm0, bcst([rbx], {1=>2})
        #   vcvtph2qq xmm0, xmm1
        #   vcvtph2qq ymm0, bcst([rbx], {1=>4})
        #   vcvtph2qq ymm0, xmm1
        #   vcvtph2qq zmm0, bcst([rbx], {1=>8})
        #   vcvtph2qq zmm0, xmm1
        #   vcvtph2qq opmask(zmm0, k1, zero: true), xmm1, er
        #   vcvtph2qq zmm0, xmm1, er
        def vcvtph2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2QQ,*operands,**kwargs)
        # Convert Packed Half-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2UDQ]
        # @example
        #   vcvtph2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtph2udq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2udq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtph2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2udq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2udq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtph2udq xmm0, bcst([rbx], {1=>4})
        #   vcvtph2udq xmm0, xmm1
        #   vcvtph2udq ymm0, bcst([rbx], {1=>8})
        #   vcvtph2udq ymm0, xmm1
        #   vcvtph2udq zmm0, bcst([rbx], {1=>16})
        #   vcvtph2udq zmm0, ymm1
        #   vcvtph2udq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtph2udq zmm0, ymm1, er
        def vcvtph2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UDQ,*operands,**kwargs)
        # Convert Packed Half Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2UQQ]
        # @example
        #   vcvtph2uqq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtph2uqq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtph2uqq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtph2uqq opmask(zmm0, k1, zero: true), xmm1
        #   vcvtph2uqq xmm0, bcst([rbx], {1=>2})
        #   vcvtph2uqq xmm0, xmm1
        #   vcvtph2uqq ymm0, bcst([rbx], {1=>4})
        #   vcvtph2uqq ymm0, xmm1
        #   vcvtph2uqq zmm0, bcst([rbx], {1=>8})
        #   vcvtph2uqq zmm0, xmm1
        #   vcvtph2uqq opmask(zmm0, k1, zero: true), xmm1, er
        #   vcvtph2uqq zmm0, xmm1, er
        def vcvtph2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UQQ,*operands,**kwargs)
        # Convert Packed Half-Precision Floating-Point Values to Packed Unsigned Word Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2UW]
        # @example
        #   vcvtph2uw opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2uw opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtph2uw opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vcvtph2uw opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2uw opmask(ymm0, k1, zero: true), ymm1
        #   vcvtph2uw opmask(zmm0, k1, zero: true), zmm1
        #   vcvtph2uw xmm0, bcst([rbx], {1=>8})
        #   vcvtph2uw xmm0, xmm1
        #   vcvtph2uw ymm0, bcst([rbx], {1=>16})
        #   vcvtph2uw ymm0, ymm1
        #   vcvtph2uw zmm0, bcst([rbx], {1=>32})
        #   vcvtph2uw zmm0, zmm1
        #   vcvtph2uw opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtph2uw zmm0, zmm1, er
        def vcvtph2uw(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2UW,*operands,**kwargs)
        # Convert Packed Half-Precision Floating-Point Values to Packed Word Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPH2W]
        # @example
        #   vcvtph2w opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtph2w opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtph2w opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vcvtph2w opmask(xmm0, k1, zero: true), xmm1
        #   vcvtph2w opmask(ymm0, k1, zero: true), ymm1
        #   vcvtph2w opmask(zmm0, k1, zero: true), zmm1
        #   vcvtph2w xmm0, bcst([rbx], {1=>8})
        #   vcvtph2w xmm0, xmm1
        #   vcvtph2w ymm0, bcst([rbx], {1=>16})
        #   vcvtph2w ymm0, ymm1
        #   vcvtph2w zmm0, bcst([rbx], {1=>32})
        #   vcvtph2w zmm0, zmm1
        #   vcvtph2w opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtph2w zmm0, zmm1, er
        def vcvtph2w(*operands,**kwargs) = add_instruction(Instructions::VCVTPH2W,*operands,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPS2DQ]
        # @example
        #   vcvtps2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtps2dq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtps2dq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtps2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2dq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtps2dq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtps2dq xmm0, bcst([rbx], {1=>4})
        #   vcvtps2dq xmm0, xmm1
        #   vcvtps2dq xmm0, [rbx]
        #   vcvtps2dq ymm0, bcst([rbx], {1=>8})
        #   vcvtps2dq ymm0, ymm1
        #   vcvtps2dq ymm0, [rbx]
        #   vcvtps2dq zmm0, bcst([rbx], {1=>16})
        #   vcvtps2dq zmm0, zmm1
        #   vcvtps2dq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtps2dq zmm0, zmm1, er
        def vcvtps2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2DQ,*operands,**kwargs)
        # Convert Packed Single-Precision FP Values to Packed Double-Precision FP Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPS2PD]
        # @example
        #   vcvtps2pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtps2pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtps2pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtps2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtps2pd opmask(zmm0, k1, zero: true), ymm1
        #   vcvtps2pd xmm0, bcst([rbx], {1=>2})
        #   vcvtps2pd xmm0, xmm1
        #   vcvtps2pd xmm0, [rbx]
        #   vcvtps2pd ymm0, bcst([rbx], {1=>4})
        #   vcvtps2pd ymm0, xmm1
        #   vcvtps2pd ymm0, [rbx]
        #   vcvtps2pd zmm0, bcst([rbx], {1=>8})
        #   vcvtps2pd zmm0, ymm1
        #   vcvtps2pd opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvtps2pd zmm0, ymm1, sae
        def vcvtps2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PD,*operands,**kwargs)
        # Convert Single-Precision FP value to Half-Precision FP value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPS2PH]
        # @example
        #   vcvtps2ph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vcvtps2ph opmask([rax], k1), xmm1, 0x03
        #   vcvtps2ph opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vcvtps2ph opmask([rax], k1), ymm1, 0x03
        #   vcvtps2ph opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vcvtps2ph opmask([rax], k1), zmm1, 0x03
        #   vcvtps2ph xmm0, xmm1, 0x03
        #   vcvtps2ph xmm0, ymm1, 0x03
        #   vcvtps2ph ymm0, zmm1, 0x03
        #   vcvtps2ph [rax], xmm1, 0x03
        #   vcvtps2ph [rax], ymm1, 0x03
        #   vcvtps2ph [rax], zmm1, 0x03
        #   vcvtps2ph opmask(ymm0, k1, zero: true), zmm1, sae, 0x04
        #   vcvtps2ph ymm0, zmm1, sae, 0x04
        def vcvtps2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PH,*operands,**kwargs)
        # Convert Single-Precision FP value to Half-Precision FP value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPS2PHX]
        # @example
        #   vcvtps2phx opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtps2phx opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtps2phx opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtps2phx opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2phx opmask(xmm0, k1, zero: true), ymm1
        #   vcvtps2phx opmask(ymm0, k1, zero: true), zmm1
        #   vcvtps2phx xmm0, bcst([rbx], {1=>4})
        #   vcvtps2phx xmm0, bcst([rbx], {1=>8})
        #   vcvtps2phx xmm0, xmm1
        #   vcvtps2phx xmm0, ymm1
        #   vcvtps2phx ymm0, bcst([rbx], {1=>16})
        #   vcvtps2phx ymm0, zmm1
        #   vcvtps2phx opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtps2phx ymm0, zmm1, er
        def vcvtps2phx(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2PHX,*operands,**kwargs)
        # Convert Packed Single Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPS2QQ]
        # @example
        #   vcvtps2qq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtps2qq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtps2qq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtps2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtps2qq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtps2qq xmm0, bcst([rbx], {1=>2})
        #   vcvtps2qq xmm0, xmm1
        #   vcvtps2qq ymm0, bcst([rbx], {1=>4})
        #   vcvtps2qq ymm0, xmm1
        #   vcvtps2qq zmm0, bcst([rbx], {1=>8})
        #   vcvtps2qq zmm0, ymm1
        #   vcvtps2qq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtps2qq zmm0, ymm1, er
        def vcvtps2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2QQ,*operands,**kwargs)
        # Convert Packed Single-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPS2UDQ]
        # @example
        #   vcvtps2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtps2udq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtps2udq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtps2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2udq opmask(ymm0, k1, zero: true), ymm1
        #   vcvtps2udq opmask(zmm0, k1, zero: true), zmm1
        #   vcvtps2udq xmm0, bcst([rbx], {1=>4})
        #   vcvtps2udq xmm0, xmm1
        #   vcvtps2udq ymm0, bcst([rbx], {1=>8})
        #   vcvtps2udq ymm0, ymm1
        #   vcvtps2udq zmm0, bcst([rbx], {1=>16})
        #   vcvtps2udq zmm0, zmm1
        #   vcvtps2udq opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtps2udq zmm0, zmm1, er
        def vcvtps2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2UDQ,*operands,**kwargs)
        # Convert Packed Single Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTPS2UQQ]
        # @example
        #   vcvtps2uqq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtps2uqq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtps2uqq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtps2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvtps2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvtps2uqq opmask(zmm0, k1, zero: true), ymm1
        #   vcvtps2uqq xmm0, bcst([rbx], {1=>2})
        #   vcvtps2uqq xmm0, xmm1
        #   vcvtps2uqq ymm0, bcst([rbx], {1=>4})
        #   vcvtps2uqq ymm0, xmm1
        #   vcvtps2uqq zmm0, bcst([rbx], {1=>8})
        #   vcvtps2uqq zmm0, ymm1
        #   vcvtps2uqq opmask(zmm0, k1, zero: true), ymm1, er
        #   vcvtps2uqq zmm0, ymm1, er
        def vcvtps2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTPS2UQQ,*operands,**kwargs)
        # Convert Packed Quadword Integers to Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTQQ2PD]
        # @example
        #   vcvtqq2pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtqq2pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtqq2pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtqq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtqq2pd opmask(ymm0, k1, zero: true), ymm1
        #   vcvtqq2pd opmask(zmm0, k1, zero: true), zmm1
        #   vcvtqq2pd xmm0, bcst([rbx], {1=>2})
        #   vcvtqq2pd xmm0, xmm1
        #   vcvtqq2pd ymm0, bcst([rbx], {1=>4})
        #   vcvtqq2pd ymm0, ymm1
        #   vcvtqq2pd zmm0, bcst([rbx], {1=>8})
        #   vcvtqq2pd zmm0, zmm1
        #   vcvtqq2pd opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtqq2pd zmm0, zmm1, er
        def vcvtqq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PD,*operands,**kwargs)
        # Convert Packed Quadword Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTQQ2PH]
        # @example
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), zmm1
        #   vcvtqq2ph xmm0, bcst([rbx], {1=>2})
        #   vcvtqq2ph xmm0, bcst([rbx], {1=>4})
        #   vcvtqq2ph xmm0, bcst([rbx], {1=>8})
        #   vcvtqq2ph xmm0, xmm1
        #   vcvtqq2ph xmm0, ymm1
        #   vcvtqq2ph xmm0, zmm1
        #   vcvtqq2ph opmask(xmm0, k1, zero: true), zmm1, er
        #   vcvtqq2ph xmm0, zmm1, er
        def vcvtqq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PH,*operands,**kwargs)
        # Convert Packed Quadword Integers to Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTQQ2PS]
        # @example
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtqq2ps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtqq2ps opmask(xmm0, k1, zero: true), ymm1
        #   vcvtqq2ps opmask(ymm0, k1, zero: true), zmm1
        #   vcvtqq2ps xmm0, bcst([rbx], {1=>2})
        #   vcvtqq2ps xmm0, bcst([rbx], {1=>4})
        #   vcvtqq2ps xmm0, xmm1
        #   vcvtqq2ps xmm0, ymm1
        #   vcvtqq2ps ymm0, bcst([rbx], {1=>8})
        #   vcvtqq2ps ymm0, zmm1
        #   vcvtqq2ps opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtqq2ps ymm0, zmm1, er
        def vcvtqq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTQQ2PS,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Scalar Half-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSD2SH]
        # @example
        #   vcvtsd2sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsd2sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vcvtsd2sh xmm0, xmm1, xmm2
        #   vcvtsd2sh xmm0, xmm1, [rcx]
        #   vcvtsd2sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vcvtsd2sh xmm0, xmm1, xmm2, er
        def vcvtsd2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SH,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSD2SI]
        # @example
        #   vcvtsd2si eax, xmm1
        #   vcvtsd2si eax, [rbx]
        #   vcvtsd2si rax, xmm1
        #   vcvtsd2si rax, [rbx]
        #   vcvtsd2si eax, xmm1, er
        #   vcvtsd2si rax, xmm1, er
        def vcvtsd2si(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SI,*operands,**kwargs)
        # Convert Scalar Double-Precision FP Value to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSD2SS]
        # @example
        #   vcvtsd2ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsd2ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vcvtsd2ss xmm0, xmm1, xmm2
        #   vcvtsd2ss xmm0, xmm1, [rcx]
        #   vcvtsd2ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vcvtsd2ss xmm0, xmm1, xmm2, er
        def vcvtsd2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2SS,*operands,**kwargs)
        # Convert Scalar Double-Precision Floating-Point Value to Unsigned Doubleword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSD2USI]
        # @example
        #   vcvtsd2usi eax, xmm1
        #   vcvtsd2usi eax, [rbx]
        #   vcvtsd2usi rax, xmm1
        #   vcvtsd2usi rax, [rbx]
        #   vcvtsd2usi eax, xmm1, er
        #   vcvtsd2usi rax, xmm1, er
        def vcvtsd2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTSD2USI,*operands,**kwargs)
        # Convert Scalar Half-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSH2SD]
        # @example
        #   vcvtsh2sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsh2sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vcvtsh2sd xmm0, xmm1, xmm2
        #   vcvtsh2sd xmm0, xmm1, [rcx]
        #   vcvtsh2sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vcvtsh2sd xmm0, xmm1, xmm2, sae
        def vcvtsh2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SD,*operands,**kwargs)
        # Convert Scalar Half-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSH2SI]
        # @example
        #   vcvtsh2si eax, xmm1
        #   vcvtsh2si eax, [rbx]
        #   vcvtsh2si rax, xmm1
        #   vcvtsh2si rax, [rbx]
        #   vcvtsh2si eax, xmm1, er
        #   vcvtsh2si rax, xmm1, er
        def vcvtsh2si(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SI,*operands,**kwargs)
        # Convert Scalar Half-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSH2SS]
        # @example
        #   vcvtsh2ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtsh2ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vcvtsh2ss xmm0, xmm1, xmm2
        #   vcvtsh2ss xmm0, xmm1, [rcx]
        #   vcvtsh2ss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vcvtsh2ss xmm0, xmm1, xmm2, sae
        def vcvtsh2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2SS,*operands,**kwargs)
        # Convert Scalar Half-Precision Floating-Point Value to Unsigned Doubleword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSH2USI]
        # @example
        #   vcvtsh2usi eax, xmm1
        #   vcvtsh2usi eax, [rbx]
        #   vcvtsh2usi rax, xmm1
        #   vcvtsh2usi rax, [rbx]
        #   vcvtsh2usi eax, xmm1, er
        #   vcvtsh2usi rax, xmm1, er
        def vcvtsh2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTSH2USI,*operands,**kwargs)
        # Convert Dword Integer to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSI2SD]
        # @example
        #   vcvtsi2sd xmm0, xmm1, ecx
        #   vcvtsi2sd xmm0, xmm1, rcx
        #   vcvtsi2sd xmm0, xmm1, [rcx]
        #   vcvtsi2sd xmm0, xmm1, er, rdx
        def vcvtsi2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SD,*operands,**kwargs)
        # Convert Dword Integer to Scalar Half-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSI2SH]
        # @example
        #   vcvtsi2sh xmm0, xmm1, ecx
        #   vcvtsi2sh xmm0, xmm1, rcx
        #   vcvtsi2sh xmm0, xmm1, [rcx]
        #   vcvtsi2sh xmm0, xmm1, er, edx
        #   vcvtsi2sh xmm0, xmm1, er, rdx
        def vcvtsi2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SH,*operands,**kwargs)
        # Convert Dword Integer to Scalar Single-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSI2SS]
        # @example
        #   vcvtsi2ss xmm0, xmm1, ecx
        #   vcvtsi2ss xmm0, xmm1, rcx
        #   vcvtsi2ss xmm0, xmm1, [rcx]
        #   vcvtsi2ss xmm0, xmm1, er, edx
        #   vcvtsi2ss xmm0, xmm1, er, rdx
        def vcvtsi2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTSI2SS,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Scalar Double-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSS2SD]
        # @example
        #   vcvtss2sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtss2sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vcvtss2sd xmm0, xmm1, xmm2
        #   vcvtss2sd xmm0, xmm1, [rcx]
        #   vcvtss2sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vcvtss2sd xmm0, xmm1, xmm2, sae
        def vcvtss2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SD,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Scalar Half-Precision FP Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSS2SH]
        # @example
        #   vcvtss2sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vcvtss2sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vcvtss2sh xmm0, xmm1, xmm2
        #   vcvtss2sh xmm0, xmm1, [rcx]
        #   vcvtss2sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vcvtss2sh xmm0, xmm1, xmm2, er
        def vcvtss2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SH,*operands,**kwargs)
        # Convert Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSS2SI]
        # @example
        #   vcvtss2si eax, xmm1
        #   vcvtss2si eax, [rbx]
        #   vcvtss2si rax, xmm1
        #   vcvtss2si rax, [rbx]
        #   vcvtss2si eax, xmm1, er
        #   vcvtss2si rax, xmm1, er
        def vcvtss2si(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2SI,*operands,**kwargs)
        # Convert Scalar Single-Precision Floating-Point Value to Unsigned Doubleword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTSS2USI]
        # @example
        #   vcvtss2usi eax, xmm1
        #   vcvtss2usi eax, [rbx]
        #   vcvtss2usi rax, xmm1
        #   vcvtss2usi rax, [rbx]
        #   vcvtss2usi eax, xmm1, er
        #   vcvtss2usi rax, xmm1, er
        def vcvtss2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTSS2USI,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPD2DQ]
        # @example
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttpd2dq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2dq opmask(xmm0, k1, zero: true), ymm1
        #   vcvttpd2dq opmask(ymm0, k1, zero: true), zmm1
        #   vcvttpd2dq xmm0, bcst([rbx], {1=>2})
        #   vcvttpd2dq xmm0, bcst([rbx], {1=>4})
        #   vcvttpd2dq xmm0, xmm1
        #   vcvttpd2dq xmm0, ymm1
        #   vcvttpd2dq xmm0, [rbx]
        #   vcvttpd2dq ymm0, bcst([rbx], {1=>8})
        #   vcvttpd2dq ymm0, zmm1
        #   vcvttpd2dq opmask(ymm0, k1, zero: true), zmm1, sae
        #   vcvttpd2dq ymm0, zmm1, sae
        def vcvttpd2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2DQ,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision Floating-Point Values to Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPD2QQ]
        # @example
        #   vcvttpd2qq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttpd2qq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttpd2qq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttpd2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2qq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttpd2qq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttpd2qq xmm0, bcst([rbx], {1=>2})
        #   vcvttpd2qq xmm0, xmm1
        #   vcvttpd2qq ymm0, bcst([rbx], {1=>4})
        #   vcvttpd2qq ymm0, ymm1
        #   vcvttpd2qq zmm0, bcst([rbx], {1=>8})
        #   vcvttpd2qq zmm0, zmm1
        #   vcvttpd2qq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttpd2qq zmm0, zmm1, sae
        def vcvttpd2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2QQ,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision Floating-Point Values to Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPD2UDQ]
        # @example
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttpd2udq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2udq opmask(xmm0, k1, zero: true), ymm1
        #   vcvttpd2udq opmask(ymm0, k1, zero: true), zmm1
        #   vcvttpd2udq xmm0, bcst([rbx], {1=>2})
        #   vcvttpd2udq xmm0, bcst([rbx], {1=>4})
        #   vcvttpd2udq xmm0, xmm1
        #   vcvttpd2udq xmm0, ymm1
        #   vcvttpd2udq ymm0, bcst([rbx], {1=>8})
        #   vcvttpd2udq ymm0, zmm1
        #   vcvttpd2udq opmask(ymm0, k1, zero: true), zmm1, sae
        #   vcvttpd2udq ymm0, zmm1, sae
        def vcvttpd2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2UDQ,*operands,**kwargs)
        # Convert with Truncation Packed Double-Precision Floating-Point Values to Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPD2UQQ]
        # @example
        #   vcvttpd2uqq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttpd2uqq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttpd2uqq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttpd2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttpd2uqq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttpd2uqq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttpd2uqq xmm0, bcst([rbx], {1=>2})
        #   vcvttpd2uqq xmm0, xmm1
        #   vcvttpd2uqq ymm0, bcst([rbx], {1=>4})
        #   vcvttpd2uqq ymm0, ymm1
        #   vcvttpd2uqq zmm0, bcst([rbx], {1=>8})
        #   vcvttpd2uqq zmm0, zmm1
        #   vcvttpd2uqq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttpd2uqq zmm0, zmm1, sae
        def vcvttpd2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPD2UQQ,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPH2DQ]
        # @example
        #   vcvttph2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttph2dq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttph2dq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvttph2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2dq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2dq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttph2dq xmm0, bcst([rbx], {1=>4})
        #   vcvttph2dq xmm0, xmm1
        #   vcvttph2dq ymm0, bcst([rbx], {1=>8})
        #   vcvttph2dq ymm0, xmm1
        #   vcvttph2dq zmm0, bcst([rbx], {1=>16})
        #   vcvttph2dq zmm0, ymm1
        #   vcvttph2dq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttph2dq zmm0, ymm1, sae
        def vcvttph2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2DQ,*operands,**kwargs)
        # Convert with Truncation Packed Half Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPH2QQ]
        # @example
        #   vcvttph2qq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttph2qq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttph2qq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttph2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2qq opmask(zmm0, k1, zero: true), xmm1
        #   vcvttph2qq xmm0, bcst([rbx], {1=>2})
        #   vcvttph2qq xmm0, xmm1
        #   vcvttph2qq ymm0, bcst([rbx], {1=>4})
        #   vcvttph2qq ymm0, xmm1
        #   vcvttph2qq zmm0, bcst([rbx], {1=>8})
        #   vcvttph2qq zmm0, xmm1
        #   vcvttph2qq opmask(zmm0, k1, zero: true), xmm1, sae
        #   vcvttph2qq zmm0, xmm1, sae
        def vcvttph2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2QQ,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPH2UDQ]
        # @example
        #   vcvttph2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttph2udq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttph2udq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvttph2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2udq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2udq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttph2udq xmm0, bcst([rbx], {1=>4})
        #   vcvttph2udq xmm0, xmm1
        #   vcvttph2udq ymm0, bcst([rbx], {1=>8})
        #   vcvttph2udq ymm0, xmm1
        #   vcvttph2udq zmm0, bcst([rbx], {1=>16})
        #   vcvttph2udq zmm0, ymm1
        #   vcvttph2udq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttph2udq zmm0, ymm1, sae
        def vcvttph2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UDQ,*operands,**kwargs)
        # Convert with Truncation Packed Half Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPH2UQQ]
        # @example
        #   vcvttph2uqq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttph2uqq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttph2uqq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttph2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttph2uqq opmask(zmm0, k1, zero: true), xmm1
        #   vcvttph2uqq xmm0, bcst([rbx], {1=>2})
        #   vcvttph2uqq xmm0, xmm1
        #   vcvttph2uqq ymm0, bcst([rbx], {1=>4})
        #   vcvttph2uqq ymm0, xmm1
        #   vcvttph2uqq zmm0, bcst([rbx], {1=>8})
        #   vcvttph2uqq zmm0, xmm1
        #   vcvttph2uqq opmask(zmm0, k1, zero: true), xmm1, sae
        #   vcvttph2uqq zmm0, xmm1, sae
        def vcvttph2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UQQ,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision Floating-Point Values to Packed Unsigned Word Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPH2UW]
        # @example
        #   vcvttph2uw opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttph2uw opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvttph2uw opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vcvttph2uw opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2uw opmask(ymm0, k1, zero: true), ymm1
        #   vcvttph2uw opmask(zmm0, k1, zero: true), zmm1
        #   vcvttph2uw xmm0, bcst([rbx], {1=>8})
        #   vcvttph2uw xmm0, xmm1
        #   vcvttph2uw ymm0, bcst([rbx], {1=>16})
        #   vcvttph2uw ymm0, ymm1
        #   vcvttph2uw zmm0, bcst([rbx], {1=>32})
        #   vcvttph2uw zmm0, zmm1
        #   vcvttph2uw opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttph2uw zmm0, zmm1, sae
        def vcvttph2uw(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2UW,*operands,**kwargs)
        # Convert with Truncation Packed Half-Precision Floating-Point Values to Packed Word Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPH2W]
        # @example
        #   vcvttph2w opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttph2w opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvttph2w opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vcvttph2w opmask(xmm0, k1, zero: true), xmm1
        #   vcvttph2w opmask(ymm0, k1, zero: true), ymm1
        #   vcvttph2w opmask(zmm0, k1, zero: true), zmm1
        #   vcvttph2w xmm0, bcst([rbx], {1=>8})
        #   vcvttph2w xmm0, xmm1
        #   vcvttph2w ymm0, bcst([rbx], {1=>16})
        #   vcvttph2w ymm0, ymm1
        #   vcvttph2w zmm0, bcst([rbx], {1=>32})
        #   vcvttph2w zmm0, zmm1
        #   vcvttph2w opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttph2w zmm0, zmm1, sae
        def vcvttph2w(*operands,**kwargs) = add_instruction(Instructions::VCVTTPH2W,*operands,**kwargs)
        # Convert with Truncation Packed Single-Precision FP Values to Packed Dword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPS2DQ]
        # @example
        #   vcvttps2dq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttps2dq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttps2dq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvttps2dq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2dq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttps2dq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttps2dq xmm0, bcst([rbx], {1=>4})
        #   vcvttps2dq xmm0, xmm1
        #   vcvttps2dq xmm0, [rbx]
        #   vcvttps2dq ymm0, bcst([rbx], {1=>8})
        #   vcvttps2dq ymm0, ymm1
        #   vcvttps2dq ymm0, [rbx]
        #   vcvttps2dq zmm0, bcst([rbx], {1=>16})
        #   vcvttps2dq zmm0, zmm1
        #   vcvttps2dq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttps2dq zmm0, zmm1, sae
        def vcvttps2dq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2DQ,*operands,**kwargs)
        # Convert with Truncation Packed Single Precision Floating-Point Values to Packed Singed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPS2QQ]
        # @example
        #   vcvttps2qq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttps2qq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttps2qq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttps2qq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2qq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttps2qq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttps2qq xmm0, bcst([rbx], {1=>2})
        #   vcvttps2qq xmm0, xmm1
        #   vcvttps2qq ymm0, bcst([rbx], {1=>4})
        #   vcvttps2qq ymm0, xmm1
        #   vcvttps2qq zmm0, bcst([rbx], {1=>8})
        #   vcvttps2qq zmm0, ymm1
        #   vcvttps2qq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttps2qq zmm0, ymm1, sae
        def vcvttps2qq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2QQ,*operands,**kwargs)
        # Convert with Truncation Packed Single-Precision Floating-Point Values to Packed Unsigned Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPS2UDQ]
        # @example
        #   vcvttps2udq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttps2udq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttps2udq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvttps2udq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2udq opmask(ymm0, k1, zero: true), ymm1
        #   vcvttps2udq opmask(zmm0, k1, zero: true), zmm1
        #   vcvttps2udq xmm0, bcst([rbx], {1=>4})
        #   vcvttps2udq xmm0, xmm1
        #   vcvttps2udq ymm0, bcst([rbx], {1=>8})
        #   vcvttps2udq ymm0, ymm1
        #   vcvttps2udq zmm0, bcst([rbx], {1=>16})
        #   vcvttps2udq zmm0, zmm1
        #   vcvttps2udq opmask(zmm0, k1, zero: true), zmm1, sae
        #   vcvttps2udq zmm0, zmm1, sae
        def vcvttps2udq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2UDQ,*operands,**kwargs)
        # Convert with Truncation Packed Single Precision Floating-Point Values to Packed Unsigned Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTPS2UQQ]
        # @example
        #   vcvttps2uqq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvttps2uqq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvttps2uqq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvttps2uqq opmask(xmm0, k1, zero: true), xmm1
        #   vcvttps2uqq opmask(ymm0, k1, zero: true), xmm1
        #   vcvttps2uqq opmask(zmm0, k1, zero: true), ymm1
        #   vcvttps2uqq xmm0, bcst([rbx], {1=>2})
        #   vcvttps2uqq xmm0, xmm1
        #   vcvttps2uqq ymm0, bcst([rbx], {1=>4})
        #   vcvttps2uqq ymm0, xmm1
        #   vcvttps2uqq zmm0, bcst([rbx], {1=>8})
        #   vcvttps2uqq zmm0, ymm1
        #   vcvttps2uqq opmask(zmm0, k1, zero: true), ymm1, sae
        #   vcvttps2uqq zmm0, ymm1, sae
        def vcvttps2uqq(*operands,**kwargs) = add_instruction(Instructions::VCVTTPS2UQQ,*operands,**kwargs)
        # Convert with Truncation Scalar Double-Precision FP Value to Signed Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTSD2SI]
        # @example
        #   vcvttsd2si eax, xmm1
        #   vcvttsd2si eax, [rbx]
        #   vcvttsd2si rax, xmm1
        #   vcvttsd2si rax, [rbx]
        #   vcvttsd2si eax, xmm1, sae
        #   vcvttsd2si rax, xmm1, sae
        def vcvttsd2si(*operands,**kwargs) = add_instruction(Instructions::VCVTTSD2SI,*operands,**kwargs)
        # Convert with Truncation Scalar Double-Precision Floating-Point Value to Unsigned Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTSD2USI]
        # @example
        #   vcvttsd2usi eax, xmm1
        #   vcvttsd2usi eax, [rbx]
        #   vcvttsd2usi rax, xmm1
        #   vcvttsd2usi rax, [rbx]
        #   vcvttsd2usi eax, xmm1, sae
        #   vcvttsd2usi rax, xmm1, sae
        def vcvttsd2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTTSD2USI,*operands,**kwargs)
        # Convert with Truncation Scalar Half-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTSH2SI]
        # @example
        #   vcvttsh2si eax, xmm1
        #   vcvttsh2si eax, [rbx]
        #   vcvttsh2si rax, xmm1
        #   vcvttsh2si rax, [rbx]
        #   vcvttsh2si eax, xmm1, sae
        #   vcvttsh2si rax, xmm1, sae
        def vcvttsh2si(*operands,**kwargs) = add_instruction(Instructions::VCVTTSH2SI,*operands,**kwargs)
        # Convert with Truncation Scalar Half-Precision Floating-Point Value to Unsigned Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTSH2USI]
        # @example
        #   vcvttsh2usi eax, xmm1
        #   vcvttsh2usi eax, [rbx]
        #   vcvttsh2usi rax, xmm1
        #   vcvttsh2usi rax, [rbx]
        #   vcvttsh2usi eax, xmm1, sae
        #   vcvttsh2usi rax, xmm1, sae
        def vcvttsh2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTTSH2USI,*operands,**kwargs)
        # Convert with Truncation Scalar Single-Precision FP Value to Dword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTSS2SI]
        # @example
        #   vcvttss2si eax, xmm1
        #   vcvttss2si eax, [rbx]
        #   vcvttss2si rax, xmm1
        #   vcvttss2si rax, [rbx]
        #   vcvttss2si eax, xmm1, sae
        #   vcvttss2si rax, xmm1, sae
        def vcvttss2si(*operands,**kwargs) = add_instruction(Instructions::VCVTTSS2SI,*operands,**kwargs)
        # Convert with Truncation Scalar Single-Precision Floating-Point Value to Unsigned Integer
        # @return [Ronin::ASM::X86_64::Instructions::VCVTTSS2USI]
        # @example
        #   vcvttss2usi eax, xmm1
        #   vcvttss2usi eax, [rbx]
        #   vcvttss2usi rax, xmm1
        #   vcvttss2usi rax, [rbx]
        #   vcvttss2usi eax, xmm1, sae
        #   vcvttss2usi rax, xmm1, sae
        def vcvttss2usi(*operands,**kwargs) = add_instruction(Instructions::VCVTTSS2USI,*operands,**kwargs)
        # Convert Packed Unsigned Doubleword Integers to Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUDQ2PD]
        # @example
        #   vcvtudq2pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtudq2pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtudq2pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtudq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtudq2pd opmask(ymm0, k1, zero: true), xmm1
        #   vcvtudq2pd opmask(zmm0, k1, zero: true), ymm1
        #   vcvtudq2pd xmm0, bcst([rbx], {1=>2})
        #   vcvtudq2pd xmm0, xmm1
        #   vcvtudq2pd ymm0, bcst([rbx], {1=>4})
        #   vcvtudq2pd ymm0, xmm1
        #   vcvtudq2pd zmm0, bcst([rbx], {1=>8})
        #   vcvtudq2pd zmm0, ymm1
        def vcvtudq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PD,*operands,**kwargs)
        # Convert Packed Unsigned Doubleword Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUDQ2PH]
        # @example
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtudq2ph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtudq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtudq2ph opmask(ymm0, k1, zero: true), zmm1
        #   vcvtudq2ph xmm0, bcst([rbx], {1=>4})
        #   vcvtudq2ph xmm0, bcst([rbx], {1=>8})
        #   vcvtudq2ph xmm0, xmm1
        #   vcvtudq2ph xmm0, ymm1
        #   vcvtudq2ph ymm0, bcst([rbx], {1=>16})
        #   vcvtudq2ph ymm0, zmm1
        #   vcvtudq2ph opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtudq2ph ymm0, zmm1, er
        def vcvtudq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PH,*operands,**kwargs)
        # Convert Packed Unsigned Doubleword Integers to Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUDQ2PS]
        # @example
        #   vcvtudq2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtudq2ps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtudq2ps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtudq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtudq2ps opmask(ymm0, k1, zero: true), ymm1
        #   vcvtudq2ps opmask(zmm0, k1, zero: true), zmm1
        #   vcvtudq2ps xmm0, bcst([rbx], {1=>4})
        #   vcvtudq2ps xmm0, xmm1
        #   vcvtudq2ps ymm0, bcst([rbx], {1=>8})
        #   vcvtudq2ps ymm0, ymm1
        #   vcvtudq2ps zmm0, bcst([rbx], {1=>16})
        #   vcvtudq2ps zmm0, zmm1
        #   vcvtudq2ps opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtudq2ps zmm0, zmm1, er
        def vcvtudq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTUDQ2PS,*operands,**kwargs)
        # Convert Packed Unsigned Quadword Integers to Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUQQ2PD]
        # @example
        #   vcvtuqq2pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtuqq2pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtuqq2pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtuqq2pd opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuqq2pd opmask(ymm0, k1, zero: true), ymm1
        #   vcvtuqq2pd opmask(zmm0, k1, zero: true), zmm1
        #   vcvtuqq2pd xmm0, bcst([rbx], {1=>2})
        #   vcvtuqq2pd xmm0, xmm1
        #   vcvtuqq2pd ymm0, bcst([rbx], {1=>4})
        #   vcvtuqq2pd ymm0, ymm1
        #   vcvtuqq2pd zmm0, bcst([rbx], {1=>8})
        #   vcvtuqq2pd zmm0, zmm1
        #   vcvtuqq2pd opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtuqq2pd zmm0, zmm1, er
        def vcvtuqq2pd(*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PD,*operands,**kwargs)
        # Convert Packed Unsigned Quadword Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUQQ2PH]
        # @example
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), ymm1
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), zmm1
        #   vcvtuqq2ph xmm0, bcst([rbx], {1=>2})
        #   vcvtuqq2ph xmm0, bcst([rbx], {1=>4})
        #   vcvtuqq2ph xmm0, bcst([rbx], {1=>8})
        #   vcvtuqq2ph xmm0, xmm1
        #   vcvtuqq2ph xmm0, ymm1
        #   vcvtuqq2ph xmm0, zmm1
        #   vcvtuqq2ph opmask(xmm0, k1, zero: true), zmm1, er
        #   vcvtuqq2ph xmm0, zmm1, er
        def vcvtuqq2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PH,*operands,**kwargs)
        # Convert Packed Unsigned Quadword Integers to Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUQQ2PS]
        # @example
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vcvtuqq2ps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuqq2ps opmask(xmm0, k1, zero: true), ymm1
        #   vcvtuqq2ps opmask(ymm0, k1, zero: true), zmm1
        #   vcvtuqq2ps xmm0, bcst([rbx], {1=>2})
        #   vcvtuqq2ps xmm0, bcst([rbx], {1=>4})
        #   vcvtuqq2ps xmm0, xmm1
        #   vcvtuqq2ps xmm0, ymm1
        #   vcvtuqq2ps ymm0, bcst([rbx], {1=>8})
        #   vcvtuqq2ps ymm0, zmm1
        #   vcvtuqq2ps opmask(ymm0, k1, zero: true), zmm1, er
        #   vcvtuqq2ps ymm0, zmm1, er
        def vcvtuqq2ps(*operands,**kwargs) = add_instruction(Instructions::VCVTUQQ2PS,*operands,**kwargs)
        # Convert Unsigned Integer to Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUSI2SD]
        # @example
        #   vcvtusi2sd xmm0, xmm1, ecx
        #   vcvtusi2sd xmm0, xmm1, rcx
        #   vcvtusi2sd xmm0, xmm1, [rcx]
        #   vcvtusi2sd xmm0, xmm1, er, rdx
        def vcvtusi2sd(*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SD,*operands,**kwargs)
        # Convert Unsigned Integer to Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUSI2SH]
        # @example
        #   vcvtusi2sh xmm0, xmm1, ecx
        #   vcvtusi2sh xmm0, xmm1, rcx
        #   vcvtusi2sh xmm0, xmm1, [rcx]
        #   vcvtusi2sh xmm0, xmm1, er, edx
        #   vcvtusi2sh xmm0, xmm1, er, rdx
        def vcvtusi2sh(*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SH,*operands,**kwargs)
        # Convert Unsigned Integer to Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUSI2SS]
        # @example
        #   vcvtusi2ss xmm0, xmm1, ecx
        #   vcvtusi2ss xmm0, xmm1, rcx
        #   vcvtusi2ss xmm0, xmm1, [rcx]
        #   vcvtusi2ss xmm0, xmm1, er, edx
        #   vcvtusi2ss xmm0, xmm1, er, rdx
        def vcvtusi2ss(*operands,**kwargs) = add_instruction(Instructions::VCVTUSI2SS,*operands,**kwargs)
        # Convert Packed Unsigned Word Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTUW2PH]
        # @example
        #   vcvtuw2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtuw2ph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtuw2ph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vcvtuw2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtuw2ph opmask(ymm0, k1, zero: true), ymm1
        #   vcvtuw2ph opmask(zmm0, k1, zero: true), zmm1
        #   vcvtuw2ph xmm0, bcst([rbx], {1=>8})
        #   vcvtuw2ph xmm0, xmm1
        #   vcvtuw2ph ymm0, bcst([rbx], {1=>16})
        #   vcvtuw2ph ymm0, ymm1
        #   vcvtuw2ph zmm0, bcst([rbx], {1=>32})
        #   vcvtuw2ph zmm0, zmm1
        #   vcvtuw2ph opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtuw2ph zmm0, zmm1, er
        def vcvtuw2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTUW2PH,*operands,**kwargs)
        # Convert Packed Word Integers to Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VCVTW2PH]
        # @example
        #   vcvtw2ph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vcvtw2ph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vcvtw2ph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vcvtw2ph opmask(xmm0, k1, zero: true), xmm1
        #   vcvtw2ph opmask(ymm0, k1, zero: true), ymm1
        #   vcvtw2ph opmask(zmm0, k1, zero: true), zmm1
        #   vcvtw2ph xmm0, bcst([rbx], {1=>8})
        #   vcvtw2ph xmm0, xmm1
        #   vcvtw2ph ymm0, bcst([rbx], {1=>16})
        #   vcvtw2ph ymm0, ymm1
        #   vcvtw2ph zmm0, bcst([rbx], {1=>32})
        #   vcvtw2ph zmm0, zmm1
        #   vcvtw2ph opmask(zmm0, k1, zero: true), zmm1, er
        #   vcvtw2ph zmm0, zmm1, er
        def vcvtw2ph(*operands,**kwargs) = add_instruction(Instructions::VCVTW2PH,*operands,**kwargs)
        # Double Block Packed Sum-Absolute-Differences on Unsigned Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VDBPSADBW]
        # @example
        #   vdbpsadbw opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vdbpsadbw opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vdbpsadbw opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vdbpsadbw opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vdbpsadbw opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vdbpsadbw opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vdbpsadbw xmm0, xmm1, xmm2, 0x04
        #   vdbpsadbw xmm0, xmm1, [rcx], 0x04
        #   vdbpsadbw ymm0, ymm1, ymm2, 0x04
        #   vdbpsadbw ymm0, ymm1, [rcx], 0x04
        #   vdbpsadbw zmm0, zmm1, zmm2, 0x04
        #   vdbpsadbw zmm0, zmm1, [rcx], 0x04
        def vdbpsadbw(*operands,**kwargs) = add_instruction(Instructions::VDBPSADBW,*operands,**kwargs)
        # Divide Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDIVPD]
        # @example
        #   vdivpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vdivpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vdivpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdivpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vdivpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdivpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vdivpd xmm0, xmm1, xmm2
        #   vdivpd xmm0, xmm1, [rcx]
        #   vdivpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vdivpd ymm0, ymm1, ymm2
        #   vdivpd ymm0, ymm1, [rcx]
        #   vdivpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vdivpd zmm0, zmm1, zmm2
        #   vdivpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vdivpd zmm0, zmm1, zmm2, er
        def vdivpd(*operands,**kwargs) = add_instruction(Instructions::VDIVPD,*operands,**kwargs)
        # Divide Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDIVPH]
        # @example
        #   vdivph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vdivph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vdivph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdivph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vdivph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdivph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vdivph xmm0, xmm1, xmm2
        #   vdivph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vdivph ymm0, ymm1, ymm2
        #   vdivph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vdivph zmm0, zmm1, zmm2
        #   vdivph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vdivph zmm0, zmm1, zmm2, er
        def vdivph(*operands,**kwargs) = add_instruction(Instructions::VDIVPH,*operands,**kwargs)
        # Divide Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDIVPS]
        # @example
        #   vdivps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vdivps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vdivps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdivps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vdivps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdivps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vdivps xmm0, xmm1, xmm2
        #   vdivps xmm0, xmm1, [rcx]
        #   vdivps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vdivps ymm0, ymm1, ymm2
        #   vdivps ymm0, ymm1, [rcx]
        #   vdivps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vdivps zmm0, zmm1, zmm2
        #   vdivps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vdivps zmm0, zmm1, zmm2, er
        def vdivps(*operands,**kwargs) = add_instruction(Instructions::VDIVPS,*operands,**kwargs)
        # Divide Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDIVSD]
        # @example
        #   vdivsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vdivsd xmm0, xmm1, xmm2
        #   vdivsd xmm0, xmm1, [rcx]
        #   vdivsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vdivsd xmm0, xmm1, xmm2, er
        def vdivsd(*operands,**kwargs) = add_instruction(Instructions::VDIVSD,*operands,**kwargs)
        # Divide Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDIVSH]
        # @example
        #   vdivsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vdivsh xmm0, xmm1, xmm2
        #   vdivsh xmm0, xmm1, [rcx]
        #   vdivsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vdivsh xmm0, xmm1, xmm2, er
        def vdivsh(*operands,**kwargs) = add_instruction(Instructions::VDIVSH,*operands,**kwargs)
        # Divide Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDIVSS]
        # @example
        #   vdivss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdivss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vdivss xmm0, xmm1, xmm2
        #   vdivss xmm0, xmm1, [rcx]
        #   vdivss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vdivss xmm0, xmm1, xmm2, er
        def vdivss(*operands,**kwargs) = add_instruction(Instructions::VDIVSS,*operands,**kwargs)
        # Packed Dot Product of BFloat16 FP subvectors into Single-Precision FP values
        # @return [Ronin::ASM::X86_64::Instructions::VDPBF16PS]
        # @example
        #   vdpbf16ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vdpbf16ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vdpbf16ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vdpbf16ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vdpbf16ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vdpbf16ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vdpbf16ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vdpbf16ps xmm0, xmm1, xmm2
        #   vdpbf16ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vdpbf16ps ymm0, ymm1, ymm2
        #   vdpbf16ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vdpbf16ps zmm0, zmm1, zmm2
        def vdpbf16ps(*operands,**kwargs) = add_instruction(Instructions::VDPBF16PS,*operands,**kwargs)
        # Dot Product of Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDPPD]
        # @example
        #   vdppd xmm0, xmm1, xmm2, 0x04
        #   vdppd xmm0, xmm1, [rcx], 0x04
        def vdppd(*operands,**kwargs) = add_instruction(Instructions::VDPPD,*operands,**kwargs)
        # Dot Product of Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VDPPS]
        # @example
        #   vdpps xmm0, xmm1, xmm2, 0x04
        #   vdpps xmm0, xmm1, [rcx], 0x04
        #   vdpps ymm0, ymm1, ymm2, 0x04
        #   vdpps ymm0, ymm1, [rcx], 0x04
        def vdpps(*operands,**kwargs) = add_instruction(Instructions::VDPPS,*operands,**kwargs)
        # Approximation to the Exponential 2^x of Packed Double-Precision Floating-Point Values with Less Than 2^-23 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VEXP2PD]
        # @example
        #   vexp2pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vexp2pd opmask(zmm0, k1, zero: true), zmm1
        #   vexp2pd zmm0, bcst([rbx], {1=>8})
        #   vexp2pd zmm0, zmm1
        #   vexp2pd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vexp2pd zmm0, zmm1, sae
        def vexp2pd(*operands,**kwargs) = add_instruction(Instructions::VEXP2PD,*operands,**kwargs)
        # Approximation to the Exponential 2^x of Packed Single-Precision Floating-Point Values with Less Than 2^-23 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VEXP2PS]
        # @example
        #   vexp2ps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vexp2ps opmask(zmm0, k1, zero: true), zmm1
        #   vexp2ps zmm0, bcst([rbx], {1=>16})
        #   vexp2ps zmm0, zmm1
        #   vexp2ps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vexp2ps zmm0, zmm1, sae
        def vexp2ps(*operands,**kwargs) = add_instruction(Instructions::VEXP2PS,*operands,**kwargs)
        # Load Sparse Packed Double-Precision Floating-Point Values from Dense Memory
        # @return [Ronin::ASM::X86_64::Instructions::VEXPANDPD]
        # @example
        #   vexpandpd opmask(xmm0, k1, zero: true), xmm1
        #   vexpandpd opmask(ymm0, k1, zero: true), ymm1
        #   vexpandpd opmask(zmm0, k1, zero: true), zmm1
        #   vexpandpd opmask(xmm0, k1, zero: true), [rbx]
        #   vexpandpd opmask(ymm0, k1, zero: true), [rbx]
        #   vexpandpd opmask(zmm0, k1, zero: true), [rbx]
        #   vexpandpd xmm0, xmm1
        #   vexpandpd xmm0, [rbx]
        #   vexpandpd ymm0, ymm1
        #   vexpandpd ymm0, [rbx]
        #   vexpandpd zmm0, zmm1
        #   vexpandpd zmm0, [rbx]
        def vexpandpd(*operands,**kwargs) = add_instruction(Instructions::VEXPANDPD,*operands,**kwargs)
        # Load Sparse Packed Single-Precision Floating-Point Values from Dense Memory
        # @return [Ronin::ASM::X86_64::Instructions::VEXPANDPS]
        # @example
        #   vexpandps opmask(xmm0, k1, zero: true), xmm1
        #   vexpandps opmask(ymm0, k1, zero: true), ymm1
        #   vexpandps opmask(zmm0, k1, zero: true), zmm1
        #   vexpandps opmask(xmm0, k1, zero: true), [rbx]
        #   vexpandps opmask(ymm0, k1, zero: true), [rbx]
        #   vexpandps opmask(zmm0, k1, zero: true), [rbx]
        #   vexpandps xmm0, xmm1
        #   vexpandps xmm0, [rbx]
        #   vexpandps ymm0, ymm1
        #   vexpandps ymm0, [rbx]
        #   vexpandps zmm0, zmm1
        #   vexpandps zmm0, [rbx]
        def vexpandps(*operands,**kwargs) = add_instruction(Instructions::VEXPANDPS,*operands,**kwargs)
        # Extract Packed Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTF128]
        # @example
        #   vextractf128 xmm0, ymm1, 0x03
        #   vextractf128 [rax], ymm1, 0x03
        def vextractf128(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF128,*operands,**kwargs)
        # Extract 128 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTF32X4]
        # @example
        #   vextractf32x4 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextractf32x4 opmask([rax], k1), ymm1, 0x03
        #   vextractf32x4 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextractf32x4 opmask([rax], k1), zmm1, 0x03
        #   vextractf32x4 xmm0, ymm1, 0x03
        #   vextractf32x4 xmm0, zmm1, 0x03
        #   vextractf32x4 [rax], ymm1, 0x03
        #   vextractf32x4 [rax], zmm1, 0x03
        def vextractf32x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF32X4,*operands,**kwargs)
        # Extract 256 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTF32X8]
        # @example
        #   vextractf32x8 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextractf32x8 opmask([rax], k1), zmm1, 0x03
        #   vextractf32x8 ymm0, zmm1, 0x03
        #   vextractf32x8 [rax], zmm1, 0x03
        def vextractf32x8(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF32X8,*operands,**kwargs)
        # Extract 128 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTF64X2]
        # @example
        #   vextractf64x2 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextractf64x2 opmask([rax], k1), ymm1, 0x03
        #   vextractf64x2 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextractf64x2 opmask([rax], k1), zmm1, 0x03
        #   vextractf64x2 xmm0, ymm1, 0x03
        #   vextractf64x2 xmm0, zmm1, 0x03
        #   vextractf64x2 [rax], ymm1, 0x03
        #   vextractf64x2 [rax], zmm1, 0x03
        def vextractf64x2(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF64X2,*operands,**kwargs)
        # Extract 256 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTF64X4]
        # @example
        #   vextractf64x4 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextractf64x4 opmask([rax], k1), zmm1, 0x03
        #   vextractf64x4 ymm0, zmm1, 0x03
        #   vextractf64x4 [rax], zmm1, 0x03
        def vextractf64x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTF64X4,*operands,**kwargs)
        # Extract Packed Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTI128]
        # @example
        #   vextracti128 xmm0, ymm1, 0x03
        #   vextracti128 [rax], ymm1, 0x03
        def vextracti128(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI128,*operands,**kwargs)
        # Extract 128 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTI32X4]
        # @example
        #   vextracti32x4 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextracti32x4 opmask([rax], k1), ymm1, 0x03
        #   vextracti32x4 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextracti32x4 opmask([rax], k1), zmm1, 0x03
        #   vextracti32x4 xmm0, ymm1, 0x03
        #   vextracti32x4 xmm0, zmm1, 0x03
        #   vextracti32x4 [rax], ymm1, 0x03
        #   vextracti32x4 [rax], zmm1, 0x03
        def vextracti32x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI32X4,*operands,**kwargs)
        # Extract 256 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTI32X8]
        # @example
        #   vextracti32x8 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextracti32x8 opmask([rax], k1), zmm1, 0x03
        #   vextracti32x8 ymm0, zmm1, 0x03
        #   vextracti32x8 [rax], zmm1, 0x03
        def vextracti32x8(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI32X8,*operands,**kwargs)
        # Extract 128 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTI64X2]
        # @example
        #   vextracti64x2 opmask(xmm0, k1, zero: true), ymm1, 0x03
        #   vextracti64x2 opmask([rax], k1), ymm1, 0x03
        #   vextracti64x2 opmask(xmm0, k1, zero: true), zmm1, 0x03
        #   vextracti64x2 opmask([rax], k1), zmm1, 0x03
        #   vextracti64x2 xmm0, ymm1, 0x03
        #   vextracti64x2 xmm0, zmm1, 0x03
        #   vextracti64x2 [rax], ymm1, 0x03
        #   vextracti64x2 [rax], zmm1, 0x03
        def vextracti64x2(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI64X2,*operands,**kwargs)
        # Extract 256 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTI64X4]
        # @example
        #   vextracti64x4 opmask(ymm0, k1, zero: true), zmm1, 0x03
        #   vextracti64x4 opmask([rax], k1), zmm1, 0x03
        #   vextracti64x4 ymm0, zmm1, 0x03
        #   vextracti64x4 [rax], zmm1, 0x03
        def vextracti64x4(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTI64X4,*operands,**kwargs)
        # Extract Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VEXTRACTPS]
        # @example
        #   vextractps eax, xmm1, 0x03
        #   vextractps [rax], xmm1, 0x03
        def vextractps(*operands,**kwargs) = add_instruction(Instructions::VEXTRACTPS,*operands,**kwargs)
        # Fused Conjugate Multiply-Add of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFCMADDCPH]
        # @example
        #   vfcmaddcph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfcmaddcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmaddcph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfcmaddcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfcmaddcph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfcmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfcmaddcph xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfcmaddcph xmm0, xmm1, xmm2
        #   vfcmaddcph ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfcmaddcph ymm0, ymm1, ymm2
        #   vfcmaddcph zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfcmaddcph zmm0, zmm1, zmm2
        #   vfcmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfcmaddcph zmm0, zmm1, zmm2, er
        def vfcmaddcph(*operands,**kwargs) = add_instruction(Instructions::VFCMADDCPH,*operands,**kwargs)
        # Fused Conjugate Multiply-Add of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFCMADDCSH]
        # @example
        #   vfcmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmaddcsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfcmaddcsh xmm0, xmm1, xmm2
        #   vfcmaddcsh xmm0, xmm1, [rcx]
        #   vfcmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfcmaddcsh xmm0, xmm1, xmm2, er
        def vfcmaddcsh(*operands,**kwargs) = add_instruction(Instructions::VFCMADDCSH,*operands,**kwargs)
        # Fused Conjugate Multiply of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFCMULCPH]
        # @example
        #   vfcmulcph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfcmulcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmulcph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfcmulcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfcmulcph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfcmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfcmulcph xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfcmulcph xmm0, xmm1, xmm2
        #   vfcmulcph ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfcmulcph ymm0, ymm1, ymm2
        #   vfcmulcph zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfcmulcph zmm0, zmm1, zmm2
        #   vfcmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfcmulcph zmm0, zmm1, zmm2, er
        def vfcmulcph(*operands,**kwargs) = add_instruction(Instructions::VFCMULCPH,*operands,**kwargs)
        # Fused Conjugate Multiply of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFCMULCSH]
        # @example
        #   vfcmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfcmulcsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfcmulcsh xmm0, xmm1, xmm2
        #   vfcmulcsh xmm0, xmm1, [rcx]
        #   vfcmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfcmulcsh xmm0, xmm1, xmm2, er
        def vfcmulcsh(*operands,**kwargs) = add_instruction(Instructions::VFCMULCSH,*operands,**kwargs)
        # Fix Up Special Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFIXUPIMMPD]
        # @example
        #   vfixupimmpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vfixupimmpd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vfixupimmpd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vfixupimmpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vfixupimmpd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vfixupimmpd xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vfixupimmpd xmm0, xmm1, xmm2, 0x04
        #   vfixupimmpd ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vfixupimmpd ymm0, ymm1, ymm2, 0x04
        #   vfixupimmpd zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vfixupimmpd zmm0, zmm1, zmm2, 0x04
        #   vfixupimmpd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vfixupimmpd zmm0, zmm1, zmm2, sae, 0x05
        def vfixupimmpd(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMPD,*operands,**kwargs)
        # Fix Up Special Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFIXUPIMMPS]
        # @example
        #   vfixupimmps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vfixupimmps opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vfixupimmps opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vfixupimmps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vfixupimmps opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vfixupimmps xmm0, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vfixupimmps xmm0, xmm1, xmm2, 0x04
        #   vfixupimmps ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vfixupimmps ymm0, ymm1, ymm2, 0x04
        #   vfixupimmps zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vfixupimmps zmm0, zmm1, zmm2, 0x04
        #   vfixupimmps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vfixupimmps zmm0, zmm1, zmm2, sae, 0x05
        def vfixupimmps(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMPS,*operands,**kwargs)
        # Fix Up Special Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VFIXUPIMMSD]
        # @example
        #   vfixupimmsd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmsd opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vfixupimmsd xmm0, xmm1, xmm2, 0x04
        #   vfixupimmsd xmm0, xmm1, [rcx], 0x04
        #   vfixupimmsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vfixupimmsd xmm0, xmm1, xmm2, sae, 0x05
        def vfixupimmsd(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMSD,*operands,**kwargs)
        # Fix Up Special Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VFIXUPIMMSS]
        # @example
        #   vfixupimmss opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vfixupimmss opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vfixupimmss xmm0, xmm1, xmm2, 0x04
        #   vfixupimmss xmm0, xmm1, [rcx], 0x04
        #   vfixupimmss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vfixupimmss xmm0, xmm1, xmm2, sae, 0x05
        def vfixupimmss(*operands,**kwargs) = add_instruction(Instructions::VFIXUPIMMSS,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD132PD]
        # @example
        #   vfmadd132pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmadd132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmadd132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd132pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd132pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmadd132pd xmm0, xmm1, xmm2
        #   vfmadd132pd xmm0, xmm1, [rcx]
        #   vfmadd132pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmadd132pd ymm0, ymm1, ymm2
        #   vfmadd132pd ymm0, ymm1, [rcx]
        #   vfmadd132pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmadd132pd zmm0, zmm1, zmm2
        #   vfmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd132pd zmm0, zmm1, zmm2, er
        def vfmadd132pd(*operands,**kwargs) = add_instruction(Instructions::VFMADD132PD,*operands,**kwargs)
        # Fused Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD132PH]
        # @example
        #   vfmadd132ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmadd132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmadd132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd132ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd132ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmadd132ph xmm0, xmm1, xmm2
        #   vfmadd132ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmadd132ph ymm0, ymm1, ymm2
        #   vfmadd132ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmadd132ph zmm0, zmm1, zmm2
        #   vfmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd132ph zmm0, zmm1, zmm2, er
        def vfmadd132ph(*operands,**kwargs) = add_instruction(Instructions::VFMADD132PH,*operands,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD132PS]
        # @example
        #   vfmadd132ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmadd132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmadd132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd132ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd132ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmadd132ps xmm0, xmm1, xmm2
        #   vfmadd132ps xmm0, xmm1, [rcx]
        #   vfmadd132ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmadd132ps ymm0, ymm1, ymm2
        #   vfmadd132ps ymm0, ymm1, [rcx]
        #   vfmadd132ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmadd132ps zmm0, zmm1, zmm2
        #   vfmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd132ps zmm0, zmm1, zmm2, er
        def vfmadd132ps(*operands,**kwargs) = add_instruction(Instructions::VFMADD132PS,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD132SD]
        # @example
        #   vfmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmadd132sd xmm0, xmm1, xmm2
        #   vfmadd132sd xmm0, xmm1, [rcx]
        #   vfmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd132sd xmm0, xmm1, xmm2, er
        def vfmadd132sd(*operands,**kwargs) = add_instruction(Instructions::VFMADD132SD,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD132SS]
        # @example
        #   vfmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd132ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmadd132ss xmm0, xmm1, xmm2
        #   vfmadd132ss xmm0, xmm1, [rcx]
        #   vfmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd132ss xmm0, xmm1, xmm2, er
        def vfmadd132ss(*operands,**kwargs) = add_instruction(Instructions::VFMADD132SS,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD213PD]
        # @example
        #   vfmadd213pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmadd213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmadd213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd213pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd213pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmadd213pd xmm0, xmm1, xmm2
        #   vfmadd213pd xmm0, xmm1, [rcx]
        #   vfmadd213pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmadd213pd ymm0, ymm1, ymm2
        #   vfmadd213pd ymm0, ymm1, [rcx]
        #   vfmadd213pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmadd213pd zmm0, zmm1, zmm2
        #   vfmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd213pd zmm0, zmm1, zmm2, er
        def vfmadd213pd(*operands,**kwargs) = add_instruction(Instructions::VFMADD213PD,*operands,**kwargs)
        # Fused Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD213PH]
        # @example
        #   vfmadd213ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmadd213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmadd213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd213ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd213ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmadd213ph xmm0, xmm1, xmm2
        #   vfmadd213ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmadd213ph ymm0, ymm1, ymm2
        #   vfmadd213ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmadd213ph zmm0, zmm1, zmm2
        #   vfmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd213ph zmm0, zmm1, zmm2, er
        def vfmadd213ph(*operands,**kwargs) = add_instruction(Instructions::VFMADD213PH,*operands,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD213PS]
        # @example
        #   vfmadd213ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmadd213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmadd213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd213ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd213ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmadd213ps xmm0, xmm1, xmm2
        #   vfmadd213ps xmm0, xmm1, [rcx]
        #   vfmadd213ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmadd213ps ymm0, ymm1, ymm2
        #   vfmadd213ps ymm0, ymm1, [rcx]
        #   vfmadd213ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmadd213ps zmm0, zmm1, zmm2
        #   vfmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd213ps zmm0, zmm1, zmm2, er
        def vfmadd213ps(*operands,**kwargs) = add_instruction(Instructions::VFMADD213PS,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD213SD]
        # @example
        #   vfmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmadd213sd xmm0, xmm1, xmm2
        #   vfmadd213sd xmm0, xmm1, [rcx]
        #   vfmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd213sd xmm0, xmm1, xmm2, er
        def vfmadd213sd(*operands,**kwargs) = add_instruction(Instructions::VFMADD213SD,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD213SS]
        # @example
        #   vfmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd213ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmadd213ss xmm0, xmm1, xmm2
        #   vfmadd213ss xmm0, xmm1, [rcx]
        #   vfmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd213ss xmm0, xmm1, xmm2, er
        def vfmadd213ss(*operands,**kwargs) = add_instruction(Instructions::VFMADD213SS,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD231PD]
        # @example
        #   vfmadd231pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmadd231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmadd231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd231pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd231pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmadd231pd xmm0, xmm1, xmm2
        #   vfmadd231pd xmm0, xmm1, [rcx]
        #   vfmadd231pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmadd231pd ymm0, ymm1, ymm2
        #   vfmadd231pd ymm0, ymm1, [rcx]
        #   vfmadd231pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmadd231pd zmm0, zmm1, zmm2
        #   vfmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd231pd zmm0, zmm1, zmm2, er
        def vfmadd231pd(*operands,**kwargs) = add_instruction(Instructions::VFMADD231PD,*operands,**kwargs)
        # Fused Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD231PH]
        # @example
        #   vfmadd231ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmadd231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmadd231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd231ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd231ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmadd231ph xmm0, xmm1, xmm2
        #   vfmadd231ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmadd231ph ymm0, ymm1, ymm2
        #   vfmadd231ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmadd231ph zmm0, zmm1, zmm2
        #   vfmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd231ph zmm0, zmm1, zmm2, er
        def vfmadd231ph(*operands,**kwargs) = add_instruction(Instructions::VFMADD231PH,*operands,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD231PS]
        # @example
        #   vfmadd231ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmadd231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmadd231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmadd231ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmadd231ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmadd231ps xmm0, xmm1, xmm2
        #   vfmadd231ps xmm0, xmm1, [rcx]
        #   vfmadd231ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmadd231ps ymm0, ymm1, ymm2
        #   vfmadd231ps ymm0, ymm1, [rcx]
        #   vfmadd231ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmadd231ps zmm0, zmm1, zmm2
        #   vfmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmadd231ps zmm0, zmm1, zmm2, er
        def vfmadd231ps(*operands,**kwargs) = add_instruction(Instructions::VFMADD231PS,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD231SD]
        # @example
        #   vfmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmadd231sd xmm0, xmm1, xmm2
        #   vfmadd231sd xmm0, xmm1, [rcx]
        #   vfmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd231sd xmm0, xmm1, xmm2, er
        def vfmadd231sd(*operands,**kwargs) = add_instruction(Instructions::VFMADD231SD,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADD231SS]
        # @example
        #   vfmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmadd231ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmadd231ss xmm0, xmm1, xmm2
        #   vfmadd231ss xmm0, xmm1, [rcx]
        #   vfmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmadd231ss xmm0, xmm1, xmm2, er
        def vfmadd231ss(*operands,**kwargs) = add_instruction(Instructions::VFMADD231SS,*operands,**kwargs)
        # Fused Multiply-Add of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDCPH]
        # @example
        #   vfmaddcph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmaddcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddcph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmaddcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddcph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddcph xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmaddcph xmm0, xmm1, xmm2
        #   vfmaddcph ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmaddcph ymm0, ymm1, ymm2
        #   vfmaddcph zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmaddcph zmm0, zmm1, zmm2
        #   vfmaddcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddcph zmm0, zmm1, zmm2, er
        def vfmaddcph(*operands,**kwargs) = add_instruction(Instructions::VFMADDCPH,*operands,**kwargs)
        # Fused Multiply-Add of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDCSH]
        # @example
        #   vfmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddcsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmaddcsh xmm0, xmm1, xmm2
        #   vfmaddcsh xmm0, xmm1, [rcx]
        #   vfmaddcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmaddcsh xmm0, xmm1, xmm2, er
        def vfmaddcsh(*operands,**kwargs) = add_instruction(Instructions::VFMADDCSH,*operands,**kwargs)
        # Fused Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDPD]
        # @example
        #   vfmaddpd xmm0, xmm1, xmm2, xmm3
        #   vfmaddpd xmm0, xmm1, xmm2, [rdx]
        #   vfmaddpd xmm0, xmm1, [rcx], xmm3
        #   vfmaddpd ymm0, ymm1, ymm2, ymm3
        #   vfmaddpd ymm0, ymm1, ymm2, [rdx]
        #   vfmaddpd ymm0, ymm1, [rcx], ymm3
        def vfmaddpd(*operands,**kwargs) = add_instruction(Instructions::VFMADDPD,*operands,**kwargs)
        # Fused Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDPS]
        # @example
        #   vfmaddps xmm0, xmm1, xmm2, xmm3
        #   vfmaddps xmm0, xmm1, xmm2, [rdx]
        #   vfmaddps xmm0, xmm1, [rcx], xmm3
        #   vfmaddps ymm0, ymm1, ymm2, ymm3
        #   vfmaddps ymm0, ymm1, ymm2, [rdx]
        #   vfmaddps ymm0, ymm1, [rcx], ymm3
        def vfmaddps(*operands,**kwargs) = add_instruction(Instructions::VFMADDPS,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSD]
        # @example
        #   vfmaddsd xmm0, xmm1, xmm2, xmm3
        #   vfmaddsd xmm0, xmm1, xmm2, [rdx]
        #   vfmaddsd xmm0, xmm1, [rcx], xmm3
        def vfmaddsd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSD,*operands,**kwargs)
        # Fused Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSS]
        # @example
        #   vfmaddss xmm0, xmm1, xmm2, xmm3
        #   vfmaddss xmm0, xmm1, xmm2, [rdx]
        #   vfmaddss xmm0, xmm1, [rcx], xmm3
        def vfmaddss(*operands,**kwargs) = add_instruction(Instructions::VFMADDSS,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB132PD]
        # @example
        #   vfmaddsub132pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmaddsub132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub132pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmaddsub132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub132pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmaddsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub132pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmaddsub132pd xmm0, xmm1, xmm2
        #   vfmaddsub132pd xmm0, xmm1, [rcx]
        #   vfmaddsub132pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmaddsub132pd ymm0, ymm1, ymm2
        #   vfmaddsub132pd ymm0, ymm1, [rcx]
        #   vfmaddsub132pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmaddsub132pd zmm0, zmm1, zmm2
        #   vfmaddsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub132pd zmm0, zmm1, zmm2, er
        def vfmaddsub132pd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PD,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB132PH]
        # @example
        #   vfmaddsub132ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmaddsub132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub132ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmaddsub132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub132ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmaddsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub132ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmaddsub132ph xmm0, xmm1, xmm2
        #   vfmaddsub132ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmaddsub132ph ymm0, ymm1, ymm2
        #   vfmaddsub132ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmaddsub132ph zmm0, zmm1, zmm2
        #   vfmaddsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub132ph zmm0, zmm1, zmm2, er
        def vfmaddsub132ph(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PH,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB132PS]
        # @example
        #   vfmaddsub132ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmaddsub132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub132ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmaddsub132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub132ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmaddsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub132ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmaddsub132ps xmm0, xmm1, xmm2
        #   vfmaddsub132ps xmm0, xmm1, [rcx]
        #   vfmaddsub132ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmaddsub132ps ymm0, ymm1, ymm2
        #   vfmaddsub132ps ymm0, ymm1, [rcx]
        #   vfmaddsub132ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmaddsub132ps zmm0, zmm1, zmm2
        #   vfmaddsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub132ps zmm0, zmm1, zmm2, er
        def vfmaddsub132ps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB132PS,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB213PD]
        # @example
        #   vfmaddsub213pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmaddsub213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub213pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmaddsub213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub213pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmaddsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub213pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmaddsub213pd xmm0, xmm1, xmm2
        #   vfmaddsub213pd xmm0, xmm1, [rcx]
        #   vfmaddsub213pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmaddsub213pd ymm0, ymm1, ymm2
        #   vfmaddsub213pd ymm0, ymm1, [rcx]
        #   vfmaddsub213pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmaddsub213pd zmm0, zmm1, zmm2
        #   vfmaddsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub213pd zmm0, zmm1, zmm2, er
        def vfmaddsub213pd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PD,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB213PH]
        # @example
        #   vfmaddsub213ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmaddsub213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub213ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmaddsub213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub213ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmaddsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub213ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmaddsub213ph xmm0, xmm1, xmm2
        #   vfmaddsub213ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmaddsub213ph ymm0, ymm1, ymm2
        #   vfmaddsub213ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmaddsub213ph zmm0, zmm1, zmm2
        #   vfmaddsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub213ph zmm0, zmm1, zmm2, er
        def vfmaddsub213ph(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PH,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB213PS]
        # @example
        #   vfmaddsub213ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmaddsub213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub213ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmaddsub213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub213ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmaddsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub213ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmaddsub213ps xmm0, xmm1, xmm2
        #   vfmaddsub213ps xmm0, xmm1, [rcx]
        #   vfmaddsub213ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmaddsub213ps ymm0, ymm1, ymm2
        #   vfmaddsub213ps ymm0, ymm1, [rcx]
        #   vfmaddsub213ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmaddsub213ps zmm0, zmm1, zmm2
        #   vfmaddsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub213ps zmm0, zmm1, zmm2, er
        def vfmaddsub213ps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB213PS,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB231PD]
        # @example
        #   vfmaddsub231pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmaddsub231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub231pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmaddsub231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub231pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmaddsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub231pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmaddsub231pd xmm0, xmm1, xmm2
        #   vfmaddsub231pd xmm0, xmm1, [rcx]
        #   vfmaddsub231pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmaddsub231pd ymm0, ymm1, ymm2
        #   vfmaddsub231pd ymm0, ymm1, [rcx]
        #   vfmaddsub231pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmaddsub231pd zmm0, zmm1, zmm2
        #   vfmaddsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub231pd zmm0, zmm1, zmm2, er
        def vfmaddsub231pd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PD,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB231PH]
        # @example
        #   vfmaddsub231ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmaddsub231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub231ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmaddsub231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub231ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmaddsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub231ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmaddsub231ph xmm0, xmm1, xmm2
        #   vfmaddsub231ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmaddsub231ph ymm0, ymm1, ymm2
        #   vfmaddsub231ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmaddsub231ph zmm0, zmm1, zmm2
        #   vfmaddsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub231ph zmm0, zmm1, zmm2, er
        def vfmaddsub231ph(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PH,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUB231PS]
        # @example
        #   vfmaddsub231ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmaddsub231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmaddsub231ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmaddsub231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmaddsub231ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmaddsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmaddsub231ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmaddsub231ps xmm0, xmm1, xmm2
        #   vfmaddsub231ps xmm0, xmm1, [rcx]
        #   vfmaddsub231ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmaddsub231ps ymm0, ymm1, ymm2
        #   vfmaddsub231ps ymm0, ymm1, [rcx]
        #   vfmaddsub231ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmaddsub231ps zmm0, zmm1, zmm2
        #   vfmaddsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmaddsub231ps zmm0, zmm1, zmm2, er
        def vfmaddsub231ps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUB231PS,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUBPD]
        # @example
        #   vfmaddsubpd xmm0, xmm1, xmm2, xmm3
        #   vfmaddsubpd xmm0, xmm1, xmm2, [rdx]
        #   vfmaddsubpd xmm0, xmm1, [rcx], xmm3
        #   vfmaddsubpd ymm0, ymm1, ymm2, ymm3
        #   vfmaddsubpd ymm0, ymm1, ymm2, [rdx]
        #   vfmaddsubpd ymm0, ymm1, [rcx], ymm3
        def vfmaddsubpd(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUBPD,*operands,**kwargs)
        # Fused Multiply-Alternating Add/Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMADDSUBPS]
        # @example
        #   vfmaddsubps xmm0, xmm1, xmm2, xmm3
        #   vfmaddsubps xmm0, xmm1, xmm2, [rdx]
        #   vfmaddsubps xmm0, xmm1, [rcx], xmm3
        #   vfmaddsubps ymm0, ymm1, ymm2, ymm3
        #   vfmaddsubps ymm0, ymm1, ymm2, [rdx]
        #   vfmaddsubps ymm0, ymm1, [rcx], ymm3
        def vfmaddsubps(*operands,**kwargs) = add_instruction(Instructions::VFMADDSUBPS,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB132PD]
        # @example
        #   vfmsub132pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmsub132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmsub132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub132pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub132pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmsub132pd xmm0, xmm1, xmm2
        #   vfmsub132pd xmm0, xmm1, [rcx]
        #   vfmsub132pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmsub132pd ymm0, ymm1, ymm2
        #   vfmsub132pd ymm0, ymm1, [rcx]
        #   vfmsub132pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmsub132pd zmm0, zmm1, zmm2
        #   vfmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub132pd zmm0, zmm1, zmm2, er
        def vfmsub132pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PD,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB132PH]
        # @example
        #   vfmsub132ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmsub132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmsub132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub132ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub132ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmsub132ph xmm0, xmm1, xmm2
        #   vfmsub132ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmsub132ph ymm0, ymm1, ymm2
        #   vfmsub132ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmsub132ph zmm0, zmm1, zmm2
        #   vfmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub132ph zmm0, zmm1, zmm2, er
        def vfmsub132ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PH,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB132PS]
        # @example
        #   vfmsub132ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmsub132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmsub132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub132ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub132ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmsub132ps xmm0, xmm1, xmm2
        #   vfmsub132ps xmm0, xmm1, [rcx]
        #   vfmsub132ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmsub132ps ymm0, ymm1, ymm2
        #   vfmsub132ps ymm0, ymm1, [rcx]
        #   vfmsub132ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmsub132ps zmm0, zmm1, zmm2
        #   vfmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub132ps zmm0, zmm1, zmm2, er
        def vfmsub132ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132PS,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB132SD]
        # @example
        #   vfmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub132sd xmm0, xmm1, xmm2
        #   vfmsub132sd xmm0, xmm1, [rcx]
        #   vfmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub132sd xmm0, xmm1, xmm2, er
        def vfmsub132sd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SD,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB132SH]
        # @example
        #   vfmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub132sh xmm0, xmm1, xmm2
        #   vfmsub132sh xmm0, xmm1, [rcx]
        #   vfmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub132sh xmm0, xmm1, xmm2, er
        def vfmsub132sh(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SH,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB132SS]
        # @example
        #   vfmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub132ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub132ss xmm0, xmm1, xmm2
        #   vfmsub132ss xmm0, xmm1, [rcx]
        #   vfmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub132ss xmm0, xmm1, xmm2, er
        def vfmsub132ss(*operands,**kwargs) = add_instruction(Instructions::VFMSUB132SS,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB213PD]
        # @example
        #   vfmsub213pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmsub213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmsub213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub213pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub213pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmsub213pd xmm0, xmm1, xmm2
        #   vfmsub213pd xmm0, xmm1, [rcx]
        #   vfmsub213pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmsub213pd ymm0, ymm1, ymm2
        #   vfmsub213pd ymm0, ymm1, [rcx]
        #   vfmsub213pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmsub213pd zmm0, zmm1, zmm2
        #   vfmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub213pd zmm0, zmm1, zmm2, er
        def vfmsub213pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PD,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB213PH]
        # @example
        #   vfmsub213ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmsub213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmsub213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub213ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub213ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmsub213ph xmm0, xmm1, xmm2
        #   vfmsub213ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmsub213ph ymm0, ymm1, ymm2
        #   vfmsub213ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmsub213ph zmm0, zmm1, zmm2
        #   vfmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub213ph zmm0, zmm1, zmm2, er
        def vfmsub213ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PH,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB213PS]
        # @example
        #   vfmsub213ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmsub213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmsub213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub213ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub213ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmsub213ps xmm0, xmm1, xmm2
        #   vfmsub213ps xmm0, xmm1, [rcx]
        #   vfmsub213ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmsub213ps ymm0, ymm1, ymm2
        #   vfmsub213ps ymm0, ymm1, [rcx]
        #   vfmsub213ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmsub213ps zmm0, zmm1, zmm2
        #   vfmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub213ps zmm0, zmm1, zmm2, er
        def vfmsub213ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213PS,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB213SD]
        # @example
        #   vfmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub213sd xmm0, xmm1, xmm2
        #   vfmsub213sd xmm0, xmm1, [rcx]
        #   vfmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub213sd xmm0, xmm1, xmm2, er
        def vfmsub213sd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SD,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB213SH]
        # @example
        #   vfmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub213sh xmm0, xmm1, xmm2
        #   vfmsub213sh xmm0, xmm1, [rcx]
        #   vfmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub213sh xmm0, xmm1, xmm2, er
        def vfmsub213sh(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SH,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB213SS]
        # @example
        #   vfmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub213ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub213ss xmm0, xmm1, xmm2
        #   vfmsub213ss xmm0, xmm1, [rcx]
        #   vfmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub213ss xmm0, xmm1, xmm2, er
        def vfmsub213ss(*operands,**kwargs) = add_instruction(Instructions::VFMSUB213SS,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB231PD]
        # @example
        #   vfmsub231pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmsub231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmsub231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub231pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub231pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmsub231pd xmm0, xmm1, xmm2
        #   vfmsub231pd xmm0, xmm1, [rcx]
        #   vfmsub231pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmsub231pd ymm0, ymm1, ymm2
        #   vfmsub231pd ymm0, ymm1, [rcx]
        #   vfmsub231pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmsub231pd zmm0, zmm1, zmm2
        #   vfmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub231pd zmm0, zmm1, zmm2, er
        def vfmsub231pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PD,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB231PH]
        # @example
        #   vfmsub231ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmsub231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmsub231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub231ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub231ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmsub231ph xmm0, xmm1, xmm2
        #   vfmsub231ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmsub231ph ymm0, ymm1, ymm2
        #   vfmsub231ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmsub231ph zmm0, zmm1, zmm2
        #   vfmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub231ph zmm0, zmm1, zmm2, er
        def vfmsub231ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PH,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB231PS]
        # @example
        #   vfmsub231ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmsub231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmsub231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsub231ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsub231ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmsub231ps xmm0, xmm1, xmm2
        #   vfmsub231ps xmm0, xmm1, [rcx]
        #   vfmsub231ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmsub231ps ymm0, ymm1, ymm2
        #   vfmsub231ps ymm0, ymm1, [rcx]
        #   vfmsub231ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmsub231ps zmm0, zmm1, zmm2
        #   vfmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsub231ps zmm0, zmm1, zmm2, er
        def vfmsub231ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231PS,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB231SD]
        # @example
        #   vfmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub231sd xmm0, xmm1, xmm2
        #   vfmsub231sd xmm0, xmm1, [rcx]
        #   vfmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub231sd xmm0, xmm1, xmm2, er
        def vfmsub231sd(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SD,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB231SH]
        # @example
        #   vfmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub231sh xmm0, xmm1, xmm2
        #   vfmsub231sh xmm0, xmm1, [rcx]
        #   vfmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub231sh xmm0, xmm1, xmm2, er
        def vfmsub231sh(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SH,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUB231SS]
        # @example
        #   vfmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsub231ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmsub231ss xmm0, xmm1, xmm2
        #   vfmsub231ss xmm0, xmm1, [rcx]
        #   vfmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmsub231ss xmm0, xmm1, xmm2, er
        def vfmsub231ss(*operands,**kwargs) = add_instruction(Instructions::VFMSUB231SS,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD132PD]
        # @example
        #   vfmsubadd132pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmsubadd132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd132pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmsubadd132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd132pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmsubadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd132pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmsubadd132pd xmm0, xmm1, xmm2
        #   vfmsubadd132pd xmm0, xmm1, [rcx]
        #   vfmsubadd132pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmsubadd132pd ymm0, ymm1, ymm2
        #   vfmsubadd132pd ymm0, ymm1, [rcx]
        #   vfmsubadd132pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmsubadd132pd zmm0, zmm1, zmm2
        #   vfmsubadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd132pd zmm0, zmm1, zmm2, er
        def vfmsubadd132pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PD,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD132PH]
        # @example
        #   vfmsubadd132ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmsubadd132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd132ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmsubadd132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd132ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmsubadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd132ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmsubadd132ph xmm0, xmm1, xmm2
        #   vfmsubadd132ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmsubadd132ph ymm0, ymm1, ymm2
        #   vfmsubadd132ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmsubadd132ph zmm0, zmm1, zmm2
        #   vfmsubadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd132ph zmm0, zmm1, zmm2, er
        def vfmsubadd132ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PH,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD132PS]
        # @example
        #   vfmsubadd132ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmsubadd132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd132ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmsubadd132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd132ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmsubadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd132ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmsubadd132ps xmm0, xmm1, xmm2
        #   vfmsubadd132ps xmm0, xmm1, [rcx]
        #   vfmsubadd132ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmsubadd132ps ymm0, ymm1, ymm2
        #   vfmsubadd132ps ymm0, ymm1, [rcx]
        #   vfmsubadd132ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmsubadd132ps zmm0, zmm1, zmm2
        #   vfmsubadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd132ps zmm0, zmm1, zmm2, er
        def vfmsubadd132ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD132PS,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD213PD]
        # @example
        #   vfmsubadd213pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmsubadd213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd213pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmsubadd213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd213pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmsubadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd213pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmsubadd213pd xmm0, xmm1, xmm2
        #   vfmsubadd213pd xmm0, xmm1, [rcx]
        #   vfmsubadd213pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmsubadd213pd ymm0, ymm1, ymm2
        #   vfmsubadd213pd ymm0, ymm1, [rcx]
        #   vfmsubadd213pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmsubadd213pd zmm0, zmm1, zmm2
        #   vfmsubadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd213pd zmm0, zmm1, zmm2, er
        def vfmsubadd213pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PD,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD213PH]
        # @example
        #   vfmsubadd213ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmsubadd213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd213ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmsubadd213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd213ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmsubadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd213ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmsubadd213ph xmm0, xmm1, xmm2
        #   vfmsubadd213ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmsubadd213ph ymm0, ymm1, ymm2
        #   vfmsubadd213ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmsubadd213ph zmm0, zmm1, zmm2
        #   vfmsubadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd213ph zmm0, zmm1, zmm2, er
        def vfmsubadd213ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PH,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD213PS]
        # @example
        #   vfmsubadd213ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmsubadd213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd213ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmsubadd213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd213ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmsubadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd213ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmsubadd213ps xmm0, xmm1, xmm2
        #   vfmsubadd213ps xmm0, xmm1, [rcx]
        #   vfmsubadd213ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmsubadd213ps ymm0, ymm1, ymm2
        #   vfmsubadd213ps ymm0, ymm1, [rcx]
        #   vfmsubadd213ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmsubadd213ps zmm0, zmm1, zmm2
        #   vfmsubadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd213ps zmm0, zmm1, zmm2, er
        def vfmsubadd213ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD213PS,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD231PD]
        # @example
        #   vfmsubadd231pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfmsubadd231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd231pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfmsubadd231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd231pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfmsubadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd231pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfmsubadd231pd xmm0, xmm1, xmm2
        #   vfmsubadd231pd xmm0, xmm1, [rcx]
        #   vfmsubadd231pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfmsubadd231pd ymm0, ymm1, ymm2
        #   vfmsubadd231pd ymm0, ymm1, [rcx]
        #   vfmsubadd231pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfmsubadd231pd zmm0, zmm1, zmm2
        #   vfmsubadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd231pd zmm0, zmm1, zmm2, er
        def vfmsubadd231pd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PD,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD231PH]
        # @example
        #   vfmsubadd231ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfmsubadd231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd231ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfmsubadd231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd231ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfmsubadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd231ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfmsubadd231ph xmm0, xmm1, xmm2
        #   vfmsubadd231ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfmsubadd231ph ymm0, ymm1, ymm2
        #   vfmsubadd231ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfmsubadd231ph zmm0, zmm1, zmm2
        #   vfmsubadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd231ph zmm0, zmm1, zmm2, er
        def vfmsubadd231ph(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PH,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADD231PS]
        # @example
        #   vfmsubadd231ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmsubadd231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmsubadd231ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmsubadd231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmsubadd231ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmsubadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmsubadd231ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmsubadd231ps xmm0, xmm1, xmm2
        #   vfmsubadd231ps xmm0, xmm1, [rcx]
        #   vfmsubadd231ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmsubadd231ps ymm0, ymm1, ymm2
        #   vfmsubadd231ps ymm0, ymm1, [rcx]
        #   vfmsubadd231ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmsubadd231ps zmm0, zmm1, zmm2
        #   vfmsubadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmsubadd231ps zmm0, zmm1, zmm2, er
        def vfmsubadd231ps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADD231PS,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADDPD]
        # @example
        #   vfmsubaddpd xmm0, xmm1, xmm2, xmm3
        #   vfmsubaddpd xmm0, xmm1, xmm2, [rdx]
        #   vfmsubaddpd xmm0, xmm1, [rcx], xmm3
        #   vfmsubaddpd ymm0, ymm1, ymm2, ymm3
        #   vfmsubaddpd ymm0, ymm1, ymm2, [rdx]
        #   vfmsubaddpd ymm0, ymm1, [rcx], ymm3
        def vfmsubaddpd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADDPD,*operands,**kwargs)
        # Fused Multiply-Alternating Subtract/Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBADDPS]
        # @example
        #   vfmsubaddps xmm0, xmm1, xmm2, xmm3
        #   vfmsubaddps xmm0, xmm1, xmm2, [rdx]
        #   vfmsubaddps xmm0, xmm1, [rcx], xmm3
        #   vfmsubaddps ymm0, ymm1, ymm2, ymm3
        #   vfmsubaddps ymm0, ymm1, ymm2, [rdx]
        #   vfmsubaddps ymm0, ymm1, [rcx], ymm3
        def vfmsubaddps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBADDPS,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBPD]
        # @example
        #   vfmsubpd xmm0, xmm1, xmm2, xmm3
        #   vfmsubpd xmm0, xmm1, xmm2, [rdx]
        #   vfmsubpd xmm0, xmm1, [rcx], xmm3
        #   vfmsubpd ymm0, ymm1, ymm2, ymm3
        #   vfmsubpd ymm0, ymm1, ymm2, [rdx]
        #   vfmsubpd ymm0, ymm1, [rcx], ymm3
        def vfmsubpd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBPD,*operands,**kwargs)
        # Fused Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBPS]
        # @example
        #   vfmsubps xmm0, xmm1, xmm2, xmm3
        #   vfmsubps xmm0, xmm1, xmm2, [rdx]
        #   vfmsubps xmm0, xmm1, [rcx], xmm3
        #   vfmsubps ymm0, ymm1, ymm2, ymm3
        #   vfmsubps ymm0, ymm1, ymm2, [rdx]
        #   vfmsubps ymm0, ymm1, [rcx], ymm3
        def vfmsubps(*operands,**kwargs) = add_instruction(Instructions::VFMSUBPS,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBSD]
        # @example
        #   vfmsubsd xmm0, xmm1, xmm2, xmm3
        #   vfmsubsd xmm0, xmm1, xmm2, [rdx]
        #   vfmsubsd xmm0, xmm1, [rcx], xmm3
        def vfmsubsd(*operands,**kwargs) = add_instruction(Instructions::VFMSUBSD,*operands,**kwargs)
        # Fused Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMSUBSS]
        # @example
        #   vfmsubss xmm0, xmm1, xmm2, xmm3
        #   vfmsubss xmm0, xmm1, xmm2, [rdx]
        #   vfmsubss xmm0, xmm1, [rcx], xmm3
        def vfmsubss(*operands,**kwargs) = add_instruction(Instructions::VFMSUBSS,*operands,**kwargs)
        # Fused Fused Multiply of Complex Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMULCPH]
        # @example
        #   vfmulcph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfmulcph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmulcph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfmulcph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfmulcph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfmulcph xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfmulcph xmm0, xmm1, xmm2
        #   vfmulcph ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfmulcph ymm0, ymm1, ymm2
        #   vfmulcph zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfmulcph zmm0, zmm1, zmm2
        #   vfmulcph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfmulcph zmm0, zmm1, zmm2, er
        def vfmulcph(*operands,**kwargs) = add_instruction(Instructions::VFMULCPH,*operands,**kwargs)
        # Fused Multiply of Complex Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFMULCSH]
        # @example
        #   vfmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfmulcsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfmulcsh xmm0, xmm1, xmm2
        #   vfmulcsh xmm0, xmm1, [rcx]
        #   vfmulcsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfmulcsh xmm0, xmm1, xmm2, er
        def vfmulcsh(*operands,**kwargs) = add_instruction(Instructions::VFMULCSH,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD132PD]
        # @example
        #   vfnmadd132pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfnmadd132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfnmadd132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd132pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfnmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd132pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfnmadd132pd xmm0, xmm1, xmm2
        #   vfnmadd132pd xmm0, xmm1, [rcx]
        #   vfnmadd132pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfnmadd132pd ymm0, ymm1, ymm2
        #   vfnmadd132pd ymm0, ymm1, [rcx]
        #   vfnmadd132pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfnmadd132pd zmm0, zmm1, zmm2
        #   vfnmadd132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd132pd zmm0, zmm1, zmm2, er
        def vfnmadd132pd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD132PH]
        # @example
        #   vfnmadd132ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfnmadd132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfnmadd132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd132ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfnmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd132ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfnmadd132ph xmm0, xmm1, xmm2
        #   vfnmadd132ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfnmadd132ph ymm0, ymm1, ymm2
        #   vfnmadd132ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfnmadd132ph zmm0, zmm1, zmm2
        #   vfnmadd132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd132ph zmm0, zmm1, zmm2, er
        def vfnmadd132ph(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PH,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD132PS]
        # @example
        #   vfnmadd132ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfnmadd132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfnmadd132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd132ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfnmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd132ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfnmadd132ps xmm0, xmm1, xmm2
        #   vfnmadd132ps xmm0, xmm1, [rcx]
        #   vfnmadd132ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfnmadd132ps ymm0, ymm1, ymm2
        #   vfnmadd132ps ymm0, ymm1, [rcx]
        #   vfnmadd132ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfnmadd132ps zmm0, zmm1, zmm2
        #   vfnmadd132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd132ps zmm0, zmm1, zmm2, er
        def vfnmadd132ps(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132PS,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD132SD]
        # @example
        #   vfnmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmadd132sd xmm0, xmm1, xmm2
        #   vfnmadd132sd xmm0, xmm1, [rcx]
        #   vfnmadd132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd132sd xmm0, xmm1, xmm2, er
        def vfnmadd132sd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132SD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD132SS]
        # @example
        #   vfnmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd132ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmadd132ss xmm0, xmm1, xmm2
        #   vfnmadd132ss xmm0, xmm1, [rcx]
        #   vfnmadd132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd132ss xmm0, xmm1, xmm2, er
        def vfnmadd132ss(*operands,**kwargs) = add_instruction(Instructions::VFNMADD132SS,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD213PD]
        # @example
        #   vfnmadd213pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfnmadd213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfnmadd213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd213pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfnmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd213pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfnmadd213pd xmm0, xmm1, xmm2
        #   vfnmadd213pd xmm0, xmm1, [rcx]
        #   vfnmadd213pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfnmadd213pd ymm0, ymm1, ymm2
        #   vfnmadd213pd ymm0, ymm1, [rcx]
        #   vfnmadd213pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfnmadd213pd zmm0, zmm1, zmm2
        #   vfnmadd213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd213pd zmm0, zmm1, zmm2, er
        def vfnmadd213pd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD213PH]
        # @example
        #   vfnmadd213ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfnmadd213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfnmadd213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd213ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfnmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd213ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfnmadd213ph xmm0, xmm1, xmm2
        #   vfnmadd213ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfnmadd213ph ymm0, ymm1, ymm2
        #   vfnmadd213ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfnmadd213ph zmm0, zmm1, zmm2
        #   vfnmadd213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd213ph zmm0, zmm1, zmm2, er
        def vfnmadd213ph(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PH,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD213PS]
        # @example
        #   vfnmadd213ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfnmadd213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfnmadd213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd213ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfnmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd213ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfnmadd213ps xmm0, xmm1, xmm2
        #   vfnmadd213ps xmm0, xmm1, [rcx]
        #   vfnmadd213ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfnmadd213ps ymm0, ymm1, ymm2
        #   vfnmadd213ps ymm0, ymm1, [rcx]
        #   vfnmadd213ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfnmadd213ps zmm0, zmm1, zmm2
        #   vfnmadd213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd213ps zmm0, zmm1, zmm2, er
        def vfnmadd213ps(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213PS,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD213SD]
        # @example
        #   vfnmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmadd213sd xmm0, xmm1, xmm2
        #   vfnmadd213sd xmm0, xmm1, [rcx]
        #   vfnmadd213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd213sd xmm0, xmm1, xmm2, er
        def vfnmadd213sd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213SD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD213SS]
        # @example
        #   vfnmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd213ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmadd213ss xmm0, xmm1, xmm2
        #   vfnmadd213ss xmm0, xmm1, [rcx]
        #   vfnmadd213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd213ss xmm0, xmm1, xmm2, er
        def vfnmadd213ss(*operands,**kwargs) = add_instruction(Instructions::VFNMADD213SS,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD231PD]
        # @example
        #   vfnmadd231pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfnmadd231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfnmadd231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd231pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfnmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd231pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfnmadd231pd xmm0, xmm1, xmm2
        #   vfnmadd231pd xmm0, xmm1, [rcx]
        #   vfnmadd231pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfnmadd231pd ymm0, ymm1, ymm2
        #   vfnmadd231pd ymm0, ymm1, [rcx]
        #   vfnmadd231pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfnmadd231pd zmm0, zmm1, zmm2
        #   vfnmadd231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd231pd zmm0, zmm1, zmm2, er
        def vfnmadd231pd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD231PH]
        # @example
        #   vfnmadd231ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfnmadd231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfnmadd231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd231ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfnmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd231ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfnmadd231ph xmm0, xmm1, xmm2
        #   vfnmadd231ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfnmadd231ph ymm0, ymm1, ymm2
        #   vfnmadd231ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfnmadd231ph zmm0, zmm1, zmm2
        #   vfnmadd231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd231ph zmm0, zmm1, zmm2, er
        def vfnmadd231ph(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PH,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD231PS]
        # @example
        #   vfnmadd231ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfnmadd231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfnmadd231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmadd231ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfnmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmadd231ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfnmadd231ps xmm0, xmm1, xmm2
        #   vfnmadd231ps xmm0, xmm1, [rcx]
        #   vfnmadd231ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfnmadd231ps ymm0, ymm1, ymm2
        #   vfnmadd231ps ymm0, ymm1, [rcx]
        #   vfnmadd231ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfnmadd231ps zmm0, zmm1, zmm2
        #   vfnmadd231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmadd231ps zmm0, zmm1, zmm2, er
        def vfnmadd231ps(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231PS,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD231SD]
        # @example
        #   vfnmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmadd231sd xmm0, xmm1, xmm2
        #   vfnmadd231sd xmm0, xmm1, [rcx]
        #   vfnmadd231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd231sd xmm0, xmm1, xmm2, er
        def vfnmadd231sd(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231SD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADD231SS]
        # @example
        #   vfnmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmadd231ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmadd231ss xmm0, xmm1, xmm2
        #   vfnmadd231ss xmm0, xmm1, [rcx]
        #   vfnmadd231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmadd231ss xmm0, xmm1, xmm2, er
        def vfnmadd231ss(*operands,**kwargs) = add_instruction(Instructions::VFNMADD231SS,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADDPD]
        # @example
        #   vfnmaddpd xmm0, xmm1, xmm2, xmm3
        #   vfnmaddpd xmm0, xmm1, xmm2, [rdx]
        #   vfnmaddpd xmm0, xmm1, [rcx], xmm3
        #   vfnmaddpd ymm0, ymm1, ymm2, ymm3
        #   vfnmaddpd ymm0, ymm1, ymm2, [rdx]
        #   vfnmaddpd ymm0, ymm1, [rcx], ymm3
        def vfnmaddpd(*operands,**kwargs) = add_instruction(Instructions::VFNMADDPD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADDPS]
        # @example
        #   vfnmaddps xmm0, xmm1, xmm2, xmm3
        #   vfnmaddps xmm0, xmm1, xmm2, [rdx]
        #   vfnmaddps xmm0, xmm1, [rcx], xmm3
        #   vfnmaddps ymm0, ymm1, ymm2, ymm3
        #   vfnmaddps ymm0, ymm1, ymm2, [rdx]
        #   vfnmaddps ymm0, ymm1, [rcx], ymm3
        def vfnmaddps(*operands,**kwargs) = add_instruction(Instructions::VFNMADDPS,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADDSD]
        # @example
        #   vfnmaddsd xmm0, xmm1, xmm2, xmm3
        #   vfnmaddsd xmm0, xmm1, xmm2, [rdx]
        #   vfnmaddsd xmm0, xmm1, [rcx], xmm3
        def vfnmaddsd(*operands,**kwargs) = add_instruction(Instructions::VFNMADDSD,*operands,**kwargs)
        # Fused Negative Multiply-Add of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMADDSS]
        # @example
        #   vfnmaddss xmm0, xmm1, xmm2, xmm3
        #   vfnmaddss xmm0, xmm1, xmm2, [rdx]
        #   vfnmaddss xmm0, xmm1, [rcx], xmm3
        def vfnmaddss(*operands,**kwargs) = add_instruction(Instructions::VFNMADDSS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB132PD]
        # @example
        #   vfnmsub132pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfnmsub132pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfnmsub132pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub132pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfnmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub132pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfnmsub132pd xmm0, xmm1, xmm2
        #   vfnmsub132pd xmm0, xmm1, [rcx]
        #   vfnmsub132pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfnmsub132pd ymm0, ymm1, ymm2
        #   vfnmsub132pd ymm0, ymm1, [rcx]
        #   vfnmsub132pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfnmsub132pd zmm0, zmm1, zmm2
        #   vfnmsub132pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub132pd zmm0, zmm1, zmm2, er
        def vfnmsub132pd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB132PH]
        # @example
        #   vfnmsub132ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfnmsub132ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfnmsub132ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub132ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfnmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub132ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfnmsub132ph xmm0, xmm1, xmm2
        #   vfnmsub132ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfnmsub132ph ymm0, ymm1, ymm2
        #   vfnmsub132ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfnmsub132ph zmm0, zmm1, zmm2
        #   vfnmsub132ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub132ph zmm0, zmm1, zmm2, er
        def vfnmsub132ph(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PH,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB132PS]
        # @example
        #   vfnmsub132ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfnmsub132ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfnmsub132ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub132ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfnmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub132ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfnmsub132ps xmm0, xmm1, xmm2
        #   vfnmsub132ps xmm0, xmm1, [rcx]
        #   vfnmsub132ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfnmsub132ps ymm0, ymm1, ymm2
        #   vfnmsub132ps ymm0, ymm1, [rcx]
        #   vfnmsub132ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfnmsub132ps zmm0, zmm1, zmm2
        #   vfnmsub132ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub132ps zmm0, zmm1, zmm2, er
        def vfnmsub132ps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132PS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB132SD]
        # @example
        #   vfnmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub132sd xmm0, xmm1, xmm2
        #   vfnmsub132sd xmm0, xmm1, [rcx]
        #   vfnmsub132sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub132sd xmm0, xmm1, xmm2, er
        def vfnmsub132sd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB132SH]
        # @example
        #   vfnmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub132sh xmm0, xmm1, xmm2
        #   vfnmsub132sh xmm0, xmm1, [rcx]
        #   vfnmsub132sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub132sh xmm0, xmm1, xmm2, er
        def vfnmsub132sh(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SH,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB132SS]
        # @example
        #   vfnmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub132ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub132ss xmm0, xmm1, xmm2
        #   vfnmsub132ss xmm0, xmm1, [rcx]
        #   vfnmsub132ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub132ss xmm0, xmm1, xmm2, er
        def vfnmsub132ss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB132SS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB213PD]
        # @example
        #   vfnmsub213pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfnmsub213pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfnmsub213pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub213pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfnmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub213pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfnmsub213pd xmm0, xmm1, xmm2
        #   vfnmsub213pd xmm0, xmm1, [rcx]
        #   vfnmsub213pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfnmsub213pd ymm0, ymm1, ymm2
        #   vfnmsub213pd ymm0, ymm1, [rcx]
        #   vfnmsub213pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfnmsub213pd zmm0, zmm1, zmm2
        #   vfnmsub213pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub213pd zmm0, zmm1, zmm2, er
        def vfnmsub213pd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB213PH]
        # @example
        #   vfnmsub213ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfnmsub213ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfnmsub213ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub213ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfnmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub213ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfnmsub213ph xmm0, xmm1, xmm2
        #   vfnmsub213ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfnmsub213ph ymm0, ymm1, ymm2
        #   vfnmsub213ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfnmsub213ph zmm0, zmm1, zmm2
        #   vfnmsub213ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub213ph zmm0, zmm1, zmm2, er
        def vfnmsub213ph(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PH,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB213PS]
        # @example
        #   vfnmsub213ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfnmsub213ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfnmsub213ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub213ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfnmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub213ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfnmsub213ps xmm0, xmm1, xmm2
        #   vfnmsub213ps xmm0, xmm1, [rcx]
        #   vfnmsub213ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfnmsub213ps ymm0, ymm1, ymm2
        #   vfnmsub213ps ymm0, ymm1, [rcx]
        #   vfnmsub213ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfnmsub213ps zmm0, zmm1, zmm2
        #   vfnmsub213ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub213ps zmm0, zmm1, zmm2, er
        def vfnmsub213ps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213PS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB213SD]
        # @example
        #   vfnmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub213sd xmm0, xmm1, xmm2
        #   vfnmsub213sd xmm0, xmm1, [rcx]
        #   vfnmsub213sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub213sd xmm0, xmm1, xmm2, er
        def vfnmsub213sd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB213SH]
        # @example
        #   vfnmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub213sh xmm0, xmm1, xmm2
        #   vfnmsub213sh xmm0, xmm1, [rcx]
        #   vfnmsub213sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub213sh xmm0, xmm1, xmm2, er
        def vfnmsub213sh(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SH,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB213SS]
        # @example
        #   vfnmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub213ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub213ss xmm0, xmm1, xmm2
        #   vfnmsub213ss xmm0, xmm1, [rcx]
        #   vfnmsub213ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub213ss xmm0, xmm1, xmm2, er
        def vfnmsub213ss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB213SS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB231PD]
        # @example
        #   vfnmsub231pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vfnmsub231pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vfnmsub231pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub231pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vfnmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub231pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vfnmsub231pd xmm0, xmm1, xmm2
        #   vfnmsub231pd xmm0, xmm1, [rcx]
        #   vfnmsub231pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vfnmsub231pd ymm0, ymm1, ymm2
        #   vfnmsub231pd ymm0, ymm1, [rcx]
        #   vfnmsub231pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vfnmsub231pd zmm0, zmm1, zmm2
        #   vfnmsub231pd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub231pd zmm0, zmm1, zmm2, er
        def vfnmsub231pd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB231PH]
        # @example
        #   vfnmsub231ph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vfnmsub231ph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231ph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vfnmsub231ph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub231ph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vfnmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub231ph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vfnmsub231ph xmm0, xmm1, xmm2
        #   vfnmsub231ph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vfnmsub231ph ymm0, ymm1, ymm2
        #   vfnmsub231ph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vfnmsub231ph zmm0, zmm1, zmm2
        #   vfnmsub231ph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub231ph zmm0, zmm1, zmm2, er
        def vfnmsub231ph(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PH,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB231PS]
        # @example
        #   vfnmsub231ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vfnmsub231ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vfnmsub231ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vfnmsub231ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vfnmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vfnmsub231ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vfnmsub231ps xmm0, xmm1, xmm2
        #   vfnmsub231ps xmm0, xmm1, [rcx]
        #   vfnmsub231ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vfnmsub231ps ymm0, ymm1, ymm2
        #   vfnmsub231ps ymm0, ymm1, [rcx]
        #   vfnmsub231ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vfnmsub231ps zmm0, zmm1, zmm2
        #   vfnmsub231ps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vfnmsub231ps zmm0, zmm1, zmm2, er
        def vfnmsub231ps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231PS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB231SD]
        # @example
        #   vfnmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub231sd xmm0, xmm1, xmm2
        #   vfnmsub231sd xmm0, xmm1, [rcx]
        #   vfnmsub231sd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub231sd xmm0, xmm1, xmm2, er
        def vfnmsub231sd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB231SH]
        # @example
        #   vfnmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231sh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub231sh xmm0, xmm1, xmm2
        #   vfnmsub231sh xmm0, xmm1, [rcx]
        #   vfnmsub231sh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub231sh xmm0, xmm1, xmm2, er
        def vfnmsub231sh(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SH,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUB231SS]
        # @example
        #   vfnmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vfnmsub231ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vfnmsub231ss xmm0, xmm1, xmm2
        #   vfnmsub231ss xmm0, xmm1, [rcx]
        #   vfnmsub231ss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vfnmsub231ss xmm0, xmm1, xmm2, er
        def vfnmsub231ss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUB231SS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUBPD]
        # @example
        #   vfnmsubpd xmm0, xmm1, xmm2, xmm3
        #   vfnmsubpd xmm0, xmm1, xmm2, [rdx]
        #   vfnmsubpd xmm0, xmm1, [rcx], xmm3
        #   vfnmsubpd ymm0, ymm1, ymm2, ymm3
        #   vfnmsubpd ymm0, ymm1, ymm2, [rdx]
        #   vfnmsubpd ymm0, ymm1, [rcx], ymm3
        def vfnmsubpd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBPD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUBPS]
        # @example
        #   vfnmsubps xmm0, xmm1, xmm2, xmm3
        #   vfnmsubps xmm0, xmm1, xmm2, [rdx]
        #   vfnmsubps xmm0, xmm1, [rcx], xmm3
        #   vfnmsubps ymm0, ymm1, ymm2, ymm3
        #   vfnmsubps ymm0, ymm1, ymm2, [rdx]
        #   vfnmsubps ymm0, ymm1, [rcx], ymm3
        def vfnmsubps(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBPS,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUBSD]
        # @example
        #   vfnmsubsd xmm0, xmm1, xmm2, xmm3
        #   vfnmsubsd xmm0, xmm1, xmm2, [rdx]
        #   vfnmsubsd xmm0, xmm1, [rcx], xmm3
        def vfnmsubsd(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBSD,*operands,**kwargs)
        # Fused Negative Multiply-Subtract of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFNMSUBSS]
        # @example
        #   vfnmsubss xmm0, xmm1, xmm2, xmm3
        #   vfnmsubss xmm0, xmm1, xmm2, [rdx]
        #   vfnmsubss xmm0, xmm1, [rcx], xmm3
        def vfnmsubss(*operands,**kwargs) = add_instruction(Instructions::VFNMSUBSS,*operands,**kwargs)
        # Test Class of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFPCLASSPD]
        # @example
        #   vfpclasspd opmask(k1, k2), bcst([rbx], {1=>2}), 0x03
        #   vfpclasspd k1, bcst([rbx], {1=>2}), 0x03
        #   vfpclasspd opmask(k1, k2), bcst([rbx], {1=>4}), 0x03
        #   vfpclasspd k1, bcst([rbx], {1=>4}), 0x03
        #   vfpclasspd opmask(k1, k2), bcst([rbx], {1=>8}), 0x03
        #   vfpclasspd k1, bcst([rbx], {1=>8}), 0x03
        #   vfpclasspd opmask(k1, k2), xmm1, 0x03
        #   vfpclasspd k1, xmm1, 0x03
        #   vfpclasspd opmask(k1, k2), ymm1, 0x03
        #   vfpclasspd k1, ymm1, 0x03
        #   vfpclasspd opmask(k1, k2), zmm1, 0x03
        #   vfpclasspd k1, zmm1, 0x03
        def vfpclasspd(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSPD,*operands,**kwargs)
        # Test Class of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFPCLASSPH]
        # @example
        #   vfpclassph opmask(k1, k2), bcst([rbx], {1=>8}), 0x03
        #   vfpclassph k1, bcst([rbx], {1=>8}), 0x03
        #   vfpclassph opmask(k1, k2), bcst([rbx], {1=>16}), 0x03
        #   vfpclassph k1, bcst([rbx], {1=>16}), 0x03
        #   vfpclassph opmask(k1, k2), bcst([rbx], {1=>32}), 0x03
        #   vfpclassph k1, bcst([rbx], {1=>32}), 0x03
        #   vfpclassph opmask(k1, k2), xmm1, 0x03
        #   vfpclassph k1, xmm1, 0x03
        #   vfpclassph opmask(k1, k2), ymm1, 0x03
        #   vfpclassph k1, ymm1, 0x03
        #   vfpclassph opmask(k1, k2), zmm1, 0x03
        #   vfpclassph k1, zmm1, 0x03
        def vfpclassph(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSPH,*operands,**kwargs)
        # Test Class of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VFPCLASSPS]
        # @example
        #   vfpclassps opmask(k1, k2), bcst([rbx], {1=>4}), 0x03
        #   vfpclassps k1, bcst([rbx], {1=>4}), 0x03
        #   vfpclassps opmask(k1, k2), bcst([rbx], {1=>8}), 0x03
        #   vfpclassps k1, bcst([rbx], {1=>8}), 0x03
        #   vfpclassps opmask(k1, k2), bcst([rbx], {1=>16}), 0x03
        #   vfpclassps k1, bcst([rbx], {1=>16}), 0x03
        #   vfpclassps opmask(k1, k2), xmm1, 0x03
        #   vfpclassps k1, xmm1, 0x03
        #   vfpclassps opmask(k1, k2), ymm1, 0x03
        #   vfpclassps k1, ymm1, 0x03
        #   vfpclassps opmask(k1, k2), zmm1, 0x03
        #   vfpclassps k1, zmm1, 0x03
        def vfpclassps(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSPS,*operands,**kwargs)
        # Test Class of Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VFPCLASSSD]
        # @example
        #   vfpclasssd opmask(k1, k2), xmm1, 0x03
        #   vfpclasssd k1, xmm1, 0x03
        #   vfpclasssd opmask(k1, k2), [rbx], 0x03
        #   vfpclasssd k1, [rbx], 0x03
        def vfpclasssd(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSSD,*operands,**kwargs)
        # Test Class of Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VFPCLASSSH]
        # @example
        #   vfpclasssh opmask(k1, k2), xmm1, 0x03
        #   vfpclasssh k1, xmm1, 0x03
        #   vfpclasssh opmask(k1, k2), [rbx], 0x03
        #   vfpclasssh k1, [rbx], 0x03
        def vfpclasssh(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSSH,*operands,**kwargs)
        # Test Class of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VFPCLASSSS]
        # @example
        #   vfpclassss opmask(k1, k2), xmm1, 0x03
        #   vfpclassss k1, xmm1, 0x03
        #   vfpclassss opmask(k1, k2), [rbx], 0x03
        #   vfpclassss k1, [rbx], 0x03
        def vfpclassss(*operands,**kwargs) = add_instruction(Instructions::VFPCLASSSS,*operands,**kwargs)
        # Extract Fraction Packed Double-Precision Floating-Point
        # @return [Ronin::ASM::X86_64::Instructions::VFRCZPD]
        # @example
        #   vfrczpd xmm0, xmm1
        #   vfrczpd xmm0, [rbx]
        #   vfrczpd ymm0, ymm1
        #   vfrczpd ymm0, [rbx]
        def vfrczpd(*operands,**kwargs) = add_instruction(Instructions::VFRCZPD,*operands,**kwargs)
        # Extract Fraction Packed Single-Precision Floating-Point
        # @return [Ronin::ASM::X86_64::Instructions::VFRCZPS]
        # @example
        #   vfrczps xmm0, xmm1
        #   vfrczps xmm0, [rbx]
        #   vfrczps ymm0, ymm1
        #   vfrczps ymm0, [rbx]
        def vfrczps(*operands,**kwargs) = add_instruction(Instructions::VFRCZPS,*operands,**kwargs)
        # Extract Fraction Scalar Double-Precision Floating-Point
        # @return [Ronin::ASM::X86_64::Instructions::VFRCZSD]
        # @example
        #   vfrczsd xmm0, xmm1
        #   vfrczsd xmm0, [rbx]
        def vfrczsd(*operands,**kwargs) = add_instruction(Instructions::VFRCZSD,*operands,**kwargs)
        # Extract Fraction Scalar Single-Precision Floating Point
        # @return [Ronin::ASM::X86_64::Instructions::VFRCZSS]
        # @example
        #   vfrczss xmm0, xmm1
        #   vfrczss xmm0, [rbx]
        def vfrczss(*operands,**kwargs) = add_instruction(Instructions::VFRCZSS,*operands,**kwargs)
        # Gather Packed Double-Precision Floating-Point Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERDPD]
        # @example
        #   vgatherdpd opmask(xmm0, k1), [rbx+xmm1*4]
        #   vgatherdpd opmask(ymm0, k1), [rbx+xmm1*4]
        #   vgatherdpd opmask(zmm0, k1), [rbx+ymm1*4]
        #   vgatherdpd xmm0, [rbx+xmm1*4], xmm2
        #   vgatherdpd ymm0, [rbx+xmm1*4], ymm2
        def vgatherdpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERDPD,*operands,**kwargs)
        # Gather Packed Single-Precision Floating-Point Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERDPS]
        # @example
        #   vgatherdps opmask(xmm0, k1), [rbx+xmm1*4]
        #   vgatherdps opmask(ymm0, k1), [rbx+ymm1*4]
        #   vgatherdps opmask(zmm0, k1), [rbx+zmm1*4]
        #   vgatherdps xmm0, [rbx+xmm1*4], xmm2
        #   vgatherdps ymm0, [rbx+ymm1*4], ymm2
        def vgatherdps(*operands,**kwargs) = add_instruction(Instructions::VGATHERDPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF0DPD]
        # @example
        #   vgatherpf0dpd opmask([rax+ymm0*4], k1)
        def vgatherpf0dpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0DPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF0DPS]
        # @example
        #   vgatherpf0dps opmask([rax+zmm0*4], k1)
        def vgatherpf0dps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0DPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF0QPD]
        # @example
        #   vgatherpf0qpd opmask([rax+zmm0*8], k1)
        def vgatherpf0qpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0QPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF0QPS]
        # @example
        #   vgatherpf0qps opmask([rax+zmm0*8], k1)
        def vgatherpf0qps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF0QPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF1DPD]
        # @example
        #   vgatherpf1dpd opmask([rax+ymm0*4], k1)
        def vgatherpf1dpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1DPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF1DPS]
        # @example
        #   vgatherpf1dps opmask([rax+zmm0*4], k1)
        def vgatherpf1dps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1DPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF1QPD]
        # @example
        #   vgatherpf1qpd opmask([rax+zmm0*8], k1)
        def vgatherpf1qpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1QPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERPF1QPS]
        # @example
        #   vgatherpf1qps opmask([rax+zmm0*8], k1)
        def vgatherpf1qps(*operands,**kwargs) = add_instruction(Instructions::VGATHERPF1QPS,*operands,**kwargs)
        # Gather Packed Double-Precision Floating-Point Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERQPD]
        # @example
        #   vgatherqpd opmask(xmm0, k1), [rbx+xmm1*8]
        #   vgatherqpd opmask(ymm0, k1), [rbx+ymm1*8]
        #   vgatherqpd opmask(zmm0, k1), [rbx+zmm1*8]
        #   vgatherqpd xmm0, [rbx+xmm1*8], xmm2
        #   vgatherqpd ymm0, [rbx+ymm1*8], ymm2
        def vgatherqpd(*operands,**kwargs) = add_instruction(Instructions::VGATHERQPD,*operands,**kwargs)
        # Gather Packed Single-Precision Floating-Point Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VGATHERQPS]
        # @example
        #   vgatherqps opmask(xmm0, k1), [rbx+xmm1*8]
        #   vgatherqps opmask(xmm0, k1), [rbx+ymm1*8]
        #   vgatherqps opmask(ymm0, k1), [rbx+zmm1*8]
        #   vgatherqps xmm0, [rbx+xmm1*8], xmm2
        #   vgatherqps xmm0, [rbx+ymm1*8], xmm2
        def vgatherqps(*operands,**kwargs) = add_instruction(Instructions::VGATHERQPS,*operands,**kwargs)
        # Extract Exponents of Packed Double-Precision Floating-Point Values as Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VGETEXPPD]
        # @example
        #   vgetexppd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vgetexppd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vgetexppd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vgetexppd opmask(xmm0, k1, zero: true), xmm1
        #   vgetexppd opmask(ymm0, k1, zero: true), ymm1
        #   vgetexppd opmask(zmm0, k1, zero: true), zmm1
        #   vgetexppd xmm0, bcst([rbx], {1=>2})
        #   vgetexppd xmm0, xmm1
        #   vgetexppd ymm0, bcst([rbx], {1=>4})
        #   vgetexppd ymm0, ymm1
        #   vgetexppd zmm0, bcst([rbx], {1=>8})
        #   vgetexppd zmm0, zmm1
        #   vgetexppd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vgetexppd zmm0, zmm1, sae
        def vgetexppd(*operands,**kwargs) = add_instruction(Instructions::VGETEXPPD,*operands,**kwargs)
        # Extract Exponents of Packed Half-Precision Floating-Point Values as Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VGETEXPPH]
        # @example
        #   vgetexpph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vgetexpph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vgetexpph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vgetexpph opmask(xmm0, k1, zero: true), xmm1
        #   vgetexpph opmask(ymm0, k1, zero: true), ymm1
        #   vgetexpph opmask(zmm0, k1, zero: true), zmm1
        #   vgetexpph xmm0, bcst([rbx], {1=>8})
        #   vgetexpph xmm0, xmm1
        #   vgetexpph ymm0, bcst([rbx], {1=>16})
        #   vgetexpph ymm0, ymm1
        #   vgetexpph zmm0, bcst([rbx], {1=>32})
        #   vgetexpph zmm0, zmm1
        #   vgetexpph opmask(zmm0, k1, zero: true), zmm1, sae
        #   vgetexpph zmm0, zmm1, sae
        def vgetexpph(*operands,**kwargs) = add_instruction(Instructions::VGETEXPPH,*operands,**kwargs)
        # Extract Exponents of Packed Single-Precision Floating-Point Values as Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VGETEXPPS]
        # @example
        #   vgetexpps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vgetexpps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vgetexpps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vgetexpps opmask(xmm0, k1, zero: true), xmm1
        #   vgetexpps opmask(ymm0, k1, zero: true), ymm1
        #   vgetexpps opmask(zmm0, k1, zero: true), zmm1
        #   vgetexpps xmm0, bcst([rbx], {1=>4})
        #   vgetexpps xmm0, xmm1
        #   vgetexpps ymm0, bcst([rbx], {1=>8})
        #   vgetexpps ymm0, ymm1
        #   vgetexpps zmm0, bcst([rbx], {1=>16})
        #   vgetexpps zmm0, zmm1
        #   vgetexpps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vgetexpps zmm0, zmm1, sae
        def vgetexpps(*operands,**kwargs) = add_instruction(Instructions::VGETEXPPS,*operands,**kwargs)
        # Extract Exponent of Scalar Double-Precision Floating-Point Value as Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VGETEXPSD]
        # @example
        #   vgetexpsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgetexpsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vgetexpsd xmm0, xmm1, xmm2
        #   vgetexpsd xmm0, xmm1, [rcx]
        #   vgetexpsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vgetexpsd xmm0, xmm1, xmm2, sae
        def vgetexpsd(*operands,**kwargs) = add_instruction(Instructions::VGETEXPSD,*operands,**kwargs)
        # Extract Exponent of Scalar Half-Precision Floating-Point Value as Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VGETEXPSH]
        # @example
        #   vgetexpsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgetexpsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vgetexpsh xmm0, xmm1, xmm2
        #   vgetexpsh xmm0, xmm1, [rcx]
        #   vgetexpsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vgetexpsh xmm0, xmm1, xmm2, sae
        def vgetexpsh(*operands,**kwargs) = add_instruction(Instructions::VGETEXPSH,*operands,**kwargs)
        # Extract Exponent of Scalar Single-Precision Floating-Point Value as Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VGETEXPSS]
        # @example
        #   vgetexpss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgetexpss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vgetexpss xmm0, xmm1, xmm2
        #   vgetexpss xmm0, xmm1, [rcx]
        #   vgetexpss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vgetexpss xmm0, xmm1, xmm2, sae
        def vgetexpss(*operands,**kwargs) = add_instruction(Instructions::VGETEXPSS,*operands,**kwargs)
        # Extract Normalized Mantissas from Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VGETMANTPD]
        # @example
        #   vgetmantpd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vgetmantpd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vgetmantpd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vgetmantpd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vgetmantpd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vgetmantpd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vgetmantpd xmm0, bcst([rbx], {1=>2}), 0x03
        #   vgetmantpd xmm0, xmm1, 0x03
        #   vgetmantpd ymm0, bcst([rbx], {1=>4}), 0x03
        #   vgetmantpd ymm0, ymm1, 0x03
        #   vgetmantpd zmm0, bcst([rbx], {1=>8}), 0x03
        #   vgetmantpd zmm0, zmm1, 0x03
        #   vgetmantpd opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vgetmantpd zmm0, zmm1, sae, 0x04
        def vgetmantpd(*operands,**kwargs) = add_instruction(Instructions::VGETMANTPD,*operands,**kwargs)
        # Extract Normalized Mantissas from Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VGETMANTPH]
        # @example
        #   vgetmantph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vgetmantph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vgetmantph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32}), 0x03
        #   vgetmantph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vgetmantph opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vgetmantph opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vgetmantph xmm0, bcst([rbx], {1=>8}), 0x03
        #   vgetmantph xmm0, xmm1, 0x03
        #   vgetmantph ymm0, bcst([rbx], {1=>16}), 0x03
        #   vgetmantph ymm0, ymm1, 0x03
        #   vgetmantph zmm0, bcst([rbx], {1=>32}), 0x03
        #   vgetmantph zmm0, zmm1, 0x03
        #   vgetmantph opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vgetmantph zmm0, zmm1, sae, 0x04
        def vgetmantph(*operands,**kwargs) = add_instruction(Instructions::VGETMANTPH,*operands,**kwargs)
        # Extract Normalized Mantissas from Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VGETMANTPS]
        # @example
        #   vgetmantps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vgetmantps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vgetmantps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vgetmantps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vgetmantps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vgetmantps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vgetmantps xmm0, bcst([rbx], {1=>4}), 0x03
        #   vgetmantps xmm0, xmm1, 0x03
        #   vgetmantps ymm0, bcst([rbx], {1=>8}), 0x03
        #   vgetmantps ymm0, ymm1, 0x03
        #   vgetmantps zmm0, bcst([rbx], {1=>16}), 0x03
        #   vgetmantps zmm0, zmm1, 0x03
        #   vgetmantps opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vgetmantps zmm0, zmm1, sae, 0x04
        def vgetmantps(*operands,**kwargs) = add_instruction(Instructions::VGETMANTPS,*operands,**kwargs)
        # Extract Normalized Mantissa from Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VGETMANTSD]
        # @example
        #   vgetmantsd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgetmantsd opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vgetmantsd xmm0, xmm1, xmm2, 0x04
        #   vgetmantsd xmm0, xmm1, [rcx], 0x04
        #   vgetmantsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vgetmantsd xmm0, xmm1, xmm2, sae, 0x05
        def vgetmantsd(*operands,**kwargs) = add_instruction(Instructions::VGETMANTSD,*operands,**kwargs)
        # Extract Normalized Mantissa from Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VGETMANTSH]
        # @example
        #   vgetmantsh opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgetmantsh opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vgetmantsh xmm0, xmm1, xmm2, 0x04
        #   vgetmantsh xmm0, xmm1, [rcx], 0x04
        #   vgetmantsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vgetmantsh xmm0, xmm1, xmm2, sae, 0x05
        def vgetmantsh(*operands,**kwargs) = add_instruction(Instructions::VGETMANTSH,*operands,**kwargs)
        # Extract Normalized Mantissa from Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VGETMANTSS]
        # @example
        #   vgetmantss opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgetmantss opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vgetmantss xmm0, xmm1, xmm2, 0x04
        #   vgetmantss xmm0, xmm1, [rcx], 0x04
        #   vgetmantss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vgetmantss xmm0, xmm1, xmm2, sae, 0x05
        def vgetmantss(*operands,**kwargs) = add_instruction(Instructions::VGETMANTSS,*operands,**kwargs)
        # Galois Field (2^8) Affine Inverse Transformation
        # @return [Ronin::ASM::X86_64::Instructions::VGF2P8AFFINEINVQB]
        # @example
        #   vgf2p8affineinvqb opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vgf2p8affineinvqb opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgf2p8affineinvqb opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vgf2p8affineinvqb opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vgf2p8affineinvqb opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vgf2p8affineinvqb opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vgf2p8affineinvqb xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vgf2p8affineinvqb xmm0, xmm1, xmm2, 0x04
        #   vgf2p8affineinvqb xmm0, xmm1, [rcx], 0x04
        #   vgf2p8affineinvqb ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vgf2p8affineinvqb ymm0, ymm1, ymm2, 0x04
        #   vgf2p8affineinvqb ymm0, ymm1, [rcx], 0x04
        #   vgf2p8affineinvqb zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vgf2p8affineinvqb zmm0, zmm1, zmm2, 0x04
        def vgf2p8affineinvqb(*operands,**kwargs) = add_instruction(Instructions::VGF2P8AFFINEINVQB,*operands,**kwargs)
        # Galois Field (2^8) Affine Transformation
        # @return [Ronin::ASM::X86_64::Instructions::VGF2P8AFFINEQB]
        # @example
        #   vgf2p8affineqb opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vgf2p8affineqb opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vgf2p8affineqb opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vgf2p8affineqb opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vgf2p8affineqb opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vgf2p8affineqb opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vgf2p8affineqb xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vgf2p8affineqb xmm0, xmm1, xmm2, 0x04
        #   vgf2p8affineqb xmm0, xmm1, [rcx], 0x04
        #   vgf2p8affineqb ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vgf2p8affineqb ymm0, ymm1, ymm2, 0x04
        #   vgf2p8affineqb ymm0, ymm1, [rcx], 0x04
        #   vgf2p8affineqb zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vgf2p8affineqb zmm0, zmm1, zmm2, 0x04
        def vgf2p8affineqb(*operands,**kwargs) = add_instruction(Instructions::VGF2P8AFFINEQB,*operands,**kwargs)
        # Galois Field Multiply Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VGF2P8MULB]
        # @example
        #   vgf2p8mulb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vgf2p8mulb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vgf2p8mulb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vgf2p8mulb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vgf2p8mulb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vgf2p8mulb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vgf2p8mulb xmm0, xmm1, xmm2
        #   vgf2p8mulb xmm0, xmm1, [rcx]
        #   vgf2p8mulb ymm0, ymm1, ymm2
        #   vgf2p8mulb ymm0, ymm1, [rcx]
        #   vgf2p8mulb zmm0, zmm1, zmm2
        #   vgf2p8mulb zmm0, zmm1, [rcx]
        def vgf2p8mulb(*operands,**kwargs) = add_instruction(Instructions::VGF2P8MULB,*operands,**kwargs)
        # Packed Double-FP Horizontal Add
        # @return [Ronin::ASM::X86_64::Instructions::VHADDPD]
        # @example
        #   vhaddpd xmm0, xmm1, xmm2
        #   vhaddpd xmm0, xmm1, [rcx]
        #   vhaddpd ymm0, ymm1, ymm2
        #   vhaddpd ymm0, ymm1, [rcx]
        def vhaddpd(*operands,**kwargs) = add_instruction(Instructions::VHADDPD,*operands,**kwargs)
        # Packed Single-FP Horizontal Add
        # @return [Ronin::ASM::X86_64::Instructions::VHADDPS]
        # @example
        #   vhaddps xmm0, xmm1, xmm2
        #   vhaddps xmm0, xmm1, [rcx]
        #   vhaddps ymm0, ymm1, ymm2
        #   vhaddps ymm0, ymm1, [rcx]
        def vhaddps(*operands,**kwargs) = add_instruction(Instructions::VHADDPS,*operands,**kwargs)
        # Packed Double-FP Horizontal Subtract
        # @return [Ronin::ASM::X86_64::Instructions::VHSUBPD]
        # @example
        #   vhsubpd xmm0, xmm1, xmm2
        #   vhsubpd xmm0, xmm1, [rcx]
        #   vhsubpd ymm0, ymm1, ymm2
        #   vhsubpd ymm0, ymm1, [rcx]
        def vhsubpd(*operands,**kwargs) = add_instruction(Instructions::VHSUBPD,*operands,**kwargs)
        # Packed Single-FP Horizontal Subtract
        # @return [Ronin::ASM::X86_64::Instructions::VHSUBPS]
        # @example
        #   vhsubps xmm0, xmm1, xmm2
        #   vhsubps xmm0, xmm1, [rcx]
        #   vhsubps ymm0, ymm1, ymm2
        #   vhsubps ymm0, ymm1, [rcx]
        def vhsubps(*operands,**kwargs) = add_instruction(Instructions::VHSUBPS,*operands,**kwargs)
        # Insert Packed Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTF128]
        # @example
        #   vinsertf128 ymm0, ymm1, xmm2, 0x04
        #   vinsertf128 ymm0, ymm1, [rcx], 0x04
        def vinsertf128(*operands,**kwargs) = add_instruction(Instructions::VINSERTF128,*operands,**kwargs)
        # Insert 128 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTF32X4]
        # @example
        #   vinsertf32x4 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinsertf32x4 opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vinsertf32x4 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinsertf32x4 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinsertf32x4 ymm0, ymm1, xmm2, 0x04
        #   vinsertf32x4 ymm0, ymm1, [rcx], 0x04
        #   vinsertf32x4 zmm0, zmm1, xmm2, 0x04
        #   vinsertf32x4 zmm0, zmm1, [rcx], 0x04
        def vinsertf32x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTF32X4,*operands,**kwargs)
        # Insert 256 Bits of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTF32X8]
        # @example
        #   vinsertf32x8 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinsertf32x8 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinsertf32x8 zmm0, zmm1, ymm2, 0x04
        #   vinsertf32x8 zmm0, zmm1, [rcx], 0x04
        def vinsertf32x8(*operands,**kwargs) = add_instruction(Instructions::VINSERTF32X8,*operands,**kwargs)
        # Insert 128 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTF64X2]
        # @example
        #   vinsertf64x2 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinsertf64x2 opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vinsertf64x2 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinsertf64x2 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinsertf64x2 ymm0, ymm1, xmm2, 0x04
        #   vinsertf64x2 ymm0, ymm1, [rcx], 0x04
        #   vinsertf64x2 zmm0, zmm1, xmm2, 0x04
        #   vinsertf64x2 zmm0, zmm1, [rcx], 0x04
        def vinsertf64x2(*operands,**kwargs) = add_instruction(Instructions::VINSERTF64X2,*operands,**kwargs)
        # Insert 256 Bits of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTF64X4]
        # @example
        #   vinsertf64x4 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinsertf64x4 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinsertf64x4 zmm0, zmm1, ymm2, 0x04
        #   vinsertf64x4 zmm0, zmm1, [rcx], 0x04
        def vinsertf64x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTF64X4,*operands,**kwargs)
        # Insert Packed Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTI128]
        # @example
        #   vinserti128 ymm0, ymm1, xmm2, 0x04
        #   vinserti128 ymm0, ymm1, [rcx], 0x04
        def vinserti128(*operands,**kwargs) = add_instruction(Instructions::VINSERTI128,*operands,**kwargs)
        # Insert 128 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTI32X4]
        # @example
        #   vinserti32x4 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinserti32x4 opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vinserti32x4 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinserti32x4 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinserti32x4 ymm0, ymm1, xmm2, 0x04
        #   vinserti32x4 ymm0, ymm1, [rcx], 0x04
        #   vinserti32x4 zmm0, zmm1, xmm2, 0x04
        #   vinserti32x4 zmm0, zmm1, [rcx], 0x04
        def vinserti32x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTI32X4,*operands,**kwargs)
        # Insert 256 Bits of Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTI32X8]
        # @example
        #   vinserti32x8 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinserti32x8 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinserti32x8 zmm0, zmm1, ymm2, 0x04
        #   vinserti32x8 zmm0, zmm1, [rcx], 0x04
        def vinserti32x8(*operands,**kwargs) = add_instruction(Instructions::VINSERTI32X8,*operands,**kwargs)
        # Insert 128 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTI64X2]
        # @example
        #   vinserti64x2 opmask(ymm0, k1, zero: true), ymm1, xmm2, 0x04
        #   vinserti64x2 opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vinserti64x2 opmask(zmm0, k1, zero: true), zmm1, xmm2, 0x04
        #   vinserti64x2 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinserti64x2 ymm0, ymm1, xmm2, 0x04
        #   vinserti64x2 ymm0, ymm1, [rcx], 0x04
        #   vinserti64x2 zmm0, zmm1, xmm2, 0x04
        #   vinserti64x2 zmm0, zmm1, [rcx], 0x04
        def vinserti64x2(*operands,**kwargs) = add_instruction(Instructions::VINSERTI64X2,*operands,**kwargs)
        # Insert 256 Bits of Packed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTI64X4]
        # @example
        #   vinserti64x4 opmask(zmm0, k1, zero: true), zmm1, ymm2, 0x04
        #   vinserti64x4 opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vinserti64x4 zmm0, zmm1, ymm2, 0x04
        #   vinserti64x4 zmm0, zmm1, [rcx], 0x04
        def vinserti64x4(*operands,**kwargs) = add_instruction(Instructions::VINSERTI64X4,*operands,**kwargs)
        # Insert Packed Single Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VINSERTPS]
        # @example
        #   vinsertps xmm0, xmm1, xmm2, 0x04
        #   vinsertps xmm0, xmm1, [rcx], 0x04
        def vinsertps(*operands,**kwargs) = add_instruction(Instructions::VINSERTPS,*operands,**kwargs)
        # Load Unaligned Integer 128 Bits
        # @return [Ronin::ASM::X86_64::Instructions::VLDDQU]
        # @example
        #   vlddqu xmm0, [rbx]
        #   vlddqu ymm0, [rbx]
        def vlddqu(*operands,**kwargs) = add_instruction(Instructions::VLDDQU,*operands,**kwargs)
        # Load MXCSR Register
        # @return [Ronin::ASM::X86_64::Instructions::VLDMXCSR]
        # @example
        #   vldmxcsr [rax]
        def vldmxcsr(*operands,**kwargs) = add_instruction(Instructions::VLDMXCSR,*operands,**kwargs)
        # Store Selected Bytes of Double Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VMASKMOVDQU]
        # @example
        #   vmaskmovdqu xmm0, xmm1
        def vmaskmovdqu(*operands,**kwargs) = add_instruction(Instructions::VMASKMOVDQU,*operands,**kwargs)
        # Conditional Move Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMASKMOVPD]
        # @example
        #   vmaskmovpd xmm0, xmm1, [rcx]
        #   vmaskmovpd ymm0, ymm1, [rcx]
        #   vmaskmovpd [rax], xmm1, xmm2
        #   vmaskmovpd [rax], ymm1, ymm2
        def vmaskmovpd(*operands,**kwargs) = add_instruction(Instructions::VMASKMOVPD,*operands,**kwargs)
        # Conditional Move Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMASKMOVPS]
        # @example
        #   vmaskmovps xmm0, xmm1, [rcx]
        #   vmaskmovps ymm0, ymm1, [rcx]
        #   vmaskmovps [rax], xmm1, xmm2
        #   vmaskmovps [rax], ymm1, ymm2
        def vmaskmovps(*operands,**kwargs) = add_instruction(Instructions::VMASKMOVPS,*operands,**kwargs)
        # Return Maximum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMAXPD]
        # @example
        #   vmaxpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vmaxpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vmaxpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmaxpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vmaxpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmaxpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vmaxpd xmm0, xmm1, xmm2
        #   vmaxpd xmm0, xmm1, [rcx]
        #   vmaxpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vmaxpd ymm0, ymm1, ymm2
        #   vmaxpd ymm0, ymm1, [rcx]
        #   vmaxpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vmaxpd zmm0, zmm1, zmm2
        #   vmaxpd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vmaxpd zmm0, zmm1, zmm2, sae
        def vmaxpd(*operands,**kwargs) = add_instruction(Instructions::VMAXPD,*operands,**kwargs)
        # Return Maximum Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMAXPH]
        # @example
        #   vmaxph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vmaxph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vmaxph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmaxph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vmaxph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmaxph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vmaxph xmm0, xmm1, xmm2
        #   vmaxph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vmaxph ymm0, ymm1, ymm2
        #   vmaxph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vmaxph zmm0, zmm1, zmm2
        #   vmaxph opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vmaxph zmm0, zmm1, zmm2, sae
        def vmaxph(*operands,**kwargs) = add_instruction(Instructions::VMAXPH,*operands,**kwargs)
        # Return Maximum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMAXPS]
        # @example
        #   vmaxps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vmaxps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vmaxps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmaxps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vmaxps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmaxps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vmaxps xmm0, xmm1, xmm2
        #   vmaxps xmm0, xmm1, [rcx]
        #   vmaxps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vmaxps ymm0, ymm1, ymm2
        #   vmaxps ymm0, ymm1, [rcx]
        #   vmaxps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vmaxps zmm0, zmm1, zmm2
        #   vmaxps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vmaxps zmm0, zmm1, zmm2, sae
        def vmaxps(*operands,**kwargs) = add_instruction(Instructions::VMAXPS,*operands,**kwargs)
        # Return Maximum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMAXSD]
        # @example
        #   vmaxsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vmaxsd xmm0, xmm1, xmm2
        #   vmaxsd xmm0, xmm1, [rcx]
        #   vmaxsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vmaxsd xmm0, xmm1, xmm2, sae
        def vmaxsd(*operands,**kwargs) = add_instruction(Instructions::VMAXSD,*operands,**kwargs)
        # Return Maximum Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMAXSH]
        # @example
        #   vmaxsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vmaxsh xmm0, xmm1, xmm2
        #   vmaxsh xmm0, xmm1, [rcx]
        #   vmaxsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vmaxsh xmm0, xmm1, xmm2, sae
        def vmaxsh(*operands,**kwargs) = add_instruction(Instructions::VMAXSH,*operands,**kwargs)
        # Return Maximum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMAXSS]
        # @example
        #   vmaxss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmaxss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vmaxss xmm0, xmm1, xmm2
        #   vmaxss xmm0, xmm1, [rcx]
        #   vmaxss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vmaxss xmm0, xmm1, xmm2, sae
        def vmaxss(*operands,**kwargs) = add_instruction(Instructions::VMAXSS,*operands,**kwargs)
        # Return Minimum Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMINPD]
        # @example
        #   vminpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vminpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vminpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vminpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vminpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vminpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vminpd xmm0, xmm1, xmm2
        #   vminpd xmm0, xmm1, [rcx]
        #   vminpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vminpd ymm0, ymm1, ymm2
        #   vminpd ymm0, ymm1, [rcx]
        #   vminpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vminpd zmm0, zmm1, zmm2
        #   vminpd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vminpd zmm0, zmm1, zmm2, sae
        def vminpd(*operands,**kwargs) = add_instruction(Instructions::VMINPD,*operands,**kwargs)
        # Return Minimum Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMINPH]
        # @example
        #   vminph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vminph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vminph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vminph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vminph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vminph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vminph xmm0, xmm1, xmm2
        #   vminph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vminph ymm0, ymm1, ymm2
        #   vminph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vminph zmm0, zmm1, zmm2
        #   vminph opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vminph zmm0, zmm1, zmm2, sae
        def vminph(*operands,**kwargs) = add_instruction(Instructions::VMINPH,*operands,**kwargs)
        # Return Minimum Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMINPS]
        # @example
        #   vminps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vminps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vminps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vminps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vminps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vminps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vminps xmm0, xmm1, xmm2
        #   vminps xmm0, xmm1, [rcx]
        #   vminps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vminps ymm0, ymm1, ymm2
        #   vminps ymm0, ymm1, [rcx]
        #   vminps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vminps zmm0, zmm1, zmm2
        #   vminps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae
        #   vminps zmm0, zmm1, zmm2, sae
        def vminps(*operands,**kwargs) = add_instruction(Instructions::VMINPS,*operands,**kwargs)
        # Return Minimum Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMINSD]
        # @example
        #   vminsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vminsd xmm0, xmm1, xmm2
        #   vminsd xmm0, xmm1, [rcx]
        #   vminsd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vminsd xmm0, xmm1, xmm2, sae
        def vminsd(*operands,**kwargs) = add_instruction(Instructions::VMINSD,*operands,**kwargs)
        # Return Minimum Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMINSH]
        # @example
        #   vminsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vminsh xmm0, xmm1, xmm2
        #   vminsh xmm0, xmm1, [rcx]
        #   vminsh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vminsh xmm0, xmm1, xmm2, sae
        def vminsh(*operands,**kwargs) = add_instruction(Instructions::VMINSH,*operands,**kwargs)
        # Return Minimum Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMINSS]
        # @example
        #   vminss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vminss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vminss xmm0, xmm1, xmm2
        #   vminss xmm0, xmm1, [rcx]
        #   vminss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vminss xmm0, xmm1, xmm2, sae
        def vminss(*operands,**kwargs) = add_instruction(Instructions::VMINSS,*operands,**kwargs)
        # Move Aligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVAPD]
        # @example
        #   vmovapd opmask([rax], k1), xmm1
        #   vmovapd opmask(xmm0, k1, zero: true), xmm1
        #   vmovapd opmask([rax], k1), ymm1
        #   vmovapd opmask(ymm0, k1, zero: true), ymm1
        #   vmovapd opmask([rax], k1), zmm1
        #   vmovapd opmask(zmm0, k1, zero: true), zmm1
        #   vmovapd opmask(xmm0, k1, zero: true), [rbx]
        #   vmovapd opmask(ymm0, k1, zero: true), [rbx]
        #   vmovapd opmask(zmm0, k1, zero: true), [rbx]
        #   vmovapd xmm0, xmm1
        #   vmovapd xmm0, [rbx]
        #   vmovapd ymm0, ymm1
        #   vmovapd ymm0, [rbx]
        #   vmovapd zmm0, zmm1
        #   vmovapd zmm0, [rbx]
        #   vmovapd [rax], xmm1
        #   vmovapd [rax], ymm1
        #   vmovapd [rax], zmm1
        def vmovapd(*operands,**kwargs) = add_instruction(Instructions::VMOVAPD,*operands,**kwargs)
        # Move Aligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVAPS]
        # @example
        #   vmovaps opmask([rax], k1), xmm1
        #   vmovaps opmask(xmm0, k1, zero: true), xmm1
        #   vmovaps opmask([rax], k1), ymm1
        #   vmovaps opmask(ymm0, k1, zero: true), ymm1
        #   vmovaps opmask([rax], k1), zmm1
        #   vmovaps opmask(zmm0, k1, zero: true), zmm1
        #   vmovaps opmask(xmm0, k1, zero: true), [rbx]
        #   vmovaps opmask(ymm0, k1, zero: true), [rbx]
        #   vmovaps opmask(zmm0, k1, zero: true), [rbx]
        #   vmovaps xmm0, xmm1
        #   vmovaps xmm0, [rbx]
        #   vmovaps ymm0, ymm1
        #   vmovaps ymm0, [rbx]
        #   vmovaps zmm0, zmm1
        #   vmovaps zmm0, [rbx]
        #   vmovaps [rax], xmm1
        #   vmovaps [rax], ymm1
        #   vmovaps [rax], zmm1
        def vmovaps(*operands,**kwargs) = add_instruction(Instructions::VMOVAPS,*operands,**kwargs)
        # Move Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VMOVD]
        # @example
        #   vmovd eax, xmm1
        #   vmovd xmm0, ebx
        #   vmovd xmm0, [rbx]
        #   vmovd [rax], xmm1
        def vmovd(*operands,**kwargs) = add_instruction(Instructions::VMOVD,*operands,**kwargs)
        # Move One Double-FP and Duplicate
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDDUP]
        # @example
        #   vmovddup opmask(xmm0, k1, zero: true), xmm1
        #   vmovddup opmask(ymm0, k1, zero: true), ymm1
        #   vmovddup opmask(zmm0, k1, zero: true), zmm1
        #   vmovddup opmask(xmm0, k1, zero: true), [rbx]
        #   vmovddup opmask(ymm0, k1, zero: true), [rbx]
        #   vmovddup opmask(zmm0, k1, zero: true), [rbx]
        #   vmovddup xmm0, xmm1
        #   vmovddup xmm0, [rbx]
        #   vmovddup ymm0, ymm1
        #   vmovddup ymm0, [rbx]
        #   vmovddup zmm0, zmm1
        #   vmovddup zmm0, [rbx]
        def vmovddup(*operands,**kwargs) = add_instruction(Instructions::VMOVDDUP,*operands,**kwargs)
        # Move Aligned Double Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQA]
        # @example
        #   vmovdqa xmm0, xmm1
        #   vmovdqa xmm0, [rbx]
        #   vmovdqa ymm0, ymm1
        #   vmovdqa ymm0, [rbx]
        #   vmovdqa [rax], xmm1
        #   vmovdqa [rax], ymm1
        def vmovdqa(*operands,**kwargs) = add_instruction(Instructions::VMOVDQA,*operands,**kwargs)
        # Move Aligned Doubleword Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQA32]
        # @example
        #   vmovdqa32 opmask([rax], k1), xmm1
        #   vmovdqa32 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqa32 opmask([rax], k1), ymm1
        #   vmovdqa32 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqa32 opmask([rax], k1), zmm1
        #   vmovdqa32 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqa32 opmask(xmm0, k1, zero: true), [rbx]
        #   vmovdqa32 opmask(ymm0, k1, zero: true), [rbx]
        #   vmovdqa32 opmask(zmm0, k1, zero: true), [rbx]
        #   vmovdqa32 xmm0, xmm1
        #   vmovdqa32 xmm0, [rbx]
        #   vmovdqa32 ymm0, ymm1
        #   vmovdqa32 ymm0, [rbx]
        #   vmovdqa32 zmm0, zmm1
        #   vmovdqa32 zmm0, [rbx]
        #   vmovdqa32 [rax], xmm1
        #   vmovdqa32 [rax], ymm1
        #   vmovdqa32 [rax], zmm1
        def vmovdqa32(*operands,**kwargs) = add_instruction(Instructions::VMOVDQA32,*operands,**kwargs)
        # Move Aligned Quadword Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQA64]
        # @example
        #   vmovdqa64 opmask([rax], k1), xmm1
        #   vmovdqa64 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqa64 opmask([rax], k1), ymm1
        #   vmovdqa64 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqa64 opmask([rax], k1), zmm1
        #   vmovdqa64 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqa64 opmask(xmm0, k1, zero: true), [rbx]
        #   vmovdqa64 opmask(ymm0, k1, zero: true), [rbx]
        #   vmovdqa64 opmask(zmm0, k1, zero: true), [rbx]
        #   vmovdqa64 xmm0, xmm1
        #   vmovdqa64 xmm0, [rbx]
        #   vmovdqa64 ymm0, ymm1
        #   vmovdqa64 ymm0, [rbx]
        #   vmovdqa64 zmm0, zmm1
        #   vmovdqa64 zmm0, [rbx]
        #   vmovdqa64 [rax], xmm1
        #   vmovdqa64 [rax], ymm1
        #   vmovdqa64 [rax], zmm1
        def vmovdqa64(*operands,**kwargs) = add_instruction(Instructions::VMOVDQA64,*operands,**kwargs)
        # Move Unaligned Double Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQU]
        # @example
        #   vmovdqu xmm0, xmm1
        #   vmovdqu xmm0, [rbx]
        #   vmovdqu ymm0, ymm1
        #   vmovdqu ymm0, [rbx]
        #   vmovdqu [rax], xmm1
        #   vmovdqu [rax], ymm1
        def vmovdqu(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU,*operands,**kwargs)
        # Move Unaligned Word Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQU16]
        # @example
        #   vmovdqu16 opmask([rax], k1), xmm1
        #   vmovdqu16 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu16 opmask([rax], k1), ymm1
        #   vmovdqu16 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu16 opmask([rax], k1), zmm1
        #   vmovdqu16 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu16 opmask(xmm0, k1, zero: true), [rbx]
        #   vmovdqu16 opmask(ymm0, k1, zero: true), [rbx]
        #   vmovdqu16 opmask(zmm0, k1, zero: true), [rbx]
        #   vmovdqu16 xmm0, xmm1
        #   vmovdqu16 xmm0, [rbx]
        #   vmovdqu16 ymm0, ymm1
        #   vmovdqu16 ymm0, [rbx]
        #   vmovdqu16 zmm0, zmm1
        #   vmovdqu16 zmm0, [rbx]
        #   vmovdqu16 [rax], xmm1
        #   vmovdqu16 [rax], ymm1
        #   vmovdqu16 [rax], zmm1
        def vmovdqu16(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU16,*operands,**kwargs)
        # Move Unaligned Doubleword Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQU32]
        # @example
        #   vmovdqu32 opmask([rax], k1), xmm1
        #   vmovdqu32 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu32 opmask([rax], k1), ymm1
        #   vmovdqu32 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu32 opmask([rax], k1), zmm1
        #   vmovdqu32 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu32 opmask(xmm0, k1, zero: true), [rbx]
        #   vmovdqu32 opmask(ymm0, k1, zero: true), [rbx]
        #   vmovdqu32 opmask(zmm0, k1, zero: true), [rbx]
        #   vmovdqu32 xmm0, xmm1
        #   vmovdqu32 xmm0, [rbx]
        #   vmovdqu32 ymm0, ymm1
        #   vmovdqu32 ymm0, [rbx]
        #   vmovdqu32 zmm0, zmm1
        #   vmovdqu32 zmm0, [rbx]
        #   vmovdqu32 [rax], xmm1
        #   vmovdqu32 [rax], ymm1
        #   vmovdqu32 [rax], zmm1
        def vmovdqu32(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU32,*operands,**kwargs)
        # Move Unaligned Quadword Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQU64]
        # @example
        #   vmovdqu64 opmask([rax], k1), xmm1
        #   vmovdqu64 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu64 opmask([rax], k1), ymm1
        #   vmovdqu64 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu64 opmask([rax], k1), zmm1
        #   vmovdqu64 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu64 opmask(xmm0, k1, zero: true), [rbx]
        #   vmovdqu64 opmask(ymm0, k1, zero: true), [rbx]
        #   vmovdqu64 opmask(zmm0, k1, zero: true), [rbx]
        #   vmovdqu64 xmm0, xmm1
        #   vmovdqu64 xmm0, [rbx]
        #   vmovdqu64 ymm0, ymm1
        #   vmovdqu64 ymm0, [rbx]
        #   vmovdqu64 zmm0, zmm1
        #   vmovdqu64 zmm0, [rbx]
        #   vmovdqu64 [rax], xmm1
        #   vmovdqu64 [rax], ymm1
        #   vmovdqu64 [rax], zmm1
        def vmovdqu64(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU64,*operands,**kwargs)
        # Move Unaligned Byte Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVDQU8]
        # @example
        #   vmovdqu8 opmask([rax], k1), xmm1
        #   vmovdqu8 opmask(xmm0, k1, zero: true), xmm1
        #   vmovdqu8 opmask([rax], k1), ymm1
        #   vmovdqu8 opmask(ymm0, k1, zero: true), ymm1
        #   vmovdqu8 opmask([rax], k1), zmm1
        #   vmovdqu8 opmask(zmm0, k1, zero: true), zmm1
        #   vmovdqu8 opmask(xmm0, k1, zero: true), [rbx]
        #   vmovdqu8 opmask(ymm0, k1, zero: true), [rbx]
        #   vmovdqu8 opmask(zmm0, k1, zero: true), [rbx]
        #   vmovdqu8 xmm0, xmm1
        #   vmovdqu8 xmm0, [rbx]
        #   vmovdqu8 ymm0, ymm1
        #   vmovdqu8 ymm0, [rbx]
        #   vmovdqu8 zmm0, zmm1
        #   vmovdqu8 zmm0, [rbx]
        #   vmovdqu8 [rax], xmm1
        #   vmovdqu8 [rax], ymm1
        #   vmovdqu8 [rax], zmm1
        def vmovdqu8(*operands,**kwargs) = add_instruction(Instructions::VMOVDQU8,*operands,**kwargs)
        # Move Packed Single-Precision Floating-Point Values High to Low
        # @return [Ronin::ASM::X86_64::Instructions::VMOVHLPS]
        # @example
        #   vmovhlps xmm0, xmm1, xmm2
        def vmovhlps(*operands,**kwargs) = add_instruction(Instructions::VMOVHLPS,*operands,**kwargs)
        # Move High Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMOVHPD]
        # @example
        #   vmovhpd [rax], xmm1
        #   vmovhpd xmm0, xmm1, [rcx]
        def vmovhpd(*operands,**kwargs) = add_instruction(Instructions::VMOVHPD,*operands,**kwargs)
        # Move High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVHPS]
        # @example
        #   vmovhps [rax], xmm1
        #   vmovhps xmm0, xmm1, [rcx]
        def vmovhps(*operands,**kwargs) = add_instruction(Instructions::VMOVHPS,*operands,**kwargs)
        # Move Packed Single-Precision Floating-Point Values Low to High
        # @return [Ronin::ASM::X86_64::Instructions::VMOVLHPS]
        # @example
        #   vmovlhps xmm0, xmm1, xmm2
        def vmovlhps(*operands,**kwargs) = add_instruction(Instructions::VMOVLHPS,*operands,**kwargs)
        # Move Low Packed Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMOVLPD]
        # @example
        #   vmovlpd [rax], xmm1
        #   vmovlpd xmm0, xmm1, [rcx]
        def vmovlpd(*operands,**kwargs) = add_instruction(Instructions::VMOVLPD,*operands,**kwargs)
        # Move Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVLPS]
        # @example
        #   vmovlps [rax], xmm1
        #   vmovlps xmm0, xmm1, [rcx]
        def vmovlps(*operands,**kwargs) = add_instruction(Instructions::VMOVLPS,*operands,**kwargs)
        # Extract Packed Double-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86_64::Instructions::VMOVMSKPD]
        # @example
        #   vmovmskpd eax, xmm1
        #   vmovmskpd eax, ymm1
        def vmovmskpd(*operands,**kwargs) = add_instruction(Instructions::VMOVMSKPD,*operands,**kwargs)
        # Extract Packed Single-Precision Floating-Point Sign Mask
        # @return [Ronin::ASM::X86_64::Instructions::VMOVMSKPS]
        # @example
        #   vmovmskps eax, xmm1
        #   vmovmskps eax, ymm1
        def vmovmskps(*operands,**kwargs) = add_instruction(Instructions::VMOVMSKPS,*operands,**kwargs)
        # Store Double Quadword Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::VMOVNTDQ]
        # @example
        #   vmovntdq [rax], xmm1
        #   vmovntdq [rax], ymm1
        #   vmovntdq [rax], zmm1
        def vmovntdq(*operands,**kwargs) = add_instruction(Instructions::VMOVNTDQ,*operands,**kwargs)
        # Load Double Quadword Non-Temporal Aligned Hint
        # @return [Ronin::ASM::X86_64::Instructions::VMOVNTDQA]
        # @example
        #   vmovntdqa xmm0, [rbx]
        #   vmovntdqa ymm0, [rbx]
        #   vmovntdqa zmm0, [rbx]
        def vmovntdqa(*operands,**kwargs) = add_instruction(Instructions::VMOVNTDQA,*operands,**kwargs)
        # Store Packed Double-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::VMOVNTPD]
        # @example
        #   vmovntpd [rax], xmm1
        #   vmovntpd [rax], ymm1
        #   vmovntpd [rax], zmm1
        def vmovntpd(*operands,**kwargs) = add_instruction(Instructions::VMOVNTPD,*operands,**kwargs)
        # Store Packed Single-Precision Floating-Point Values Using Non-Temporal Hint
        # @return [Ronin::ASM::X86_64::Instructions::VMOVNTPS]
        # @example
        #   vmovntps [rax], xmm1
        #   vmovntps [rax], ymm1
        #   vmovntps [rax], zmm1
        def vmovntps(*operands,**kwargs) = add_instruction(Instructions::VMOVNTPS,*operands,**kwargs)
        # Move Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VMOVQ]
        # @example
        #   vmovq rax, xmm1
        #   vmovq xmm0, rbx
        #   vmovq xmm0, xmm1
        #   vmovq xmm0, [rbx]
        #   vmovq [rax], xmm1
        def vmovq(*operands,**kwargs) = add_instruction(Instructions::VMOVQ,*operands,**kwargs)
        # Move Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VMOVSD]
        # @example
        #   vmovsd opmask([rax], k1), xmm1
        #   vmovsd opmask(xmm0, k1, zero: true), [rbx]
        #   vmovsd xmm0, [rbx]
        #   vmovsd [rax], xmm1
        #   vmovsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmovsd xmm0, xmm1, xmm2
        def vmovsd(*operands,**kwargs) = add_instruction(Instructions::VMOVSD,*operands,**kwargs)
        # Move Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVSH]
        # @example
        #   vmovsh opmask([rax], k1), xmm1
        #   vmovsh opmask(xmm0, k1, zero: true), [rbx]
        #   vmovsh xmm0, [rbx]
        #   vmovsh [rax], xmm1
        #   vmovsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmovsh xmm0, xmm1, xmm2
        def vmovsh(*operands,**kwargs) = add_instruction(Instructions::VMOVSH,*operands,**kwargs)
        # Move Packed Single-FP High and Duplicate
        # @return [Ronin::ASM::X86_64::Instructions::VMOVSHDUP]
        # @example
        #   vmovshdup opmask(xmm0, k1, zero: true), xmm1
        #   vmovshdup opmask(ymm0, k1, zero: true), ymm1
        #   vmovshdup opmask(zmm0, k1, zero: true), zmm1
        #   vmovshdup opmask(xmm0, k1, zero: true), [rbx]
        #   vmovshdup opmask(ymm0, k1, zero: true), [rbx]
        #   vmovshdup opmask(zmm0, k1, zero: true), [rbx]
        #   vmovshdup xmm0, xmm1
        #   vmovshdup xmm0, [rbx]
        #   vmovshdup ymm0, ymm1
        #   vmovshdup ymm0, [rbx]
        #   vmovshdup zmm0, zmm1
        #   vmovshdup zmm0, [rbx]
        def vmovshdup(*operands,**kwargs) = add_instruction(Instructions::VMOVSHDUP,*operands,**kwargs)
        # Move Packed Single-FP Low and Duplicate
        # @return [Ronin::ASM::X86_64::Instructions::VMOVSLDUP]
        # @example
        #   vmovsldup opmask(xmm0, k1, zero: true), xmm1
        #   vmovsldup opmask(ymm0, k1, zero: true), ymm1
        #   vmovsldup opmask(zmm0, k1, zero: true), zmm1
        #   vmovsldup opmask(xmm0, k1, zero: true), [rbx]
        #   vmovsldup opmask(ymm0, k1, zero: true), [rbx]
        #   vmovsldup opmask(zmm0, k1, zero: true), [rbx]
        #   vmovsldup xmm0, xmm1
        #   vmovsldup xmm0, [rbx]
        #   vmovsldup ymm0, ymm1
        #   vmovsldup ymm0, [rbx]
        #   vmovsldup zmm0, zmm1
        #   vmovsldup zmm0, [rbx]
        def vmovsldup(*operands,**kwargs) = add_instruction(Instructions::VMOVSLDUP,*operands,**kwargs)
        # Move Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVSS]
        # @example
        #   vmovss opmask([rax], k1), xmm1
        #   vmovss opmask(xmm0, k1, zero: true), [rbx]
        #   vmovss xmm0, [rbx]
        #   vmovss [rax], xmm1
        #   vmovss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmovss xmm0, xmm1, xmm2
        def vmovss(*operands,**kwargs) = add_instruction(Instructions::VMOVSS,*operands,**kwargs)
        # Move Unaligned Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVUPD]
        # @example
        #   vmovupd opmask([rax], k1), xmm1
        #   vmovupd opmask(xmm0, k1, zero: true), xmm1
        #   vmovupd opmask([rax], k1), ymm1
        #   vmovupd opmask(ymm0, k1, zero: true), ymm1
        #   vmovupd opmask([rax], k1), zmm1
        #   vmovupd opmask(zmm0, k1, zero: true), zmm1
        #   vmovupd opmask(xmm0, k1, zero: true), [rbx]
        #   vmovupd opmask(ymm0, k1, zero: true), [rbx]
        #   vmovupd opmask(zmm0, k1, zero: true), [rbx]
        #   vmovupd xmm0, xmm1
        #   vmovupd xmm0, [rbx]
        #   vmovupd ymm0, ymm1
        #   vmovupd ymm0, [rbx]
        #   vmovupd zmm0, zmm1
        #   vmovupd zmm0, [rbx]
        #   vmovupd [rax], xmm1
        #   vmovupd [rax], ymm1
        #   vmovupd [rax], zmm1
        def vmovupd(*operands,**kwargs) = add_instruction(Instructions::VMOVUPD,*operands,**kwargs)
        # Move Unaligned Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMOVUPS]
        # @example
        #   vmovups opmask([rax], k1), xmm1
        #   vmovups opmask(xmm0, k1, zero: true), xmm1
        #   vmovups opmask([rax], k1), ymm1
        #   vmovups opmask(ymm0, k1, zero: true), ymm1
        #   vmovups opmask([rax], k1), zmm1
        #   vmovups opmask(zmm0, k1, zero: true), zmm1
        #   vmovups opmask(xmm0, k1, zero: true), [rbx]
        #   vmovups opmask(ymm0, k1, zero: true), [rbx]
        #   vmovups opmask(zmm0, k1, zero: true), [rbx]
        #   vmovups xmm0, xmm1
        #   vmovups xmm0, [rbx]
        #   vmovups ymm0, ymm1
        #   vmovups ymm0, [rbx]
        #   vmovups zmm0, zmm1
        #   vmovups zmm0, [rbx]
        #   vmovups [rax], xmm1
        #   vmovups [rax], ymm1
        #   vmovups [rax], zmm1
        def vmovups(*operands,**kwargs) = add_instruction(Instructions::VMOVUPS,*operands,**kwargs)
        # Move Word
        # @return [Ronin::ASM::X86_64::Instructions::VMOVW]
        # @example
        #   vmovw eax, xmm1
        #   vmovw xmm0, ebx
        #   vmovw xmm0, [rbx]
        #   vmovw [rax], xmm1
        def vmovw(*operands,**kwargs) = add_instruction(Instructions::VMOVW,*operands,**kwargs)
        # Compute Multiple Packed Sums of Absolute Difference
        # @return [Ronin::ASM::X86_64::Instructions::VMPSADBW]
        # @example
        #   vmpsadbw xmm0, xmm1, xmm2, 0x04
        #   vmpsadbw xmm0, xmm1, [rcx], 0x04
        #   vmpsadbw ymm0, ymm1, ymm2, 0x04
        #   vmpsadbw ymm0, ymm1, [rcx], 0x04
        def vmpsadbw(*operands,**kwargs) = add_instruction(Instructions::VMPSADBW,*operands,**kwargs)
        # Multiply Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMULPD]
        # @example
        #   vmulpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vmulpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vmulpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmulpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vmulpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmulpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vmulpd xmm0, xmm1, xmm2
        #   vmulpd xmm0, xmm1, [rcx]
        #   vmulpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vmulpd ymm0, ymm1, ymm2
        #   vmulpd ymm0, ymm1, [rcx]
        #   vmulpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vmulpd zmm0, zmm1, zmm2
        #   vmulpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vmulpd zmm0, zmm1, zmm2, er
        def vmulpd(*operands,**kwargs) = add_instruction(Instructions::VMULPD,*operands,**kwargs)
        # Multiply Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMULPH]
        # @example
        #   vmulph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vmulph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vmulph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmulph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vmulph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmulph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vmulph xmm0, xmm1, xmm2
        #   vmulph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vmulph ymm0, ymm1, ymm2
        #   vmulph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vmulph zmm0, zmm1, zmm2
        #   vmulph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vmulph zmm0, zmm1, zmm2, er
        def vmulph(*operands,**kwargs) = add_instruction(Instructions::VMULPH,*operands,**kwargs)
        # Multiply Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMULPS]
        # @example
        #   vmulps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vmulps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vmulps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vmulps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vmulps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vmulps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vmulps xmm0, xmm1, xmm2
        #   vmulps xmm0, xmm1, [rcx]
        #   vmulps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vmulps ymm0, ymm1, ymm2
        #   vmulps ymm0, ymm1, [rcx]
        #   vmulps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vmulps zmm0, zmm1, zmm2
        #   vmulps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vmulps zmm0, zmm1, zmm2, er
        def vmulps(*operands,**kwargs) = add_instruction(Instructions::VMULPS,*operands,**kwargs)
        # Multiply Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMULSD]
        # @example
        #   vmulsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vmulsd xmm0, xmm1, xmm2
        #   vmulsd xmm0, xmm1, [rcx]
        #   vmulsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vmulsd xmm0, xmm1, xmm2, er
        def vmulsd(*operands,**kwargs) = add_instruction(Instructions::VMULSD,*operands,**kwargs)
        # Fused Multiply Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMULSH]
        # @example
        #   vmulsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vmulsh xmm0, xmm1, xmm2
        #   vmulsh xmm0, xmm1, [rcx]
        #   vmulsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vmulsh xmm0, xmm1, xmm2, er
        def vmulsh(*operands,**kwargs) = add_instruction(Instructions::VMULSH,*operands,**kwargs)
        # Multiply Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VMULSS]
        # @example
        #   vmulss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vmulss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vmulss xmm0, xmm1, xmm2
        #   vmulss xmm0, xmm1, [rcx]
        #   vmulss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vmulss xmm0, xmm1, xmm2, er
        def vmulss(*operands,**kwargs) = add_instruction(Instructions::VMULSS,*operands,**kwargs)
        # Bitwise Logical OR of Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VORPD]
        # @example
        #   vorpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vorpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vorpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vorpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vorpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vorpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vorpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vorpd xmm0, xmm1, xmm2
        #   vorpd xmm0, xmm1, [rcx]
        #   vorpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vorpd ymm0, ymm1, ymm2
        #   vorpd ymm0, ymm1, [rcx]
        #   vorpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vorpd zmm0, zmm1, zmm2
        def vorpd(*operands,**kwargs) = add_instruction(Instructions::VORPD,*operands,**kwargs)
        # Bitwise Logical OR of Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VORPS]
        # @example
        #   vorps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vorps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vorps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vorps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vorps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vorps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vorps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vorps xmm0, xmm1, xmm2
        #   vorps xmm0, xmm1, [rcx]
        #   vorps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vorps ymm0, ymm1, ymm2
        #   vorps ymm0, ymm1, [rcx]
        #   vorps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vorps zmm0, zmm1, zmm2
        def vorps(*operands,**kwargs) = add_instruction(Instructions::VORPS,*operands,**kwargs)
        # Packed Absolute Value of Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPABSB]
        # @example
        #   vpabsb opmask(xmm0, k1, zero: true), xmm1
        #   vpabsb opmask(ymm0, k1, zero: true), ymm1
        #   vpabsb opmask(zmm0, k1, zero: true), zmm1
        #   vpabsb opmask(xmm0, k1, zero: true), [rbx]
        #   vpabsb opmask(ymm0, k1, zero: true), [rbx]
        #   vpabsb opmask(zmm0, k1, zero: true), [rbx]
        #   vpabsb xmm0, xmm1
        #   vpabsb xmm0, [rbx]
        #   vpabsb ymm0, ymm1
        #   vpabsb ymm0, [rbx]
        #   vpabsb zmm0, zmm1
        #   vpabsb zmm0, [rbx]
        def vpabsb(*operands,**kwargs) = add_instruction(Instructions::VPABSB,*operands,**kwargs)
        # Packed Absolute Value of Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPABSD]
        # @example
        #   vpabsd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vpabsd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vpabsd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vpabsd opmask(xmm0, k1, zero: true), xmm1
        #   vpabsd opmask(ymm0, k1, zero: true), ymm1
        #   vpabsd opmask(zmm0, k1, zero: true), zmm1
        #   vpabsd xmm0, bcst([rbx], {1=>4})
        #   vpabsd xmm0, xmm1
        #   vpabsd xmm0, [rbx]
        #   vpabsd ymm0, bcst([rbx], {1=>8})
        #   vpabsd ymm0, ymm1
        #   vpabsd ymm0, [rbx]
        #   vpabsd zmm0, bcst([rbx], {1=>16})
        #   vpabsd zmm0, zmm1
        def vpabsd(*operands,**kwargs) = add_instruction(Instructions::VPABSD,*operands,**kwargs)
        # Packed Absolute Value of Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPABSQ]
        # @example
        #   vpabsq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vpabsq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vpabsq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vpabsq opmask(xmm0, k1, zero: true), xmm1
        #   vpabsq opmask(ymm0, k1, zero: true), ymm1
        #   vpabsq opmask(zmm0, k1, zero: true), zmm1
        #   vpabsq xmm0, bcst([rbx], {1=>2})
        #   vpabsq xmm0, xmm1
        #   vpabsq ymm0, bcst([rbx], {1=>4})
        #   vpabsq ymm0, ymm1
        #   vpabsq zmm0, bcst([rbx], {1=>8})
        #   vpabsq zmm0, zmm1
        def vpabsq(*operands,**kwargs) = add_instruction(Instructions::VPABSQ,*operands,**kwargs)
        # Packed Absolute Value of Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPABSW]
        # @example
        #   vpabsw opmask(xmm0, k1, zero: true), xmm1
        #   vpabsw opmask(ymm0, k1, zero: true), ymm1
        #   vpabsw opmask(zmm0, k1, zero: true), zmm1
        #   vpabsw opmask(xmm0, k1, zero: true), [rbx]
        #   vpabsw opmask(ymm0, k1, zero: true), [rbx]
        #   vpabsw opmask(zmm0, k1, zero: true), [rbx]
        #   vpabsw xmm0, xmm1
        #   vpabsw xmm0, [rbx]
        #   vpabsw ymm0, ymm1
        #   vpabsw ymm0, [rbx]
        #   vpabsw zmm0, zmm1
        #   vpabsw zmm0, [rbx]
        def vpabsw(*operands,**kwargs) = add_instruction(Instructions::VPABSW,*operands,**kwargs)
        # Pack Doublewords into Words with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPACKSSDW]
        # @example
        #   vpackssdw opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpackssdw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpackssdw opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpackssdw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpackssdw opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpackssdw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpackssdw xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpackssdw xmm0, xmm1, xmm2
        #   vpackssdw xmm0, xmm1, [rcx]
        #   vpackssdw ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpackssdw ymm0, ymm1, ymm2
        #   vpackssdw ymm0, ymm1, [rcx]
        #   vpackssdw zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpackssdw zmm0, zmm1, zmm2
        def vpackssdw(*operands,**kwargs) = add_instruction(Instructions::VPACKSSDW,*operands,**kwargs)
        # Pack Words into Bytes with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPACKSSWB]
        # @example
        #   vpacksswb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpacksswb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpacksswb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpacksswb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpacksswb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpacksswb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpacksswb xmm0, xmm1, xmm2
        #   vpacksswb xmm0, xmm1, [rcx]
        #   vpacksswb ymm0, ymm1, ymm2
        #   vpacksswb ymm0, ymm1, [rcx]
        #   vpacksswb zmm0, zmm1, zmm2
        #   vpacksswb zmm0, zmm1, [rcx]
        def vpacksswb(*operands,**kwargs) = add_instruction(Instructions::VPACKSSWB,*operands,**kwargs)
        # Pack Doublewords into Words with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPACKUSDW]
        # @example
        #   vpackusdw opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpackusdw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpackusdw opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpackusdw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpackusdw opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpackusdw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpackusdw xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpackusdw xmm0, xmm1, xmm2
        #   vpackusdw xmm0, xmm1, [rcx]
        #   vpackusdw ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpackusdw ymm0, ymm1, ymm2
        #   vpackusdw ymm0, ymm1, [rcx]
        #   vpackusdw zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpackusdw zmm0, zmm1, zmm2
        def vpackusdw(*operands,**kwargs) = add_instruction(Instructions::VPACKUSDW,*operands,**kwargs)
        # Pack Words into Bytes with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPACKUSWB]
        # @example
        #   vpackuswb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpackuswb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpackuswb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpackuswb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpackuswb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpackuswb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpackuswb xmm0, xmm1, xmm2
        #   vpackuswb xmm0, xmm1, [rcx]
        #   vpackuswb ymm0, ymm1, ymm2
        #   vpackuswb ymm0, ymm1, [rcx]
        #   vpackuswb zmm0, zmm1, zmm2
        #   vpackuswb zmm0, zmm1, [rcx]
        def vpackuswb(*operands,**kwargs) = add_instruction(Instructions::VPACKUSWB,*operands,**kwargs)
        # Add Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPADDB]
        # @example
        #   vpaddb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpaddb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpaddb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpaddb xmm0, xmm1, xmm2
        #   vpaddb xmm0, xmm1, [rcx]
        #   vpaddb ymm0, ymm1, ymm2
        #   vpaddb ymm0, ymm1, [rcx]
        #   vpaddb zmm0, zmm1, zmm2
        #   vpaddb zmm0, zmm1, [rcx]
        def vpaddb(*operands,**kwargs) = add_instruction(Instructions::VPADDB,*operands,**kwargs)
        # Add Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPADDD]
        # @example
        #   vpaddd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpaddd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpaddd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpaddd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpaddd xmm0, xmm1, xmm2
        #   vpaddd xmm0, xmm1, [rcx]
        #   vpaddd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpaddd ymm0, ymm1, ymm2
        #   vpaddd ymm0, ymm1, [rcx]
        #   vpaddd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpaddd zmm0, zmm1, zmm2
        def vpaddd(*operands,**kwargs) = add_instruction(Instructions::VPADDD,*operands,**kwargs)
        # Add Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPADDQ]
        # @example
        #   vpaddq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpaddq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpaddq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpaddq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpaddq xmm0, xmm1, xmm2
        #   vpaddq xmm0, xmm1, [rcx]
        #   vpaddq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpaddq ymm0, ymm1, ymm2
        #   vpaddq ymm0, ymm1, [rcx]
        #   vpaddq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpaddq zmm0, zmm1, zmm2
        def vpaddq(*operands,**kwargs) = add_instruction(Instructions::VPADDQ,*operands,**kwargs)
        # Add Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPADDSB]
        # @example
        #   vpaddsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddsb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpaddsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddsb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpaddsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddsb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpaddsb xmm0, xmm1, xmm2
        #   vpaddsb xmm0, xmm1, [rcx]
        #   vpaddsb ymm0, ymm1, ymm2
        #   vpaddsb ymm0, ymm1, [rcx]
        #   vpaddsb zmm0, zmm1, zmm2
        #   vpaddsb zmm0, zmm1, [rcx]
        def vpaddsb(*operands,**kwargs) = add_instruction(Instructions::VPADDSB,*operands,**kwargs)
        # Add Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPADDSW]
        # @example
        #   vpaddsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddsw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpaddsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddsw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpaddsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddsw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpaddsw xmm0, xmm1, xmm2
        #   vpaddsw xmm0, xmm1, [rcx]
        #   vpaddsw ymm0, ymm1, ymm2
        #   vpaddsw ymm0, ymm1, [rcx]
        #   vpaddsw zmm0, zmm1, zmm2
        #   vpaddsw zmm0, zmm1, [rcx]
        def vpaddsw(*operands,**kwargs) = add_instruction(Instructions::VPADDSW,*operands,**kwargs)
        # Add Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPADDUSB]
        # @example
        #   vpaddusb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddusb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpaddusb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddusb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpaddusb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddusb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpaddusb xmm0, xmm1, xmm2
        #   vpaddusb xmm0, xmm1, [rcx]
        #   vpaddusb ymm0, ymm1, ymm2
        #   vpaddusb ymm0, ymm1, [rcx]
        #   vpaddusb zmm0, zmm1, zmm2
        #   vpaddusb zmm0, zmm1, [rcx]
        def vpaddusb(*operands,**kwargs) = add_instruction(Instructions::VPADDUSB,*operands,**kwargs)
        # Add Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPADDUSW]
        # @example
        #   vpaddusw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddusw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpaddusw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddusw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpaddusw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddusw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpaddusw xmm0, xmm1, xmm2
        #   vpaddusw xmm0, xmm1, [rcx]
        #   vpaddusw ymm0, ymm1, ymm2
        #   vpaddusw ymm0, ymm1, [rcx]
        #   vpaddusw zmm0, zmm1, zmm2
        #   vpaddusw zmm0, zmm1, [rcx]
        def vpaddusw(*operands,**kwargs) = add_instruction(Instructions::VPADDUSW,*operands,**kwargs)
        # Add Packed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPADDW]
        # @example
        #   vpaddw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpaddw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpaddw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpaddw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpaddw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpaddw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpaddw xmm0, xmm1, xmm2
        #   vpaddw xmm0, xmm1, [rcx]
        #   vpaddw ymm0, ymm1, ymm2
        #   vpaddw ymm0, ymm1, [rcx]
        #   vpaddw zmm0, zmm1, zmm2
        #   vpaddw zmm0, zmm1, [rcx]
        def vpaddw(*operands,**kwargs) = add_instruction(Instructions::VPADDW,*operands,**kwargs)
        # Packed Align Right
        # @return [Ronin::ASM::X86_64::Instructions::VPALIGNR]
        # @example
        #   vpalignr opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpalignr opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vpalignr opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpalignr opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vpalignr opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpalignr opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vpalignr xmm0, xmm1, xmm2, 0x04
        #   vpalignr xmm0, xmm1, [rcx], 0x04
        #   vpalignr ymm0, ymm1, ymm2, 0x04
        #   vpalignr ymm0, ymm1, [rcx], 0x04
        #   vpalignr zmm0, zmm1, zmm2, 0x04
        #   vpalignr zmm0, zmm1, [rcx], 0x04
        def vpalignr(*operands,**kwargs) = add_instruction(Instructions::VPALIGNR,*operands,**kwargs)
        # Packed Bitwise Logical AND
        # @return [Ronin::ASM::X86_64::Instructions::VPAND]
        # @example
        #   vpand xmm0, xmm1, xmm2
        #   vpand xmm0, xmm1, [rcx]
        #   vpand ymm0, ymm1, ymm2
        #   vpand ymm0, ymm1, [rcx]
        def vpand(*operands,**kwargs) = add_instruction(Instructions::VPAND,*operands,**kwargs)
        # Bitwise Logical AND of Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPANDD]
        # @example
        #   vpandd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpandd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpandd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpandd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpandd xmm0, xmm1, xmm2
        #   vpandd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpandd ymm0, ymm1, ymm2
        #   vpandd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpandd zmm0, zmm1, zmm2
        def vpandd(*operands,**kwargs) = add_instruction(Instructions::VPANDD,*operands,**kwargs)
        # Packed Bitwise Logical AND NOT
        # @return [Ronin::ASM::X86_64::Instructions::VPANDN]
        # @example
        #   vpandn xmm0, xmm1, xmm2
        #   vpandn xmm0, xmm1, [rcx]
        #   vpandn ymm0, ymm1, ymm2
        #   vpandn ymm0, ymm1, [rcx]
        def vpandn(*operands,**kwargs) = add_instruction(Instructions::VPANDN,*operands,**kwargs)
        # Bitwise Logical AND NOT of Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPANDND]
        # @example
        #   vpandnd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpandnd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandnd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpandnd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandnd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpandnd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandnd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpandnd xmm0, xmm1, xmm2
        #   vpandnd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpandnd ymm0, ymm1, ymm2
        #   vpandnd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpandnd zmm0, zmm1, zmm2
        def vpandnd(*operands,**kwargs) = add_instruction(Instructions::VPANDND,*operands,**kwargs)
        # Bitwise Logical AND NOT of Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPANDNQ]
        # @example
        #   vpandnq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpandnq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandnq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpandnq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandnq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpandnq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandnq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpandnq xmm0, xmm1, xmm2
        #   vpandnq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpandnq ymm0, ymm1, ymm2
        #   vpandnq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpandnq zmm0, zmm1, zmm2
        def vpandnq(*operands,**kwargs) = add_instruction(Instructions::VPANDNQ,*operands,**kwargs)
        # Bitwise Logical AND of Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPANDQ]
        # @example
        #   vpandq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpandq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpandq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpandq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpandq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpandq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpandq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpandq xmm0, xmm1, xmm2
        #   vpandq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpandq ymm0, ymm1, ymm2
        #   vpandq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpandq zmm0, zmm1, zmm2
        def vpandq(*operands,**kwargs) = add_instruction(Instructions::VPANDQ,*operands,**kwargs)
        # Average Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPAVGB]
        # @example
        #   vpavgb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpavgb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpavgb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpavgb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpavgb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpavgb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpavgb xmm0, xmm1, xmm2
        #   vpavgb xmm0, xmm1, [rcx]
        #   vpavgb ymm0, ymm1, ymm2
        #   vpavgb ymm0, ymm1, [rcx]
        #   vpavgb zmm0, zmm1, zmm2
        #   vpavgb zmm0, zmm1, [rcx]
        def vpavgb(*operands,**kwargs) = add_instruction(Instructions::VPAVGB,*operands,**kwargs)
        # Average Packed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPAVGW]
        # @example
        #   vpavgw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpavgw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpavgw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpavgw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpavgw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpavgw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpavgw xmm0, xmm1, xmm2
        #   vpavgw xmm0, xmm1, [rcx]
        #   vpavgw ymm0, ymm1, ymm2
        #   vpavgw ymm0, ymm1, [rcx]
        #   vpavgw zmm0, zmm1, zmm2
        #   vpavgw zmm0, zmm1, [rcx]
        def vpavgw(*operands,**kwargs) = add_instruction(Instructions::VPAVGW,*operands,**kwargs)
        # Blend Packed Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::VPBLENDD]
        # @example
        #   vpblendd xmm0, xmm1, xmm2, 0x04
        #   vpblendd xmm0, xmm1, [rcx], 0x04
        #   vpblendd ymm0, ymm1, ymm2, 0x04
        #   vpblendd ymm0, ymm1, [rcx], 0x04
        def vpblendd(*operands,**kwargs) = add_instruction(Instructions::VPBLENDD,*operands,**kwargs)
        # Blend Byte Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86_64::Instructions::VPBLENDMB]
        # @example
        #   vpblendmb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpblendmb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpblendmb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpblendmb xmm0, xmm1, xmm2
        #   vpblendmb xmm0, xmm1, [rcx]
        #   vpblendmb ymm0, ymm1, ymm2
        #   vpblendmb ymm0, ymm1, [rcx]
        #   vpblendmb zmm0, zmm1, zmm2
        #   vpblendmb zmm0, zmm1, [rcx]
        def vpblendmb(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMB,*operands,**kwargs)
        # Blend Doubleword Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86_64::Instructions::VPBLENDMD]
        # @example
        #   vpblendmd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpblendmd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpblendmd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpblendmd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpblendmd xmm0, xmm1, xmm2
        #   vpblendmd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpblendmd ymm0, ymm1, ymm2
        #   vpblendmd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpblendmd zmm0, zmm1, zmm2
        def vpblendmd(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMD,*operands,**kwargs)
        # Blend Quadword Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86_64::Instructions::VPBLENDMQ]
        # @example
        #   vpblendmq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpblendmq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpblendmq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpblendmq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpblendmq xmm0, xmm1, xmm2
        #   vpblendmq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpblendmq ymm0, ymm1, ymm2
        #   vpblendmq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpblendmq zmm0, zmm1, zmm2
        def vpblendmq(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMQ,*operands,**kwargs)
        # Blend Word Vectors Using an OpMask Control
        # @return [Ronin::ASM::X86_64::Instructions::VPBLENDMW]
        # @example
        #   vpblendmw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpblendmw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpblendmw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpblendmw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpblendmw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpblendmw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpblendmw xmm0, xmm1, xmm2
        #   vpblendmw xmm0, xmm1, [rcx]
        #   vpblendmw ymm0, ymm1, ymm2
        #   vpblendmw ymm0, ymm1, [rcx]
        #   vpblendmw zmm0, zmm1, zmm2
        #   vpblendmw zmm0, zmm1, [rcx]
        def vpblendmw(*operands,**kwargs) = add_instruction(Instructions::VPBLENDMW,*operands,**kwargs)
        # Variable Blend Packed Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VPBLENDVB]
        # @example
        #   vpblendvb xmm0, xmm1, xmm2, xmm3
        #   vpblendvb xmm0, xmm1, [rcx], xmm3
        #   vpblendvb ymm0, ymm1, ymm2, ymm3
        #   vpblendvb ymm0, ymm1, [rcx], ymm3
        def vpblendvb(*operands,**kwargs) = add_instruction(Instructions::VPBLENDVB,*operands,**kwargs)
        # Blend Packed Words
        # @return [Ronin::ASM::X86_64::Instructions::VPBLENDW]
        # @example
        #   vpblendw xmm0, xmm1, xmm2, 0x04
        #   vpblendw xmm0, xmm1, [rcx], 0x04
        #   vpblendw ymm0, ymm1, ymm2, 0x04
        #   vpblendw ymm0, ymm1, [rcx], 0x04
        def vpblendw(*operands,**kwargs) = add_instruction(Instructions::VPBLENDW,*operands,**kwargs)
        # Broadcast Byte Integer
        # @return [Ronin::ASM::X86_64::Instructions::VPBROADCASTB]
        # @example
        #   vpbroadcastb opmask(xmm0, k1, zero: true), ebx
        #   vpbroadcastb opmask(ymm0, k1, zero: true), ebx
        #   vpbroadcastb opmask(zmm0, k1, zero: true), ebx
        #   vpbroadcastb opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastb opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastb opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastb opmask(xmm0, k1, zero: true), [rbx]
        #   vpbroadcastb opmask(ymm0, k1, zero: true), [rbx]
        #   vpbroadcastb opmask(zmm0, k1, zero: true), [rbx]
        #   vpbroadcastb xmm0, ebx
        #   vpbroadcastb xmm0, xmm1
        #   vpbroadcastb xmm0, [rbx]
        #   vpbroadcastb ymm0, ebx
        #   vpbroadcastb ymm0, xmm1
        #   vpbroadcastb ymm0, [rbx]
        #   vpbroadcastb zmm0, ebx
        #   vpbroadcastb zmm0, xmm1
        #   vpbroadcastb zmm0, [rbx]
        def vpbroadcastb(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTB,*operands,**kwargs)
        # Broadcast Doubleword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VPBROADCASTD]
        # @example
        #   vpbroadcastd opmask(xmm0, k1, zero: true), ebx
        #   vpbroadcastd opmask(ymm0, k1, zero: true), ebx
        #   vpbroadcastd opmask(zmm0, k1, zero: true), ebx
        #   vpbroadcastd opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastd opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastd opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastd opmask(xmm0, k1, zero: true), [rbx]
        #   vpbroadcastd opmask(ymm0, k1, zero: true), [rbx]
        #   vpbroadcastd opmask(zmm0, k1, zero: true), [rbx]
        #   vpbroadcastd xmm0, ebx
        #   vpbroadcastd xmm0, xmm1
        #   vpbroadcastd xmm0, [rbx]
        #   vpbroadcastd ymm0, ebx
        #   vpbroadcastd ymm0, xmm1
        #   vpbroadcastd ymm0, [rbx]
        #   vpbroadcastd zmm0, ebx
        #   vpbroadcastd zmm0, xmm1
        #   vpbroadcastd zmm0, [rbx]
        def vpbroadcastd(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTD,*operands,**kwargs)
        # Broadcast Low Byte of Mask Register to Packed Quadword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPBROADCASTMB2Q]
        # @example
        #   vpbroadcastmb2q xmm0, k2
        #   vpbroadcastmb2q ymm0, k2
        #   vpbroadcastmb2q zmm0, k2
        def vpbroadcastmb2q(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTMB2Q,*operands,**kwargs)
        # Broadcast Low Word of Mask Register to Packed Doubleword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPBROADCASTMW2D]
        # @example
        #   vpbroadcastmw2d xmm0, k2
        #   vpbroadcastmw2d ymm0, k2
        #   vpbroadcastmw2d zmm0, k2
        def vpbroadcastmw2d(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTMW2D,*operands,**kwargs)
        # Broadcast Quadword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VPBROADCASTQ]
        # @example
        #   vpbroadcastq opmask(xmm0, k1, zero: true), rbx
        #   vpbroadcastq opmask(ymm0, k1, zero: true), rbx
        #   vpbroadcastq opmask(zmm0, k1, zero: true), rbx
        #   vpbroadcastq opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastq opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastq opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastq opmask(xmm0, k1, zero: true), [rbx]
        #   vpbroadcastq opmask(ymm0, k1, zero: true), [rbx]
        #   vpbroadcastq opmask(zmm0, k1, zero: true), [rbx]
        #   vpbroadcastq xmm0, rbx
        #   vpbroadcastq xmm0, xmm1
        #   vpbroadcastq xmm0, [rbx]
        #   vpbroadcastq ymm0, rbx
        #   vpbroadcastq ymm0, xmm1
        #   vpbroadcastq ymm0, [rbx]
        #   vpbroadcastq zmm0, rbx
        #   vpbroadcastq zmm0, xmm1
        #   vpbroadcastq zmm0, [rbx]
        def vpbroadcastq(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTQ,*operands,**kwargs)
        # Broadcast Word Integer
        # @return [Ronin::ASM::X86_64::Instructions::VPBROADCASTW]
        # @example
        #   vpbroadcastw opmask(xmm0, k1, zero: true), ebx
        #   vpbroadcastw opmask(ymm0, k1, zero: true), ebx
        #   vpbroadcastw opmask(zmm0, k1, zero: true), ebx
        #   vpbroadcastw opmask(xmm0, k1, zero: true), xmm1
        #   vpbroadcastw opmask(ymm0, k1, zero: true), xmm1
        #   vpbroadcastw opmask(zmm0, k1, zero: true), xmm1
        #   vpbroadcastw opmask(xmm0, k1, zero: true), [rbx]
        #   vpbroadcastw opmask(ymm0, k1, zero: true), [rbx]
        #   vpbroadcastw opmask(zmm0, k1, zero: true), [rbx]
        #   vpbroadcastw xmm0, ebx
        #   vpbroadcastw xmm0, xmm1
        #   vpbroadcastw xmm0, [rbx]
        #   vpbroadcastw ymm0, ebx
        #   vpbroadcastw ymm0, xmm1
        #   vpbroadcastw ymm0, [rbx]
        #   vpbroadcastw zmm0, ebx
        #   vpbroadcastw zmm0, xmm1
        #   vpbroadcastw zmm0, [rbx]
        def vpbroadcastw(*operands,**kwargs) = add_instruction(Instructions::VPBROADCASTW,*operands,**kwargs)
        # Carry-Less Quadword Multiplication
        # @return [Ronin::ASM::X86_64::Instructions::VPCLMULQDQ]
        # @example
        #   vpclmulqdq xmm0, xmm1, xmm2, 0x04
        #   vpclmulqdq xmm0, xmm1, [rcx], 0x04
        #   vpclmulqdq ymm0, ymm1, ymm2, 0x04
        #   vpclmulqdq ymm0, ymm1, [rcx], 0x04
        #   vpclmulqdq zmm0, zmm1, zmm2, 0x04
        #   vpclmulqdq zmm0, zmm1, [rcx], 0x04
        def vpclmulqdq(*operands,**kwargs) = add_instruction(Instructions::VPCLMULQDQ,*operands,**kwargs)
        # Packed Conditional Move
        # @return [Ronin::ASM::X86_64::Instructions::VPCMOV]
        # @example
        #   vpcmov xmm0, xmm1, xmm2, xmm3
        #   vpcmov xmm0, xmm1, xmm2, [rdx]
        #   vpcmov xmm0, xmm1, [rcx], xmm3
        #   vpcmov ymm0, ymm1, ymm2, ymm3
        #   vpcmov ymm0, ymm1, ymm2, [rdx]
        #   vpcmov ymm0, ymm1, [rcx], ymm3
        def vpcmov(*operands,**kwargs) = add_instruction(Instructions::VPCMOV,*operands,**kwargs)
        # Compare Packed Signed Byte Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPB]
        # @example
        #   vpcmpb opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpb k1, xmm1, xmm2, 0x04
        #   vpcmpb opmask(k1, k2), xmm1, [rcx], 0x04
        #   vpcmpb k1, xmm1, [rcx], 0x04
        #   vpcmpb opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpb k1, ymm1, ymm2, 0x04
        #   vpcmpb opmask(k1, k2), ymm1, [rcx], 0x04
        #   vpcmpb k1, ymm1, [rcx], 0x04
        #   vpcmpb opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpb k1, zmm1, zmm2, 0x04
        #   vpcmpb opmask(k1, k2), zmm1, [rcx], 0x04
        #   vpcmpb k1, zmm1, [rcx], 0x04
        def vpcmpb(*operands,**kwargs) = add_instruction(Instructions::VPCMPB,*operands,**kwargs)
        # Compare Packed Signed Doubleword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPD]
        # @example
        #   vpcmpd opmask(k1, k2), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpd k1, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpd opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpd k1, xmm1, xmm2, 0x04
        #   vpcmpd opmask(k1, k2), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpd k1, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpd opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpd k1, ymm1, ymm2, 0x04
        #   vpcmpd opmask(k1, k2), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpcmpd k1, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpcmpd opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpd k1, zmm1, zmm2, 0x04
        def vpcmpd(*operands,**kwargs) = add_instruction(Instructions::VPCMPD,*operands,**kwargs)
        # Compare Packed Byte Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPEQB]
        # @example
        #   vpcmpeqb opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqb k1, xmm1, xmm2
        #   vpcmpeqb opmask(k1, k2), xmm1, [rcx]
        #   vpcmpeqb k1, xmm1, [rcx]
        #   vpcmpeqb opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqb k1, ymm1, ymm2
        #   vpcmpeqb opmask(k1, k2), ymm1, [rcx]
        #   vpcmpeqb k1, ymm1, [rcx]
        #   vpcmpeqb opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqb k1, zmm1, zmm2
        #   vpcmpeqb opmask(k1, k2), zmm1, [rcx]
        #   vpcmpeqb k1, zmm1, [rcx]
        #   vpcmpeqb xmm0, xmm1, xmm2
        #   vpcmpeqb xmm0, xmm1, [rcx]
        #   vpcmpeqb ymm0, ymm1, ymm2
        #   vpcmpeqb ymm0, ymm1, [rcx]
        def vpcmpeqb(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQB,*operands,**kwargs)
        # Compare Packed Doubleword Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPEQD]
        # @example
        #   vpcmpeqd opmask(k1, k2), xmm1, bcst([rcx], {1=>4})
        #   vpcmpeqd k1, xmm1, bcst([rcx], {1=>4})
        #   vpcmpeqd opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqd k1, xmm1, xmm2
        #   vpcmpeqd opmask(k1, k2), ymm1, bcst([rcx], {1=>8})
        #   vpcmpeqd k1, ymm1, bcst([rcx], {1=>8})
        #   vpcmpeqd opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqd k1, ymm1, ymm2
        #   vpcmpeqd opmask(k1, k2), zmm1, bcst([rcx], {1=>16})
        #   vpcmpeqd k1, zmm1, bcst([rcx], {1=>16})
        #   vpcmpeqd opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqd k1, zmm1, zmm2
        #   vpcmpeqd xmm0, xmm1, xmm2
        #   vpcmpeqd xmm0, xmm1, [rcx]
        #   vpcmpeqd ymm0, ymm1, ymm2
        #   vpcmpeqd ymm0, ymm1, [rcx]
        def vpcmpeqd(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQD,*operands,**kwargs)
        # Compare Packed Quadword Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPEQQ]
        # @example
        #   vpcmpeqq opmask(k1, k2), xmm1, bcst([rcx], {1=>2})
        #   vpcmpeqq k1, xmm1, bcst([rcx], {1=>2})
        #   vpcmpeqq opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqq k1, xmm1, xmm2
        #   vpcmpeqq opmask(k1, k2), ymm1, bcst([rcx], {1=>4})
        #   vpcmpeqq k1, ymm1, bcst([rcx], {1=>4})
        #   vpcmpeqq opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqq k1, ymm1, ymm2
        #   vpcmpeqq opmask(k1, k2), zmm1, bcst([rcx], {1=>8})
        #   vpcmpeqq k1, zmm1, bcst([rcx], {1=>8})
        #   vpcmpeqq opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqq k1, zmm1, zmm2
        #   vpcmpeqq xmm0, xmm1, xmm2
        #   vpcmpeqq xmm0, xmm1, [rcx]
        #   vpcmpeqq ymm0, ymm1, ymm2
        #   vpcmpeqq ymm0, ymm1, [rcx]
        def vpcmpeqq(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQQ,*operands,**kwargs)
        # Compare Packed Word Data for Equality
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPEQW]
        # @example
        #   vpcmpeqw opmask(k1, k2), xmm1, xmm2
        #   vpcmpeqw k1, xmm1, xmm2
        #   vpcmpeqw opmask(k1, k2), xmm1, [rcx]
        #   vpcmpeqw k1, xmm1, [rcx]
        #   vpcmpeqw opmask(k1, k2), ymm1, ymm2
        #   vpcmpeqw k1, ymm1, ymm2
        #   vpcmpeqw opmask(k1, k2), ymm1, [rcx]
        #   vpcmpeqw k1, ymm1, [rcx]
        #   vpcmpeqw opmask(k1, k2), zmm1, zmm2
        #   vpcmpeqw k1, zmm1, zmm2
        #   vpcmpeqw opmask(k1, k2), zmm1, [rcx]
        #   vpcmpeqw k1, zmm1, [rcx]
        #   vpcmpeqw xmm0, xmm1, xmm2
        #   vpcmpeqw xmm0, xmm1, [rcx]
        #   vpcmpeqw ymm0, ymm1, ymm2
        #   vpcmpeqw ymm0, ymm1, [rcx]
        def vpcmpeqw(*operands,**kwargs) = add_instruction(Instructions::VPCMPEQW,*operands,**kwargs)
        # Packed Compare Explicit Length Strings, Return Index
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPESTRI]
        # @example
        #   vpcmpestri xmm0, xmm1, 0x03
        #   vpcmpestri xmm0, [rbx], 0x03
        def vpcmpestri(*operands,**kwargs) = add_instruction(Instructions::VPCMPESTRI,*operands,**kwargs)
        # Packed Compare Explicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPESTRM]
        # @example
        #   vpcmpestrm xmm0, xmm1, 0x03
        #   vpcmpestrm xmm0, [rbx], 0x03
        def vpcmpestrm(*operands,**kwargs) = add_instruction(Instructions::VPCMPESTRM,*operands,**kwargs)
        # Compare Packed Signed Byte Integers for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPGTB]
        # @example
        #   vpcmpgtb opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtb k1, xmm1, xmm2
        #   vpcmpgtb opmask(k1, k2), xmm1, [rcx]
        #   vpcmpgtb k1, xmm1, [rcx]
        #   vpcmpgtb opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtb k1, ymm1, ymm2
        #   vpcmpgtb opmask(k1, k2), ymm1, [rcx]
        #   vpcmpgtb k1, ymm1, [rcx]
        #   vpcmpgtb opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtb k1, zmm1, zmm2
        #   vpcmpgtb opmask(k1, k2), zmm1, [rcx]
        #   vpcmpgtb k1, zmm1, [rcx]
        #   vpcmpgtb xmm0, xmm1, xmm2
        #   vpcmpgtb xmm0, xmm1, [rcx]
        #   vpcmpgtb ymm0, ymm1, ymm2
        #   vpcmpgtb ymm0, ymm1, [rcx]
        def vpcmpgtb(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTB,*operands,**kwargs)
        # Compare Packed Signed Doubleword Integers for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPGTD]
        # @example
        #   vpcmpgtd opmask(k1, k2), xmm1, bcst([rcx], {1=>4})
        #   vpcmpgtd k1, xmm1, bcst([rcx], {1=>4})
        #   vpcmpgtd opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtd k1, xmm1, xmm2
        #   vpcmpgtd opmask(k1, k2), ymm1, bcst([rcx], {1=>8})
        #   vpcmpgtd k1, ymm1, bcst([rcx], {1=>8})
        #   vpcmpgtd opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtd k1, ymm1, ymm2
        #   vpcmpgtd opmask(k1, k2), zmm1, bcst([rcx], {1=>16})
        #   vpcmpgtd k1, zmm1, bcst([rcx], {1=>16})
        #   vpcmpgtd opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtd k1, zmm1, zmm2
        #   vpcmpgtd xmm0, xmm1, xmm2
        #   vpcmpgtd xmm0, xmm1, [rcx]
        #   vpcmpgtd ymm0, ymm1, ymm2
        #   vpcmpgtd ymm0, ymm1, [rcx]
        def vpcmpgtd(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTD,*operands,**kwargs)
        # Compare Packed Data for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPGTQ]
        # @example
        #   vpcmpgtq opmask(k1, k2), xmm1, bcst([rcx], {1=>2})
        #   vpcmpgtq k1, xmm1, bcst([rcx], {1=>2})
        #   vpcmpgtq opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtq k1, xmm1, xmm2
        #   vpcmpgtq opmask(k1, k2), ymm1, bcst([rcx], {1=>4})
        #   vpcmpgtq k1, ymm1, bcst([rcx], {1=>4})
        #   vpcmpgtq opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtq k1, ymm1, ymm2
        #   vpcmpgtq opmask(k1, k2), zmm1, bcst([rcx], {1=>8})
        #   vpcmpgtq k1, zmm1, bcst([rcx], {1=>8})
        #   vpcmpgtq opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtq k1, zmm1, zmm2
        #   vpcmpgtq xmm0, xmm1, xmm2
        #   vpcmpgtq xmm0, xmm1, [rcx]
        #   vpcmpgtq ymm0, ymm1, ymm2
        #   vpcmpgtq ymm0, ymm1, [rcx]
        def vpcmpgtq(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTQ,*operands,**kwargs)
        # Compare Packed Signed Word Integers for Greater Than
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPGTW]
        # @example
        #   vpcmpgtw opmask(k1, k2), xmm1, xmm2
        #   vpcmpgtw k1, xmm1, xmm2
        #   vpcmpgtw opmask(k1, k2), xmm1, [rcx]
        #   vpcmpgtw k1, xmm1, [rcx]
        #   vpcmpgtw opmask(k1, k2), ymm1, ymm2
        #   vpcmpgtw k1, ymm1, ymm2
        #   vpcmpgtw opmask(k1, k2), ymm1, [rcx]
        #   vpcmpgtw k1, ymm1, [rcx]
        #   vpcmpgtw opmask(k1, k2), zmm1, zmm2
        #   vpcmpgtw k1, zmm1, zmm2
        #   vpcmpgtw opmask(k1, k2), zmm1, [rcx]
        #   vpcmpgtw k1, zmm1, [rcx]
        #   vpcmpgtw xmm0, xmm1, xmm2
        #   vpcmpgtw xmm0, xmm1, [rcx]
        #   vpcmpgtw ymm0, ymm1, ymm2
        #   vpcmpgtw ymm0, ymm1, [rcx]
        def vpcmpgtw(*operands,**kwargs) = add_instruction(Instructions::VPCMPGTW,*operands,**kwargs)
        # Packed Compare Implicit Length Strings, Return Index
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPISTRI]
        # @example
        #   vpcmpistri xmm0, xmm1, 0x03
        #   vpcmpistri xmm0, [rbx], 0x03
        def vpcmpistri(*operands,**kwargs) = add_instruction(Instructions::VPCMPISTRI,*operands,**kwargs)
        # Packed Compare Implicit Length Strings, Return Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPISTRM]
        # @example
        #   vpcmpistrm xmm0, xmm1, 0x03
        #   vpcmpistrm xmm0, [rbx], 0x03
        def vpcmpistrm(*operands,**kwargs) = add_instruction(Instructions::VPCMPISTRM,*operands,**kwargs)
        # Compare Packed Signed Quadword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPQ]
        # @example
        #   vpcmpq opmask(k1, k2), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpcmpq k1, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpcmpq opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpq k1, xmm1, xmm2, 0x04
        #   vpcmpq opmask(k1, k2), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpq k1, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpq opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpq k1, ymm1, ymm2, 0x04
        #   vpcmpq opmask(k1, k2), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpq k1, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpq opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpq k1, zmm1, zmm2, 0x04
        def vpcmpq(*operands,**kwargs) = add_instruction(Instructions::VPCMPQ,*operands,**kwargs)
        # Compare Packed Unsigned Byte Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPUB]
        # @example
        #   vpcmpub opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpub k1, xmm1, xmm2, 0x04
        #   vpcmpub opmask(k1, k2), xmm1, [rcx], 0x04
        #   vpcmpub k1, xmm1, [rcx], 0x04
        #   vpcmpub opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpub k1, ymm1, ymm2, 0x04
        #   vpcmpub opmask(k1, k2), ymm1, [rcx], 0x04
        #   vpcmpub k1, ymm1, [rcx], 0x04
        #   vpcmpub opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpub k1, zmm1, zmm2, 0x04
        #   vpcmpub opmask(k1, k2), zmm1, [rcx], 0x04
        #   vpcmpub k1, zmm1, [rcx], 0x04
        def vpcmpub(*operands,**kwargs) = add_instruction(Instructions::VPCMPUB,*operands,**kwargs)
        # Compare Packed Unsigned Doubleword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPUD]
        # @example
        #   vpcmpud opmask(k1, k2), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpud k1, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpud opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpud k1, xmm1, xmm2, 0x04
        #   vpcmpud opmask(k1, k2), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpud k1, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpud opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpud k1, ymm1, ymm2, 0x04
        #   vpcmpud opmask(k1, k2), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpcmpud k1, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpcmpud opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpud k1, zmm1, zmm2, 0x04
        def vpcmpud(*operands,**kwargs) = add_instruction(Instructions::VPCMPUD,*operands,**kwargs)
        # Compare Packed Unsigned Quadword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPUQ]
        # @example
        #   vpcmpuq opmask(k1, k2), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpcmpuq k1, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpcmpuq opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpuq k1, xmm1, xmm2, 0x04
        #   vpcmpuq opmask(k1, k2), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpuq k1, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpcmpuq opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpuq k1, ymm1, ymm2, 0x04
        #   vpcmpuq opmask(k1, k2), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpuq k1, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpcmpuq opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpuq k1, zmm1, zmm2, 0x04
        def vpcmpuq(*operands,**kwargs) = add_instruction(Instructions::VPCMPUQ,*operands,**kwargs)
        # Compare Packed Unsigned Word Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPUW]
        # @example
        #   vpcmpuw opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpuw k1, xmm1, xmm2, 0x04
        #   vpcmpuw opmask(k1, k2), xmm1, [rcx], 0x04
        #   vpcmpuw k1, xmm1, [rcx], 0x04
        #   vpcmpuw opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpuw k1, ymm1, ymm2, 0x04
        #   vpcmpuw opmask(k1, k2), ymm1, [rcx], 0x04
        #   vpcmpuw k1, ymm1, [rcx], 0x04
        #   vpcmpuw opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpuw k1, zmm1, zmm2, 0x04
        #   vpcmpuw opmask(k1, k2), zmm1, [rcx], 0x04
        #   vpcmpuw k1, zmm1, [rcx], 0x04
        def vpcmpuw(*operands,**kwargs) = add_instruction(Instructions::VPCMPUW,*operands,**kwargs)
        # Compare Packed Signed Word Values
        # @return [Ronin::ASM::X86_64::Instructions::VPCMPW]
        # @example
        #   vpcmpw opmask(k1, k2), xmm1, xmm2, 0x04
        #   vpcmpw k1, xmm1, xmm2, 0x04
        #   vpcmpw opmask(k1, k2), xmm1, [rcx], 0x04
        #   vpcmpw k1, xmm1, [rcx], 0x04
        #   vpcmpw opmask(k1, k2), ymm1, ymm2, 0x04
        #   vpcmpw k1, ymm1, ymm2, 0x04
        #   vpcmpw opmask(k1, k2), ymm1, [rcx], 0x04
        #   vpcmpw k1, ymm1, [rcx], 0x04
        #   vpcmpw opmask(k1, k2), zmm1, zmm2, 0x04
        #   vpcmpw k1, zmm1, zmm2, 0x04
        #   vpcmpw opmask(k1, k2), zmm1, [rcx], 0x04
        #   vpcmpw k1, zmm1, [rcx], 0x04
        def vpcmpw(*operands,**kwargs) = add_instruction(Instructions::VPCMPW,*operands,**kwargs)
        # Compare Packed Signed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMB]
        # @example
        #   vpcomb xmm0, xmm1, xmm2, 0x04
        #   vpcomb xmm0, xmm1, [rcx], 0x04
        def vpcomb(*operands,**kwargs) = add_instruction(Instructions::VPCOMB,*operands,**kwargs)
        # Compare Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMD]
        # @example
        #   vpcomd xmm0, xmm1, xmm2, 0x04
        #   vpcomd xmm0, xmm1, [rcx], 0x04
        def vpcomd(*operands,**kwargs) = add_instruction(Instructions::VPCOMD,*operands,**kwargs)
        # Store Sparse Packed Byte Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMPRESSB]
        # @example
        #   vpcompressb opmask([rax], k1), xmm1
        #   vpcompressb opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressb opmask([rax], k1), ymm1
        #   vpcompressb opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressb opmask([rax], k1), zmm1
        #   vpcompressb opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressb xmm0, xmm1
        #   vpcompressb ymm0, ymm1
        #   vpcompressb zmm0, zmm1
        #   vpcompressb [rax], xmm1
        #   vpcompressb [rax], ymm1
        #   vpcompressb [rax], zmm1
        def vpcompressb(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSB,*operands,**kwargs)
        # Store Sparse Packed Doubleword Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMPRESSD]
        # @example
        #   vpcompressd opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressd opmask([rax], k1), xmm1
        #   vpcompressd opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressd opmask([rax], k1), ymm1
        #   vpcompressd opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressd opmask([rax], k1), zmm1
        #   vpcompressd xmm0, xmm1
        #   vpcompressd ymm0, ymm1
        #   vpcompressd zmm0, zmm1
        #   vpcompressd [rax], xmm1
        #   vpcompressd [rax], ymm1
        #   vpcompressd [rax], zmm1
        def vpcompressd(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSD,*operands,**kwargs)
        # Store Sparse Packed Quadword Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMPRESSQ]
        # @example
        #   vpcompressq opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressq opmask([rax], k1), xmm1
        #   vpcompressq opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressq opmask([rax], k1), ymm1
        #   vpcompressq opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressq opmask([rax], k1), zmm1
        #   vpcompressq xmm0, xmm1
        #   vpcompressq ymm0, ymm1
        #   vpcompressq zmm0, zmm1
        #   vpcompressq [rax], xmm1
        #   vpcompressq [rax], ymm1
        #   vpcompressq [rax], zmm1
        def vpcompressq(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSQ,*operands,**kwargs)
        # Store Sparse Packed Word Integer Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMPRESSW]
        # @example
        #   vpcompressw opmask([rax], k1), xmm1
        #   vpcompressw opmask(xmm0, k1, zero: true), xmm1
        #   vpcompressw opmask([rax], k1), ymm1
        #   vpcompressw opmask(ymm0, k1, zero: true), ymm1
        #   vpcompressw opmask([rax], k1), zmm1
        #   vpcompressw opmask(zmm0, k1, zero: true), zmm1
        #   vpcompressw xmm0, xmm1
        #   vpcompressw ymm0, ymm1
        #   vpcompressw zmm0, zmm1
        #   vpcompressw [rax], xmm1
        #   vpcompressw [rax], ymm1
        #   vpcompressw [rax], zmm1
        def vpcompressw(*operands,**kwargs) = add_instruction(Instructions::VPCOMPRESSW,*operands,**kwargs)
        # Compare Packed Signed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMQ]
        # @example
        #   vpcomq xmm0, xmm1, xmm2, 0x04
        #   vpcomq xmm0, xmm1, [rcx], 0x04
        def vpcomq(*operands,**kwargs) = add_instruction(Instructions::VPCOMQ,*operands,**kwargs)
        # Compare Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMUB]
        # @example
        #   vpcomub xmm0, xmm1, xmm2, 0x04
        #   vpcomub xmm0, xmm1, [rcx], 0x04
        def vpcomub(*operands,**kwargs) = add_instruction(Instructions::VPCOMUB,*operands,**kwargs)
        # Compare Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMUD]
        # @example
        #   vpcomud xmm0, xmm1, xmm2, 0x04
        #   vpcomud xmm0, xmm1, [rcx], 0x04
        def vpcomud(*operands,**kwargs) = add_instruction(Instructions::VPCOMUD,*operands,**kwargs)
        # Compare Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMUQ]
        # @example
        #   vpcomuq xmm0, xmm1, xmm2, 0x04
        #   vpcomuq xmm0, xmm1, [rcx], 0x04
        def vpcomuq(*operands,**kwargs) = add_instruction(Instructions::VPCOMUQ,*operands,**kwargs)
        # Compare Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMUW]
        # @example
        #   vpcomuw xmm0, xmm1, xmm2, 0x04
        #   vpcomuw xmm0, xmm1, [rcx], 0x04
        def vpcomuw(*operands,**kwargs) = add_instruction(Instructions::VPCOMUW,*operands,**kwargs)
        # Compare Packed Signed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPCOMW]
        # @example
        #   vpcomw xmm0, xmm1, xmm2, 0x04
        #   vpcomw xmm0, xmm1, [rcx], 0x04
        def vpcomw(*operands,**kwargs) = add_instruction(Instructions::VPCOMW,*operands,**kwargs)
        # Detect Conflicts Within a Vector of Packed Doubleword Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPCONFLICTD]
        # @example
        #   vpconflictd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vpconflictd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vpconflictd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vpconflictd opmask(xmm0, k1, zero: true), xmm1
        #   vpconflictd opmask(ymm0, k1, zero: true), ymm1
        #   vpconflictd opmask(zmm0, k1, zero: true), zmm1
        #   vpconflictd xmm0, bcst([rbx], {1=>4})
        #   vpconflictd xmm0, xmm1
        #   vpconflictd ymm0, bcst([rbx], {1=>8})
        #   vpconflictd ymm0, ymm1
        #   vpconflictd zmm0, bcst([rbx], {1=>16})
        #   vpconflictd zmm0, zmm1
        def vpconflictd(*operands,**kwargs) = add_instruction(Instructions::VPCONFLICTD,*operands,**kwargs)
        # Detect Conflicts Within a Vector of Packed Quadword Values into Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPCONFLICTQ]
        # @example
        #   vpconflictq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vpconflictq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vpconflictq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vpconflictq opmask(xmm0, k1, zero: true), xmm1
        #   vpconflictq opmask(ymm0, k1, zero: true), ymm1
        #   vpconflictq opmask(zmm0, k1, zero: true), zmm1
        #   vpconflictq xmm0, bcst([rbx], {1=>2})
        #   vpconflictq xmm0, xmm1
        #   vpconflictq ymm0, bcst([rbx], {1=>4})
        #   vpconflictq ymm0, ymm1
        #   vpconflictq zmm0, bcst([rbx], {1=>8})
        #   vpconflictq zmm0, zmm1
        def vpconflictq(*operands,**kwargs) = add_instruction(Instructions::VPCONFLICTQ,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Singed Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBSSD]
        # @example
        #   vpdpbssd xmm0, xmm1, xmm2
        #   vpdpbssd xmm0, xmm1, [rcx]
        #   vpdpbssd ymm0, ymm1, ymm2
        #   vpdpbssd ymm0, ymm1, [rcx]
        def vpdpbssd(*operands,**kwargs) = add_instruction(Instructions::VPDPBSSD,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Singed Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBSSDS]
        # @example
        #   vpdpbssds xmm0, xmm1, xmm2
        #   vpdpbssds xmm0, xmm1, [rcx]
        #   vpdpbssds ymm0, ymm1, ymm2
        #   vpdpbssds ymm0, ymm1, [rcx]
        def vpdpbssds(*operands,**kwargs) = add_instruction(Instructions::VPDPBSSDS,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Unsinged Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBSUD]
        # @example
        #   vpdpbsud xmm0, xmm1, xmm2
        #   vpdpbsud xmm0, xmm1, [rcx]
        #   vpdpbsud ymm0, ymm1, ymm2
        #   vpdpbsud ymm0, ymm1, [rcx]
        def vpdpbsud(*operands,**kwargs) = add_instruction(Instructions::VPDPBSUD,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Unsinged Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBSUDS]
        # @example
        #   vpdpbsuds xmm0, xmm1, xmm2
        #   vpdpbsuds xmm0, xmm1, [rcx]
        #   vpdpbsuds ymm0, ymm1, ymm2
        #   vpdpbsuds ymm0, ymm1, [rcx]
        def vpdpbsuds(*operands,**kwargs) = add_instruction(Instructions::VPDPBSUDS,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Singed Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBUSD]
        # @example
        #   vpdpbusd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpdpbusd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpbusd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpdpbusd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpbusd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpdpbusd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpbusd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpdpbusd xmm0, xmm1, xmm2
        #   vpdpbusd xmm0, xmm1, [rcx]
        #   vpdpbusd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpdpbusd ymm0, ymm1, ymm2
        #   vpdpbusd ymm0, ymm1, [rcx]
        #   vpdpbusd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpdpbusd zmm0, zmm1, zmm2
        def vpdpbusd(*operands,**kwargs) = add_instruction(Instructions::VPDPBUSD,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Singed Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBUSDS]
        # @example
        #   vpdpbusds opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpdpbusds opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpbusds opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpdpbusds opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpbusds opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpdpbusds opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpbusds xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpdpbusds xmm0, xmm1, xmm2
        #   vpdpbusds xmm0, xmm1, [rcx]
        #   vpdpbusds ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpdpbusds ymm0, ymm1, ymm2
        #   vpdpbusds ymm0, ymm1, [rcx]
        #   vpdpbusds zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpdpbusds zmm0, zmm1, zmm2
        def vpdpbusds(*operands,**kwargs) = add_instruction(Instructions::VPDPBUSDS,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsinged Byte subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBUUD]
        # @example
        #   vpdpbuud xmm0, xmm1, xmm2
        #   vpdpbuud xmm0, xmm1, [rcx]
        #   vpdpbuud ymm0, ymm1, ymm2
        #   vpdpbuud ymm0, ymm1, [rcx]
        def vpdpbuud(*operands,**kwargs) = add_instruction(Instructions::VPDPBUUD,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsinged Byte subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPBUUDS]
        # @example
        #   vpdpbuuds xmm0, xmm1, xmm2
        #   vpdpbuuds xmm0, xmm1, [rcx]
        #   vpdpbuuds ymm0, ymm1, ymm2
        #   vpdpbuuds ymm0, ymm1, [rcx]
        def vpdpbuuds(*operands,**kwargs) = add_instruction(Instructions::VPDPBUUDS,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Signed Word subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWSSD]
        # @example
        #   vpdpwssd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpdpwssd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpwssd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpdpwssd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpwssd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpdpwssd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpwssd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpdpwssd xmm0, xmm1, xmm2
        #   vpdpwssd xmm0, xmm1, [rcx]
        #   vpdpwssd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpdpwssd ymm0, ymm1, ymm2
        #   vpdpwssd ymm0, ymm1, [rcx]
        #   vpdpwssd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpdpwssd zmm0, zmm1, zmm2
        def vpdpwssd(*operands,**kwargs) = add_instruction(Instructions::VPDPWSSD,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Signed Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWSSDS]
        # @example
        #   vpdpwssds opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpdpwssds opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpdpwssds opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpdpwssds opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpdpwssds opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpdpwssds opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpdpwssds xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpdpwssds xmm0, xmm1, xmm2
        #   vpdpwssds xmm0, xmm1, [rcx]
        #   vpdpwssds ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpdpwssds ymm0, ymm1, ymm2
        #   vpdpwssds ymm0, ymm1, [rcx]
        #   vpdpwssds zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpdpwssds zmm0, zmm1, zmm2
        def vpdpwssds(*operands,**kwargs) = add_instruction(Instructions::VPDPWSSDS,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Unsigned Word subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWSUD]
        # @example
        #   vpdpwsud xmm0, xmm1, xmm2
        #   vpdpwsud xmm0, xmm1, [rcx]
        #   vpdpwsud ymm0, ymm1, ymm2
        #   vpdpwsud ymm0, ymm1, [rcx]
        def vpdpwsud(*operands,**kwargs) = add_instruction(Instructions::VPDPWSUD,*operands,**kwargs)
        # Packed Dot Product of Signed-by-Unsigned Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWSUDS]
        # @example
        #   vpdpwsuds xmm0, xmm1, xmm2
        #   vpdpwsuds xmm0, xmm1, [rcx]
        #   vpdpwsuds ymm0, ymm1, ymm2
        #   vpdpwsuds ymm0, ymm1, [rcx]
        def vpdpwsuds(*operands,**kwargs) = add_instruction(Instructions::VPDPWSUDS,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Signed Word subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWUSD]
        # @example
        #   vpdpwusd xmm0, xmm1, xmm2
        #   vpdpwusd xmm0, xmm1, [rcx]
        #   vpdpwusd ymm0, ymm1, ymm2
        #   vpdpwusd ymm0, ymm1, [rcx]
        def vpdpwusd(*operands,**kwargs) = add_instruction(Instructions::VPDPWUSD,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Signed Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWUSDS]
        # @example
        #   vpdpwusds xmm0, xmm1, xmm2
        #   vpdpwusds xmm0, xmm1, [rcx]
        #   vpdpwusds ymm0, ymm1, ymm2
        #   vpdpwusds ymm0, ymm1, [rcx]
        def vpdpwusds(*operands,**kwargs) = add_instruction(Instructions::VPDPWUSDS,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsigned Word subvectors into Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWUUD]
        # @example
        #   vpdpwuud xmm0, xmm1, xmm2
        #   vpdpwuud xmm0, xmm1, [rcx]
        #   vpdpwuud ymm0, ymm1, ymm2
        #   vpdpwuud ymm0, ymm1, [rcx]
        def vpdpwuud(*operands,**kwargs) = add_instruction(Instructions::VPDPWUUD,*operands,**kwargs)
        # Packed Dot Product of Unsigned-by-Unsigned Word subvectors into Doubleword with Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPDPWUUDS]
        # @example
        #   vpdpwuuds xmm0, xmm1, xmm2
        #   vpdpwuuds xmm0, xmm1, [rcx]
        #   vpdpwuuds ymm0, ymm1, ymm2
        #   vpdpwuuds ymm0, ymm1, [rcx]
        def vpdpwuuds(*operands,**kwargs) = add_instruction(Instructions::VPDPWUUDS,*operands,**kwargs)
        # Permute Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VPERM2F128]
        # @example
        #   vperm2f128 ymm0, ymm1, ymm2, 0x04
        #   vperm2f128 ymm0, ymm1, [rcx], 0x04
        def vperm2f128(*operands,**kwargs) = add_instruction(Instructions::VPERM2F128,*operands,**kwargs)
        # Permute 128-Bit Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VPERM2I128]
        # @example
        #   vperm2i128 ymm0, ymm1, ymm2, 0x04
        #   vperm2i128 ymm0, ymm1, [rcx], 0x04
        def vperm2i128(*operands,**kwargs) = add_instruction(Instructions::VPERM2I128,*operands,**kwargs)
        # Permute Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPERMB]
        # @example
        #   vpermb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpermb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpermb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpermb xmm0, xmm1, xmm2
        #   vpermb xmm0, xmm1, [rcx]
        #   vpermb ymm0, ymm1, ymm2
        #   vpermb ymm0, ymm1, [rcx]
        #   vpermb zmm0, zmm1, zmm2
        #   vpermb zmm0, zmm1, [rcx]
        def vpermb(*operands,**kwargs) = add_instruction(Instructions::VPERMB,*operands,**kwargs)
        # Permute Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPERMD]
        # @example
        #   vpermd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpermd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpermd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpermd ymm0, ymm1, ymm2
        #   vpermd ymm0, ymm1, [rcx]
        #   vpermd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpermd zmm0, zmm1, zmm2
        def vpermd(*operands,**kwargs) = add_instruction(Instructions::VPERMD,*operands,**kwargs)
        # Full Permute of Bytes From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86_64::Instructions::VPERMI2B]
        # @example
        #   vpermi2b opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2b opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpermi2b opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2b opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpermi2b opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2b opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpermi2b xmm0, xmm1, xmm2
        #   vpermi2b xmm0, xmm1, [rcx]
        #   vpermi2b ymm0, ymm1, ymm2
        #   vpermi2b ymm0, ymm1, [rcx]
        #   vpermi2b zmm0, zmm1, zmm2
        #   vpermi2b zmm0, zmm1, [rcx]
        def vpermi2b(*operands,**kwargs) = add_instruction(Instructions::VPERMI2B,*operands,**kwargs)
        # Full Permute of Doublewords From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86_64::Instructions::VPERMI2D]
        # @example
        #   vpermi2d opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpermi2d opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2d opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpermi2d opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2d opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpermi2d opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2d xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpermi2d xmm0, xmm1, xmm2
        #   vpermi2d ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpermi2d ymm0, ymm1, ymm2
        #   vpermi2d zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpermi2d zmm0, zmm1, zmm2
        def vpermi2d(*operands,**kwargs) = add_instruction(Instructions::VPERMI2D,*operands,**kwargs)
        # Full Permute of Double-Precision Floating-Point Values From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86_64::Instructions::VPERMI2PD]
        # @example
        #   vpermi2pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpermi2pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpermi2pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpermi2pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpermi2pd xmm0, xmm1, xmm2
        #   vpermi2pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpermi2pd ymm0, ymm1, ymm2
        #   vpermi2pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpermi2pd zmm0, zmm1, zmm2
        def vpermi2pd(*operands,**kwargs) = add_instruction(Instructions::VPERMI2PD,*operands,**kwargs)
        # Full Permute of Single-Precision Floating-Point Values From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86_64::Instructions::VPERMI2PS]
        # @example
        #   vpermi2ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpermi2ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpermi2ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpermi2ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpermi2ps xmm0, xmm1, xmm2
        #   vpermi2ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpermi2ps ymm0, ymm1, ymm2
        #   vpermi2ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpermi2ps zmm0, zmm1, zmm2
        def vpermi2ps(*operands,**kwargs) = add_instruction(Instructions::VPERMI2PS,*operands,**kwargs)
        # Full Permute of Quadwords From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86_64::Instructions::VPERMI2Q]
        # @example
        #   vpermi2q opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpermi2q opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2q opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpermi2q opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2q opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpermi2q opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2q xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpermi2q xmm0, xmm1, xmm2
        #   vpermi2q ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpermi2q ymm0, ymm1, ymm2
        #   vpermi2q zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpermi2q zmm0, zmm1, zmm2
        def vpermi2q(*operands,**kwargs) = add_instruction(Instructions::VPERMI2Q,*operands,**kwargs)
        # Full Permute of Words From Two Tables Overwriting the Index
        # @return [Ronin::ASM::X86_64::Instructions::VPERMI2W]
        # @example
        #   vpermi2w opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermi2w opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpermi2w opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermi2w opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpermi2w opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermi2w opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpermi2w xmm0, xmm1, xmm2
        #   vpermi2w xmm0, xmm1, [rcx]
        #   vpermi2w ymm0, ymm1, ymm2
        #   vpermi2w ymm0, ymm1, [rcx]
        #   vpermi2w zmm0, zmm1, zmm2
        #   vpermi2w zmm0, zmm1, [rcx]
        def vpermi2w(*operands,**kwargs) = add_instruction(Instructions::VPERMI2W,*operands,**kwargs)
        # Permute Two-Source Double-Precision Floating-Point Vectors
        # @return [Ronin::ASM::X86_64::Instructions::VPERMIL2PD]
        # @example
        #   vpermil2pd xmm0, xmm1, xmm2, xmm3, 0b1111
        #   vpermil2pd xmm0, xmm1, xmm2, [rdx], 0b1111
        #   vpermil2pd xmm0, xmm1, [rcx], xmm3, 0b1111
        #   vpermil2pd ymm0, ymm1, ymm2, ymm3, 0b1111
        #   vpermil2pd ymm0, ymm1, ymm2, [rdx], 0b1111
        #   vpermil2pd ymm0, ymm1, [rcx], ymm3, 0b1111
        def vpermil2pd(*operands,**kwargs) = add_instruction(Instructions::VPERMIL2PD,*operands,**kwargs)
        # Permute Two-Source Single-Precision Floating-Point Vectors
        # @return [Ronin::ASM::X86_64::Instructions::VPERMIL2PS]
        # @example
        #   vpermil2ps xmm0, xmm1, xmm2, xmm3, 0b1111
        #   vpermil2ps xmm0, xmm1, xmm2, [rdx], 0b1111
        #   vpermil2ps xmm0, xmm1, [rcx], xmm3, 0b1111
        #   vpermil2ps ymm0, ymm1, ymm2, ymm3, 0b1111
        #   vpermil2ps ymm0, ymm1, ymm2, [rdx], 0b1111
        #   vpermil2ps ymm0, ymm1, [rcx], ymm3, 0b1111
        def vpermil2ps(*operands,**kwargs) = add_instruction(Instructions::VPERMIL2PS,*operands,**kwargs)
        # Permute Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VPERMILPD]
        # @example
        #   vpermilpd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vpermilpd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpermilpd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpermilpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpermilpd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpermilpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermilpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpermilpd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermilpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermilpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpermilpd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermilpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermilpd xmm0, bcst([rbx], {1=>2}), 0x03
        #   vpermilpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpermilpd xmm0, xmm1, 0x03
        #   vpermilpd xmm0, xmm1, xmm2
        #   vpermilpd xmm0, xmm1, [rcx]
        #   vpermilpd xmm0, [rbx], 0x03
        #   vpermilpd ymm0, bcst([rbx], {1=>4}), 0x03
        #   vpermilpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpermilpd ymm0, ymm1, 0x03
        #   vpermilpd ymm0, ymm1, ymm2
        #   vpermilpd ymm0, ymm1, [rcx]
        #   vpermilpd ymm0, [rbx], 0x03
        #   vpermilpd zmm0, bcst([rbx], {1=>8}), 0x03
        #   vpermilpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpermilpd zmm0, zmm1, 0x03
        #   vpermilpd zmm0, zmm1, zmm2
        def vpermilpd(*operands,**kwargs) = add_instruction(Instructions::VPERMILPD,*operands,**kwargs)
        # Permute Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VPERMILPS]
        # @example
        #   vpermilps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpermilps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpermilps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vpermilps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpermilps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpermilps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermilps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpermilps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermilps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermilps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpermilps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermilps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermilps xmm0, bcst([rbx], {1=>4}), 0x03
        #   vpermilps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpermilps xmm0, xmm1, 0x03
        #   vpermilps xmm0, xmm1, xmm2
        #   vpermilps xmm0, xmm1, [rcx]
        #   vpermilps xmm0, [rbx], 0x03
        #   vpermilps ymm0, bcst([rbx], {1=>8}), 0x03
        #   vpermilps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpermilps ymm0, ymm1, 0x03
        #   vpermilps ymm0, ymm1, ymm2
        #   vpermilps ymm0, ymm1, [rcx]
        #   vpermilps ymm0, [rbx], 0x03
        #   vpermilps zmm0, bcst([rbx], {1=>16}), 0x03
        #   vpermilps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpermilps zmm0, zmm1, 0x03
        #   vpermilps zmm0, zmm1, zmm2
        def vpermilps(*operands,**kwargs) = add_instruction(Instructions::VPERMILPS,*operands,**kwargs)
        # Permute Double-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86_64::Instructions::VPERMPD]
        # @example
        #   vpermpd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpermpd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpermpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpermpd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpermpd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermpd ymm0, bcst([rbx], {1=>4}), 0x03
        #   vpermpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpermpd ymm0, ymm1, 0x03
        #   vpermpd ymm0, ymm1, ymm2
        #   vpermpd ymm0, [rbx], 0x03
        #   vpermpd zmm0, bcst([rbx], {1=>8}), 0x03
        #   vpermpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpermpd zmm0, zmm1, 0x03
        #   vpermpd zmm0, zmm1, zmm2
        def vpermpd(*operands,**kwargs) = add_instruction(Instructions::VPERMPD,*operands,**kwargs)
        # Permute Single-Precision Floating-Point Elements
        # @return [Ronin::ASM::X86_64::Instructions::VPERMPS]
        # @example
        #   vpermps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpermps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpermps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpermps ymm0, ymm1, ymm2
        #   vpermps ymm0, ymm1, [rcx]
        #   vpermps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpermps zmm0, zmm1, zmm2
        def vpermps(*operands,**kwargs) = add_instruction(Instructions::VPERMPS,*operands,**kwargs)
        # Permute Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPERMQ]
        # @example
        #   vpermq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpermq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpermq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpermq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpermq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpermq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpermq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermq ymm0, bcst([rbx], {1=>4}), 0x03
        #   vpermq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpermq ymm0, ymm1, 0x03
        #   vpermq ymm0, ymm1, ymm2
        #   vpermq ymm0, [rbx], 0x03
        #   vpermq zmm0, bcst([rbx], {1=>8}), 0x03
        #   vpermq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpermq zmm0, zmm1, 0x03
        #   vpermq zmm0, zmm1, zmm2
        def vpermq(*operands,**kwargs) = add_instruction(Instructions::VPERMQ,*operands,**kwargs)
        # Full Permute of Bytes From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86_64::Instructions::VPERMT2B]
        # @example
        #   vpermt2b opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2b opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpermt2b opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2b opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpermt2b opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2b opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpermt2b xmm0, xmm1, xmm2
        #   vpermt2b xmm0, xmm1, [rcx]
        #   vpermt2b ymm0, ymm1, ymm2
        #   vpermt2b ymm0, ymm1, [rcx]
        #   vpermt2b zmm0, zmm1, zmm2
        #   vpermt2b zmm0, zmm1, [rcx]
        def vpermt2b(*operands,**kwargs) = add_instruction(Instructions::VPERMT2B,*operands,**kwargs)
        # Full Permute of Doublewords From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86_64::Instructions::VPERMT2D]
        # @example
        #   vpermt2d opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpermt2d opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2d opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpermt2d opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2d opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpermt2d opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2d xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpermt2d xmm0, xmm1, xmm2
        #   vpermt2d ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpermt2d ymm0, ymm1, ymm2
        #   vpermt2d zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpermt2d zmm0, zmm1, zmm2
        def vpermt2d(*operands,**kwargs) = add_instruction(Instructions::VPERMT2D,*operands,**kwargs)
        # Full Permute of Double-Precision Floating-Point Values From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86_64::Instructions::VPERMT2PD]
        # @example
        #   vpermt2pd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpermt2pd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2pd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpermt2pd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2pd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpermt2pd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2pd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpermt2pd xmm0, xmm1, xmm2
        #   vpermt2pd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpermt2pd ymm0, ymm1, ymm2
        #   vpermt2pd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpermt2pd zmm0, zmm1, zmm2
        def vpermt2pd(*operands,**kwargs) = add_instruction(Instructions::VPERMT2PD,*operands,**kwargs)
        # Full Permute of Single-Precision Floating-Point Values From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86_64::Instructions::VPERMT2PS]
        # @example
        #   vpermt2ps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpermt2ps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2ps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpermt2ps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2ps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpermt2ps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2ps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpermt2ps xmm0, xmm1, xmm2
        #   vpermt2ps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpermt2ps ymm0, ymm1, ymm2
        #   vpermt2ps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpermt2ps zmm0, zmm1, zmm2
        def vpermt2ps(*operands,**kwargs) = add_instruction(Instructions::VPERMT2PS,*operands,**kwargs)
        # Full Permute of Quadwords From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86_64::Instructions::VPERMT2Q]
        # @example
        #   vpermt2q opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpermt2q opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2q opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpermt2q opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2q opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpermt2q opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2q xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpermt2q xmm0, xmm1, xmm2
        #   vpermt2q ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpermt2q ymm0, ymm1, ymm2
        #   vpermt2q zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpermt2q zmm0, zmm1, zmm2
        def vpermt2q(*operands,**kwargs) = add_instruction(Instructions::VPERMT2Q,*operands,**kwargs)
        # Full Permute of Words From Two Tables Overwriting a Table
        # @return [Ronin::ASM::X86_64::Instructions::VPERMT2W]
        # @example
        #   vpermt2w opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermt2w opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpermt2w opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermt2w opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpermt2w opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermt2w opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpermt2w xmm0, xmm1, xmm2
        #   vpermt2w xmm0, xmm1, [rcx]
        #   vpermt2w ymm0, ymm1, ymm2
        #   vpermt2w ymm0, ymm1, [rcx]
        #   vpermt2w zmm0, zmm1, zmm2
        #   vpermt2w zmm0, zmm1, [rcx]
        def vpermt2w(*operands,**kwargs) = add_instruction(Instructions::VPERMT2W,*operands,**kwargs)
        # Permute Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPERMW]
        # @example
        #   vpermw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpermw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpermw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpermw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpermw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpermw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpermw xmm0, xmm1, xmm2
        #   vpermw xmm0, xmm1, [rcx]
        #   vpermw ymm0, ymm1, ymm2
        #   vpermw ymm0, ymm1, [rcx]
        #   vpermw zmm0, zmm1, zmm2
        #   vpermw zmm0, zmm1, [rcx]
        def vpermw(*operands,**kwargs) = add_instruction(Instructions::VPERMW,*operands,**kwargs)
        # Load Sparse Packed Byte Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPEXPANDB]
        # @example
        #   vpexpandb opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandb opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandb opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandb opmask(xmm0, k1, zero: true), [rbx]
        #   vpexpandb opmask(ymm0, k1, zero: true), [rbx]
        #   vpexpandb opmask(zmm0, k1, zero: true), [rbx]
        #   vpexpandb xmm0, xmm1
        #   vpexpandb xmm0, [rbx]
        #   vpexpandb ymm0, ymm1
        #   vpexpandb ymm0, [rbx]
        #   vpexpandb zmm0, zmm1
        #   vpexpandb zmm0, [rbx]
        def vpexpandb(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDB,*operands,**kwargs)
        # Load Sparse Packed Doubleword Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPEXPANDD]
        # @example
        #   vpexpandd opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandd opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandd opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandd opmask(xmm0, k1, zero: true), [rbx]
        #   vpexpandd opmask(ymm0, k1, zero: true), [rbx]
        #   vpexpandd opmask(zmm0, k1, zero: true), [rbx]
        #   vpexpandd xmm0, xmm1
        #   vpexpandd xmm0, [rbx]
        #   vpexpandd ymm0, ymm1
        #   vpexpandd ymm0, [rbx]
        #   vpexpandd zmm0, zmm1
        #   vpexpandd zmm0, [rbx]
        def vpexpandd(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDD,*operands,**kwargs)
        # Load Sparse Packed Quadword Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPEXPANDQ]
        # @example
        #   vpexpandq opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandq opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandq opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandq opmask(xmm0, k1, zero: true), [rbx]
        #   vpexpandq opmask(ymm0, k1, zero: true), [rbx]
        #   vpexpandq opmask(zmm0, k1, zero: true), [rbx]
        #   vpexpandq xmm0, xmm1
        #   vpexpandq xmm0, [rbx]
        #   vpexpandq ymm0, ymm1
        #   vpexpandq ymm0, [rbx]
        #   vpexpandq zmm0, zmm1
        #   vpexpandq zmm0, [rbx]
        def vpexpandq(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDQ,*operands,**kwargs)
        # Load Sparse Packed Word Integer Values from Dense Memory/Register
        # @return [Ronin::ASM::X86_64::Instructions::VPEXPANDW]
        # @example
        #   vpexpandw opmask(xmm0, k1, zero: true), xmm1
        #   vpexpandw opmask(ymm0, k1, zero: true), ymm1
        #   vpexpandw opmask(zmm0, k1, zero: true), zmm1
        #   vpexpandw opmask(xmm0, k1, zero: true), [rbx]
        #   vpexpandw opmask(ymm0, k1, zero: true), [rbx]
        #   vpexpandw opmask(zmm0, k1, zero: true), [rbx]
        #   vpexpandw xmm0, xmm1
        #   vpexpandw xmm0, [rbx]
        #   vpexpandw ymm0, ymm1
        #   vpexpandw ymm0, [rbx]
        #   vpexpandw zmm0, zmm1
        #   vpexpandw zmm0, [rbx]
        def vpexpandw(*operands,**kwargs) = add_instruction(Instructions::VPEXPANDW,*operands,**kwargs)
        # Extract Byte
        # @return [Ronin::ASM::X86_64::Instructions::VPEXTRB]
        # @example
        #   vpextrb eax, xmm1, 0x03
        #   vpextrb [rax], xmm1, 0x03
        def vpextrb(*operands,**kwargs) = add_instruction(Instructions::VPEXTRB,*operands,**kwargs)
        # Extract Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPEXTRD]
        # @example
        #   vpextrd eax, xmm1, 0x03
        #   vpextrd [rax], xmm1, 0x03
        def vpextrd(*operands,**kwargs) = add_instruction(Instructions::VPEXTRD,*operands,**kwargs)
        # Extract Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPEXTRQ]
        # @example
        #   vpextrq rax, xmm1, 0x03
        #   vpextrq [rax], xmm1, 0x03
        def vpextrq(*operands,**kwargs) = add_instruction(Instructions::VPEXTRQ,*operands,**kwargs)
        # Extract Word
        # @return [Ronin::ASM::X86_64::Instructions::VPEXTRW]
        # @example
        #   vpextrw eax, xmm1, 0x03
        #   vpextrw [rax], xmm1, 0x03
        def vpextrw(*operands,**kwargs) = add_instruction(Instructions::VPEXTRW,*operands,**kwargs)
        # Gather Packed Doubleword Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPGATHERDD]
        # @example
        #   vpgatherdd opmask(xmm0, k1), [rbx+xmm1*4]
        #   vpgatherdd opmask(ymm0, k1), [rbx+ymm1*4]
        #   vpgatherdd opmask(zmm0, k1), [rbx+zmm1*4]
        #   vpgatherdd xmm0, [rbx+xmm1*4], xmm2
        #   vpgatherdd ymm0, [rbx+ymm1*4], ymm2
        def vpgatherdd(*operands,**kwargs) = add_instruction(Instructions::VPGATHERDD,*operands,**kwargs)
        # Gather Packed Quadword Values Using Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPGATHERDQ]
        # @example
        #   vpgatherdq opmask(xmm0, k1), [rbx+xmm1*4]
        #   vpgatherdq opmask(ymm0, k1), [rbx+xmm1*4]
        #   vpgatherdq opmask(zmm0, k1), [rbx+ymm1*4]
        #   vpgatherdq xmm0, [rbx+xmm1*4], xmm2
        #   vpgatherdq ymm0, [rbx+xmm1*4], ymm2
        def vpgatherdq(*operands,**kwargs) = add_instruction(Instructions::VPGATHERDQ,*operands,**kwargs)
        # Gather Packed Doubleword Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPGATHERQD]
        # @example
        #   vpgatherqd opmask(xmm0, k1), [rbx+xmm1*8]
        #   vpgatherqd opmask(xmm0, k1), [rbx+ymm1*8]
        #   vpgatherqd opmask(ymm0, k1), [rbx+zmm1*8]
        #   vpgatherqd xmm0, [rbx+xmm1*8], xmm2
        #   vpgatherqd xmm0, [rbx+ymm1*8], xmm2
        def vpgatherqd(*operands,**kwargs) = add_instruction(Instructions::VPGATHERQD,*operands,**kwargs)
        # Gather Packed Quadword Values Using Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPGATHERQQ]
        # @example
        #   vpgatherqq opmask(xmm0, k1), [rbx+xmm1*8]
        #   vpgatherqq opmask(ymm0, k1), [rbx+ymm1*8]
        #   vpgatherqq opmask(zmm0, k1), [rbx+zmm1*8]
        #   vpgatherqq xmm0, [rbx+xmm1*8], xmm2
        #   vpgatherqq ymm0, [rbx+ymm1*8], ymm2
        def vpgatherqq(*operands,**kwargs) = add_instruction(Instructions::VPGATHERQQ,*operands,**kwargs)
        # Packed Horizontal Add Signed Byte to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDBD]
        # @example
        #   vphaddbd xmm0, xmm1
        #   vphaddbd xmm0, [rbx]
        def vphaddbd(*operands,**kwargs) = add_instruction(Instructions::VPHADDBD,*operands,**kwargs)
        # Packed Horizontal Add Signed Byte to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDBQ]
        # @example
        #   vphaddbq xmm0, xmm1
        #   vphaddbq xmm0, [rbx]
        def vphaddbq(*operands,**kwargs) = add_instruction(Instructions::VPHADDBQ,*operands,**kwargs)
        # Packed Horizontal Add Signed Byte to Signed Word
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDBW]
        # @example
        #   vphaddbw xmm0, xmm1
        #   vphaddbw xmm0, [rbx]
        def vphaddbw(*operands,**kwargs) = add_instruction(Instructions::VPHADDBW,*operands,**kwargs)
        # Packed Horizontal Add Doubleword Integer
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDD]
        # @example
        #   vphaddd xmm0, xmm1, xmm2
        #   vphaddd xmm0, xmm1, [rcx]
        #   vphaddd ymm0, ymm1, ymm2
        #   vphaddd ymm0, ymm1, [rcx]
        def vphaddd(*operands,**kwargs) = add_instruction(Instructions::VPHADDD,*operands,**kwargs)
        # Packed Horizontal Add Signed Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDDQ]
        # @example
        #   vphadddq xmm0, xmm1
        #   vphadddq xmm0, [rbx]
        def vphadddq(*operands,**kwargs) = add_instruction(Instructions::VPHADDDQ,*operands,**kwargs)
        # Packed Horizontal Add Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDSW]
        # @example
        #   vphaddsw xmm0, xmm1, xmm2
        #   vphaddsw xmm0, xmm1, [rcx]
        #   vphaddsw ymm0, ymm1, ymm2
        #   vphaddsw ymm0, ymm1, [rcx]
        def vphaddsw(*operands,**kwargs) = add_instruction(Instructions::VPHADDSW,*operands,**kwargs)
        # Packed Horizontal Add Unsigned Byte to Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDUBD]
        # @example
        #   vphaddubd xmm0, xmm1
        #   vphaddubd xmm0, [rbx]
        def vphaddubd(*operands,**kwargs) = add_instruction(Instructions::VPHADDUBD,*operands,**kwargs)
        # Packed Horizontal Add Unsigned Byte to Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDUBQ]
        # @example
        #   vphaddubq xmm0, xmm1
        #   vphaddubq xmm0, [rbx]
        def vphaddubq(*operands,**kwargs) = add_instruction(Instructions::VPHADDUBQ,*operands,**kwargs)
        # Packed Horizontal Add Unsigned Byte to Word
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDUBW]
        # @example
        #   vphaddubw xmm0, xmm1
        #   vphaddubw xmm0, [rbx]
        def vphaddubw(*operands,**kwargs) = add_instruction(Instructions::VPHADDUBW,*operands,**kwargs)
        # Packed Horizontal Add Unsigned Doubleword to Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDUDQ]
        # @example
        #   vphaddudq xmm0, xmm1
        #   vphaddudq xmm0, [rbx]
        def vphaddudq(*operands,**kwargs) = add_instruction(Instructions::VPHADDUDQ,*operands,**kwargs)
        # Packed Horizontal Add Unsigned Word to Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDUWD]
        # @example
        #   vphadduwd xmm0, xmm1
        #   vphadduwd xmm0, [rbx]
        def vphadduwd(*operands,**kwargs) = add_instruction(Instructions::VPHADDUWD,*operands,**kwargs)
        # Packed Horizontal Add Unsigned Word to Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDUWQ]
        # @example
        #   vphadduwq xmm0, xmm1
        #   vphadduwq xmm0, [rbx]
        def vphadduwq(*operands,**kwargs) = add_instruction(Instructions::VPHADDUWQ,*operands,**kwargs)
        # Packed Horizontal Add Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDW]
        # @example
        #   vphaddw xmm0, xmm1, xmm2
        #   vphaddw xmm0, xmm1, [rcx]
        #   vphaddw ymm0, ymm1, ymm2
        #   vphaddw ymm0, ymm1, [rcx]
        def vphaddw(*operands,**kwargs) = add_instruction(Instructions::VPHADDW,*operands,**kwargs)
        # Packed Horizontal Add Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDWD]
        # @example
        #   vphaddwd xmm0, xmm1
        #   vphaddwd xmm0, [rbx]
        def vphaddwd(*operands,**kwargs) = add_instruction(Instructions::VPHADDWD,*operands,**kwargs)
        # Packed Horizontal Add Signed Word to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPHADDWQ]
        # @example
        #   vphaddwq xmm0, xmm1
        #   vphaddwq xmm0, [rbx]
        def vphaddwq(*operands,**kwargs) = add_instruction(Instructions::VPHADDWQ,*operands,**kwargs)
        # Packed Horizontal Minimum of Unsigned Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPHMINPOSUW]
        # @example
        #   vphminposuw xmm0, xmm1
        #   vphminposuw xmm0, [rbx]
        def vphminposuw(*operands,**kwargs) = add_instruction(Instructions::VPHMINPOSUW,*operands,**kwargs)
        # Packed Horizontal Subtract Signed Byte to Signed Word
        # @return [Ronin::ASM::X86_64::Instructions::VPHSUBBW]
        # @example
        #   vphsubbw xmm0, xmm1
        #   vphsubbw xmm0, [rbx]
        def vphsubbw(*operands,**kwargs) = add_instruction(Instructions::VPHSUBBW,*operands,**kwargs)
        # Packed Horizontal Subtract Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPHSUBD]
        # @example
        #   vphsubd xmm0, xmm1, xmm2
        #   vphsubd xmm0, xmm1, [rcx]
        #   vphsubd ymm0, ymm1, ymm2
        #   vphsubd ymm0, ymm1, [rcx]
        def vphsubd(*operands,**kwargs) = add_instruction(Instructions::VPHSUBD,*operands,**kwargs)
        # Packed Horizontal Subtract Signed Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPHSUBDQ]
        # @example
        #   vphsubdq xmm0, xmm1
        #   vphsubdq xmm0, [rbx]
        def vphsubdq(*operands,**kwargs) = add_instruction(Instructions::VPHSUBDQ,*operands,**kwargs)
        # Packed Horizontal Subtract Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPHSUBSW]
        # @example
        #   vphsubsw xmm0, xmm1, xmm2
        #   vphsubsw xmm0, xmm1, [rcx]
        #   vphsubsw ymm0, ymm1, ymm2
        #   vphsubsw ymm0, ymm1, [rcx]
        def vphsubsw(*operands,**kwargs) = add_instruction(Instructions::VPHSUBSW,*operands,**kwargs)
        # Packed Horizontal Subtract Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPHSUBW]
        # @example
        #   vphsubw xmm0, xmm1, xmm2
        #   vphsubw xmm0, xmm1, [rcx]
        #   vphsubw ymm0, ymm1, ymm2
        #   vphsubw ymm0, ymm1, [rcx]
        def vphsubw(*operands,**kwargs) = add_instruction(Instructions::VPHSUBW,*operands,**kwargs)
        # Packed Horizontal Subtract Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPHSUBWD]
        # @example
        #   vphsubwd xmm0, xmm1
        #   vphsubwd xmm0, [rbx]
        def vphsubwd(*operands,**kwargs) = add_instruction(Instructions::VPHSUBWD,*operands,**kwargs)
        # Insert Byte
        # @return [Ronin::ASM::X86_64::Instructions::VPINSRB]
        # @example
        #   vpinsrb xmm0, xmm1, ecx, 0x04
        #   vpinsrb xmm0, xmm1, [rcx], 0x04
        def vpinsrb(*operands,**kwargs) = add_instruction(Instructions::VPINSRB,*operands,**kwargs)
        # Insert Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPINSRD]
        # @example
        #   vpinsrd xmm0, xmm1, ecx, 0x04
        #   vpinsrd xmm0, xmm1, [rcx], 0x04
        def vpinsrd(*operands,**kwargs) = add_instruction(Instructions::VPINSRD,*operands,**kwargs)
        # Insert Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPINSRQ]
        # @example
        #   vpinsrq xmm0, xmm1, rcx, 0x04
        #   vpinsrq xmm0, xmm1, [rcx], 0x04
        def vpinsrq(*operands,**kwargs) = add_instruction(Instructions::VPINSRQ,*operands,**kwargs)
        # Insert Word
        # @return [Ronin::ASM::X86_64::Instructions::VPINSRW]
        # @example
        #   vpinsrw xmm0, xmm1, ecx, 0x04
        #   vpinsrw xmm0, xmm1, [rcx], 0x04
        def vpinsrw(*operands,**kwargs) = add_instruction(Instructions::VPINSRW,*operands,**kwargs)
        # Count the Number of Leading Zero Bits for Packed Doubleword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPLZCNTD]
        # @example
        #   vplzcntd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vplzcntd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vplzcntd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vplzcntd opmask(xmm0, k1, zero: true), xmm1
        #   vplzcntd opmask(ymm0, k1, zero: true), ymm1
        #   vplzcntd opmask(zmm0, k1, zero: true), zmm1
        #   vplzcntd xmm0, bcst([rbx], {1=>4})
        #   vplzcntd xmm0, xmm1
        #   vplzcntd ymm0, bcst([rbx], {1=>8})
        #   vplzcntd ymm0, ymm1
        #   vplzcntd zmm0, bcst([rbx], {1=>16})
        #   vplzcntd zmm0, zmm1
        def vplzcntd(*operands,**kwargs) = add_instruction(Instructions::VPLZCNTD,*operands,**kwargs)
        # Count the Number of Leading Zero Bits for Packed Quadword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPLZCNTQ]
        # @example
        #   vplzcntq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vplzcntq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vplzcntq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vplzcntq opmask(xmm0, k1, zero: true), xmm1
        #   vplzcntq opmask(ymm0, k1, zero: true), ymm1
        #   vplzcntq opmask(zmm0, k1, zero: true), zmm1
        #   vplzcntq xmm0, bcst([rbx], {1=>2})
        #   vplzcntq xmm0, xmm1
        #   vplzcntq ymm0, bcst([rbx], {1=>4})
        #   vplzcntq ymm0, ymm1
        #   vplzcntq zmm0, bcst([rbx], {1=>8})
        #   vplzcntq zmm0, zmm1
        def vplzcntq(*operands,**kwargs) = add_instruction(Instructions::VPLZCNTQ,*operands,**kwargs)
        # Packed Multiply Accumulate Signed Doubleword to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSDD]
        # @example
        #   vpmacsdd xmm0, xmm1, xmm2, xmm3
        #   vpmacsdd xmm0, xmm1, [rcx], xmm3
        def vpmacsdd(*operands,**kwargs) = add_instruction(Instructions::VPMACSDD,*operands,**kwargs)
        # Packed Multiply Accumulate Signed High Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSDQH]
        # @example
        #   vpmacsdqh xmm0, xmm1, xmm2, xmm3
        #   vpmacsdqh xmm0, xmm1, [rcx], xmm3
        def vpmacsdqh(*operands,**kwargs) = add_instruction(Instructions::VPMACSDQH,*operands,**kwargs)
        # Packed Multiply Accumulate Signed Low Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSDQL]
        # @example
        #   vpmacsdql xmm0, xmm1, xmm2, xmm3
        #   vpmacsdql xmm0, xmm1, [rcx], xmm3
        def vpmacsdql(*operands,**kwargs) = add_instruction(Instructions::VPMACSDQL,*operands,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Doubleword to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSSDD]
        # @example
        #   vpmacssdd xmm0, xmm1, xmm2, xmm3
        #   vpmacssdd xmm0, xmm1, [rcx], xmm3
        def vpmacssdd(*operands,**kwargs) = add_instruction(Instructions::VPMACSSDD,*operands,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed High Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSSDQH]
        # @example
        #   vpmacssdqh xmm0, xmm1, xmm2, xmm3
        #   vpmacssdqh xmm0, xmm1, [rcx], xmm3
        def vpmacssdqh(*operands,**kwargs) = add_instruction(Instructions::VPMACSSDQH,*operands,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Low Doubleword to Signed Quadword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSSDQL]
        # @example
        #   vpmacssdql xmm0, xmm1, xmm2, xmm3
        #   vpmacssdql xmm0, xmm1, [rcx], xmm3
        def vpmacssdql(*operands,**kwargs) = add_instruction(Instructions::VPMACSSDQL,*operands,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSSWD]
        # @example
        #   vpmacsswd xmm0, xmm1, xmm2, xmm3
        #   vpmacsswd xmm0, xmm1, [rcx], xmm3
        def vpmacsswd(*operands,**kwargs) = add_instruction(Instructions::VPMACSSWD,*operands,**kwargs)
        # Packed Multiply Accumulate with Saturation Signed Word to Signed Word
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSSWW]
        # @example
        #   vpmacssww xmm0, xmm1, xmm2, xmm3
        #   vpmacssww xmm0, xmm1, [rcx], xmm3
        def vpmacssww(*operands,**kwargs) = add_instruction(Instructions::VPMACSSWW,*operands,**kwargs)
        # Packed Multiply Accumulate Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSWD]
        # @example
        #   vpmacswd xmm0, xmm1, xmm2, xmm3
        #   vpmacswd xmm0, xmm1, [rcx], xmm3
        def vpmacswd(*operands,**kwargs) = add_instruction(Instructions::VPMACSWD,*operands,**kwargs)
        # Packed Multiply Accumulate Signed Word to Signed Word
        # @return [Ronin::ASM::X86_64::Instructions::VPMACSWW]
        # @example
        #   vpmacsww xmm0, xmm1, xmm2, xmm3
        #   vpmacsww xmm0, xmm1, [rcx], xmm3
        def vpmacsww(*operands,**kwargs) = add_instruction(Instructions::VPMACSWW,*operands,**kwargs)
        # Packed Multiply Add Accumulate with Saturation Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPMADCSSWD]
        # @example
        #   vpmadcsswd xmm0, xmm1, xmm2, xmm3
        #   vpmadcsswd xmm0, xmm1, [rcx], xmm3
        def vpmadcsswd(*operands,**kwargs) = add_instruction(Instructions::VPMADCSSWD,*operands,**kwargs)
        # Packed Multiply Add Accumulate Signed Word to Signed Doubleword
        # @return [Ronin::ASM::X86_64::Instructions::VPMADCSWD]
        # @example
        #   vpmadcswd xmm0, xmm1, xmm2, xmm3
        #   vpmadcswd xmm0, xmm1, [rcx], xmm3
        def vpmadcswd(*operands,**kwargs) = add_instruction(Instructions::VPMADCSWD,*operands,**kwargs)
        # Packed Multiply of Unsigned 52-bit Unsigned Integers and Add High 52-bit Products to Quadword Accumulators
        # @return [Ronin::ASM::X86_64::Instructions::VPMADD52HUQ]
        # @example
        #   vpmadd52huq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmadd52huq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmadd52huq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmadd52huq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmadd52huq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmadd52huq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmadd52huq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmadd52huq xmm0, xmm1, xmm2
        #   vpmadd52huq xmm0, xmm1, [rcx]
        #   vpmadd52huq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmadd52huq ymm0, ymm1, ymm2
        #   vpmadd52huq ymm0, ymm1, [rcx]
        #   vpmadd52huq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmadd52huq zmm0, zmm1, zmm2
        def vpmadd52huq(*operands,**kwargs) = add_instruction(Instructions::VPMADD52HUQ,*operands,**kwargs)
        # Packed Multiply of Unsigned 52-bit Integers and Add the Low 52-bit Products to Quadword Accumulators
        # @return [Ronin::ASM::X86_64::Instructions::VPMADD52LUQ]
        # @example
        #   vpmadd52luq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmadd52luq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmadd52luq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmadd52luq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmadd52luq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmadd52luq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmadd52luq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmadd52luq xmm0, xmm1, xmm2
        #   vpmadd52luq xmm0, xmm1, [rcx]
        #   vpmadd52luq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmadd52luq ymm0, ymm1, ymm2
        #   vpmadd52luq ymm0, ymm1, [rcx]
        #   vpmadd52luq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmadd52luq zmm0, zmm1, zmm2
        def vpmadd52luq(*operands,**kwargs) = add_instruction(Instructions::VPMADD52LUQ,*operands,**kwargs)
        # Multiply and Add Packed Signed and Unsigned Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMADDUBSW]
        # @example
        #   vpmaddubsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaddubsw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmaddubsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaddubsw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmaddubsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaddubsw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmaddubsw xmm0, xmm1, xmm2
        #   vpmaddubsw xmm0, xmm1, [rcx]
        #   vpmaddubsw ymm0, ymm1, ymm2
        #   vpmaddubsw ymm0, ymm1, [rcx]
        #   vpmaddubsw zmm0, zmm1, zmm2
        #   vpmaddubsw zmm0, zmm1, [rcx]
        def vpmaddubsw(*operands,**kwargs) = add_instruction(Instructions::VPMADDUBSW,*operands,**kwargs)
        # Multiply and Add Packed Signed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMADDWD]
        # @example
        #   vpmaddwd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaddwd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmaddwd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaddwd opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmaddwd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaddwd opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmaddwd xmm0, xmm1, xmm2
        #   vpmaddwd xmm0, xmm1, [rcx]
        #   vpmaddwd ymm0, ymm1, ymm2
        #   vpmaddwd ymm0, ymm1, [rcx]
        #   vpmaddwd zmm0, zmm1, zmm2
        #   vpmaddwd zmm0, zmm1, [rcx]
        def vpmaddwd(*operands,**kwargs) = add_instruction(Instructions::VPMADDWD,*operands,**kwargs)
        # Conditional Move Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMASKMOVD]
        # @example
        #   vpmaskmovd xmm0, xmm1, [rcx]
        #   vpmaskmovd ymm0, ymm1, [rcx]
        #   vpmaskmovd [rax], xmm1, xmm2
        #   vpmaskmovd [rax], ymm1, ymm2
        def vpmaskmovd(*operands,**kwargs) = add_instruction(Instructions::VPMASKMOVD,*operands,**kwargs)
        # Conditional Move Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMASKMOVQ]
        # @example
        #   vpmaskmovq xmm0, xmm1, [rcx]
        #   vpmaskmovq ymm0, ymm1, [rcx]
        #   vpmaskmovq [rax], xmm1, xmm2
        #   vpmaskmovq [rax], ymm1, ymm2
        def vpmaskmovq(*operands,**kwargs) = add_instruction(Instructions::VPMASKMOVQ,*operands,**kwargs)
        # Maximum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXSB]
        # @example
        #   vpmaxsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmaxsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmaxsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmaxsb xmm0, xmm1, xmm2
        #   vpmaxsb xmm0, xmm1, [rcx]
        #   vpmaxsb ymm0, ymm1, ymm2
        #   vpmaxsb ymm0, ymm1, [rcx]
        #   vpmaxsb zmm0, zmm1, zmm2
        #   vpmaxsb zmm0, zmm1, [rcx]
        def vpmaxsb(*operands,**kwargs) = add_instruction(Instructions::VPMAXSB,*operands,**kwargs)
        # Maximum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXSD]
        # @example
        #   vpmaxsd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpmaxsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpmaxsd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpmaxsd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpmaxsd xmm0, xmm1, xmm2
        #   vpmaxsd xmm0, xmm1, [rcx]
        #   vpmaxsd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpmaxsd ymm0, ymm1, ymm2
        #   vpmaxsd ymm0, ymm1, [rcx]
        #   vpmaxsd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpmaxsd zmm0, zmm1, zmm2
        def vpmaxsd(*operands,**kwargs) = add_instruction(Instructions::VPMAXSD,*operands,**kwargs)
        # Maximum of Packed Signed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXSQ]
        # @example
        #   vpmaxsq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmaxsq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmaxsq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmaxsq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmaxsq xmm0, xmm1, xmm2
        #   vpmaxsq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmaxsq ymm0, ymm1, ymm2
        #   vpmaxsq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmaxsq zmm0, zmm1, zmm2
        def vpmaxsq(*operands,**kwargs) = add_instruction(Instructions::VPMAXSQ,*operands,**kwargs)
        # Maximum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXSW]
        # @example
        #   vpmaxsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxsw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmaxsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxsw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmaxsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxsw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmaxsw xmm0, xmm1, xmm2
        #   vpmaxsw xmm0, xmm1, [rcx]
        #   vpmaxsw ymm0, ymm1, ymm2
        #   vpmaxsw ymm0, ymm1, [rcx]
        #   vpmaxsw zmm0, zmm1, zmm2
        #   vpmaxsw zmm0, zmm1, [rcx]
        def vpmaxsw(*operands,**kwargs) = add_instruction(Instructions::VPMAXSW,*operands,**kwargs)
        # Maximum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXUB]
        # @example
        #   vpmaxub opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxub opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmaxub opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxub opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmaxub opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxub opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmaxub xmm0, xmm1, xmm2
        #   vpmaxub xmm0, xmm1, [rcx]
        #   vpmaxub ymm0, ymm1, ymm2
        #   vpmaxub ymm0, ymm1, [rcx]
        #   vpmaxub zmm0, zmm1, zmm2
        #   vpmaxub zmm0, zmm1, [rcx]
        def vpmaxub(*operands,**kwargs) = add_instruction(Instructions::VPMAXUB,*operands,**kwargs)
        # Maximum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXUD]
        # @example
        #   vpmaxud opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpmaxud opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxud opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpmaxud opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxud opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpmaxud opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxud xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpmaxud xmm0, xmm1, xmm2
        #   vpmaxud xmm0, xmm1, [rcx]
        #   vpmaxud ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpmaxud ymm0, ymm1, ymm2
        #   vpmaxud ymm0, ymm1, [rcx]
        #   vpmaxud zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpmaxud zmm0, zmm1, zmm2
        def vpmaxud(*operands,**kwargs) = add_instruction(Instructions::VPMAXUD,*operands,**kwargs)
        # Maximum of Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXUQ]
        # @example
        #   vpmaxuq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmaxuq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxuq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmaxuq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxuq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmaxuq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxuq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmaxuq xmm0, xmm1, xmm2
        #   vpmaxuq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmaxuq ymm0, ymm1, ymm2
        #   vpmaxuq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmaxuq zmm0, zmm1, zmm2
        def vpmaxuq(*operands,**kwargs) = add_instruction(Instructions::VPMAXUQ,*operands,**kwargs)
        # Maximum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMAXUW]
        # @example
        #   vpmaxuw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmaxuw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmaxuw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmaxuw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmaxuw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmaxuw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmaxuw xmm0, xmm1, xmm2
        #   vpmaxuw xmm0, xmm1, [rcx]
        #   vpmaxuw ymm0, ymm1, ymm2
        #   vpmaxuw ymm0, ymm1, [rcx]
        #   vpmaxuw zmm0, zmm1, zmm2
        #   vpmaxuw zmm0, zmm1, [rcx]
        def vpmaxuw(*operands,**kwargs) = add_instruction(Instructions::VPMAXUW,*operands,**kwargs)
        # Minimum of Packed Signed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINSB]
        # @example
        #   vpminsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpminsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpminsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpminsb xmm0, xmm1, xmm2
        #   vpminsb xmm0, xmm1, [rcx]
        #   vpminsb ymm0, ymm1, ymm2
        #   vpminsb ymm0, ymm1, [rcx]
        #   vpminsb zmm0, zmm1, zmm2
        #   vpminsb zmm0, zmm1, [rcx]
        def vpminsb(*operands,**kwargs) = add_instruction(Instructions::VPMINSB,*operands,**kwargs)
        # Minimum of Packed Signed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINSD]
        # @example
        #   vpminsd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpminsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpminsd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpminsd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpminsd xmm0, xmm1, xmm2
        #   vpminsd xmm0, xmm1, [rcx]
        #   vpminsd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpminsd ymm0, ymm1, ymm2
        #   vpminsd ymm0, ymm1, [rcx]
        #   vpminsd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpminsd zmm0, zmm1, zmm2
        def vpminsd(*operands,**kwargs) = add_instruction(Instructions::VPMINSD,*operands,**kwargs)
        # Minimum of Packed Signed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINSQ]
        # @example
        #   vpminsq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpminsq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpminsq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpminsq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpminsq xmm0, xmm1, xmm2
        #   vpminsq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpminsq ymm0, ymm1, ymm2
        #   vpminsq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpminsq zmm0, zmm1, zmm2
        def vpminsq(*operands,**kwargs) = add_instruction(Instructions::VPMINSQ,*operands,**kwargs)
        # Minimum of Packed Signed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINSW]
        # @example
        #   vpminsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminsw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpminsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminsw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpminsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminsw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpminsw xmm0, xmm1, xmm2
        #   vpminsw xmm0, xmm1, [rcx]
        #   vpminsw ymm0, ymm1, ymm2
        #   vpminsw ymm0, ymm1, [rcx]
        #   vpminsw zmm0, zmm1, zmm2
        #   vpminsw zmm0, zmm1, [rcx]
        def vpminsw(*operands,**kwargs) = add_instruction(Instructions::VPMINSW,*operands,**kwargs)
        # Minimum of Packed Unsigned Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINUB]
        # @example
        #   vpminub opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminub opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpminub opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminub opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpminub opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminub opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpminub xmm0, xmm1, xmm2
        #   vpminub xmm0, xmm1, [rcx]
        #   vpminub ymm0, ymm1, ymm2
        #   vpminub ymm0, ymm1, [rcx]
        #   vpminub zmm0, zmm1, zmm2
        #   vpminub zmm0, zmm1, [rcx]
        def vpminub(*operands,**kwargs) = add_instruction(Instructions::VPMINUB,*operands,**kwargs)
        # Minimum of Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINUD]
        # @example
        #   vpminud opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpminud opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminud opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpminud opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminud opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpminud opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminud xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpminud xmm0, xmm1, xmm2
        #   vpminud xmm0, xmm1, [rcx]
        #   vpminud ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpminud ymm0, ymm1, ymm2
        #   vpminud ymm0, ymm1, [rcx]
        #   vpminud zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpminud zmm0, zmm1, zmm2
        def vpminud(*operands,**kwargs) = add_instruction(Instructions::VPMINUD,*operands,**kwargs)
        # Minimum of Packed Unsigned Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINUQ]
        # @example
        #   vpminuq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpminuq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminuq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpminuq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminuq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpminuq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminuq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpminuq xmm0, xmm1, xmm2
        #   vpminuq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpminuq ymm0, ymm1, ymm2
        #   vpminuq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpminuq zmm0, zmm1, zmm2
        def vpminuq(*operands,**kwargs) = add_instruction(Instructions::VPMINUQ,*operands,**kwargs)
        # Minimum of Packed Unsigned Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMINUW]
        # @example
        #   vpminuw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpminuw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpminuw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpminuw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpminuw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpminuw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpminuw xmm0, xmm1, xmm2
        #   vpminuw xmm0, xmm1, [rcx]
        #   vpminuw ymm0, ymm1, ymm2
        #   vpminuw ymm0, ymm1, [rcx]
        #   vpminuw zmm0, zmm1, zmm2
        #   vpminuw zmm0, zmm1, [rcx]
        def vpminuw(*operands,**kwargs) = add_instruction(Instructions::VPMINUW,*operands,**kwargs)
        # Move Signs of Packed Byte Integers to Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVB2M]
        # @example
        #   vpmovb2m k1, xmm1
        #   vpmovb2m k1, ymm1
        #   vpmovb2m k1, zmm1
        def vpmovb2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVB2M,*operands,**kwargs)
        # Move Signs of Packed Doubleword Integers to Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVD2M]
        # @example
        #   vpmovd2m k1, xmm1
        #   vpmovd2m k1, ymm1
        #   vpmovd2m k1, zmm1
        def vpmovd2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVD2M,*operands,**kwargs)
        # Down Convert Packed Doubleword Values to Byte Values with Truncation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVDB]
        # @example
        #   vpmovdb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovdb opmask([rax], k1), xmm1
        #   vpmovdb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovdb opmask([rax], k1), ymm1
        #   vpmovdb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovdb opmask([rax], k1), zmm1
        #   vpmovdb xmm0, xmm1
        #   vpmovdb xmm0, ymm1
        #   vpmovdb xmm0, zmm1
        #   vpmovdb [rax], xmm1
        #   vpmovdb [rax], ymm1
        #   vpmovdb [rax], zmm1
        def vpmovdb(*operands,**kwargs) = add_instruction(Instructions::VPMOVDB,*operands,**kwargs)
        # Down Convert Packed Doubleword Values to Word Values with Truncation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVDW]
        # @example
        #   vpmovdw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovdw opmask([rax], k1), xmm1
        #   vpmovdw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovdw opmask([rax], k1), ymm1
        #   vpmovdw opmask(ymm0, k1, zero: true), zmm1
        #   vpmovdw opmask([rax], k1), zmm1
        #   vpmovdw xmm0, xmm1
        #   vpmovdw xmm0, ymm1
        #   vpmovdw ymm0, zmm1
        #   vpmovdw [rax], xmm1
        #   vpmovdw [rax], ymm1
        #   vpmovdw [rax], zmm1
        def vpmovdw(*operands,**kwargs) = add_instruction(Instructions::VPMOVDW,*operands,**kwargs)
        # Expand Bits of Mask Register to Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVM2B]
        # @example
        #   vpmovm2b xmm0, k2
        #   vpmovm2b ymm0, k2
        #   vpmovm2b zmm0, k2
        def vpmovm2b(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2B,*operands,**kwargs)
        # Expand Bits of Mask Register to Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVM2D]
        # @example
        #   vpmovm2d xmm0, k2
        #   vpmovm2d ymm0, k2
        #   vpmovm2d zmm0, k2
        def vpmovm2d(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2D,*operands,**kwargs)
        # Expand Bits of Mask Register to Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVM2Q]
        # @example
        #   vpmovm2q xmm0, k2
        #   vpmovm2q ymm0, k2
        #   vpmovm2q zmm0, k2
        def vpmovm2q(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2Q,*operands,**kwargs)
        # Expand Bits of Mask Register to Packed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVM2W]
        # @example
        #   vpmovm2w xmm0, k2
        #   vpmovm2w ymm0, k2
        #   vpmovm2w zmm0, k2
        def vpmovm2w(*operands,**kwargs) = add_instruction(Instructions::VPMOVM2W,*operands,**kwargs)
        # Move Byte Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVMSKB]
        # @example
        #   vpmovmskb eax, xmm1
        #   vpmovmskb eax, ymm1
        def vpmovmskb(*operands,**kwargs) = add_instruction(Instructions::VPMOVMSKB,*operands,**kwargs)
        # Move Signs of Packed Quadword Integers to Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVQ2M]
        # @example
        #   vpmovq2m k1, xmm1
        #   vpmovq2m k1, ymm1
        #   vpmovq2m k1, zmm1
        def vpmovq2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVQ2M,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Byte Values with Truncation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVQB]
        # @example
        #   vpmovqb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovqb opmask([rax], k1), xmm1
        #   vpmovqb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovqb opmask([rax], k1), ymm1
        #   vpmovqb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovqb opmask([rax], k1), zmm1
        #   vpmovqb xmm0, xmm1
        #   vpmovqb xmm0, ymm1
        #   vpmovqb xmm0, zmm1
        #   vpmovqb [rax], xmm1
        #   vpmovqb [rax], ymm1
        #   vpmovqb [rax], zmm1
        def vpmovqb(*operands,**kwargs) = add_instruction(Instructions::VPMOVQB,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Doubleword Values with Truncation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVQD]
        # @example
        #   vpmovqd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovqd opmask([rax], k1), xmm1
        #   vpmovqd opmask(xmm0, k1, zero: true), ymm1
        #   vpmovqd opmask([rax], k1), ymm1
        #   vpmovqd opmask(ymm0, k1, zero: true), zmm1
        #   vpmovqd opmask([rax], k1), zmm1
        #   vpmovqd xmm0, xmm1
        #   vpmovqd xmm0, ymm1
        #   vpmovqd ymm0, zmm1
        #   vpmovqd [rax], xmm1
        #   vpmovqd [rax], ymm1
        #   vpmovqd [rax], zmm1
        def vpmovqd(*operands,**kwargs) = add_instruction(Instructions::VPMOVQD,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Word Values with Truncation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVQW]
        # @example
        #   vpmovqw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovqw opmask([rax], k1), xmm1
        #   vpmovqw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovqw opmask([rax], k1), ymm1
        #   vpmovqw opmask(xmm0, k1, zero: true), zmm1
        #   vpmovqw opmask([rax], k1), zmm1
        #   vpmovqw xmm0, xmm1
        #   vpmovqw xmm0, ymm1
        #   vpmovqw xmm0, zmm1
        #   vpmovqw [rax], xmm1
        #   vpmovqw [rax], ymm1
        #   vpmovqw [rax], zmm1
        def vpmovqw(*operands,**kwargs) = add_instruction(Instructions::VPMOVQW,*operands,**kwargs)
        # Down Convert Packed Doubleword Values to Byte Values with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSDB]
        # @example
        #   vpmovsdb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsdb opmask([rax], k1), xmm1
        #   vpmovsdb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsdb opmask([rax], k1), ymm1
        #   vpmovsdb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovsdb opmask([rax], k1), zmm1
        #   vpmovsdb xmm0, xmm1
        #   vpmovsdb xmm0, ymm1
        #   vpmovsdb xmm0, zmm1
        #   vpmovsdb [rax], xmm1
        #   vpmovsdb [rax], ymm1
        #   vpmovsdb [rax], zmm1
        def vpmovsdb(*operands,**kwargs) = add_instruction(Instructions::VPMOVSDB,*operands,**kwargs)
        # Down Convert Packed Doubleword Values to Word Values with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSDW]
        # @example
        #   vpmovsdw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsdw opmask([rax], k1), xmm1
        #   vpmovsdw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsdw opmask([rax], k1), ymm1
        #   vpmovsdw opmask(ymm0, k1, zero: true), zmm1
        #   vpmovsdw opmask([rax], k1), zmm1
        #   vpmovsdw xmm0, xmm1
        #   vpmovsdw xmm0, ymm1
        #   vpmovsdw ymm0, zmm1
        #   vpmovsdw [rax], xmm1
        #   vpmovsdw [rax], ymm1
        #   vpmovsdw [rax], zmm1
        def vpmovsdw(*operands,**kwargs) = add_instruction(Instructions::VPMOVSDW,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Byte Values with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSQB]
        # @example
        #   vpmovsqb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsqb opmask([rax], k1), xmm1
        #   vpmovsqb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsqb opmask([rax], k1), ymm1
        #   vpmovsqb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovsqb opmask([rax], k1), zmm1
        #   vpmovsqb xmm0, xmm1
        #   vpmovsqb xmm0, ymm1
        #   vpmovsqb xmm0, zmm1
        #   vpmovsqb [rax], xmm1
        #   vpmovsqb [rax], ymm1
        #   vpmovsqb [rax], zmm1
        def vpmovsqb(*operands,**kwargs) = add_instruction(Instructions::VPMOVSQB,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Doubleword Values with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSQD]
        # @example
        #   vpmovsqd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsqd opmask([rax], k1), xmm1
        #   vpmovsqd opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsqd opmask([rax], k1), ymm1
        #   vpmovsqd opmask(ymm0, k1, zero: true), zmm1
        #   vpmovsqd opmask([rax], k1), zmm1
        #   vpmovsqd xmm0, xmm1
        #   vpmovsqd xmm0, ymm1
        #   vpmovsqd ymm0, zmm1
        #   vpmovsqd [rax], xmm1
        #   vpmovsqd [rax], ymm1
        #   vpmovsqd [rax], zmm1
        def vpmovsqd(*operands,**kwargs) = add_instruction(Instructions::VPMOVSQD,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Word Values with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSQW]
        # @example
        #   vpmovsqw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsqw opmask([rax], k1), xmm1
        #   vpmovsqw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovsqw opmask([rax], k1), ymm1
        #   vpmovsqw opmask(xmm0, k1, zero: true), zmm1
        #   vpmovsqw opmask([rax], k1), zmm1
        #   vpmovsqw xmm0, xmm1
        #   vpmovsqw xmm0, ymm1
        #   vpmovsqw xmm0, zmm1
        #   vpmovsqw [rax], xmm1
        #   vpmovsqw [rax], ymm1
        #   vpmovsqw [rax], zmm1
        def vpmovsqw(*operands,**kwargs) = add_instruction(Instructions::VPMOVSQW,*operands,**kwargs)
        # Down Convert Packed Word Values to Byte Values with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSWB]
        # @example
        #   vpmovswb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovswb opmask([rax], k1), xmm1
        #   vpmovswb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovswb opmask([rax], k1), ymm1
        #   vpmovswb opmask(ymm0, k1, zero: true), zmm1
        #   vpmovswb opmask([rax], k1), zmm1
        #   vpmovswb xmm0, xmm1
        #   vpmovswb xmm0, ymm1
        #   vpmovswb ymm0, zmm1
        #   vpmovswb [rax], xmm1
        #   vpmovswb [rax], ymm1
        #   vpmovswb [rax], zmm1
        def vpmovswb(*operands,**kwargs) = add_instruction(Instructions::VPMOVSWB,*operands,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSXBD]
        # @example
        #   vpmovsxbd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxbd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxbd opmask(zmm0, k1, zero: true), xmm1
        #   vpmovsxbd opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovsxbd opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovsxbd opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovsxbd xmm0, xmm1
        #   vpmovsxbd xmm0, [rbx]
        #   vpmovsxbd ymm0, xmm1
        #   vpmovsxbd ymm0, [rbx]
        #   vpmovsxbd zmm0, xmm1
        #   vpmovsxbd zmm0, [rbx]
        def vpmovsxbd(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXBD,*operands,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSXBQ]
        # @example
        #   vpmovsxbq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxbq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxbq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovsxbq opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovsxbq opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovsxbq opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovsxbq xmm0, xmm1
        #   vpmovsxbq xmm0, [rbx]
        #   vpmovsxbq ymm0, xmm1
        #   vpmovsxbq ymm0, [rbx]
        #   vpmovsxbq zmm0, xmm1
        #   vpmovsxbq zmm0, [rbx]
        def vpmovsxbq(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXBQ,*operands,**kwargs)
        # Move Packed Byte Integers to Word Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSXBW]
        # @example
        #   vpmovsxbw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxbw opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxbw opmask(zmm0, k1, zero: true), ymm1
        #   vpmovsxbw opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovsxbw opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovsxbw opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovsxbw xmm0, xmm1
        #   vpmovsxbw xmm0, [rbx]
        #   vpmovsxbw ymm0, xmm1
        #   vpmovsxbw ymm0, [rbx]
        #   vpmovsxbw zmm0, ymm1
        #   vpmovsxbw zmm0, [rbx]
        def vpmovsxbw(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXBW,*operands,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSXDQ]
        # @example
        #   vpmovsxdq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxdq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxdq opmask(zmm0, k1, zero: true), ymm1
        #   vpmovsxdq opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovsxdq opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovsxdq opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovsxdq xmm0, xmm1
        #   vpmovsxdq xmm0, [rbx]
        #   vpmovsxdq ymm0, xmm1
        #   vpmovsxdq ymm0, [rbx]
        #   vpmovsxdq zmm0, ymm1
        #   vpmovsxdq zmm0, [rbx]
        def vpmovsxdq(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXDQ,*operands,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSXWD]
        # @example
        #   vpmovsxwd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxwd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxwd opmask(zmm0, k1, zero: true), ymm1
        #   vpmovsxwd opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovsxwd opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovsxwd opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovsxwd xmm0, xmm1
        #   vpmovsxwd xmm0, [rbx]
        #   vpmovsxwd ymm0, xmm1
        #   vpmovsxwd ymm0, [rbx]
        #   vpmovsxwd zmm0, ymm1
        #   vpmovsxwd zmm0, [rbx]
        def vpmovsxwd(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXWD,*operands,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Sign Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVSXWQ]
        # @example
        #   vpmovsxwq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovsxwq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovsxwq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovsxwq opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovsxwq opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovsxwq opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovsxwq xmm0, xmm1
        #   vpmovsxwq xmm0, [rbx]
        #   vpmovsxwq ymm0, xmm1
        #   vpmovsxwq ymm0, [rbx]
        #   vpmovsxwq zmm0, xmm1
        #   vpmovsxwq zmm0, [rbx]
        def vpmovsxwq(*operands,**kwargs) = add_instruction(Instructions::VPMOVSXWQ,*operands,**kwargs)
        # Down Convert Packed Doubleword Values to Byte Values with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVUSDB]
        # @example
        #   vpmovusdb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusdb opmask([rax], k1), xmm1
        #   vpmovusdb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusdb opmask([rax], k1), ymm1
        #   vpmovusdb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovusdb opmask([rax], k1), zmm1
        #   vpmovusdb xmm0, xmm1
        #   vpmovusdb xmm0, ymm1
        #   vpmovusdb xmm0, zmm1
        #   vpmovusdb [rax], xmm1
        #   vpmovusdb [rax], ymm1
        #   vpmovusdb [rax], zmm1
        def vpmovusdb(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSDB,*operands,**kwargs)
        # Down Convert Packed Doubleword Values to Word Values with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVUSDW]
        # @example
        #   vpmovusdw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusdw opmask([rax], k1), xmm1
        #   vpmovusdw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusdw opmask([rax], k1), ymm1
        #   vpmovusdw opmask(ymm0, k1, zero: true), zmm1
        #   vpmovusdw opmask([rax], k1), zmm1
        #   vpmovusdw xmm0, xmm1
        #   vpmovusdw xmm0, ymm1
        #   vpmovusdw ymm0, zmm1
        #   vpmovusdw [rax], xmm1
        #   vpmovusdw [rax], ymm1
        #   vpmovusdw [rax], zmm1
        def vpmovusdw(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSDW,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Byte Values with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVUSQB]
        # @example
        #   vpmovusqb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusqb opmask([rax], k1), xmm1
        #   vpmovusqb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusqb opmask([rax], k1), ymm1
        #   vpmovusqb opmask(xmm0, k1, zero: true), zmm1
        #   vpmovusqb opmask([rax], k1), zmm1
        #   vpmovusqb xmm0, xmm1
        #   vpmovusqb xmm0, ymm1
        #   vpmovusqb xmm0, zmm1
        #   vpmovusqb [rax], xmm1
        #   vpmovusqb [rax], ymm1
        #   vpmovusqb [rax], zmm1
        def vpmovusqb(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSQB,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Doubleword Values with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVUSQD]
        # @example
        #   vpmovusqd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusqd opmask([rax], k1), xmm1
        #   vpmovusqd opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusqd opmask([rax], k1), ymm1
        #   vpmovusqd opmask(ymm0, k1, zero: true), zmm1
        #   vpmovusqd opmask([rax], k1), zmm1
        #   vpmovusqd xmm0, xmm1
        #   vpmovusqd xmm0, ymm1
        #   vpmovusqd ymm0, zmm1
        #   vpmovusqd [rax], xmm1
        #   vpmovusqd [rax], ymm1
        #   vpmovusqd [rax], zmm1
        def vpmovusqd(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSQD,*operands,**kwargs)
        # Down Convert Packed Quadword Values to Word Values with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVUSQW]
        # @example
        #   vpmovusqw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovusqw opmask([rax], k1), xmm1
        #   vpmovusqw opmask(xmm0, k1, zero: true), ymm1
        #   vpmovusqw opmask([rax], k1), ymm1
        #   vpmovusqw opmask(xmm0, k1, zero: true), zmm1
        #   vpmovusqw opmask([rax], k1), zmm1
        #   vpmovusqw xmm0, xmm1
        #   vpmovusqw xmm0, ymm1
        #   vpmovusqw xmm0, zmm1
        #   vpmovusqw [rax], xmm1
        #   vpmovusqw [rax], ymm1
        #   vpmovusqw [rax], zmm1
        def vpmovusqw(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSQW,*operands,**kwargs)
        # Down Convert Packed Word Values to Byte Values with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVUSWB]
        # @example
        #   vpmovuswb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovuswb opmask([rax], k1), xmm1
        #   vpmovuswb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovuswb opmask([rax], k1), ymm1
        #   vpmovuswb opmask(ymm0, k1, zero: true), zmm1
        #   vpmovuswb opmask([rax], k1), zmm1
        #   vpmovuswb xmm0, xmm1
        #   vpmovuswb xmm0, ymm1
        #   vpmovuswb ymm0, zmm1
        #   vpmovuswb [rax], xmm1
        #   vpmovuswb [rax], ymm1
        #   vpmovuswb [rax], zmm1
        def vpmovuswb(*operands,**kwargs) = add_instruction(Instructions::VPMOVUSWB,*operands,**kwargs)
        # Move Signs of Packed Word Integers to Mask Register
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVW2M]
        # @example
        #   vpmovw2m k1, xmm1
        #   vpmovw2m k1, ymm1
        #   vpmovw2m k1, zmm1
        def vpmovw2m(*operands,**kwargs) = add_instruction(Instructions::VPMOVW2M,*operands,**kwargs)
        # Down Convert Packed Word Values to Byte Values with Truncation
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVWB]
        # @example
        #   vpmovwb opmask(xmm0, k1, zero: true), xmm1
        #   vpmovwb opmask([rax], k1), xmm1
        #   vpmovwb opmask(xmm0, k1, zero: true), ymm1
        #   vpmovwb opmask([rax], k1), ymm1
        #   vpmovwb opmask(ymm0, k1, zero: true), zmm1
        #   vpmovwb opmask([rax], k1), zmm1
        #   vpmovwb xmm0, xmm1
        #   vpmovwb xmm0, ymm1
        #   vpmovwb ymm0, zmm1
        #   vpmovwb [rax], xmm1
        #   vpmovwb [rax], ymm1
        #   vpmovwb [rax], zmm1
        def vpmovwb(*operands,**kwargs) = add_instruction(Instructions::VPMOVWB,*operands,**kwargs)
        # Move Packed Byte Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVZXBD]
        # @example
        #   vpmovzxbd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxbd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxbd opmask(zmm0, k1, zero: true), xmm1
        #   vpmovzxbd opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovzxbd opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovzxbd opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovzxbd xmm0, xmm1
        #   vpmovzxbd xmm0, [rbx]
        #   vpmovzxbd ymm0, xmm1
        #   vpmovzxbd ymm0, [rbx]
        #   vpmovzxbd zmm0, xmm1
        #   vpmovzxbd zmm0, [rbx]
        def vpmovzxbd(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXBD,*operands,**kwargs)
        # Move Packed Byte Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVZXBQ]
        # @example
        #   vpmovzxbq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxbq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxbq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovzxbq opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovzxbq opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovzxbq opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovzxbq xmm0, xmm1
        #   vpmovzxbq xmm0, [rbx]
        #   vpmovzxbq ymm0, xmm1
        #   vpmovzxbq ymm0, [rbx]
        #   vpmovzxbq zmm0, xmm1
        #   vpmovzxbq zmm0, [rbx]
        def vpmovzxbq(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXBQ,*operands,**kwargs)
        # Move Packed Byte Integers to Word Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVZXBW]
        # @example
        #   vpmovzxbw opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxbw opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxbw opmask(zmm0, k1, zero: true), ymm1
        #   vpmovzxbw opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovzxbw opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovzxbw opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovzxbw xmm0, xmm1
        #   vpmovzxbw xmm0, [rbx]
        #   vpmovzxbw ymm0, xmm1
        #   vpmovzxbw ymm0, [rbx]
        #   vpmovzxbw zmm0, ymm1
        #   vpmovzxbw zmm0, [rbx]
        def vpmovzxbw(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXBW,*operands,**kwargs)
        # Move Packed Doubleword Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVZXDQ]
        # @example
        #   vpmovzxdq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxdq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxdq opmask(zmm0, k1, zero: true), ymm1
        #   vpmovzxdq opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovzxdq opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovzxdq opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovzxdq xmm0, xmm1
        #   vpmovzxdq xmm0, [rbx]
        #   vpmovzxdq ymm0, xmm1
        #   vpmovzxdq ymm0, [rbx]
        #   vpmovzxdq zmm0, ymm1
        #   vpmovzxdq zmm0, [rbx]
        def vpmovzxdq(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXDQ,*operands,**kwargs)
        # Move Packed Word Integers to Doubleword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVZXWD]
        # @example
        #   vpmovzxwd opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxwd opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxwd opmask(zmm0, k1, zero: true), ymm1
        #   vpmovzxwd opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovzxwd opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovzxwd opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovzxwd xmm0, xmm1
        #   vpmovzxwd xmm0, [rbx]
        #   vpmovzxwd ymm0, xmm1
        #   vpmovzxwd ymm0, [rbx]
        #   vpmovzxwd zmm0, ymm1
        #   vpmovzxwd zmm0, [rbx]
        def vpmovzxwd(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXWD,*operands,**kwargs)
        # Move Packed Word Integers to Quadword Integers with Zero Extension
        # @return [Ronin::ASM::X86_64::Instructions::VPMOVZXWQ]
        # @example
        #   vpmovzxwq opmask(xmm0, k1, zero: true), xmm1
        #   vpmovzxwq opmask(ymm0, k1, zero: true), xmm1
        #   vpmovzxwq opmask(zmm0, k1, zero: true), xmm1
        #   vpmovzxwq opmask(xmm0, k1, zero: true), [rbx]
        #   vpmovzxwq opmask(ymm0, k1, zero: true), [rbx]
        #   vpmovzxwq opmask(zmm0, k1, zero: true), [rbx]
        #   vpmovzxwq xmm0, xmm1
        #   vpmovzxwq xmm0, [rbx]
        #   vpmovzxwq ymm0, xmm1
        #   vpmovzxwq ymm0, [rbx]
        #   vpmovzxwq zmm0, xmm1
        #   vpmovzxwq zmm0, [rbx]
        def vpmovzxwq(*operands,**kwargs) = add_instruction(Instructions::VPMOVZXWQ,*operands,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Quadword Result
        # @return [Ronin::ASM::X86_64::Instructions::VPMULDQ]
        # @example
        #   vpmuldq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmuldq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmuldq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmuldq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmuldq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmuldq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmuldq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmuldq xmm0, xmm1, xmm2
        #   vpmuldq xmm0, xmm1, [rcx]
        #   vpmuldq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmuldq ymm0, ymm1, ymm2
        #   vpmuldq ymm0, ymm1, [rcx]
        #   vpmuldq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmuldq zmm0, zmm1, zmm2
        def vpmuldq(*operands,**kwargs) = add_instruction(Instructions::VPMULDQ,*operands,**kwargs)
        # Packed Multiply Signed Word Integers and Store High Result with Round and Scale
        # @return [Ronin::ASM::X86_64::Instructions::VPMULHRSW]
        # @example
        #   vpmulhrsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulhrsw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmulhrsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulhrsw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmulhrsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulhrsw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmulhrsw xmm0, xmm1, xmm2
        #   vpmulhrsw xmm0, xmm1, [rcx]
        #   vpmulhrsw ymm0, ymm1, ymm2
        #   vpmulhrsw ymm0, ymm1, [rcx]
        #   vpmulhrsw zmm0, zmm1, zmm2
        #   vpmulhrsw zmm0, zmm1, [rcx]
        def vpmulhrsw(*operands,**kwargs) = add_instruction(Instructions::VPMULHRSW,*operands,**kwargs)
        # Multiply Packed Unsigned Word Integers and Store High Result
        # @return [Ronin::ASM::X86_64::Instructions::VPMULHUW]
        # @example
        #   vpmulhuw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulhuw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmulhuw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulhuw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmulhuw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulhuw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmulhuw xmm0, xmm1, xmm2
        #   vpmulhuw xmm0, xmm1, [rcx]
        #   vpmulhuw ymm0, ymm1, ymm2
        #   vpmulhuw ymm0, ymm1, [rcx]
        #   vpmulhuw zmm0, zmm1, zmm2
        #   vpmulhuw zmm0, zmm1, [rcx]
        def vpmulhuw(*operands,**kwargs) = add_instruction(Instructions::VPMULHUW,*operands,**kwargs)
        # Multiply Packed Signed Word Integers and Store High Result
        # @return [Ronin::ASM::X86_64::Instructions::VPMULHW]
        # @example
        #   vpmulhw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulhw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmulhw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulhw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmulhw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulhw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmulhw xmm0, xmm1, xmm2
        #   vpmulhw xmm0, xmm1, [rcx]
        #   vpmulhw ymm0, ymm1, ymm2
        #   vpmulhw ymm0, ymm1, [rcx]
        #   vpmulhw zmm0, zmm1, zmm2
        #   vpmulhw zmm0, zmm1, [rcx]
        def vpmulhw(*operands,**kwargs) = add_instruction(Instructions::VPMULHW,*operands,**kwargs)
        # Multiply Packed Signed Doubleword Integers and Store Low Result
        # @return [Ronin::ASM::X86_64::Instructions::VPMULLD]
        # @example
        #   vpmulld opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpmulld opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmulld opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpmulld opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmulld opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpmulld opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmulld xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpmulld xmm0, xmm1, xmm2
        #   vpmulld xmm0, xmm1, [rcx]
        #   vpmulld ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpmulld ymm0, ymm1, ymm2
        #   vpmulld ymm0, ymm1, [rcx]
        #   vpmulld zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpmulld zmm0, zmm1, zmm2
        def vpmulld(*operands,**kwargs) = add_instruction(Instructions::VPMULLD,*operands,**kwargs)
        # Multiply Packed Signed Quadword Integers and Store Low Result
        # @return [Ronin::ASM::X86_64::Instructions::VPMULLQ]
        # @example
        #   vpmullq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmullq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmullq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmullq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmullq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmullq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmullq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmullq xmm0, xmm1, xmm2
        #   vpmullq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmullq ymm0, ymm1, ymm2
        #   vpmullq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmullq zmm0, zmm1, zmm2
        def vpmullq(*operands,**kwargs) = add_instruction(Instructions::VPMULLQ,*operands,**kwargs)
        # Multiply Packed Signed Word Integers and Store Low Result
        # @return [Ronin::ASM::X86_64::Instructions::VPMULLW]
        # @example
        #   vpmullw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmullw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpmullw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmullw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpmullw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmullw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpmullw xmm0, xmm1, xmm2
        #   vpmullw xmm0, xmm1, [rcx]
        #   vpmullw ymm0, ymm1, ymm2
        #   vpmullw ymm0, ymm1, [rcx]
        #   vpmullw zmm0, zmm1, zmm2
        #   vpmullw zmm0, zmm1, [rcx]
        def vpmullw(*operands,**kwargs) = add_instruction(Instructions::VPMULLW,*operands,**kwargs)
        # Select Packed Unaligned Bytes from Quadword Sources
        # @return [Ronin::ASM::X86_64::Instructions::VPMULTISHIFTQB]
        # @example
        #   vpmultishiftqb opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmultishiftqb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmultishiftqb opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmultishiftqb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmultishiftqb opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmultishiftqb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmultishiftqb xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmultishiftqb xmm0, xmm1, xmm2
        #   vpmultishiftqb ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmultishiftqb ymm0, ymm1, ymm2
        #   vpmultishiftqb zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmultishiftqb zmm0, zmm1, zmm2
        def vpmultishiftqb(*operands,**kwargs) = add_instruction(Instructions::VPMULTISHIFTQB,*operands,**kwargs)
        # Multiply Packed Unsigned Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPMULUDQ]
        # @example
        #   vpmuludq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpmuludq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpmuludq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpmuludq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpmuludq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpmuludq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpmuludq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpmuludq xmm0, xmm1, xmm2
        #   vpmuludq xmm0, xmm1, [rcx]
        #   vpmuludq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpmuludq ymm0, ymm1, ymm2
        #   vpmuludq ymm0, ymm1, [rcx]
        #   vpmuludq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpmuludq zmm0, zmm1, zmm2
        def vpmuludq(*operands,**kwargs) = add_instruction(Instructions::VPMULUDQ,*operands,**kwargs)
        # Packed Population Count for Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPOPCNTB]
        # @example
        #   vpopcntb opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntb opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntb opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntb opmask(xmm0, k1, zero: true), [rbx]
        #   vpopcntb opmask(ymm0, k1, zero: true), [rbx]
        #   vpopcntb opmask(zmm0, k1, zero: true), [rbx]
        #   vpopcntb xmm0, xmm1
        #   vpopcntb xmm0, [rbx]
        #   vpopcntb ymm0, ymm1
        #   vpopcntb ymm0, [rbx]
        #   vpopcntb zmm0, zmm1
        #   vpopcntb zmm0, [rbx]
        def vpopcntb(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTB,*operands,**kwargs)
        # Packed Population Count for Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPOPCNTD]
        # @example
        #   vpopcntd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vpopcntd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vpopcntd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vpopcntd opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntd opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntd opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntd xmm0, bcst([rbx], {1=>4})
        #   vpopcntd xmm0, xmm1
        #   vpopcntd ymm0, bcst([rbx], {1=>8})
        #   vpopcntd ymm0, ymm1
        #   vpopcntd zmm0, bcst([rbx], {1=>16})
        #   vpopcntd zmm0, zmm1
        def vpopcntd(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTD,*operands,**kwargs)
        # Packed Population Count for Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPOPCNTQ]
        # @example
        #   vpopcntq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vpopcntq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vpopcntq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vpopcntq opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntq opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntq opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntq xmm0, bcst([rbx], {1=>2})
        #   vpopcntq xmm0, xmm1
        #   vpopcntq ymm0, bcst([rbx], {1=>4})
        #   vpopcntq ymm0, ymm1
        #   vpopcntq zmm0, bcst([rbx], {1=>8})
        #   vpopcntq zmm0, zmm1
        def vpopcntq(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTQ,*operands,**kwargs)
        # Packed Population Count for Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPOPCNTW]
        # @example
        #   vpopcntw opmask(xmm0, k1, zero: true), xmm1
        #   vpopcntw opmask(ymm0, k1, zero: true), ymm1
        #   vpopcntw opmask(zmm0, k1, zero: true), zmm1
        #   vpopcntw opmask(xmm0, k1, zero: true), [rbx]
        #   vpopcntw opmask(ymm0, k1, zero: true), [rbx]
        #   vpopcntw opmask(zmm0, k1, zero: true), [rbx]
        #   vpopcntw xmm0, xmm1
        #   vpopcntw xmm0, [rbx]
        #   vpopcntw ymm0, ymm1
        #   vpopcntw ymm0, [rbx]
        #   vpopcntw zmm0, zmm1
        #   vpopcntw zmm0, [rbx]
        def vpopcntw(*operands,**kwargs) = add_instruction(Instructions::VPOPCNTW,*operands,**kwargs)
        # Packed Bitwise Logical OR
        # @return [Ronin::ASM::X86_64::Instructions::VPOR]
        # @example
        #   vpor xmm0, xmm1, xmm2
        #   vpor xmm0, xmm1, [rcx]
        #   vpor ymm0, ymm1, ymm2
        #   vpor ymm0, ymm1, [rcx]
        def vpor(*operands,**kwargs) = add_instruction(Instructions::VPOR,*operands,**kwargs)
        # Bitwise Logical OR of Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPORD]
        # @example
        #   vpord opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpord opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpord opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpord opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpord opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpord opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpord xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpord xmm0, xmm1, xmm2
        #   vpord ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpord ymm0, ymm1, ymm2
        #   vpord zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpord zmm0, zmm1, zmm2
        def vpord(*operands,**kwargs) = add_instruction(Instructions::VPORD,*operands,**kwargs)
        # Bitwise Logical OR of Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPORQ]
        # @example
        #   vporq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vporq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vporq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vporq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vporq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vporq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vporq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vporq xmm0, xmm1, xmm2
        #   vporq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vporq ymm0, ymm1, ymm2
        #   vporq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vporq zmm0, zmm1, zmm2
        def vporq(*operands,**kwargs) = add_instruction(Instructions::VPORQ,*operands,**kwargs)
        # Packed Permute Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VPPERM]
        # @example
        #   vpperm xmm0, xmm1, xmm2, xmm3
        #   vpperm xmm0, xmm1, xmm2, [rdx]
        #   vpperm xmm0, xmm1, [rcx], xmm3
        def vpperm(*operands,**kwargs) = add_instruction(Instructions::VPPERM,*operands,**kwargs)
        # Rotate Packed Doubleword Left
        # @return [Ronin::ASM::X86_64::Instructions::VPROLD]
        # @example
        #   vprold opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vprold opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vprold opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vprold opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprold opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprold opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprold xmm0, bcst([rbx], {1=>4}), 0x03
        #   vprold xmm0, xmm1, 0x03
        #   vprold ymm0, bcst([rbx], {1=>8}), 0x03
        #   vprold ymm0, ymm1, 0x03
        #   vprold zmm0, bcst([rbx], {1=>16}), 0x03
        #   vprold zmm0, zmm1, 0x03
        def vprold(*operands,**kwargs) = add_instruction(Instructions::VPROLD,*operands,**kwargs)
        # Rotate Packed Quadword Left
        # @return [Ronin::ASM::X86_64::Instructions::VPROLQ]
        # @example
        #   vprolq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vprolq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vprolq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vprolq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprolq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprolq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprolq xmm0, bcst([rbx], {1=>2}), 0x03
        #   vprolq xmm0, xmm1, 0x03
        #   vprolq ymm0, bcst([rbx], {1=>4}), 0x03
        #   vprolq ymm0, ymm1, 0x03
        #   vprolq zmm0, bcst([rbx], {1=>8}), 0x03
        #   vprolq zmm0, zmm1, 0x03
        def vprolq(*operands,**kwargs) = add_instruction(Instructions::VPROLQ,*operands,**kwargs)
        # Variable Rotate Packed Doubleword Left
        # @return [Ronin::ASM::X86_64::Instructions::VPROLVD]
        # @example
        #   vprolvd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vprolvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprolvd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vprolvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprolvd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vprolvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprolvd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vprolvd xmm0, xmm1, xmm2
        #   vprolvd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vprolvd ymm0, ymm1, ymm2
        #   vprolvd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vprolvd zmm0, zmm1, zmm2
        def vprolvd(*operands,**kwargs) = add_instruction(Instructions::VPROLVD,*operands,**kwargs)
        # Variable Rotate Packed Quadword Left
        # @return [Ronin::ASM::X86_64::Instructions::VPROLVQ]
        # @example
        #   vprolvq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vprolvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprolvq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vprolvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprolvq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vprolvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprolvq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vprolvq xmm0, xmm1, xmm2
        #   vprolvq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vprolvq ymm0, ymm1, ymm2
        #   vprolvq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vprolvq zmm0, zmm1, zmm2
        def vprolvq(*operands,**kwargs) = add_instruction(Instructions::VPROLVQ,*operands,**kwargs)
        # Rotate Packed Doubleword Right
        # @return [Ronin::ASM::X86_64::Instructions::VPRORD]
        # @example
        #   vprord opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vprord opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vprord opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vprord opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprord opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprord opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprord xmm0, bcst([rbx], {1=>4}), 0x03
        #   vprord xmm0, xmm1, 0x03
        #   vprord ymm0, bcst([rbx], {1=>8}), 0x03
        #   vprord ymm0, ymm1, 0x03
        #   vprord zmm0, bcst([rbx], {1=>16}), 0x03
        #   vprord zmm0, zmm1, 0x03
        def vprord(*operands,**kwargs) = add_instruction(Instructions::VPRORD,*operands,**kwargs)
        # Rotate Packed Quadword Right
        # @return [Ronin::ASM::X86_64::Instructions::VPRORQ]
        # @example
        #   vprorq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vprorq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vprorq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vprorq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vprorq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vprorq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vprorq xmm0, bcst([rbx], {1=>2}), 0x03
        #   vprorq xmm0, xmm1, 0x03
        #   vprorq ymm0, bcst([rbx], {1=>4}), 0x03
        #   vprorq ymm0, ymm1, 0x03
        #   vprorq zmm0, bcst([rbx], {1=>8}), 0x03
        #   vprorq zmm0, zmm1, 0x03
        def vprorq(*operands,**kwargs) = add_instruction(Instructions::VPRORQ,*operands,**kwargs)
        # Variable Rotate Packed Doubleword Right
        # @return [Ronin::ASM::X86_64::Instructions::VPRORVD]
        # @example
        #   vprorvd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vprorvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprorvd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vprorvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprorvd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vprorvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprorvd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vprorvd xmm0, xmm1, xmm2
        #   vprorvd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vprorvd ymm0, ymm1, ymm2
        #   vprorvd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vprorvd zmm0, zmm1, zmm2
        def vprorvd(*operands,**kwargs) = add_instruction(Instructions::VPRORVD,*operands,**kwargs)
        # Variable Rotate Packed Quadword Right
        # @return [Ronin::ASM::X86_64::Instructions::VPRORVQ]
        # @example
        #   vprorvq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vprorvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vprorvq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vprorvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vprorvq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vprorvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vprorvq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vprorvq xmm0, xmm1, xmm2
        #   vprorvq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vprorvq ymm0, ymm1, ymm2
        #   vprorvq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vprorvq zmm0, zmm1, zmm2
        def vprorvq(*operands,**kwargs) = add_instruction(Instructions::VPRORVQ,*operands,**kwargs)
        # Packed Rotate Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VPROTB]
        # @example
        #   vprotb xmm0, xmm1, 0x03
        #   vprotb xmm0, xmm1, xmm2
        #   vprotb xmm0, xmm1, [rcx]
        #   vprotb xmm0, [rbx], 0x03
        #   vprotb xmm0, [rbx], xmm2
        def vprotb(*operands,**kwargs) = add_instruction(Instructions::VPROTB,*operands,**kwargs)
        # Packed Rotate Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::VPROTD]
        # @example
        #   vprotd xmm0, xmm1, 0x03
        #   vprotd xmm0, xmm1, xmm2
        #   vprotd xmm0, xmm1, [rcx]
        #   vprotd xmm0, [rbx], 0x03
        #   vprotd xmm0, [rbx], xmm2
        def vprotd(*operands,**kwargs) = add_instruction(Instructions::VPROTD,*operands,**kwargs)
        # Packed Rotate Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VPROTQ]
        # @example
        #   vprotq xmm0, xmm1, 0x03
        #   vprotq xmm0, xmm1, xmm2
        #   vprotq xmm0, xmm1, [rcx]
        #   vprotq xmm0, [rbx], 0x03
        #   vprotq xmm0, [rbx], xmm2
        def vprotq(*operands,**kwargs) = add_instruction(Instructions::VPROTQ,*operands,**kwargs)
        # Packed Rotate Words
        # @return [Ronin::ASM::X86_64::Instructions::VPROTW]
        # @example
        #   vprotw xmm0, xmm1, 0x03
        #   vprotw xmm0, xmm1, xmm2
        #   vprotw xmm0, xmm1, [rcx]
        #   vprotw xmm0, [rbx], 0x03
        #   vprotw xmm0, [rbx], xmm2
        def vprotw(*operands,**kwargs) = add_instruction(Instructions::VPROTW,*operands,**kwargs)
        # Compute Sum of Absolute Differences
        # @return [Ronin::ASM::X86_64::Instructions::VPSADBW]
        # @example
        #   vpsadbw xmm0, xmm1, xmm2
        #   vpsadbw xmm0, xmm1, [rcx]
        #   vpsadbw ymm0, ymm1, ymm2
        #   vpsadbw ymm0, ymm1, [rcx]
        #   vpsadbw zmm0, zmm1, zmm2
        #   vpsadbw zmm0, zmm1, [rcx]
        def vpsadbw(*operands,**kwargs) = add_instruction(Instructions::VPSADBW,*operands,**kwargs)
        # Scatter Packed Doubleword Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPSCATTERDD]
        # @example
        #   vpscatterdd opmask([rax+xmm0*4], k1), xmm1
        #   vpscatterdd opmask([rax+ymm0*4], k1), ymm1
        #   vpscatterdd opmask([rax+zmm0*4], k1), zmm1
        def vpscatterdd(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERDD,*operands,**kwargs)
        # Scatter Packed Quadword Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPSCATTERDQ]
        # @example
        #   vpscatterdq opmask([rax+xmm0*4], k1), xmm1
        #   vpscatterdq opmask([rax+xmm0*4], k1), ymm1
        #   vpscatterdq opmask([rax+ymm0*4], k1), zmm1
        def vpscatterdq(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERDQ,*operands,**kwargs)
        # Scatter Packed Doubleword Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPSCATTERQD]
        # @example
        #   vpscatterqd opmask([rax+xmm0*8], k1), xmm1
        #   vpscatterqd opmask([rax+ymm0*8], k1), xmm1
        #   vpscatterqd opmask([rax+zmm0*8], k1), ymm1
        def vpscatterqd(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERQD,*operands,**kwargs)
        # Scatter Packed Quadword Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VPSCATTERQQ]
        # @example
        #   vpscatterqq opmask([rax+xmm0*8], k1), xmm1
        #   vpscatterqq opmask([rax+ymm0*8], k1), ymm1
        #   vpscatterqq opmask([rax+zmm0*8], k1), zmm1
        def vpscatterqq(*operands,**kwargs) = add_instruction(Instructions::VPSCATTERQQ,*operands,**kwargs)
        # Packed Shift Arithmetic Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VPSHAB]
        # @example
        #   vpshab xmm0, xmm1, xmm2
        #   vpshab xmm0, xmm1, [rcx]
        #   vpshab xmm0, [rbx], xmm2
        def vpshab(*operands,**kwargs) = add_instruction(Instructions::VPSHAB,*operands,**kwargs)
        # Packed Shift Arithmetic Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::VPSHAD]
        # @example
        #   vpshad xmm0, xmm1, xmm2
        #   vpshad xmm0, xmm1, [rcx]
        #   vpshad xmm0, [rbx], xmm2
        def vpshad(*operands,**kwargs) = add_instruction(Instructions::VPSHAD,*operands,**kwargs)
        # Packed Shift Arithmetic Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VPSHAQ]
        # @example
        #   vpshaq xmm0, xmm1, xmm2
        #   vpshaq xmm0, xmm1, [rcx]
        #   vpshaq xmm0, [rbx], xmm2
        def vpshaq(*operands,**kwargs) = add_instruction(Instructions::VPSHAQ,*operands,**kwargs)
        # Packed Shift Arithmetic Words
        # @return [Ronin::ASM::X86_64::Instructions::VPSHAW]
        # @example
        #   vpshaw xmm0, xmm1, xmm2
        #   vpshaw xmm0, xmm1, [rcx]
        #   vpshaw xmm0, [rbx], xmm2
        def vpshaw(*operands,**kwargs) = add_instruction(Instructions::VPSHAW,*operands,**kwargs)
        # Packed Shift Logical Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLB]
        # @example
        #   vpshlb xmm0, xmm1, xmm2
        #   vpshlb xmm0, xmm1, [rcx]
        #   vpshlb xmm0, [rbx], xmm2
        def vpshlb(*operands,**kwargs) = add_instruction(Instructions::VPSHLB,*operands,**kwargs)
        # Packed Shift Logical Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLD]
        # @example
        #   vpshld xmm0, xmm1, xmm2
        #   vpshld xmm0, xmm1, [rcx]
        #   vpshld xmm0, [rbx], xmm2
        def vpshld(*operands,**kwargs) = add_instruction(Instructions::VPSHLD,*operands,**kwargs)
        # Concatenate and Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLDD]
        # @example
        #   vpshldd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpshldd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshldd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpshldd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshldd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpshldd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshldd xmm0, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpshldd xmm0, xmm1, xmm2, 0x04
        #   vpshldd ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpshldd ymm0, ymm1, ymm2, 0x04
        #   vpshldd zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpshldd zmm0, zmm1, zmm2, 0x04
        def vpshldd(*operands,**kwargs) = add_instruction(Instructions::VPSHLDD,*operands,**kwargs)
        # Concatenate and Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLDQ]
        # @example
        #   vpshldq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpshldq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshldq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpshldq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshldq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpshldq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshldq xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpshldq xmm0, xmm1, xmm2, 0x04
        #   vpshldq ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpshldq ymm0, ymm1, ymm2, 0x04
        #   vpshldq zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpshldq zmm0, zmm1, zmm2, 0x04
        def vpshldq(*operands,**kwargs) = add_instruction(Instructions::VPSHLDQ,*operands,**kwargs)
        # Concatenate and Variable Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLDVD]
        # @example
        #   vpshldvd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpshldvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshldvd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpshldvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshldvd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpshldvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshldvd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpshldvd xmm0, xmm1, xmm2
        #   vpshldvd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpshldvd ymm0, ymm1, ymm2
        #   vpshldvd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpshldvd zmm0, zmm1, zmm2
        def vpshldvd(*operands,**kwargs) = add_instruction(Instructions::VPSHLDVD,*operands,**kwargs)
        # Concatenate and Variable Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLDVQ]
        # @example
        #   vpshldvq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpshldvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshldvq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpshldvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshldvq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpshldvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshldvq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpshldvq xmm0, xmm1, xmm2
        #   vpshldvq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpshldvq ymm0, ymm1, ymm2
        #   vpshldvq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpshldvq zmm0, zmm1, zmm2
        def vpshldvq(*operands,**kwargs) = add_instruction(Instructions::VPSHLDVQ,*operands,**kwargs)
        # Concatenate and Variable Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLDVW]
        # @example
        #   vpshldvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshldvw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpshldvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshldvw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpshldvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshldvw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpshldvw xmm0, xmm1, xmm2
        #   vpshldvw xmm0, xmm1, [rcx]
        #   vpshldvw ymm0, ymm1, ymm2
        #   vpshldvw ymm0, ymm1, [rcx]
        #   vpshldvw zmm0, zmm1, zmm2
        #   vpshldvw zmm0, zmm1, [rcx]
        def vpshldvw(*operands,**kwargs) = add_instruction(Instructions::VPSHLDVW,*operands,**kwargs)
        # Concatenate and Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLDW]
        # @example
        #   vpshldw opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshldw opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vpshldw opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshldw opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vpshldw opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshldw opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vpshldw xmm0, xmm1, xmm2, 0x04
        #   vpshldw xmm0, xmm1, [rcx], 0x04
        #   vpshldw ymm0, ymm1, ymm2, 0x04
        #   vpshldw ymm0, ymm1, [rcx], 0x04
        #   vpshldw zmm0, zmm1, zmm2, 0x04
        #   vpshldw zmm0, zmm1, [rcx], 0x04
        def vpshldw(*operands,**kwargs) = add_instruction(Instructions::VPSHLDW,*operands,**kwargs)
        # Packed Shift Logical Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLQ]
        # @example
        #   vpshlq xmm0, xmm1, xmm2
        #   vpshlq xmm0, xmm1, [rcx]
        #   vpshlq xmm0, [rbx], xmm2
        def vpshlq(*operands,**kwargs) = add_instruction(Instructions::VPSHLQ,*operands,**kwargs)
        # Packed Shift Logical Words
        # @return [Ronin::ASM::X86_64::Instructions::VPSHLW]
        # @example
        #   vpshlw xmm0, xmm1, xmm2
        #   vpshlw xmm0, xmm1, [rcx]
        #   vpshlw xmm0, [rbx], xmm2
        def vpshlw(*operands,**kwargs) = add_instruction(Instructions::VPSHLW,*operands,**kwargs)
        # Concatenate and Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHRDD]
        # @example
        #   vpshrdd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpshrdd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshrdd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpshrdd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshrdd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpshrdd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshrdd xmm0, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpshrdd xmm0, xmm1, xmm2, 0x04
        #   vpshrdd ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpshrdd ymm0, ymm1, ymm2, 0x04
        #   vpshrdd zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpshrdd zmm0, zmm1, zmm2, 0x04
        def vpshrdd(*operands,**kwargs) = add_instruction(Instructions::VPSHRDD,*operands,**kwargs)
        # Concatenate and Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHRDQ]
        # @example
        #   vpshrdq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpshrdq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshrdq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpshrdq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshrdq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpshrdq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshrdq xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpshrdq xmm0, xmm1, xmm2, 0x04
        #   vpshrdq ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpshrdq ymm0, ymm1, ymm2, 0x04
        #   vpshrdq zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpshrdq zmm0, zmm1, zmm2, 0x04
        def vpshrdq(*operands,**kwargs) = add_instruction(Instructions::VPSHRDQ,*operands,**kwargs)
        # Concatenate and Variable Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHRDVD]
        # @example
        #   vpshrdvd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpshrdvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshrdvd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpshrdvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshrdvd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpshrdvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshrdvd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpshrdvd xmm0, xmm1, xmm2
        #   vpshrdvd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpshrdvd ymm0, ymm1, ymm2
        #   vpshrdvd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpshrdvd zmm0, zmm1, zmm2
        def vpshrdvd(*operands,**kwargs) = add_instruction(Instructions::VPSHRDVD,*operands,**kwargs)
        # Concatenate and Variable Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHRDVQ]
        # @example
        #   vpshrdvq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpshrdvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshrdvq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpshrdvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshrdvq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpshrdvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshrdvq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpshrdvq xmm0, xmm1, xmm2
        #   vpshrdvq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpshrdvq ymm0, ymm1, ymm2
        #   vpshrdvq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpshrdvq zmm0, zmm1, zmm2
        def vpshrdvq(*operands,**kwargs) = add_instruction(Instructions::VPSHRDVQ,*operands,**kwargs)
        # Concatenate and Variable Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHRDVW]
        # @example
        #   vpshrdvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshrdvw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpshrdvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshrdvw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpshrdvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshrdvw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpshrdvw xmm0, xmm1, xmm2
        #   vpshrdvw xmm0, xmm1, [rcx]
        #   vpshrdvw ymm0, ymm1, ymm2
        #   vpshrdvw ymm0, ymm1, [rcx]
        #   vpshrdvw zmm0, zmm1, zmm2
        #   vpshrdvw zmm0, zmm1, [rcx]
        def vpshrdvw(*operands,**kwargs) = add_instruction(Instructions::VPSHRDVW,*operands,**kwargs)
        # Concatenate and Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSHRDW]
        # @example
        #   vpshrdw opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpshrdw opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vpshrdw opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpshrdw opmask(ymm0, k1, zero: true), ymm1, [rcx], 0x04
        #   vpshrdw opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpshrdw opmask(zmm0, k1, zero: true), zmm1, [rcx], 0x04
        #   vpshrdw xmm0, xmm1, xmm2, 0x04
        #   vpshrdw xmm0, xmm1, [rcx], 0x04
        #   vpshrdw ymm0, ymm1, ymm2, 0x04
        #   vpshrdw ymm0, ymm1, [rcx], 0x04
        #   vpshrdw zmm0, zmm1, zmm2, 0x04
        #   vpshrdw zmm0, zmm1, [rcx], 0x04
        def vpshrdw(*operands,**kwargs) = add_instruction(Instructions::VPSHRDW,*operands,**kwargs)
        # Packed Shuffle Bytes
        # @return [Ronin::ASM::X86_64::Instructions::VPSHUFB]
        # @example
        #   vpshufb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpshufb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpshufb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpshufb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpshufb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpshufb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpshufb xmm0, xmm1, xmm2
        #   vpshufb xmm0, xmm1, [rcx]
        #   vpshufb ymm0, ymm1, ymm2
        #   vpshufb ymm0, ymm1, [rcx]
        #   vpshufb zmm0, zmm1, zmm2
        #   vpshufb zmm0, zmm1, [rcx]
        def vpshufb(*operands,**kwargs) = add_instruction(Instructions::VPSHUFB,*operands,**kwargs)
        # Shuffle Bits From Quadword Elements Using Byte Indexes Into Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPSHUFBITQMB]
        # @example
        #   vpshufbitqmb opmask(k1, k2), xmm1, xmm2
        #   vpshufbitqmb k1, xmm1, xmm2
        #   vpshufbitqmb opmask(k1, k2), xmm1, [rcx]
        #   vpshufbitqmb k1, xmm1, [rcx]
        #   vpshufbitqmb opmask(k1, k2), ymm1, ymm2
        #   vpshufbitqmb k1, ymm1, ymm2
        #   vpshufbitqmb opmask(k1, k2), ymm1, [rcx]
        #   vpshufbitqmb k1, ymm1, [rcx]
        #   vpshufbitqmb opmask(k1, k2), zmm1, zmm2
        #   vpshufbitqmb k1, zmm1, zmm2
        #   vpshufbitqmb opmask(k1, k2), zmm1, [rcx]
        #   vpshufbitqmb k1, zmm1, [rcx]
        def vpshufbitqmb(*operands,**kwargs) = add_instruction(Instructions::VPSHUFBITQMB,*operands,**kwargs)
        # Shuffle Packed Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::VPSHUFD]
        # @example
        #   vpshufd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpshufd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpshufd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vpshufd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpshufd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpshufd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpshufd xmm0, bcst([rbx], {1=>4}), 0x03
        #   vpshufd xmm0, xmm1, 0x03
        #   vpshufd xmm0, [rbx], 0x03
        #   vpshufd ymm0, bcst([rbx], {1=>8}), 0x03
        #   vpshufd ymm0, ymm1, 0x03
        #   vpshufd ymm0, [rbx], 0x03
        #   vpshufd zmm0, bcst([rbx], {1=>16}), 0x03
        #   vpshufd zmm0, zmm1, 0x03
        def vpshufd(*operands,**kwargs) = add_instruction(Instructions::VPSHUFD,*operands,**kwargs)
        # Shuffle Packed High Words
        # @return [Ronin::ASM::X86_64::Instructions::VPSHUFHW]
        # @example
        #   vpshufhw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpshufhw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpshufhw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpshufhw opmask(xmm0, k1, zero: true), [rbx], 0x03
        #   vpshufhw opmask(ymm0, k1, zero: true), [rbx], 0x03
        #   vpshufhw opmask(zmm0, k1, zero: true), [rbx], 0x03
        #   vpshufhw xmm0, xmm1, 0x03
        #   vpshufhw xmm0, [rbx], 0x03
        #   vpshufhw ymm0, ymm1, 0x03
        #   vpshufhw ymm0, [rbx], 0x03
        #   vpshufhw zmm0, zmm1, 0x03
        #   vpshufhw zmm0, [rbx], 0x03
        def vpshufhw(*operands,**kwargs) = add_instruction(Instructions::VPSHUFHW,*operands,**kwargs)
        # Shuffle Packed Low Words
        # @return [Ronin::ASM::X86_64::Instructions::VPSHUFLW]
        # @example
        #   vpshuflw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpshuflw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpshuflw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpshuflw opmask(xmm0, k1, zero: true), [rbx], 0x03
        #   vpshuflw opmask(ymm0, k1, zero: true), [rbx], 0x03
        #   vpshuflw opmask(zmm0, k1, zero: true), [rbx], 0x03
        #   vpshuflw xmm0, xmm1, 0x03
        #   vpshuflw xmm0, [rbx], 0x03
        #   vpshuflw ymm0, ymm1, 0x03
        #   vpshuflw ymm0, [rbx], 0x03
        #   vpshuflw zmm0, zmm1, 0x03
        #   vpshuflw zmm0, [rbx], 0x03
        def vpshuflw(*operands,**kwargs) = add_instruction(Instructions::VPSHUFLW,*operands,**kwargs)
        # Packed Sign of Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPSIGNB]
        # @example
        #   vpsignb xmm0, xmm1, xmm2
        #   vpsignb xmm0, xmm1, [rcx]
        #   vpsignb ymm0, ymm1, ymm2
        #   vpsignb ymm0, ymm1, [rcx]
        def vpsignb(*operands,**kwargs) = add_instruction(Instructions::VPSIGNB,*operands,**kwargs)
        # Packed Sign of Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPSIGND]
        # @example
        #   vpsignd xmm0, xmm1, xmm2
        #   vpsignd xmm0, xmm1, [rcx]
        #   vpsignd ymm0, ymm1, ymm2
        #   vpsignd ymm0, ymm1, [rcx]
        def vpsignd(*operands,**kwargs) = add_instruction(Instructions::VPSIGND,*operands,**kwargs)
        # Packed Sign of Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPSIGNW]
        # @example
        #   vpsignw xmm0, xmm1, xmm2
        #   vpsignw xmm0, xmm1, [rcx]
        #   vpsignw ymm0, ymm1, ymm2
        #   vpsignw ymm0, ymm1, [rcx]
        def vpsignw(*operands,**kwargs) = add_instruction(Instructions::VPSIGNW,*operands,**kwargs)
        # Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSLLD]
        # @example
        #   vpslld opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpslld opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpslld opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vpslld opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpslld opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpslld opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpslld opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpslld opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpslld opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpslld opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpslld opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpslld opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpslld xmm0, bcst([rbx], {1=>4}), 0x03
        #   vpslld xmm0, xmm1, 0x03
        #   vpslld xmm0, xmm1, xmm2
        #   vpslld xmm0, xmm1, [rcx]
        #   vpslld ymm0, bcst([rbx], {1=>8}), 0x03
        #   vpslld ymm0, ymm1, 0x03
        #   vpslld ymm0, ymm1, xmm2
        #   vpslld ymm0, ymm1, [rcx]
        #   vpslld zmm0, bcst([rbx], {1=>16}), 0x03
        #   vpslld zmm0, zmm1, 0x03
        #   vpslld zmm0, zmm1, xmm2
        #   vpslld zmm0, zmm1, [rcx]
        def vpslld(*operands,**kwargs) = add_instruction(Instructions::VPSLLD,*operands,**kwargs)
        # Shift Packed Double Quadword Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSLLDQ]
        # @example
        #   vpslldq xmm0, xmm1, 0x03
        #   vpslldq xmm0, [rbx], 0x03
        #   vpslldq ymm0, ymm1, 0x03
        #   vpslldq ymm0, [rbx], 0x03
        #   vpslldq zmm0, zmm1, 0x03
        #   vpslldq zmm0, [rbx], 0x03
        def vpslldq(*operands,**kwargs) = add_instruction(Instructions::VPSLLDQ,*operands,**kwargs)
        # Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSLLQ]
        # @example
        #   vpsllq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vpsllq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpsllq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpsllq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsllq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllq opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsllq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsllq opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsllq opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsllq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsllq opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsllq opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsllq xmm0, bcst([rbx], {1=>2}), 0x03
        #   vpsllq xmm0, xmm1, 0x03
        #   vpsllq xmm0, xmm1, xmm2
        #   vpsllq xmm0, xmm1, [rcx]
        #   vpsllq ymm0, bcst([rbx], {1=>4}), 0x03
        #   vpsllq ymm0, ymm1, 0x03
        #   vpsllq ymm0, ymm1, xmm2
        #   vpsllq ymm0, ymm1, [rcx]
        #   vpsllq zmm0, bcst([rbx], {1=>8}), 0x03
        #   vpsllq zmm0, zmm1, 0x03
        #   vpsllq zmm0, zmm1, xmm2
        #   vpsllq zmm0, zmm1, [rcx]
        def vpsllq(*operands,**kwargs) = add_instruction(Instructions::VPSLLQ,*operands,**kwargs)
        # Variable Shift Packed Doubleword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSLLVD]
        # @example
        #   vpsllvd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpsllvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllvd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpsllvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsllvd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpsllvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsllvd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpsllvd xmm0, xmm1, xmm2
        #   vpsllvd xmm0, xmm1, [rcx]
        #   vpsllvd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpsllvd ymm0, ymm1, ymm2
        #   vpsllvd ymm0, ymm1, [rcx]
        #   vpsllvd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpsllvd zmm0, zmm1, zmm2
        def vpsllvd(*operands,**kwargs) = add_instruction(Instructions::VPSLLVD,*operands,**kwargs)
        # Variable Shift Packed Quadword Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSLLVQ]
        # @example
        #   vpsllvq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpsllvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllvq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpsllvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsllvq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpsllvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsllvq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpsllvq xmm0, xmm1, xmm2
        #   vpsllvq xmm0, xmm1, [rcx]
        #   vpsllvq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpsllvq ymm0, ymm1, ymm2
        #   vpsllvq ymm0, ymm1, [rcx]
        #   vpsllvq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpsllvq zmm0, zmm1, zmm2
        def vpsllvq(*operands,**kwargs) = add_instruction(Instructions::VPSLLVQ,*operands,**kwargs)
        # Variable Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSLLVW]
        # @example
        #   vpsllvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllvw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsllvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsllvw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsllvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsllvw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsllvw xmm0, xmm1, xmm2
        #   vpsllvw xmm0, xmm1, [rcx]
        #   vpsllvw ymm0, ymm1, ymm2
        #   vpsllvw ymm0, ymm1, [rcx]
        #   vpsllvw zmm0, zmm1, zmm2
        #   vpsllvw zmm0, zmm1, [rcx]
        def vpsllvw(*operands,**kwargs) = add_instruction(Instructions::VPSLLVW,*operands,**kwargs)
        # Shift Packed Word Data Left Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSLLW]
        # @example
        #   vpsllw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsllw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsllw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsllw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsllw opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsllw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsllw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsllw opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsllw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsllw opmask(xmm0, k1, zero: true), [rbx], 0x03
        #   vpsllw opmask(ymm0, k1, zero: true), [rbx], 0x03
        #   vpsllw opmask(zmm0, k1, zero: true), [rbx], 0x03
        #   vpsllw xmm0, xmm1, 0x03
        #   vpsllw xmm0, xmm1, xmm2
        #   vpsllw xmm0, xmm1, [rcx]
        #   vpsllw xmm0, [rbx], 0x03
        #   vpsllw ymm0, ymm1, 0x03
        #   vpsllw ymm0, ymm1, xmm2
        #   vpsllw ymm0, ymm1, [rcx]
        #   vpsllw ymm0, [rbx], 0x03
        #   vpsllw zmm0, zmm1, 0x03
        #   vpsllw zmm0, zmm1, xmm2
        #   vpsllw zmm0, zmm1, [rcx]
        #   vpsllw zmm0, [rbx], 0x03
        def vpsllw(*operands,**kwargs) = add_instruction(Instructions::VPSLLW,*operands,**kwargs)
        # Shift Packed Doubleword Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::VPSRAD]
        # @example
        #   vpsrad opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpsrad opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpsrad opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vpsrad opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrad opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrad opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsrad opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrad opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrad opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsrad opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrad opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrad opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsrad xmm0, bcst([rbx], {1=>4}), 0x03
        #   vpsrad xmm0, xmm1, 0x03
        #   vpsrad xmm0, xmm1, xmm2
        #   vpsrad xmm0, xmm1, [rcx]
        #   vpsrad ymm0, bcst([rbx], {1=>8}), 0x03
        #   vpsrad ymm0, ymm1, 0x03
        #   vpsrad ymm0, ymm1, xmm2
        #   vpsrad ymm0, ymm1, [rcx]
        #   vpsrad zmm0, bcst([rbx], {1=>16}), 0x03
        #   vpsrad zmm0, zmm1, 0x03
        #   vpsrad zmm0, zmm1, xmm2
        #   vpsrad zmm0, zmm1, [rcx]
        def vpsrad(*operands,**kwargs) = add_instruction(Instructions::VPSRAD,*operands,**kwargs)
        # Shift Packed Quadword Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::VPSRAQ]
        # @example
        #   vpsraq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vpsraq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpsraq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpsraq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsraq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsraq opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsraq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsraq opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsraq opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsraq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsraq opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsraq opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsraq xmm0, bcst([rbx], {1=>2}), 0x03
        #   vpsraq xmm0, xmm1, 0x03
        #   vpsraq xmm0, xmm1, xmm2
        #   vpsraq xmm0, xmm1, [rcx]
        #   vpsraq ymm0, bcst([rbx], {1=>4}), 0x03
        #   vpsraq ymm0, ymm1, 0x03
        #   vpsraq ymm0, ymm1, xmm2
        #   vpsraq ymm0, ymm1, [rcx]
        #   vpsraq zmm0, bcst([rbx], {1=>8}), 0x03
        #   vpsraq zmm0, zmm1, 0x03
        #   vpsraq zmm0, zmm1, xmm2
        #   vpsraq zmm0, zmm1, [rcx]
        def vpsraq(*operands,**kwargs) = add_instruction(Instructions::VPSRAQ,*operands,**kwargs)
        # Variable Shift Packed Doubleword Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::VPSRAVD]
        # @example
        #   vpsravd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpsravd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsravd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpsravd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsravd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpsravd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsravd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpsravd xmm0, xmm1, xmm2
        #   vpsravd xmm0, xmm1, [rcx]
        #   vpsravd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpsravd ymm0, ymm1, ymm2
        #   vpsravd ymm0, ymm1, [rcx]
        #   vpsravd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpsravd zmm0, zmm1, zmm2
        def vpsravd(*operands,**kwargs) = add_instruction(Instructions::VPSRAVD,*operands,**kwargs)
        # Variable Shift Packed Quadword Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::VPSRAVQ]
        # @example
        #   vpsravq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpsravq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsravq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpsravq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsravq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpsravq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsravq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpsravq xmm0, xmm1, xmm2
        #   vpsravq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpsravq ymm0, ymm1, ymm2
        #   vpsravq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpsravq zmm0, zmm1, zmm2
        def vpsravq(*operands,**kwargs) = add_instruction(Instructions::VPSRAVQ,*operands,**kwargs)
        # Variable Shift Packed Word Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::VPSRAVW]
        # @example
        #   vpsravw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsravw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsravw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsravw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsravw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsravw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsravw xmm0, xmm1, xmm2
        #   vpsravw xmm0, xmm1, [rcx]
        #   vpsravw ymm0, ymm1, ymm2
        #   vpsravw ymm0, ymm1, [rcx]
        #   vpsravw zmm0, zmm1, zmm2
        #   vpsravw zmm0, zmm1, [rcx]
        def vpsravw(*operands,**kwargs) = add_instruction(Instructions::VPSRAVW,*operands,**kwargs)
        # Shift Packed Word Data Right Arithmetic
        # @return [Ronin::ASM::X86_64::Instructions::VPSRAW]
        # @example
        #   vpsraw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsraw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsraw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsraw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsraw opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsraw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsraw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsraw opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsraw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsraw opmask(xmm0, k1, zero: true), [rbx], 0x03
        #   vpsraw opmask(ymm0, k1, zero: true), [rbx], 0x03
        #   vpsraw opmask(zmm0, k1, zero: true), [rbx], 0x03
        #   vpsraw xmm0, xmm1, 0x03
        #   vpsraw xmm0, xmm1, xmm2
        #   vpsraw xmm0, xmm1, [rcx]
        #   vpsraw xmm0, [rbx], 0x03
        #   vpsraw ymm0, ymm1, 0x03
        #   vpsraw ymm0, ymm1, xmm2
        #   vpsraw ymm0, ymm1, [rcx]
        #   vpsraw ymm0, [rbx], 0x03
        #   vpsraw zmm0, zmm1, 0x03
        #   vpsraw zmm0, zmm1, xmm2
        #   vpsraw zmm0, zmm1, [rcx]
        #   vpsraw zmm0, [rbx], 0x03
        def vpsraw(*operands,**kwargs) = add_instruction(Instructions::VPSRAW,*operands,**kwargs)
        # Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSRLD]
        # @example
        #   vpsrld opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpsrld opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpsrld opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vpsrld opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrld opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrld opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsrld opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrld opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrld opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsrld opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrld opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrld opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsrld xmm0, bcst([rbx], {1=>4}), 0x03
        #   vpsrld xmm0, xmm1, 0x03
        #   vpsrld xmm0, xmm1, xmm2
        #   vpsrld xmm0, xmm1, [rcx]
        #   vpsrld ymm0, bcst([rbx], {1=>8}), 0x03
        #   vpsrld ymm0, ymm1, 0x03
        #   vpsrld ymm0, ymm1, xmm2
        #   vpsrld ymm0, ymm1, [rcx]
        #   vpsrld zmm0, bcst([rbx], {1=>16}), 0x03
        #   vpsrld zmm0, zmm1, 0x03
        #   vpsrld zmm0, zmm1, xmm2
        #   vpsrld zmm0, zmm1, [rcx]
        def vpsrld(*operands,**kwargs) = add_instruction(Instructions::VPSRLD,*operands,**kwargs)
        # Shift Packed Double Quadword Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSRLDQ]
        # @example
        #   vpsrldq xmm0, xmm1, 0x03
        #   vpsrldq xmm0, [rbx], 0x03
        #   vpsrldq ymm0, ymm1, 0x03
        #   vpsrldq ymm0, [rbx], 0x03
        #   vpsrldq zmm0, zmm1, 0x03
        #   vpsrldq zmm0, [rbx], 0x03
        def vpsrldq(*operands,**kwargs) = add_instruction(Instructions::VPSRLDQ,*operands,**kwargs)
        # Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSRLQ]
        # @example
        #   vpsrlq opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vpsrlq opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vpsrlq opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vpsrlq opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrlq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlq opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsrlq opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrlq opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrlq opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsrlq opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrlq opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrlq opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsrlq xmm0, bcst([rbx], {1=>2}), 0x03
        #   vpsrlq xmm0, xmm1, 0x03
        #   vpsrlq xmm0, xmm1, xmm2
        #   vpsrlq xmm0, xmm1, [rcx]
        #   vpsrlq ymm0, bcst([rbx], {1=>4}), 0x03
        #   vpsrlq ymm0, ymm1, 0x03
        #   vpsrlq ymm0, ymm1, xmm2
        #   vpsrlq ymm0, ymm1, [rcx]
        #   vpsrlq zmm0, bcst([rbx], {1=>8}), 0x03
        #   vpsrlq zmm0, zmm1, 0x03
        #   vpsrlq zmm0, zmm1, xmm2
        #   vpsrlq zmm0, zmm1, [rcx]
        def vpsrlq(*operands,**kwargs) = add_instruction(Instructions::VPSRLQ,*operands,**kwargs)
        # Variable Shift Packed Doubleword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSRLVD]
        # @example
        #   vpsrlvd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpsrlvd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlvd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpsrlvd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsrlvd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpsrlvd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsrlvd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpsrlvd xmm0, xmm1, xmm2
        #   vpsrlvd xmm0, xmm1, [rcx]
        #   vpsrlvd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpsrlvd ymm0, ymm1, ymm2
        #   vpsrlvd ymm0, ymm1, [rcx]
        #   vpsrlvd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpsrlvd zmm0, zmm1, zmm2
        def vpsrlvd(*operands,**kwargs) = add_instruction(Instructions::VPSRLVD,*operands,**kwargs)
        # Variable Shift Packed Quadword Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSRLVQ]
        # @example
        #   vpsrlvq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpsrlvq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlvq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpsrlvq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsrlvq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpsrlvq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsrlvq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpsrlvq xmm0, xmm1, xmm2
        #   vpsrlvq xmm0, xmm1, [rcx]
        #   vpsrlvq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpsrlvq ymm0, ymm1, ymm2
        #   vpsrlvq ymm0, ymm1, [rcx]
        #   vpsrlvq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpsrlvq zmm0, zmm1, zmm2
        def vpsrlvq(*operands,**kwargs) = add_instruction(Instructions::VPSRLVQ,*operands,**kwargs)
        # Variable Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSRLVW]
        # @example
        #   vpsrlvw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlvw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsrlvw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsrlvw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsrlvw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsrlvw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsrlvw xmm0, xmm1, xmm2
        #   vpsrlvw xmm0, xmm1, [rcx]
        #   vpsrlvw ymm0, ymm1, ymm2
        #   vpsrlvw ymm0, ymm1, [rcx]
        #   vpsrlvw zmm0, zmm1, zmm2
        #   vpsrlvw zmm0, zmm1, [rcx]
        def vpsrlvw(*operands,**kwargs) = add_instruction(Instructions::VPSRLVW,*operands,**kwargs)
        # Shift Packed Word Data Right Logical
        # @return [Ronin::ASM::X86_64::Instructions::VPSRLW]
        # @example
        #   vpsrlw opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vpsrlw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsrlw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsrlw opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vpsrlw opmask(ymm0, k1, zero: true), ymm1, xmm2
        #   vpsrlw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsrlw opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vpsrlw opmask(zmm0, k1, zero: true), zmm1, xmm2
        #   vpsrlw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsrlw opmask(xmm0, k1, zero: true), [rbx], 0x03
        #   vpsrlw opmask(ymm0, k1, zero: true), [rbx], 0x03
        #   vpsrlw opmask(zmm0, k1, zero: true), [rbx], 0x03
        #   vpsrlw xmm0, xmm1, 0x03
        #   vpsrlw xmm0, xmm1, xmm2
        #   vpsrlw xmm0, xmm1, [rcx]
        #   vpsrlw xmm0, [rbx], 0x03
        #   vpsrlw ymm0, ymm1, 0x03
        #   vpsrlw ymm0, ymm1, xmm2
        #   vpsrlw ymm0, ymm1, [rcx]
        #   vpsrlw ymm0, [rbx], 0x03
        #   vpsrlw zmm0, zmm1, 0x03
        #   vpsrlw zmm0, zmm1, xmm2
        #   vpsrlw zmm0, zmm1, [rcx]
        #   vpsrlw zmm0, [rbx], 0x03
        def vpsrlw(*operands,**kwargs) = add_instruction(Instructions::VPSRLW,*operands,**kwargs)
        # Subtract Packed Byte Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBB]
        # @example
        #   vpsubb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsubb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsubb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsubb xmm0, xmm1, xmm2
        #   vpsubb xmm0, xmm1, [rcx]
        #   vpsubb ymm0, ymm1, ymm2
        #   vpsubb ymm0, ymm1, [rcx]
        #   vpsubb zmm0, zmm1, zmm2
        #   vpsubb zmm0, zmm1, [rcx]
        def vpsubb(*operands,**kwargs) = add_instruction(Instructions::VPSUBB,*operands,**kwargs)
        # Subtract Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBD]
        # @example
        #   vpsubd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpsubd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpsubd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpsubd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubd xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpsubd xmm0, xmm1, xmm2
        #   vpsubd xmm0, xmm1, [rcx]
        #   vpsubd ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpsubd ymm0, ymm1, ymm2
        #   vpsubd ymm0, ymm1, [rcx]
        #   vpsubd zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpsubd zmm0, zmm1, zmm2
        def vpsubd(*operands,**kwargs) = add_instruction(Instructions::VPSUBD,*operands,**kwargs)
        # Subtract Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBQ]
        # @example
        #   vpsubq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpsubq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpsubq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpsubq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpsubq xmm0, xmm1, xmm2
        #   vpsubq xmm0, xmm1, [rcx]
        #   vpsubq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpsubq ymm0, ymm1, ymm2
        #   vpsubq ymm0, ymm1, [rcx]
        #   vpsubq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpsubq zmm0, zmm1, zmm2
        def vpsubq(*operands,**kwargs) = add_instruction(Instructions::VPSUBQ,*operands,**kwargs)
        # Subtract Packed Signed Byte Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBSB]
        # @example
        #   vpsubsb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubsb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsubsb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubsb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsubsb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubsb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsubsb xmm0, xmm1, xmm2
        #   vpsubsb xmm0, xmm1, [rcx]
        #   vpsubsb ymm0, ymm1, ymm2
        #   vpsubsb ymm0, ymm1, [rcx]
        #   vpsubsb zmm0, zmm1, zmm2
        #   vpsubsb zmm0, zmm1, [rcx]
        def vpsubsb(*operands,**kwargs) = add_instruction(Instructions::VPSUBSB,*operands,**kwargs)
        # Subtract Packed Signed Word Integers with Signed Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBSW]
        # @example
        #   vpsubsw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubsw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsubsw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubsw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsubsw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubsw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsubsw xmm0, xmm1, xmm2
        #   vpsubsw xmm0, xmm1, [rcx]
        #   vpsubsw ymm0, ymm1, ymm2
        #   vpsubsw ymm0, ymm1, [rcx]
        #   vpsubsw zmm0, zmm1, zmm2
        #   vpsubsw zmm0, zmm1, [rcx]
        def vpsubsw(*operands,**kwargs) = add_instruction(Instructions::VPSUBSW,*operands,**kwargs)
        # Subtract Packed Unsigned Byte Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBUSB]
        # @example
        #   vpsubusb opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubusb opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsubusb opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubusb opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsubusb opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubusb opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsubusb xmm0, xmm1, xmm2
        #   vpsubusb xmm0, xmm1, [rcx]
        #   vpsubusb ymm0, ymm1, ymm2
        #   vpsubusb ymm0, ymm1, [rcx]
        #   vpsubusb zmm0, zmm1, zmm2
        #   vpsubusb zmm0, zmm1, [rcx]
        def vpsubusb(*operands,**kwargs) = add_instruction(Instructions::VPSUBUSB,*operands,**kwargs)
        # Subtract Packed Unsigned Word Integers with Unsigned Saturation
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBUSW]
        # @example
        #   vpsubusw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubusw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsubusw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubusw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsubusw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubusw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsubusw xmm0, xmm1, xmm2
        #   vpsubusw xmm0, xmm1, [rcx]
        #   vpsubusw ymm0, ymm1, ymm2
        #   vpsubusw ymm0, ymm1, [rcx]
        #   vpsubusw zmm0, zmm1, zmm2
        #   vpsubusw zmm0, zmm1, [rcx]
        def vpsubusw(*operands,**kwargs) = add_instruction(Instructions::VPSUBUSW,*operands,**kwargs)
        # Subtract Packed Word Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPSUBW]
        # @example
        #   vpsubw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpsubw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpsubw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpsubw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpsubw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpsubw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpsubw xmm0, xmm1, xmm2
        #   vpsubw xmm0, xmm1, [rcx]
        #   vpsubw ymm0, ymm1, ymm2
        #   vpsubw ymm0, ymm1, [rcx]
        #   vpsubw zmm0, zmm1, zmm2
        #   vpsubw zmm0, zmm1, [rcx]
        def vpsubw(*operands,**kwargs) = add_instruction(Instructions::VPSUBW,*operands,**kwargs)
        # Bitwise Ternary Logical Operation on Doubleword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPTERNLOGD]
        # @example
        #   vpternlogd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpternlogd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpternlogd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpternlogd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpternlogd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpternlogd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpternlogd xmm0, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vpternlogd xmm0, xmm1, xmm2, 0x04
        #   vpternlogd ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vpternlogd ymm0, ymm1, ymm2, 0x04
        #   vpternlogd zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vpternlogd zmm0, zmm1, zmm2, 0x04
        def vpternlogd(*operands,**kwargs) = add_instruction(Instructions::VPTERNLOGD,*operands,**kwargs)
        # Bitwise Ternary Logical Operation on Quadword Values
        # @return [Ronin::ASM::X86_64::Instructions::VPTERNLOGQ]
        # @example
        #   vpternlogq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpternlogq opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vpternlogq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpternlogq opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vpternlogq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpternlogq opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vpternlogq xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vpternlogq xmm0, xmm1, xmm2, 0x04
        #   vpternlogq ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vpternlogq ymm0, ymm1, ymm2, 0x04
        #   vpternlogq zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vpternlogq zmm0, zmm1, zmm2, 0x04
        def vpternlogq(*operands,**kwargs) = add_instruction(Instructions::VPTERNLOGQ,*operands,**kwargs)
        # Packed Logical Compare
        # @return [Ronin::ASM::X86_64::Instructions::VPTEST]
        # @example
        #   vptest xmm0, xmm1
        #   vptest xmm0, [rbx]
        #   vptest ymm0, ymm1
        #   vptest ymm0, [rbx]
        def vptest(*operands,**kwargs) = add_instruction(Instructions::VPTEST,*operands,**kwargs)
        # Logical AND of Packed Byte Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTMB]
        # @example
        #   vptestmb opmask(k1, k2), xmm1, xmm2
        #   vptestmb k1, xmm1, xmm2
        #   vptestmb opmask(k1, k2), xmm1, [rcx]
        #   vptestmb k1, xmm1, [rcx]
        #   vptestmb opmask(k1, k2), ymm1, ymm2
        #   vptestmb k1, ymm1, ymm2
        #   vptestmb opmask(k1, k2), ymm1, [rcx]
        #   vptestmb k1, ymm1, [rcx]
        #   vptestmb opmask(k1, k2), zmm1, zmm2
        #   vptestmb k1, zmm1, zmm2
        #   vptestmb opmask(k1, k2), zmm1, [rcx]
        #   vptestmb k1, zmm1, [rcx]
        def vptestmb(*operands,**kwargs) = add_instruction(Instructions::VPTESTMB,*operands,**kwargs)
        # Logical AND of Packed Doubleword Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTMD]
        # @example
        #   vptestmd opmask(k1, k2), xmm1, bcst([rcx], {1=>4})
        #   vptestmd k1, xmm1, bcst([rcx], {1=>4})
        #   vptestmd opmask(k1, k2), xmm1, xmm2
        #   vptestmd k1, xmm1, xmm2
        #   vptestmd opmask(k1, k2), ymm1, bcst([rcx], {1=>8})
        #   vptestmd k1, ymm1, bcst([rcx], {1=>8})
        #   vptestmd opmask(k1, k2), ymm1, ymm2
        #   vptestmd k1, ymm1, ymm2
        #   vptestmd opmask(k1, k2), zmm1, bcst([rcx], {1=>16})
        #   vptestmd k1, zmm1, bcst([rcx], {1=>16})
        #   vptestmd opmask(k1, k2), zmm1, zmm2
        #   vptestmd k1, zmm1, zmm2
        def vptestmd(*operands,**kwargs) = add_instruction(Instructions::VPTESTMD,*operands,**kwargs)
        # Logical AND of Packed Quadword Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTMQ]
        # @example
        #   vptestmq opmask(k1, k2), xmm1, bcst([rcx], {1=>2})
        #   vptestmq k1, xmm1, bcst([rcx], {1=>2})
        #   vptestmq opmask(k1, k2), xmm1, xmm2
        #   vptestmq k1, xmm1, xmm2
        #   vptestmq opmask(k1, k2), ymm1, bcst([rcx], {1=>4})
        #   vptestmq k1, ymm1, bcst([rcx], {1=>4})
        #   vptestmq opmask(k1, k2), ymm1, ymm2
        #   vptestmq k1, ymm1, ymm2
        #   vptestmq opmask(k1, k2), zmm1, bcst([rcx], {1=>8})
        #   vptestmq k1, zmm1, bcst([rcx], {1=>8})
        #   vptestmq opmask(k1, k2), zmm1, zmm2
        #   vptestmq k1, zmm1, zmm2
        def vptestmq(*operands,**kwargs) = add_instruction(Instructions::VPTESTMQ,*operands,**kwargs)
        # Logical AND of Packed Word Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTMW]
        # @example
        #   vptestmw opmask(k1, k2), xmm1, xmm2
        #   vptestmw k1, xmm1, xmm2
        #   vptestmw opmask(k1, k2), xmm1, [rcx]
        #   vptestmw k1, xmm1, [rcx]
        #   vptestmw opmask(k1, k2), ymm1, ymm2
        #   vptestmw k1, ymm1, ymm2
        #   vptestmw opmask(k1, k2), ymm1, [rcx]
        #   vptestmw k1, ymm1, [rcx]
        #   vptestmw opmask(k1, k2), zmm1, zmm2
        #   vptestmw k1, zmm1, zmm2
        #   vptestmw opmask(k1, k2), zmm1, [rcx]
        #   vptestmw k1, zmm1, [rcx]
        def vptestmw(*operands,**kwargs) = add_instruction(Instructions::VPTESTMW,*operands,**kwargs)
        # Logical NAND of Packed Byte Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTNMB]
        # @example
        #   vptestnmb opmask(k1, k2), xmm1, xmm2
        #   vptestnmb k1, xmm1, xmm2
        #   vptestnmb opmask(k1, k2), xmm1, [rcx]
        #   vptestnmb k1, xmm1, [rcx]
        #   vptestnmb opmask(k1, k2), ymm1, ymm2
        #   vptestnmb k1, ymm1, ymm2
        #   vptestnmb opmask(k1, k2), ymm1, [rcx]
        #   vptestnmb k1, ymm1, [rcx]
        #   vptestnmb opmask(k1, k2), zmm1, zmm2
        #   vptestnmb k1, zmm1, zmm2
        #   vptestnmb opmask(k1, k2), zmm1, [rcx]
        #   vptestnmb k1, zmm1, [rcx]
        def vptestnmb(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMB,*operands,**kwargs)
        # Logical NAND of Packed Doubleword Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTNMD]
        # @example
        #   vptestnmd opmask(k1, k2), xmm1, bcst([rcx], {1=>4})
        #   vptestnmd k1, xmm1, bcst([rcx], {1=>4})
        #   vptestnmd opmask(k1, k2), xmm1, xmm2
        #   vptestnmd k1, xmm1, xmm2
        #   vptestnmd opmask(k1, k2), ymm1, bcst([rcx], {1=>8})
        #   vptestnmd k1, ymm1, bcst([rcx], {1=>8})
        #   vptestnmd opmask(k1, k2), ymm1, ymm2
        #   vptestnmd k1, ymm1, ymm2
        #   vptestnmd opmask(k1, k2), zmm1, bcst([rcx], {1=>16})
        #   vptestnmd k1, zmm1, bcst([rcx], {1=>16})
        #   vptestnmd opmask(k1, k2), zmm1, zmm2
        #   vptestnmd k1, zmm1, zmm2
        def vptestnmd(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMD,*operands,**kwargs)
        # Logical NAND of Packed Quadword Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTNMQ]
        # @example
        #   vptestnmq opmask(k1, k2), xmm1, bcst([rcx], {1=>2})
        #   vptestnmq k1, xmm1, bcst([rcx], {1=>2})
        #   vptestnmq opmask(k1, k2), xmm1, xmm2
        #   vptestnmq k1, xmm1, xmm2
        #   vptestnmq opmask(k1, k2), ymm1, bcst([rcx], {1=>4})
        #   vptestnmq k1, ymm1, bcst([rcx], {1=>4})
        #   vptestnmq opmask(k1, k2), ymm1, ymm2
        #   vptestnmq k1, ymm1, ymm2
        #   vptestnmq opmask(k1, k2), zmm1, bcst([rcx], {1=>8})
        #   vptestnmq k1, zmm1, bcst([rcx], {1=>8})
        #   vptestnmq opmask(k1, k2), zmm1, zmm2
        #   vptestnmq k1, zmm1, zmm2
        def vptestnmq(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMQ,*operands,**kwargs)
        # Logical NAND of Packed Word Integer Values and Set Mask
        # @return [Ronin::ASM::X86_64::Instructions::VPTESTNMW]
        # @example
        #   vptestnmw opmask(k1, k2), xmm1, xmm2
        #   vptestnmw k1, xmm1, xmm2
        #   vptestnmw opmask(k1, k2), xmm1, [rcx]
        #   vptestnmw k1, xmm1, [rcx]
        #   vptestnmw opmask(k1, k2), ymm1, ymm2
        #   vptestnmw k1, ymm1, ymm2
        #   vptestnmw opmask(k1, k2), ymm1, [rcx]
        #   vptestnmw k1, ymm1, [rcx]
        #   vptestnmw opmask(k1, k2), zmm1, zmm2
        #   vptestnmw k1, zmm1, zmm2
        #   vptestnmw opmask(k1, k2), zmm1, [rcx]
        #   vptestnmw k1, zmm1, [rcx]
        def vptestnmw(*operands,**kwargs) = add_instruction(Instructions::VPTESTNMW,*operands,**kwargs)
        # Unpack and Interleave High-Order Bytes into Words
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKHBW]
        # @example
        #   vpunpckhbw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhbw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpunpckhbw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhbw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpunpckhbw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhbw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpunpckhbw xmm0, xmm1, xmm2
        #   vpunpckhbw xmm0, xmm1, [rcx]
        #   vpunpckhbw ymm0, ymm1, ymm2
        #   vpunpckhbw ymm0, ymm1, [rcx]
        #   vpunpckhbw zmm0, zmm1, zmm2
        #   vpunpckhbw zmm0, zmm1, [rcx]
        def vpunpckhbw(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHBW,*operands,**kwargs)
        # Unpack and Interleave High-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKHDQ]
        # @example
        #   vpunpckhdq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpunpckhdq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhdq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpunpckhdq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhdq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpunpckhdq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhdq xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpunpckhdq xmm0, xmm1, xmm2
        #   vpunpckhdq xmm0, xmm1, [rcx]
        #   vpunpckhdq ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpunpckhdq ymm0, ymm1, ymm2
        #   vpunpckhdq ymm0, ymm1, [rcx]
        #   vpunpckhdq zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpunpckhdq zmm0, zmm1, zmm2
        def vpunpckhdq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHDQ,*operands,**kwargs)
        # Unpack and Interleave High-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKHQDQ]
        # @example
        #   vpunpckhqdq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpunpckhqdq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhqdq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpunpckhqdq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhqdq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpunpckhqdq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhqdq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpunpckhqdq xmm0, xmm1, xmm2
        #   vpunpckhqdq xmm0, xmm1, [rcx]
        #   vpunpckhqdq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpunpckhqdq ymm0, ymm1, ymm2
        #   vpunpckhqdq ymm0, ymm1, [rcx]
        #   vpunpckhqdq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpunpckhqdq zmm0, zmm1, zmm2
        def vpunpckhqdq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHQDQ,*operands,**kwargs)
        # Unpack and Interleave High-Order Words into Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKHWD]
        # @example
        #   vpunpckhwd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckhwd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpunpckhwd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckhwd opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpunpckhwd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckhwd opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpunpckhwd xmm0, xmm1, xmm2
        #   vpunpckhwd xmm0, xmm1, [rcx]
        #   vpunpckhwd ymm0, ymm1, ymm2
        #   vpunpckhwd ymm0, ymm1, [rcx]
        #   vpunpckhwd zmm0, zmm1, zmm2
        #   vpunpckhwd zmm0, zmm1, [rcx]
        def vpunpckhwd(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKHWD,*operands,**kwargs)
        # Unpack and Interleave Low-Order Bytes into Words
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKLBW]
        # @example
        #   vpunpcklbw opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpcklbw opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpunpcklbw opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpcklbw opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpunpcklbw opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpcklbw opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpunpcklbw xmm0, xmm1, xmm2
        #   vpunpcklbw xmm0, xmm1, [rcx]
        #   vpunpcklbw ymm0, ymm1, ymm2
        #   vpunpcklbw ymm0, ymm1, [rcx]
        #   vpunpcklbw zmm0, zmm1, zmm2
        #   vpunpcklbw zmm0, zmm1, [rcx]
        def vpunpcklbw(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLBW,*operands,**kwargs)
        # Unpack and Interleave Low-Order Doublewords into Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKLDQ]
        # @example
        #   vpunpckldq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpunpckldq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpckldq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpunpckldq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpckldq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpunpckldq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpckldq xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpunpckldq xmm0, xmm1, xmm2
        #   vpunpckldq xmm0, xmm1, [rcx]
        #   vpunpckldq ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpunpckldq ymm0, ymm1, ymm2
        #   vpunpckldq ymm0, ymm1, [rcx]
        #   vpunpckldq zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpunpckldq zmm0, zmm1, zmm2
        def vpunpckldq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLDQ,*operands,**kwargs)
        # Unpack and Interleave Low-Order Quadwords into Double Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKLQDQ]
        # @example
        #   vpunpcklqdq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpunpcklqdq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpcklqdq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpunpcklqdq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpcklqdq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpunpcklqdq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpcklqdq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpunpcklqdq xmm0, xmm1, xmm2
        #   vpunpcklqdq xmm0, xmm1, [rcx]
        #   vpunpcklqdq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpunpcklqdq ymm0, ymm1, ymm2
        #   vpunpcklqdq ymm0, ymm1, [rcx]
        #   vpunpcklqdq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpunpcklqdq zmm0, zmm1, zmm2
        def vpunpcklqdq(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLQDQ,*operands,**kwargs)
        # Unpack and Interleave Low-Order Words into Doublewords
        # @return [Ronin::ASM::X86_64::Instructions::VPUNPCKLWD]
        # @example
        #   vpunpcklwd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpunpcklwd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vpunpcklwd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpunpcklwd opmask(ymm0, k1, zero: true), ymm1, [rcx]
        #   vpunpcklwd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpunpcklwd opmask(zmm0, k1, zero: true), zmm1, [rcx]
        #   vpunpcklwd xmm0, xmm1, xmm2
        #   vpunpcklwd xmm0, xmm1, [rcx]
        #   vpunpcklwd ymm0, ymm1, ymm2
        #   vpunpcklwd ymm0, ymm1, [rcx]
        #   vpunpcklwd zmm0, zmm1, zmm2
        #   vpunpcklwd zmm0, zmm1, [rcx]
        def vpunpcklwd(*operands,**kwargs) = add_instruction(Instructions::VPUNPCKLWD,*operands,**kwargs)
        # Packed Bitwise Logical Exclusive OR
        # @return [Ronin::ASM::X86_64::Instructions::VPXOR]
        # @example
        #   vpxor xmm0, xmm1, xmm2
        #   vpxor xmm0, xmm1, [rcx]
        #   vpxor ymm0, ymm1, ymm2
        #   vpxor ymm0, ymm1, [rcx]
        def vpxor(*operands,**kwargs) = add_instruction(Instructions::VPXOR,*operands,**kwargs)
        # Bitwise Logical Exclusive OR of Packed Doubleword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPXORD]
        # @example
        #   vpxord opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vpxord opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpxord opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vpxord opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpxord opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vpxord opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpxord xmm0, xmm1, bcst([rcx], {1=>4})
        #   vpxord xmm0, xmm1, xmm2
        #   vpxord ymm0, ymm1, bcst([rcx], {1=>8})
        #   vpxord ymm0, ymm1, ymm2
        #   vpxord zmm0, zmm1, bcst([rcx], {1=>16})
        #   vpxord zmm0, zmm1, zmm2
        def vpxord(*operands,**kwargs) = add_instruction(Instructions::VPXORD,*operands,**kwargs)
        # Bitwise Logical Exclusive OR of Packed Quadword Integers
        # @return [Ronin::ASM::X86_64::Instructions::VPXORQ]
        # @example
        #   vpxorq opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vpxorq opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vpxorq opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vpxorq opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vpxorq opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vpxorq opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vpxorq xmm0, xmm1, bcst([rcx], {1=>2})
        #   vpxorq xmm0, xmm1, xmm2
        #   vpxorq ymm0, ymm1, bcst([rcx], {1=>4})
        #   vpxorq ymm0, ymm1, ymm2
        #   vpxorq zmm0, zmm1, bcst([rcx], {1=>8})
        #   vpxorq zmm0, zmm1, zmm2
        def vpxorq(*operands,**kwargs) = add_instruction(Instructions::VPXORQ,*operands,**kwargs)
        # Range Restriction Calculation For Packed Pairs of Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRANGEPD]
        # @example
        #   vrangepd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vrangepd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangepd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vrangepd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vrangepd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vrangepd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vrangepd xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vrangepd xmm0, xmm1, xmm2, 0x04
        #   vrangepd ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vrangepd ymm0, ymm1, ymm2, 0x04
        #   vrangepd zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vrangepd zmm0, zmm1, zmm2, 0x04
        #   vrangepd opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vrangepd zmm0, zmm1, zmm2, sae, 0x05
        def vrangepd(*operands,**kwargs) = add_instruction(Instructions::VRANGEPD,*operands,**kwargs)
        # Range Restriction Calculation For Packed Pairs of Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRANGEPS]
        # @example
        #   vrangeps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vrangeps opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangeps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vrangeps opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vrangeps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vrangeps opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vrangeps xmm0, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vrangeps xmm0, xmm1, xmm2, 0x04
        #   vrangeps ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vrangeps ymm0, ymm1, ymm2, 0x04
        #   vrangeps zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vrangeps zmm0, zmm1, zmm2, 0x04
        #   vrangeps opmask(zmm0, k1, zero: true), zmm1, zmm2, sae, 0x05
        #   vrangeps zmm0, zmm1, zmm2, sae, 0x05
        def vrangeps(*operands,**kwargs) = add_instruction(Instructions::VRANGEPS,*operands,**kwargs)
        # Range Restriction Calculation For a pair of Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRANGESD]
        # @example
        #   vrangesd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangesd opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vrangesd xmm0, xmm1, xmm2, 0x04
        #   vrangesd xmm0, xmm1, [rcx], 0x04
        #   vrangesd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrangesd xmm0, xmm1, xmm2, sae, 0x05
        def vrangesd(*operands,**kwargs) = add_instruction(Instructions::VRANGESD,*operands,**kwargs)
        # Range Restriction Calculation For a pair of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRANGESS]
        # @example
        #   vrangess opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrangess opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vrangess xmm0, xmm1, xmm2, 0x04
        #   vrangess xmm0, xmm1, [rcx], 0x04
        #   vrangess opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrangess xmm0, xmm1, xmm2, sae, 0x05
        def vrangess(*operands,**kwargs) = add_instruction(Instructions::VRANGESS,*operands,**kwargs)
        # Compute Approximate Reciprocals of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRCP14PD]
        # @example
        #   vrcp14pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vrcp14pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vrcp14pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrcp14pd opmask(xmm0, k1, zero: true), xmm1
        #   vrcp14pd opmask(ymm0, k1, zero: true), ymm1
        #   vrcp14pd opmask(zmm0, k1, zero: true), zmm1
        #   vrcp14pd xmm0, bcst([rbx], {1=>2})
        #   vrcp14pd xmm0, xmm1
        #   vrcp14pd ymm0, bcst([rbx], {1=>4})
        #   vrcp14pd ymm0, ymm1
        #   vrcp14pd zmm0, bcst([rbx], {1=>8})
        #   vrcp14pd zmm0, zmm1
        def vrcp14pd(*operands,**kwargs) = add_instruction(Instructions::VRCP14PD,*operands,**kwargs)
        # Compute Approximate Reciprocals of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRCP14PS]
        # @example
        #   vrcp14ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vrcp14ps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrcp14ps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vrcp14ps opmask(xmm0, k1, zero: true), xmm1
        #   vrcp14ps opmask(ymm0, k1, zero: true), ymm1
        #   vrcp14ps opmask(zmm0, k1, zero: true), zmm1
        #   vrcp14ps xmm0, bcst([rbx], {1=>4})
        #   vrcp14ps xmm0, xmm1
        #   vrcp14ps ymm0, bcst([rbx], {1=>8})
        #   vrcp14ps ymm0, ymm1
        #   vrcp14ps zmm0, bcst([rbx], {1=>16})
        #   vrcp14ps zmm0, zmm1
        def vrcp14ps(*operands,**kwargs) = add_instruction(Instructions::VRCP14PS,*operands,**kwargs)
        # Compute Approximate Reciprocal of a Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VRCP14SD]
        # @example
        #   vrcp14sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp14sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrcp14sd xmm0, xmm1, xmm2
        #   vrcp14sd xmm0, xmm1, [rcx]
        def vrcp14sd(*operands,**kwargs) = add_instruction(Instructions::VRCP14SD,*operands,**kwargs)
        # Compute Approximate Reciprocal of a Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VRCP14SS]
        # @example
        #   vrcp14ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp14ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrcp14ss xmm0, xmm1, xmm2
        #   vrcp14ss xmm0, xmm1, [rcx]
        def vrcp14ss(*operands,**kwargs) = add_instruction(Instructions::VRCP14SS,*operands,**kwargs)
        # Approximation to the Reciprocal of Packed Double-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRCP28PD]
        # @example
        #   vrcp28pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrcp28pd opmask(zmm0, k1, zero: true), zmm1
        #   vrcp28pd zmm0, bcst([rbx], {1=>8})
        #   vrcp28pd zmm0, zmm1
        #   vrcp28pd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrcp28pd zmm0, zmm1, sae
        def vrcp28pd(*operands,**kwargs) = add_instruction(Instructions::VRCP28PD,*operands,**kwargs)
        # Approximation to the Reciprocal of Packed Single-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRCP28PS]
        # @example
        #   vrcp28ps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vrcp28ps opmask(zmm0, k1, zero: true), zmm1
        #   vrcp28ps zmm0, bcst([rbx], {1=>16})
        #   vrcp28ps zmm0, zmm1
        #   vrcp28ps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrcp28ps zmm0, zmm1, sae
        def vrcp28ps(*operands,**kwargs) = add_instruction(Instructions::VRCP28PS,*operands,**kwargs)
        # Approximation to the Reciprocal of a Scalar Double-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRCP28SD]
        # @example
        #   vrcp28sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp28sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrcp28sd xmm0, xmm1, xmm2
        #   vrcp28sd xmm0, xmm1, [rcx]
        #   vrcp28sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrcp28sd xmm0, xmm1, xmm2, sae
        def vrcp28sd(*operands,**kwargs) = add_instruction(Instructions::VRCP28SD,*operands,**kwargs)
        # Approximation to the Reciprocal of a Scalar Single-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRCP28SS]
        # @example
        #   vrcp28ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcp28ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrcp28ss xmm0, xmm1, xmm2
        #   vrcp28ss xmm0, xmm1, [rcx]
        #   vrcp28ss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrcp28ss xmm0, xmm1, xmm2, sae
        def vrcp28ss(*operands,**kwargs) = add_instruction(Instructions::VRCP28SS,*operands,**kwargs)
        # Compute Approximate Reciprocals of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRCPPH]
        # @example
        #   vrcpph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrcpph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vrcpph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vrcpph opmask(xmm0, k1, zero: true), xmm1
        #   vrcpph opmask(ymm0, k1, zero: true), ymm1
        #   vrcpph opmask(zmm0, k1, zero: true), zmm1
        #   vrcpph xmm0, bcst([rbx], {1=>8})
        #   vrcpph xmm0, xmm1
        #   vrcpph ymm0, bcst([rbx], {1=>16})
        #   vrcpph ymm0, ymm1
        #   vrcpph zmm0, bcst([rbx], {1=>32})
        #   vrcpph zmm0, zmm1
        def vrcpph(*operands,**kwargs) = add_instruction(Instructions::VRCPPH,*operands,**kwargs)
        # Compute Approximate Reciprocals of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRCPPS]
        # @example
        #   vrcpps xmm0, xmm1
        #   vrcpps xmm0, [rbx]
        #   vrcpps ymm0, ymm1
        #   vrcpps ymm0, [rbx]
        def vrcpps(*operands,**kwargs) = add_instruction(Instructions::VRCPPS,*operands,**kwargs)
        # Compute Approximate Reciprocal of Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRCPSH]
        # @example
        #   vrcpsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrcpsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrcpsh xmm0, xmm1, xmm2
        #   vrcpsh xmm0, xmm1, [rcx]
        def vrcpsh(*operands,**kwargs) = add_instruction(Instructions::VRCPSH,*operands,**kwargs)
        # Compute Approximate Reciprocal of Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRCPSS]
        # @example
        #   vrcpss xmm0, xmm1, xmm2
        #   vrcpss xmm0, xmm1, [rcx]
        def vrcpss(*operands,**kwargs) = add_instruction(Instructions::VRCPSS,*operands,**kwargs)
        # Perform Reduction Transformation on Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VREDUCEPD]
        # @example
        #   vreducepd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vreducepd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vreducepd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vreducepd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vreducepd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vreducepd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vreducepd xmm0, bcst([rbx], {1=>2}), 0x03
        #   vreducepd xmm0, xmm1, 0x03
        #   vreducepd ymm0, bcst([rbx], {1=>4}), 0x03
        #   vreducepd ymm0, ymm1, 0x03
        #   vreducepd zmm0, bcst([rbx], {1=>8}), 0x03
        #   vreducepd zmm0, zmm1, 0x03
        def vreducepd(*operands,**kwargs) = add_instruction(Instructions::VREDUCEPD,*operands,**kwargs)
        # Perform Reduction Transformation on Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VREDUCEPH]
        # @example
        #   vreduceph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vreduceph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vreduceph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32}), 0x03
        #   vreduceph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vreduceph opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vreduceph opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vreduceph xmm0, bcst([rbx], {1=>8}), 0x03
        #   vreduceph xmm0, xmm1, 0x03
        #   vreduceph ymm0, bcst([rbx], {1=>16}), 0x03
        #   vreduceph ymm0, ymm1, 0x03
        #   vreduceph zmm0, bcst([rbx], {1=>32}), 0x03
        #   vreduceph zmm0, zmm1, 0x03
        #   vreduceph opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vreduceph zmm0, zmm1, sae, 0x04
        def vreduceph(*operands,**kwargs) = add_instruction(Instructions::VREDUCEPH,*operands,**kwargs)
        # Perform Reduction Transformation on Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VREDUCEPS]
        # @example
        #   vreduceps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vreduceps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vreduceps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vreduceps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vreduceps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vreduceps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vreduceps xmm0, bcst([rbx], {1=>4}), 0x03
        #   vreduceps xmm0, xmm1, 0x03
        #   vreduceps ymm0, bcst([rbx], {1=>8}), 0x03
        #   vreduceps ymm0, ymm1, 0x03
        #   vreduceps zmm0, bcst([rbx], {1=>16}), 0x03
        #   vreduceps zmm0, zmm1, 0x03
        def vreduceps(*operands,**kwargs) = add_instruction(Instructions::VREDUCEPS,*operands,**kwargs)
        # Perform Reduction Transformation on a Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VREDUCESD]
        # @example
        #   vreducesd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vreducesd opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vreducesd xmm0, xmm1, xmm2, 0x04
        #   vreducesd xmm0, xmm1, [rcx], 0x04
        def vreducesd(*operands,**kwargs) = add_instruction(Instructions::VREDUCESD,*operands,**kwargs)
        # Perform Reduction Transformation on a Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VREDUCESH]
        # @example
        #   vreducesh opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vreducesh opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vreducesh xmm0, xmm1, xmm2, 0x04
        #   vreducesh xmm0, xmm1, [rcx], 0x04
        #   vreducesh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vreducesh xmm0, xmm1, xmm2, sae, 0x05
        def vreducesh(*operands,**kwargs) = add_instruction(Instructions::VREDUCESH,*operands,**kwargs)
        # Perform Reduction Transformation on a Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VREDUCESS]
        # @example
        #   vreducess opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vreducess opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vreducess xmm0, xmm1, xmm2, 0x04
        #   vreducess xmm0, xmm1, [rcx], 0x04
        def vreducess(*operands,**kwargs) = add_instruction(Instructions::VREDUCESS,*operands,**kwargs)
        # Round Packed Double-Precision Floating-Point Values To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86_64::Instructions::VRNDSCALEPD]
        # @example
        #   vrndscalepd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2}), 0x03
        #   vrndscalepd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vrndscalepd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vrndscalepd opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vrndscalepd opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vrndscalepd opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vrndscalepd xmm0, bcst([rbx], {1=>2}), 0x03
        #   vrndscalepd xmm0, xmm1, 0x03
        #   vrndscalepd ymm0, bcst([rbx], {1=>4}), 0x03
        #   vrndscalepd ymm0, ymm1, 0x03
        #   vrndscalepd zmm0, bcst([rbx], {1=>8}), 0x03
        #   vrndscalepd zmm0, zmm1, 0x03
        #   vrndscalepd opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vrndscalepd zmm0, zmm1, sae, 0x04
        def vrndscalepd(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPD,*operands,**kwargs)
        # Round Packed Half-Precision Floating-Point Values To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86_64::Instructions::VRNDSCALEPH]
        # @example
        #   vrndscaleph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vrndscaleph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vrndscaleph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32}), 0x03
        #   vrndscaleph opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vrndscaleph opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vrndscaleph opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vrndscaleph xmm0, bcst([rbx], {1=>8}), 0x03
        #   vrndscaleph xmm0, xmm1, 0x03
        #   vrndscaleph ymm0, bcst([rbx], {1=>16}), 0x03
        #   vrndscaleph ymm0, ymm1, 0x03
        #   vrndscaleph zmm0, bcst([rbx], {1=>32}), 0x03
        #   vrndscaleph zmm0, zmm1, 0x03
        #   vrndscaleph opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vrndscaleph zmm0, zmm1, sae, 0x04
        def vrndscaleph(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPH,*operands,**kwargs)
        # Round Packed Single-Precision Floating-Point Values To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86_64::Instructions::VRNDSCALEPS]
        # @example
        #   vrndscaleps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4}), 0x03
        #   vrndscaleps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8}), 0x03
        #   vrndscaleps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16}), 0x03
        #   vrndscaleps opmask(xmm0, k1, zero: true), xmm1, 0x03
        #   vrndscaleps opmask(ymm0, k1, zero: true), ymm1, 0x03
        #   vrndscaleps opmask(zmm0, k1, zero: true), zmm1, 0x03
        #   vrndscaleps xmm0, bcst([rbx], {1=>4}), 0x03
        #   vrndscaleps xmm0, xmm1, 0x03
        #   vrndscaleps ymm0, bcst([rbx], {1=>8}), 0x03
        #   vrndscaleps ymm0, ymm1, 0x03
        #   vrndscaleps zmm0, bcst([rbx], {1=>16}), 0x03
        #   vrndscaleps zmm0, zmm1, 0x03
        #   vrndscaleps opmask(zmm0, k1, zero: true), zmm1, sae, 0x04
        #   vrndscaleps zmm0, zmm1, sae, 0x04
        def vrndscaleps(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALEPS,*operands,**kwargs)
        # Round Scalar Double-Precision Floating-Point Value To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86_64::Instructions::VRNDSCALESD]
        # @example
        #   vrndscalesd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrndscalesd opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vrndscalesd xmm0, xmm1, xmm2, 0x04
        #   vrndscalesd xmm0, xmm1, [rcx], 0x04
        #   vrndscalesd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrndscalesd xmm0, xmm1, xmm2, sae, 0x05
        def vrndscalesd(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESD,*operands,**kwargs)
        # Round Scalar Half-Precision Floating-Point Value To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86_64::Instructions::VRNDSCALESH]
        # @example
        #   vrndscalesh opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrndscalesh opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vrndscalesh xmm0, xmm1, xmm2, 0x04
        #   vrndscalesh xmm0, xmm1, [rcx], 0x04
        #   vrndscalesh opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrndscalesh xmm0, xmm1, xmm2, sae, 0x05
        def vrndscalesh(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESH,*operands,**kwargs)
        # Round Scalar Single-Precision Floating-Point Value To Include A Given Number Of Fraction Bits
        # @return [Ronin::ASM::X86_64::Instructions::VRNDSCALESS]
        # @example
        #   vrndscaless opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vrndscaless opmask(xmm0, k1, zero: true), xmm1, [rcx], 0x04
        #   vrndscaless xmm0, xmm1, xmm2, 0x04
        #   vrndscaless xmm0, xmm1, [rcx], 0x04
        #   vrndscaless opmask(xmm0, k1, zero: true), xmm1, xmm2, sae, 0x05
        #   vrndscaless xmm0, xmm1, xmm2, sae, 0x05
        def vrndscaless(*operands,**kwargs) = add_instruction(Instructions::VRNDSCALESS,*operands,**kwargs)
        # Round Packed Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VROUNDPD]
        # @example
        #   vroundpd xmm0, xmm1, 0x03
        #   vroundpd xmm0, [rbx], 0x03
        #   vroundpd ymm0, ymm1, 0x03
        #   vroundpd ymm0, [rbx], 0x03
        def vroundpd(*operands,**kwargs) = add_instruction(Instructions::VROUNDPD,*operands,**kwargs)
        # Round Packed Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VROUNDPS]
        # @example
        #   vroundps xmm0, xmm1, 0x03
        #   vroundps xmm0, [rbx], 0x03
        #   vroundps ymm0, ymm1, 0x03
        #   vroundps ymm0, [rbx], 0x03
        def vroundps(*operands,**kwargs) = add_instruction(Instructions::VROUNDPS,*operands,**kwargs)
        # Round Scalar Double Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VROUNDSD]
        # @example
        #   vroundsd xmm0, xmm1, xmm2, 0x04
        #   vroundsd xmm0, xmm1, [rcx], 0x04
        def vroundsd(*operands,**kwargs) = add_instruction(Instructions::VROUNDSD,*operands,**kwargs)
        # Round Scalar Single Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VROUNDSS]
        # @example
        #   vroundss xmm0, xmm1, xmm2, 0x04
        #   vroundss xmm0, xmm1, [rcx], 0x04
        def vroundss(*operands,**kwargs) = add_instruction(Instructions::VROUNDSS,*operands,**kwargs)
        # Compute Approximate Reciprocals of Square Roots of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT14PD]
        # @example
        #   vrsqrt14pd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>2})
        #   vrsqrt14pd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vrsqrt14pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrsqrt14pd opmask(xmm0, k1, zero: true), xmm1
        #   vrsqrt14pd opmask(ymm0, k1, zero: true), ymm1
        #   vrsqrt14pd opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt14pd xmm0, bcst([rbx], {1=>2})
        #   vrsqrt14pd xmm0, xmm1
        #   vrsqrt14pd ymm0, bcst([rbx], {1=>4})
        #   vrsqrt14pd ymm0, ymm1
        #   vrsqrt14pd zmm0, bcst([rbx], {1=>8})
        #   vrsqrt14pd zmm0, zmm1
        def vrsqrt14pd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14PD,*operands,**kwargs)
        # Compute Approximate Reciprocals of Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT14PS]
        # @example
        #   vrsqrt14ps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vrsqrt14ps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrsqrt14ps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vrsqrt14ps opmask(xmm0, k1, zero: true), xmm1
        #   vrsqrt14ps opmask(ymm0, k1, zero: true), ymm1
        #   vrsqrt14ps opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt14ps xmm0, bcst([rbx], {1=>4})
        #   vrsqrt14ps xmm0, xmm1
        #   vrsqrt14ps ymm0, bcst([rbx], {1=>8})
        #   vrsqrt14ps ymm0, ymm1
        #   vrsqrt14ps zmm0, bcst([rbx], {1=>16})
        #   vrsqrt14ps zmm0, zmm1
        def vrsqrt14ps(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14PS,*operands,**kwargs)
        # Compute Approximate Reciprocal of a Square Root of a Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT14SD]
        # @example
        #   vrsqrt14sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt14sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrsqrt14sd xmm0, xmm1, xmm2
        #   vrsqrt14sd xmm0, xmm1, [rcx]
        def vrsqrt14sd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14SD,*operands,**kwargs)
        # Compute Approximate Reciprocal of a Square Root of a Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT14SS]
        # @example
        #   vrsqrt14ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt14ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrsqrt14ss xmm0, xmm1, xmm2
        #   vrsqrt14ss xmm0, xmm1, [rcx]
        def vrsqrt14ss(*operands,**kwargs) = add_instruction(Instructions::VRSQRT14SS,*operands,**kwargs)
        # Approximation to the Reciprocal Square Root of Packed Double-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT28PD]
        # @example
        #   vrsqrt28pd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrsqrt28pd opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt28pd zmm0, bcst([rbx], {1=>8})
        #   vrsqrt28pd zmm0, zmm1
        #   vrsqrt28pd opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrsqrt28pd zmm0, zmm1, sae
        def vrsqrt28pd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28PD,*operands,**kwargs)
        # Approximation to the Reciprocal Square Root of Packed Single-Precision Floating-Point Values with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT28PS]
        # @example
        #   vrsqrt28ps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vrsqrt28ps opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrt28ps zmm0, bcst([rbx], {1=>16})
        #   vrsqrt28ps zmm0, zmm1
        #   vrsqrt28ps opmask(zmm0, k1, zero: true), zmm1, sae
        #   vrsqrt28ps zmm0, zmm1, sae
        def vrsqrt28ps(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28PS,*operands,**kwargs)
        # Approximation to the Reciprocal Square Root of a Scalar Double-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT28SD]
        # @example
        #   vrsqrt28sd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt28sd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrsqrt28sd xmm0, xmm1, xmm2
        #   vrsqrt28sd xmm0, xmm1, [rcx]
        #   vrsqrt28sd opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrsqrt28sd xmm0, xmm1, xmm2, sae
        def vrsqrt28sd(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28SD,*operands,**kwargs)
        # Approximation to the Reciprocal Square Root of a Scalar Single-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRT28SS]
        # @example
        #   vrsqrt28ss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrt28ss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrsqrt28ss xmm0, xmm1, xmm2
        #   vrsqrt28ss xmm0, xmm1, [rcx]
        #   vrsqrt28ss opmask(xmm0, k1, zero: true), xmm1, xmm2, sae
        #   vrsqrt28ss xmm0, xmm1, xmm2, sae
        def vrsqrt28ss(*operands,**kwargs) = add_instruction(Instructions::VRSQRT28SS,*operands,**kwargs)
        # Compute Reciprocals of Square Roots of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRTPH]
        # @example
        #   vrsqrtph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vrsqrtph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vrsqrtph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vrsqrtph opmask(xmm0, k1, zero: true), xmm1
        #   vrsqrtph opmask(ymm0, k1, zero: true), ymm1
        #   vrsqrtph opmask(zmm0, k1, zero: true), zmm1
        #   vrsqrtph xmm0, bcst([rbx], {1=>8})
        #   vrsqrtph xmm0, xmm1
        #   vrsqrtph ymm0, bcst([rbx], {1=>16})
        #   vrsqrtph ymm0, ymm1
        #   vrsqrtph zmm0, bcst([rbx], {1=>32})
        #   vrsqrtph zmm0, zmm1
        def vrsqrtph(*operands,**kwargs) = add_instruction(Instructions::VRSQRTPH,*operands,**kwargs)
        # Compute Reciprocals of Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRTPS]
        # @example
        #   vrsqrtps xmm0, xmm1
        #   vrsqrtps xmm0, [rbx]
        #   vrsqrtps ymm0, ymm1
        #   vrsqrtps ymm0, [rbx]
        def vrsqrtps(*operands,**kwargs) = add_instruction(Instructions::VRSQRTPS,*operands,**kwargs)
        # Compute Reciprocal of Square Root of Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRTSH]
        # @example
        #   vrsqrtsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vrsqrtsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vrsqrtsh xmm0, xmm1, xmm2
        #   vrsqrtsh xmm0, xmm1, [rcx]
        def vrsqrtsh(*operands,**kwargs) = add_instruction(Instructions::VRSQRTSH,*operands,**kwargs)
        # Compute Reciprocal of Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VRSQRTSS]
        # @example
        #   vrsqrtss xmm0, xmm1, xmm2
        #   vrsqrtss xmm0, xmm1, [rcx]
        def vrsqrtss(*operands,**kwargs) = add_instruction(Instructions::VRSQRTSS,*operands,**kwargs)
        # Scale Packed Double-Precision Floating-Point Values With Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSCALEFPD]
        # @example
        #   vscalefpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vscalefpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vscalefpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vscalefpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vscalefpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vscalefpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vscalefpd xmm0, xmm1, xmm2
        #   vscalefpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vscalefpd ymm0, ymm1, ymm2
        #   vscalefpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vscalefpd zmm0, zmm1, zmm2
        #   vscalefpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vscalefpd zmm0, zmm1, zmm2, er
        def vscalefpd(*operands,**kwargs) = add_instruction(Instructions::VSCALEFPD,*operands,**kwargs)
        # Scale Packed Half-Precision Floating-Point Values With Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSCALEFPH]
        # @example
        #   vscalefph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vscalefph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vscalefph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vscalefph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vscalefph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vscalefph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vscalefph xmm0, xmm1, xmm2
        #   vscalefph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vscalefph ymm0, ymm1, ymm2
        #   vscalefph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vscalefph zmm0, zmm1, zmm2
        #   vscalefph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vscalefph zmm0, zmm1, zmm2, er
        def vscalefph(*operands,**kwargs) = add_instruction(Instructions::VSCALEFPH,*operands,**kwargs)
        # Scale Packed Single-Precision Floating-Point Values With Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSCALEFPS]
        # @example
        #   vscalefps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vscalefps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vscalefps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vscalefps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vscalefps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vscalefps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vscalefps xmm0, xmm1, xmm2
        #   vscalefps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vscalefps ymm0, ymm1, ymm2
        #   vscalefps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vscalefps zmm0, zmm1, zmm2
        #   vscalefps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vscalefps zmm0, zmm1, zmm2, er
        def vscalefps(*operands,**kwargs) = add_instruction(Instructions::VSCALEFPS,*operands,**kwargs)
        # Scale Scalar Double-Precision Floating-Point Value With a Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VSCALEFSD]
        # @example
        #   vscalefsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vscalefsd xmm0, xmm1, xmm2
        #   vscalefsd xmm0, xmm1, [rcx]
        #   vscalefsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vscalefsd xmm0, xmm1, xmm2, er
        def vscalefsd(*operands,**kwargs) = add_instruction(Instructions::VSCALEFSD,*operands,**kwargs)
        # Scale Scalar Half-Precision Floating-Point Value With a Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VSCALEFSH]
        # @example
        #   vscalefsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vscalefsh xmm0, xmm1, xmm2
        #   vscalefsh xmm0, xmm1, [rcx]
        #   vscalefsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vscalefsh xmm0, xmm1, xmm2, er
        def vscalefsh(*operands,**kwargs) = add_instruction(Instructions::VSCALEFSH,*operands,**kwargs)
        # Scale Scalar Single-Precision Floating-Point Value With a Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VSCALEFSS]
        # @example
        #   vscalefss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vscalefss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vscalefss xmm0, xmm1, xmm2
        #   vscalefss xmm0, xmm1, [rcx]
        #   vscalefss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vscalefss xmm0, xmm1, xmm2, er
        def vscalefss(*operands,**kwargs) = add_instruction(Instructions::VSCALEFSS,*operands,**kwargs)
        # Scatter Packed Double-Precision Floating-Point Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERDPD]
        # @example
        #   vscatterdpd opmask([rax+xmm0*4], k1), xmm1
        #   vscatterdpd opmask([rax+xmm0*4], k1), ymm1
        #   vscatterdpd opmask([rax+ymm0*4], k1), zmm1
        def vscatterdpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERDPD,*operands,**kwargs)
        # Scatter Packed Single-Precision Floating-Point Values with Signed Doubleword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERDPS]
        # @example
        #   vscatterdps opmask([rax+xmm0*4], k1), xmm1
        #   vscatterdps opmask([rax+ymm0*4], k1), ymm1
        #   vscatterdps opmask([rax+zmm0*4], k1), zmm1
        def vscatterdps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERDPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF0DPD]
        # @example
        #   vscatterpf0dpd opmask([rax+ymm0*4], k1)
        def vscatterpf0dpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0DPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF0DPS]
        # @example
        #   vscatterpf0dps opmask([rax+zmm0*4], k1)
        def vscatterpf0dps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0DPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF0QPD]
        # @example
        #   vscatterpf0qpd opmask([rax+zmm0*8], k1)
        def vscatterpf0qpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0QPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T0 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF0QPS]
        # @example
        #   vscatterpf0qps opmask([rax+zmm0*8], k1)
        def vscatterpf0qps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF0QPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF1DPD]
        # @example
        #   vscatterpf1dpd opmask([rax+ymm0*4], k1)
        def vscatterpf1dpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1DPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Doubleword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF1DPS]
        # @example
        #   vscatterpf1dps opmask([rax+zmm0*4], k1)
        def vscatterpf1dps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1DPS,*operands,**kwargs)
        # Sparse Prefetch Packed Double-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF1QPD]
        # @example
        #   vscatterpf1qpd opmask([rax+zmm0*8], k1)
        def vscatterpf1qpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1QPD,*operands,**kwargs)
        # Sparse Prefetch Packed Single-Precision Floating-Point Data Values with Signed Quadword Indices Using T1 Hint with Intent to Write
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERPF1QPS]
        # @example
        #   vscatterpf1qps opmask([rax+zmm0*8], k1)
        def vscatterpf1qps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERPF1QPS,*operands,**kwargs)
        # Scatter Packed Double-Precision Floating-Point Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERQPD]
        # @example
        #   vscatterqpd opmask([rax+xmm0*8], k1), xmm1
        #   vscatterqpd opmask([rax+ymm0*8], k1), ymm1
        #   vscatterqpd opmask([rax+zmm0*8], k1), zmm1
        def vscatterqpd(*operands,**kwargs) = add_instruction(Instructions::VSCATTERQPD,*operands,**kwargs)
        # Scatter Packed Single-Precision Floating-Point Values with Signed Quadword Indices
        # @return [Ronin::ASM::X86_64::Instructions::VSCATTERQPS]
        # @example
        #   vscatterqps opmask([rax+xmm0*8], k1), xmm1
        #   vscatterqps opmask([rax+ymm0*8], k1), xmm1
        #   vscatterqps opmask([rax+zmm0*8], k1), ymm1
        def vscatterqps(*operands,**kwargs) = add_instruction(Instructions::VSCATTERQPS,*operands,**kwargs)
        # Perform an Intermediate Calculation for the Next Four SHA512 Message Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VSHA512MSG1]
        # @example
        #   vsha512msg1 ymm0, xmm1
        def vsha512msg1(*operands,**kwargs) = add_instruction(Instructions::VSHA512MSG1,*operands,**kwargs)
        # Perform a Final Calculation for the Next Four SHA512 Message Quadwords
        # @return [Ronin::ASM::X86_64::Instructions::VSHA512MSG2]
        # @example
        #   vsha512msg2 ymm0, ymm1
        def vsha512msg2(*operands,**kwargs) = add_instruction(Instructions::VSHA512MSG2,*operands,**kwargs)
        # Perform Two Rounds of SHA512 Operation
        # @return [Ronin::ASM::X86_64::Instructions::VSHA512RNDS2]
        # @example
        #   vsha512rnds2 ymm0, ymm1, xmm2
        def vsha512rnds2(*operands,**kwargs) = add_instruction(Instructions::VSHA512RNDS2,*operands,**kwargs)
        # Shuffle 128-Bit Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSHUFF32X4]
        # @example
        #   vshuff32x4 opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vshuff32x4 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshuff32x4 opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vshuff32x4 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshuff32x4 ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vshuff32x4 ymm0, ymm1, ymm2, 0x04
        #   vshuff32x4 zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vshuff32x4 zmm0, zmm1, zmm2, 0x04
        def vshuff32x4(*operands,**kwargs) = add_instruction(Instructions::VSHUFF32X4,*operands,**kwargs)
        # Shuffle 128-Bit Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSHUFF64X2]
        # @example
        #   vshuff64x2 opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vshuff64x2 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshuff64x2 opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vshuff64x2 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshuff64x2 ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vshuff64x2 ymm0, ymm1, ymm2, 0x04
        #   vshuff64x2 zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vshuff64x2 zmm0, zmm1, zmm2, 0x04
        def vshuff64x2(*operands,**kwargs) = add_instruction(Instructions::VSHUFF64X2,*operands,**kwargs)
        # Shuffle 128-Bit Packed Doubleword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VSHUFI32X4]
        # @example
        #   vshufi32x4 opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vshufi32x4 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufi32x4 opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vshufi32x4 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufi32x4 ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vshufi32x4 ymm0, ymm1, ymm2, 0x04
        #   vshufi32x4 zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vshufi32x4 zmm0, zmm1, zmm2, 0x04
        def vshufi32x4(*operands,**kwargs) = add_instruction(Instructions::VSHUFI32X4,*operands,**kwargs)
        # Shuffle 128-Bit Packed Quadword Integer Values
        # @return [Ronin::ASM::X86_64::Instructions::VSHUFI64X2]
        # @example
        #   vshufi64x2 opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vshufi64x2 opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufi64x2 opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vshufi64x2 opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufi64x2 ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vshufi64x2 ymm0, ymm1, ymm2, 0x04
        #   vshufi64x2 zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vshufi64x2 zmm0, zmm1, zmm2, 0x04
        def vshufi64x2(*operands,**kwargs) = add_instruction(Instructions::VSHUFI64X2,*operands,**kwargs)
        # Shuffle Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSHUFPD]
        # @example
        #   vshufpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2}), 0x04
        #   vshufpd opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vshufpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4}), 0x04
        #   vshufpd opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8}), 0x04
        #   vshufpd opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufpd xmm0, xmm1, bcst([rcx], {1=>2}), 0x04
        #   vshufpd xmm0, xmm1, xmm2, 0x04
        #   vshufpd xmm0, xmm1, [rcx], 0x04
        #   vshufpd ymm0, ymm1, bcst([rcx], {1=>4}), 0x04
        #   vshufpd ymm0, ymm1, ymm2, 0x04
        #   vshufpd ymm0, ymm1, [rcx], 0x04
        #   vshufpd zmm0, zmm1, bcst([rcx], {1=>8}), 0x04
        #   vshufpd zmm0, zmm1, zmm2, 0x04
        def vshufpd(*operands,**kwargs) = add_instruction(Instructions::VSHUFPD,*operands,**kwargs)
        # Shuffle Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSHUFPS]
        # @example
        #   vshufps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4}), 0x04
        #   vshufps opmask(xmm0, k1, zero: true), xmm1, xmm2, 0x04
        #   vshufps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8}), 0x04
        #   vshufps opmask(ymm0, k1, zero: true), ymm1, ymm2, 0x04
        #   vshufps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16}), 0x04
        #   vshufps opmask(zmm0, k1, zero: true), zmm1, zmm2, 0x04
        #   vshufps xmm0, xmm1, bcst([rcx], {1=>4}), 0x04
        #   vshufps xmm0, xmm1, xmm2, 0x04
        #   vshufps xmm0, xmm1, [rcx], 0x04
        #   vshufps ymm0, ymm1, bcst([rcx], {1=>8}), 0x04
        #   vshufps ymm0, ymm1, ymm2, 0x04
        #   vshufps ymm0, ymm1, [rcx], 0x04
        #   vshufps zmm0, zmm1, bcst([rcx], {1=>16}), 0x04
        #   vshufps zmm0, zmm1, zmm2, 0x04
        def vshufps(*operands,**kwargs) = add_instruction(Instructions::VSHUFPS,*operands,**kwargs)
        # Perform Initial Calculation for the Next Four SM3 Message Words
        # @return [Ronin::ASM::X86_64::Instructions::VSM3MSG1]
        # @example
        #   vsm3msg1 xmm0, xmm1, xmm2
        #   vsm3msg1 xmm0, xmm1, [rcx]
        def vsm3msg1(*operands,**kwargs) = add_instruction(Instructions::VSM3MSG1,*operands,**kwargs)
        # Perform Final Calculation for the Next Four SM3 Message Words
        # @return [Ronin::ASM::X86_64::Instructions::VSM3MSG2]
        # @example
        #   vsm3msg2 xmm0, xmm1, xmm2
        #   vsm3msg2 xmm0, xmm1, [rcx]
        def vsm3msg2(*operands,**kwargs) = add_instruction(Instructions::VSM3MSG2,*operands,**kwargs)
        # Perform Two Rounds of SM3 Operation
        # @return [Ronin::ASM::X86_64::Instructions::VSM3RNDS2]
        # @example
        #   vsm3rnds2 xmm0, xmm1, xmm2, 0x04
        #   vsm3rnds2 xmm0, xmm1, [rcx], 0x04
        def vsm3rnds2(*operands,**kwargs) = add_instruction(Instructions::VSM3RNDS2,*operands,**kwargs)
        # Perform Four Rounds of SM4 Key Expansion
        # @return [Ronin::ASM::X86_64::Instructions::VSM4KEY4]
        # @example
        #   vsm4key4 xmm0, xmm1, xmm2
        #   vsm4key4 xmm0, xmm1, [rcx]
        #   vsm4key4 ymm0, ymm1, ymm2
        #   vsm4key4 ymm0, ymm1, [rcx]
        def vsm4key4(*operands,**kwargs) = add_instruction(Instructions::VSM4KEY4,*operands,**kwargs)
        # Performs Four Rounds of SM4 Encryption
        # @return [Ronin::ASM::X86_64::Instructions::VSM4RNDS4]
        # @example
        #   vsm4rnds4 xmm0, xmm1, xmm2
        #   vsm4rnds4 xmm0, xmm1, [rcx]
        #   vsm4rnds4 ymm0, ymm1, ymm2
        #   vsm4rnds4 ymm0, ymm1, [rcx]
        def vsm4rnds4(*operands,**kwargs) = add_instruction(Instructions::VSM4RNDS4,*operands,**kwargs)
        # Compute Square Roots of Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSQRTPD]
        # @example
        #   vsqrtpd opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vsqrtpd opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vsqrtpd opmask(zmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vsqrtpd opmask(xmm0, k1, zero: true), xmm1
        #   vsqrtpd opmask(ymm0, k1, zero: true), ymm1
        #   vsqrtpd opmask(zmm0, k1, zero: true), zmm1
        #   vsqrtpd xmm0, bcst([rbx], {1=>4})
        #   vsqrtpd xmm0, xmm1
        #   vsqrtpd xmm0, [rbx]
        #   vsqrtpd ymm0, bcst([rbx], {1=>8})
        #   vsqrtpd ymm0, ymm1
        #   vsqrtpd ymm0, [rbx]
        #   vsqrtpd zmm0, bcst([rbx], {1=>8})
        #   vsqrtpd zmm0, zmm1
        #   vsqrtpd opmask(zmm0, k1, zero: true), zmm1, er
        #   vsqrtpd zmm0, zmm1, er
        def vsqrtpd(*operands,**kwargs) = add_instruction(Instructions::VSQRTPD,*operands,**kwargs)
        # Compute Square Roots of Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSQRTPH]
        # @example
        #   vsqrtph opmask(xmm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vsqrtph opmask(ymm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vsqrtph opmask(zmm0, k1, zero: true), bcst([rbx], {1=>32})
        #   vsqrtph opmask(xmm0, k1, zero: true), xmm1
        #   vsqrtph opmask(ymm0, k1, zero: true), ymm1
        #   vsqrtph opmask(zmm0, k1, zero: true), zmm1
        #   vsqrtph xmm0, bcst([rbx], {1=>8})
        #   vsqrtph xmm0, xmm1
        #   vsqrtph ymm0, bcst([rbx], {1=>16})
        #   vsqrtph ymm0, ymm1
        #   vsqrtph zmm0, bcst([rbx], {1=>32})
        #   vsqrtph zmm0, zmm1
        #   vsqrtph opmask(zmm0, k1, zero: true), zmm1, er
        #   vsqrtph zmm0, zmm1, er
        def vsqrtph(*operands,**kwargs) = add_instruction(Instructions::VSQRTPH,*operands,**kwargs)
        # Compute Square Roots of Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSQRTPS]
        # @example
        #   vsqrtps opmask(xmm0, k1, zero: true), bcst([rbx], {1=>4})
        #   vsqrtps opmask(ymm0, k1, zero: true), bcst([rbx], {1=>8})
        #   vsqrtps opmask(zmm0, k1, zero: true), bcst([rbx], {1=>16})
        #   vsqrtps opmask(xmm0, k1, zero: true), xmm1
        #   vsqrtps opmask(ymm0, k1, zero: true), ymm1
        #   vsqrtps opmask(zmm0, k1, zero: true), zmm1
        #   vsqrtps xmm0, bcst([rbx], {1=>4})
        #   vsqrtps xmm0, xmm1
        #   vsqrtps xmm0, [rbx]
        #   vsqrtps ymm0, bcst([rbx], {1=>8})
        #   vsqrtps ymm0, ymm1
        #   vsqrtps ymm0, [rbx]
        #   vsqrtps zmm0, bcst([rbx], {1=>16})
        #   vsqrtps zmm0, zmm1
        #   vsqrtps opmask(zmm0, k1, zero: true), zmm1, er
        #   vsqrtps zmm0, zmm1, er
        def vsqrtps(*operands,**kwargs) = add_instruction(Instructions::VSQRTPS,*operands,**kwargs)
        # Compute Square Root of Scalar Double-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VSQRTSD]
        # @example
        #   vsqrtsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsqrtsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vsqrtsd xmm0, xmm1, xmm2
        #   vsqrtsd xmm0, xmm1, [rcx]
        #   vsqrtsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsqrtsd xmm0, xmm1, xmm2, er
        def vsqrtsd(*operands,**kwargs) = add_instruction(Instructions::VSQRTSD,*operands,**kwargs)
        # Compute Square Root of Scalar Half-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VSQRTSH]
        # @example
        #   vsqrtsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsqrtsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vsqrtsh xmm0, xmm1, xmm2
        #   vsqrtsh xmm0, xmm1, [rcx]
        #   vsqrtsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsqrtsh xmm0, xmm1, xmm2, er
        def vsqrtsh(*operands,**kwargs) = add_instruction(Instructions::VSQRTSH,*operands,**kwargs)
        # Compute Square Root of Scalar Single-Precision Floating-Point Value
        # @return [Ronin::ASM::X86_64::Instructions::VSQRTSS]
        # @example
        #   vsqrtss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsqrtss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vsqrtss xmm0, xmm1, xmm2
        #   vsqrtss xmm0, xmm1, [rcx]
        #   vsqrtss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsqrtss xmm0, xmm1, xmm2, er
        def vsqrtss(*operands,**kwargs) = add_instruction(Instructions::VSQRTSS,*operands,**kwargs)
        # Store MXCSR Register State
        # @return [Ronin::ASM::X86_64::Instructions::VSTMXCSR]
        # @example
        #   vstmxcsr [rax]
        def vstmxcsr(*operands,**kwargs) = add_instruction(Instructions::VSTMXCSR,*operands,**kwargs)
        # Subtract Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSUBPD]
        # @example
        #   vsubpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vsubpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vsubpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vsubpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vsubpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vsubpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vsubpd xmm0, xmm1, xmm2
        #   vsubpd xmm0, xmm1, [rcx]
        #   vsubpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vsubpd ymm0, ymm1, ymm2
        #   vsubpd ymm0, ymm1, [rcx]
        #   vsubpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vsubpd zmm0, zmm1, zmm2
        #   vsubpd opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vsubpd zmm0, zmm1, zmm2, er
        def vsubpd(*operands,**kwargs) = add_instruction(Instructions::VSUBPD,*operands,**kwargs)
        # Subtract Packed Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSUBPH]
        # @example
        #   vsubph opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>8})
        #   vsubph opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubph opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>16})
        #   vsubph opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vsubph opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>32})
        #   vsubph opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vsubph xmm0, xmm1, bcst([rcx], {1=>8})
        #   vsubph xmm0, xmm1, xmm2
        #   vsubph ymm0, ymm1, bcst([rcx], {1=>16})
        #   vsubph ymm0, ymm1, ymm2
        #   vsubph zmm0, zmm1, bcst([rcx], {1=>32})
        #   vsubph zmm0, zmm1, zmm2
        #   vsubph opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vsubph zmm0, zmm1, zmm2, er
        def vsubph(*operands,**kwargs) = add_instruction(Instructions::VSUBPH,*operands,**kwargs)
        # Subtract Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSUBPS]
        # @example
        #   vsubps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vsubps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vsubps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vsubps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vsubps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vsubps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vsubps xmm0, xmm1, xmm2
        #   vsubps xmm0, xmm1, [rcx]
        #   vsubps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vsubps ymm0, ymm1, ymm2
        #   vsubps ymm0, ymm1, [rcx]
        #   vsubps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vsubps zmm0, zmm1, zmm2
        #   vsubps opmask(zmm0, k1, zero: true), zmm1, zmm2, er
        #   vsubps zmm0, zmm1, zmm2, er
        def vsubps(*operands,**kwargs) = add_instruction(Instructions::VSUBPS,*operands,**kwargs)
        # Subtract Scalar Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSUBSD]
        # @example
        #   vsubsd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubsd opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vsubsd xmm0, xmm1, xmm2
        #   vsubsd xmm0, xmm1, [rcx]
        #   vsubsd opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsubsd xmm0, xmm1, xmm2, er
        def vsubsd(*operands,**kwargs) = add_instruction(Instructions::VSUBSD,*operands,**kwargs)
        # Subtract Scalar Half-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSUBSH]
        # @example
        #   vsubsh opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubsh opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vsubsh xmm0, xmm1, xmm2
        #   vsubsh xmm0, xmm1, [rcx]
        #   vsubsh opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsubsh xmm0, xmm1, xmm2, er
        def vsubsh(*operands,**kwargs) = add_instruction(Instructions::VSUBSH,*operands,**kwargs)
        # Subtract Scalar Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VSUBSS]
        # @example
        #   vsubss opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vsubss opmask(xmm0, k1, zero: true), xmm1, [rcx]
        #   vsubss xmm0, xmm1, xmm2
        #   vsubss xmm0, xmm1, [rcx]
        #   vsubss opmask(xmm0, k1, zero: true), xmm1, xmm2, er
        #   vsubss xmm0, xmm1, xmm2, er
        def vsubss(*operands,**kwargs) = add_instruction(Instructions::VSUBSS,*operands,**kwargs)
        # Packed Double-Precision Floating-Point Bit Test
        # @return [Ronin::ASM::X86_64::Instructions::VTESTPD]
        # @example
        #   vtestpd xmm0, xmm1
        #   vtestpd xmm0, [rbx]
        #   vtestpd ymm0, ymm1
        #   vtestpd ymm0, [rbx]
        def vtestpd(*operands,**kwargs) = add_instruction(Instructions::VTESTPD,*operands,**kwargs)
        # Packed Single-Precision Floating-Point Bit Test
        # @return [Ronin::ASM::X86_64::Instructions::VTESTPS]
        # @example
        #   vtestps xmm0, xmm1
        #   vtestps xmm0, [rbx]
        #   vtestps ymm0, ymm1
        #   vtestps ymm0, [rbx]
        def vtestps(*operands,**kwargs) = add_instruction(Instructions::VTESTPS,*operands,**kwargs)
        # Unordered Compare Scalar Double-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::VUCOMISD]
        # @example
        #   vucomisd xmm0, xmm1
        #   vucomisd xmm0, [rbx]
        #   vucomisd xmm0, xmm1, sae
        def vucomisd(*operands,**kwargs) = add_instruction(Instructions::VUCOMISD,*operands,**kwargs)
        # Unordered Compare Scalar Half-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::VUCOMISH]
        # @example
        #   vucomish xmm0, xmm1
        #   vucomish xmm0, [rbx]
        #   vucomish xmm0, xmm1, sae
        def vucomish(*operands,**kwargs) = add_instruction(Instructions::VUCOMISH,*operands,**kwargs)
        # Unordered Compare Scalar Single-Precision Floating-Point Values and Set EFLAGS
        # @return [Ronin::ASM::X86_64::Instructions::VUCOMISS]
        # @example
        #   vucomiss xmm0, xmm1
        #   vucomiss xmm0, [rbx]
        #   vucomiss xmm0, xmm1, sae
        def vucomiss(*operands,**kwargs) = add_instruction(Instructions::VUCOMISS,*operands,**kwargs)
        # Unpack and Interleave High Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VUNPCKHPD]
        # @example
        #   vunpckhpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vunpckhpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpckhpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vunpckhpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpckhpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vunpckhpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpckhpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vunpckhpd xmm0, xmm1, xmm2
        #   vunpckhpd xmm0, xmm1, [rcx]
        #   vunpckhpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vunpckhpd ymm0, ymm1, ymm2
        #   vunpckhpd ymm0, ymm1, [rcx]
        #   vunpckhpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vunpckhpd zmm0, zmm1, zmm2
        def vunpckhpd(*operands,**kwargs) = add_instruction(Instructions::VUNPCKHPD,*operands,**kwargs)
        # Unpack and Interleave High Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VUNPCKHPS]
        # @example
        #   vunpckhps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vunpckhps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpckhps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vunpckhps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpckhps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vunpckhps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpckhps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vunpckhps xmm0, xmm1, xmm2
        #   vunpckhps xmm0, xmm1, [rcx]
        #   vunpckhps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vunpckhps ymm0, ymm1, ymm2
        #   vunpckhps ymm0, ymm1, [rcx]
        #   vunpckhps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vunpckhps zmm0, zmm1, zmm2
        def vunpckhps(*operands,**kwargs) = add_instruction(Instructions::VUNPCKHPS,*operands,**kwargs)
        # Unpack and Interleave Low Packed Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VUNPCKLPD]
        # @example
        #   vunpcklpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vunpcklpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpcklpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vunpcklpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpcklpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vunpcklpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpcklpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vunpcklpd xmm0, xmm1, xmm2
        #   vunpcklpd xmm0, xmm1, [rcx]
        #   vunpcklpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vunpcklpd ymm0, ymm1, ymm2
        #   vunpcklpd ymm0, ymm1, [rcx]
        #   vunpcklpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vunpcklpd zmm0, zmm1, zmm2
        def vunpcklpd(*operands,**kwargs) = add_instruction(Instructions::VUNPCKLPD,*operands,**kwargs)
        # Unpack and Interleave Low Packed Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VUNPCKLPS]
        # @example
        #   vunpcklps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vunpcklps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vunpcklps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vunpcklps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vunpcklps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vunpcklps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vunpcklps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vunpcklps xmm0, xmm1, xmm2
        #   vunpcklps xmm0, xmm1, [rcx]
        #   vunpcklps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vunpcklps ymm0, ymm1, ymm2
        #   vunpcklps ymm0, ymm1, [rcx]
        #   vunpcklps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vunpcklps zmm0, zmm1, zmm2
        def vunpcklps(*operands,**kwargs) = add_instruction(Instructions::VUNPCKLPS,*operands,**kwargs)
        # Bitwise Logical XOR for Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VXORPD]
        # @example
        #   vxorpd opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>2})
        #   vxorpd opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vxorpd opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>4})
        #   vxorpd opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vxorpd opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>8})
        #   vxorpd opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vxorpd xmm0, xmm1, bcst([rcx], {1=>2})
        #   vxorpd xmm0, xmm1, xmm2
        #   vxorpd xmm0, xmm1, [rcx]
        #   vxorpd ymm0, ymm1, bcst([rcx], {1=>4})
        #   vxorpd ymm0, ymm1, ymm2
        #   vxorpd ymm0, ymm1, [rcx]
        #   vxorpd zmm0, zmm1, bcst([rcx], {1=>8})
        #   vxorpd zmm0, zmm1, zmm2
        def vxorpd(*operands,**kwargs) = add_instruction(Instructions::VXORPD,*operands,**kwargs)
        # Bitwise Logical XOR for Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::VXORPS]
        # @example
        #   vxorps opmask(xmm0, k1, zero: true), xmm1, bcst([rcx], {1=>4})
        #   vxorps opmask(xmm0, k1, zero: true), xmm1, xmm2
        #   vxorps opmask(ymm0, k1, zero: true), ymm1, bcst([rcx], {1=>8})
        #   vxorps opmask(ymm0, k1, zero: true), ymm1, ymm2
        #   vxorps opmask(zmm0, k1, zero: true), zmm1, bcst([rcx], {1=>16})
        #   vxorps opmask(zmm0, k1, zero: true), zmm1, zmm2
        #   vxorps xmm0, xmm1, bcst([rcx], {1=>4})
        #   vxorps xmm0, xmm1, xmm2
        #   vxorps xmm0, xmm1, [rcx]
        #   vxorps ymm0, ymm1, bcst([rcx], {1=>8})
        #   vxorps ymm0, ymm1, ymm2
        #   vxorps ymm0, ymm1, [rcx]
        #   vxorps zmm0, zmm1, bcst([rcx], {1=>16})
        #   vxorps zmm0, zmm1, zmm2
        def vxorps(*operands,**kwargs) = add_instruction(Instructions::VXORPS,*operands,**kwargs)
        # Zero All YMM Registers
        # @return [Ronin::ASM::X86_64::Instructions::VZEROALL]
        def vzeroall(*operands,**kwargs) = add_instruction(Instructions::VZEROALL,*operands,**kwargs)
        # Zero Upper Bits of YMM Registers
        # @return [Ronin::ASM::X86_64::Instructions::VZEROUPPER]
        def vzeroupper(*operands,**kwargs) = add_instruction(Instructions::VZEROUPPER,*operands,**kwargs)
        # WRite FS segment BASE
        # @return [Ronin::ASM::X86_64::Instructions::WRFSBASE]
        # @example
        #   wrfsbase eax
        #   wrfsbase rax
        def wrfsbase(*operands,**kwargs) = add_instruction(Instructions::WRFSBASE,*operands,**kwargs)
        # WRite GS segment BASE
        # @return [Ronin::ASM::X86_64::Instructions::WRGSBASE]
        # @example
        #   wrgsbase eax
        #   wrgsbase rax
        def wrgsbase(*operands,**kwargs) = add_instruction(Instructions::WRGSBASE,*operands,**kwargs)
        # Exchange and Add
        # @return [Ronin::ASM::X86_64::Instructions::XADD]
        # @example
        #   xadd al, bl
        #   xadd ax, bx
        #   xadd eax, ebx
        #   xadd rax, rbx
        #   xadd [rax], bl
        #   xadd [rax], bx
        #   xadd [rax], ebx
        #   xadd [rax], rbx
        def xadd(*operands,**kwargs) = add_instruction(Instructions::XADD,*operands,**kwargs)
        # Exchange Register/Memory with Register
        # @return [Ronin::ASM::X86_64::Instructions::XCHG]
        # @example
        #   xchg al, bl
        #   xchg al, [rbx]
        #   xchg ax, bx
        #   xchg ax, ax
        #   xchg ax, [rbx]
        #   xchg eax, ebx
        #   xchg eax, eax
        #   xchg eax, [rbx]
        #   xchg rax, rbx
        #   xchg rax, rax
        #   xchg rax, [rbx]
        #   xchg [rax], bl
        #   xchg [rax], bx
        #   xchg [rax], ebx
        #   xchg [rax], rbx
        def xchg(*operands,**kwargs) = add_instruction(Instructions::XCHG,*operands,**kwargs)
        # Get Value of Extended Control Register
        # @return [Ronin::ASM::X86_64::Instructions::XGETBV]
        def xgetbv(*operands,**kwargs) = add_instruction(Instructions::XGETBV,*operands,**kwargs)
        # Table Look-up Translation
        # @return [Ronin::ASM::X86_64::Instructions::XLATB]
        def xlatb(*operands,**kwargs) = add_instruction(Instructions::XLATB,*operands,**kwargs)
        # Logical Exclusive OR
        # @return [Ronin::ASM::X86_64::Instructions::XOR]
        # @example
        #   xor al, 0x02
        #   xor al, bl
        #   xor al, [rbx]
        #   xor ax, 0x0002
        #   xor ax, 0x02
        #   xor ax, bx
        #   xor ax, [rbx]
        #   xor eax, 0x00000002
        #   xor eax, 0x02
        #   xor eax, ebx
        #   xor eax, [rbx]
        #   xor rax, 0x00000002
        #   xor rax, 0x02
        #   xor rax, rbx
        #   xor rax, [rbx]
        #   xor [rax], 0x02
        #   xor [rax], bl
        #   xor [rax], 0x0002
        #   xor [rax], bx
        #   xor [rax], 0x00000002
        #   xor [rax], ebx
        #   xor [rax], rbx
        def xor(*operands,**kwargs) = add_instruction(Instructions::XOR,*operands,**kwargs)
        # Bitwise Logical XOR for Double-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::XORPD]
        # @example
        #   xorpd xmm0, xmm1
        #   xorpd xmm0, [rbx]
        def xorpd(*operands,**kwargs) = add_instruction(Instructions::XORPD,*operands,**kwargs)
        # Bitwise Logical XOR for Single-Precision Floating-Point Values
        # @return [Ronin::ASM::X86_64::Instructions::XORPS]
        # @example
        #   xorps xmm0, xmm1
        #   xorps xmm0, [rbx]
        def xorps(*operands,**kwargs) = add_instruction(Instructions::XORPS,*operands,**kwargs)
      end
    end
  end
end
