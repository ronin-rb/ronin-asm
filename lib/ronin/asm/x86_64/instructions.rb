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

        def aadd(*operands,**kwargs) = @instructions << Instructions::AADD.new(*operands,**kwargs)
        def aand(*operands,**kwargs) = @instructions << Instructions::AAND.new(*operands,**kwargs)
        def adc(*operands,**kwargs) = @instructions << Instructions::ADC.new(*operands,**kwargs)
        def adcx(*operands,**kwargs) = @instructions << Instructions::ADCX.new(*operands,**kwargs)
        def add(*operands,**kwargs) = @instructions << Instructions::ADD.new(*operands,**kwargs)
        def addpd(*operands,**kwargs) = @instructions << Instructions::ADDPD.new(*operands,**kwargs)
        def addps(*operands,**kwargs) = @instructions << Instructions::ADDPS.new(*operands,**kwargs)
        def addsd(*operands,**kwargs) = @instructions << Instructions::ADDSD.new(*operands,**kwargs)
        def addss(*operands,**kwargs) = @instructions << Instructions::ADDSS.new(*operands,**kwargs)
        def addsubpd(*operands,**kwargs) = @instructions << Instructions::ADDSUBPD.new(*operands,**kwargs)
        def addsubps(*operands,**kwargs) = @instructions << Instructions::ADDSUBPS.new(*operands,**kwargs)
        def adox(*operands,**kwargs) = @instructions << Instructions::ADOX.new(*operands,**kwargs)
        def aesdec(*operands,**kwargs) = @instructions << Instructions::AESDEC.new(*operands,**kwargs)
        def aesdeclast(*operands,**kwargs) = @instructions << Instructions::AESDECLAST.new(*operands,**kwargs)
        def aesenc(*operands,**kwargs) = @instructions << Instructions::AESENC.new(*operands,**kwargs)
        def aesenclast(*operands,**kwargs) = @instructions << Instructions::AESENCLAST.new(*operands,**kwargs)
        def aesimc(*operands,**kwargs) = @instructions << Instructions::AESIMC.new(*operands,**kwargs)
        def aeskeygenassist(*operands,**kwargs) = @instructions << Instructions::AESKEYGENASSIST.new(*operands,**kwargs)
        def and(*operands,**kwargs) = @instructions << Instructions::AND.new(*operands,**kwargs)
        def andn(*operands,**kwargs) = @instructions << Instructions::ANDN.new(*operands,**kwargs)
        def andnpd(*operands,**kwargs) = @instructions << Instructions::ANDNPD.new(*operands,**kwargs)
        def andnps(*operands,**kwargs) = @instructions << Instructions::ANDNPS.new(*operands,**kwargs)
        def andpd(*operands,**kwargs) = @instructions << Instructions::ANDPD.new(*operands,**kwargs)
        def andps(*operands,**kwargs) = @instructions << Instructions::ANDPS.new(*operands,**kwargs)
        def aor(*operands,**kwargs) = @instructions << Instructions::AOR.new(*operands,**kwargs)
        def axor(*operands,**kwargs) = @instructions << Instructions::AXOR.new(*operands,**kwargs)
        def bextr(*operands,**kwargs) = @instructions << Instructions::BEXTR.new(*operands,**kwargs)
        def blcfill(*operands,**kwargs) = @instructions << Instructions::BLCFILL.new(*operands,**kwargs)
        def blci(*operands,**kwargs) = @instructions << Instructions::BLCI.new(*operands,**kwargs)
        def blcic(*operands,**kwargs) = @instructions << Instructions::BLCIC.new(*operands,**kwargs)
        def blcmsk(*operands,**kwargs) = @instructions << Instructions::BLCMSK.new(*operands,**kwargs)
        def blcs(*operands,**kwargs) = @instructions << Instructions::BLCS.new(*operands,**kwargs)
        def blendpd(*operands,**kwargs) = @instructions << Instructions::BLENDPD.new(*operands,**kwargs)
        def blendps(*operands,**kwargs) = @instructions << Instructions::BLENDPS.new(*operands,**kwargs)
        def blendvpd(*operands,**kwargs) = @instructions << Instructions::BLENDVPD.new(*operands,**kwargs)
        def blendvps(*operands,**kwargs) = @instructions << Instructions::BLENDVPS.new(*operands,**kwargs)
        def blsfill(*operands,**kwargs) = @instructions << Instructions::BLSFILL.new(*operands,**kwargs)
        def blsi(*operands,**kwargs) = @instructions << Instructions::BLSI.new(*operands,**kwargs)
        def blsic(*operands,**kwargs) = @instructions << Instructions::BLSIC.new(*operands,**kwargs)
        def blsmsk(*operands,**kwargs) = @instructions << Instructions::BLSMSK.new(*operands,**kwargs)
        def blsr(*operands,**kwargs) = @instructions << Instructions::BLSR.new(*operands,**kwargs)
        def bsf(*operands,**kwargs) = @instructions << Instructions::BSF.new(*operands,**kwargs)
        def bsr(*operands,**kwargs) = @instructions << Instructions::BSR.new(*operands,**kwargs)
        def bswap(*operands,**kwargs) = @instructions << Instructions::BSWAP.new(*operands,**kwargs)
        def bt(*operands,**kwargs) = @instructions << Instructions::BT.new(*operands,**kwargs)
        def btc(*operands,**kwargs) = @instructions << Instructions::BTC.new(*operands,**kwargs)
        def btr(*operands,**kwargs) = @instructions << Instructions::BTR.new(*operands,**kwargs)
        def bts(*operands,**kwargs) = @instructions << Instructions::BTS.new(*operands,**kwargs)
        def bzhi(*operands,**kwargs) = @instructions << Instructions::BZHI.new(*operands,**kwargs)
        def call(*operands,**kwargs) = @instructions << Instructions::CALL.new(*operands,**kwargs)
        def cbw(*operands,**kwargs) = @instructions << Instructions::CBW.new(*operands,**kwargs)
        def cdq(*operands,**kwargs) = @instructions << Instructions::CDQ.new(*operands,**kwargs)
        def cdqe(*operands,**kwargs) = @instructions << Instructions::CDQE.new(*operands,**kwargs)
        def clc(*operands,**kwargs) = @instructions << Instructions::CLC.new(*operands,**kwargs)
        def cld(*operands,**kwargs) = @instructions << Instructions::CLD.new(*operands,**kwargs)
        def cldemote(*operands,**kwargs) = @instructions << Instructions::CLDEMOTE.new(*operands,**kwargs)
        def clflush(*operands,**kwargs) = @instructions << Instructions::CLFLUSH.new(*operands,**kwargs)
        def clflushopt(*operands,**kwargs) = @instructions << Instructions::CLFLUSHOPT.new(*operands,**kwargs)
        def clwb(*operands,**kwargs) = @instructions << Instructions::CLWB.new(*operands,**kwargs)
        def clzero(*operands,**kwargs) = @instructions << Instructions::CLZERO.new(*operands,**kwargs)
        def cmc(*operands,**kwargs) = @instructions << Instructions::CMC.new(*operands,**kwargs)
        def cmova(*operands,**kwargs) = @instructions << Instructions::CMOVA.new(*operands,**kwargs)
        def cmovae(*operands,**kwargs) = @instructions << Instructions::CMOVAE.new(*operands,**kwargs)
        def cmovb(*operands,**kwargs) = @instructions << Instructions::CMOVB.new(*operands,**kwargs)
        def cmovbe(*operands,**kwargs) = @instructions << Instructions::CMOVBE.new(*operands,**kwargs)
        def cmovc(*operands,**kwargs) = @instructions << Instructions::CMOVC.new(*operands,**kwargs)
        def cmove(*operands,**kwargs) = @instructions << Instructions::CMOVE.new(*operands,**kwargs)
        def cmovg(*operands,**kwargs) = @instructions << Instructions::CMOVG.new(*operands,**kwargs)
        def cmovge(*operands,**kwargs) = @instructions << Instructions::CMOVGE.new(*operands,**kwargs)
        def cmovl(*operands,**kwargs) = @instructions << Instructions::CMOVL.new(*operands,**kwargs)
        def cmovle(*operands,**kwargs) = @instructions << Instructions::CMOVLE.new(*operands,**kwargs)
        def cmovna(*operands,**kwargs) = @instructions << Instructions::CMOVNA.new(*operands,**kwargs)
        def cmovnae(*operands,**kwargs) = @instructions << Instructions::CMOVNAE.new(*operands,**kwargs)
        def cmovnb(*operands,**kwargs) = @instructions << Instructions::CMOVNB.new(*operands,**kwargs)
        def cmovnbe(*operands,**kwargs) = @instructions << Instructions::CMOVNBE.new(*operands,**kwargs)
        def cmovnc(*operands,**kwargs) = @instructions << Instructions::CMOVNC.new(*operands,**kwargs)
        def cmovne(*operands,**kwargs) = @instructions << Instructions::CMOVNE.new(*operands,**kwargs)
        def cmovng(*operands,**kwargs) = @instructions << Instructions::CMOVNG.new(*operands,**kwargs)
        def cmovnge(*operands,**kwargs) = @instructions << Instructions::CMOVNGE.new(*operands,**kwargs)
        def cmovnl(*operands,**kwargs) = @instructions << Instructions::CMOVNL.new(*operands,**kwargs)
        def cmovnle(*operands,**kwargs) = @instructions << Instructions::CMOVNLE.new(*operands,**kwargs)
        def cmovno(*operands,**kwargs) = @instructions << Instructions::CMOVNO.new(*operands,**kwargs)
        def cmovnp(*operands,**kwargs) = @instructions << Instructions::CMOVNP.new(*operands,**kwargs)
        def cmovns(*operands,**kwargs) = @instructions << Instructions::CMOVNS.new(*operands,**kwargs)
        def cmovnz(*operands,**kwargs) = @instructions << Instructions::CMOVNZ.new(*operands,**kwargs)
        def cmovo(*operands,**kwargs) = @instructions << Instructions::CMOVO.new(*operands,**kwargs)
        def cmovp(*operands,**kwargs) = @instructions << Instructions::CMOVP.new(*operands,**kwargs)
        def cmovpe(*operands,**kwargs) = @instructions << Instructions::CMOVPE.new(*operands,**kwargs)
        def cmovpo(*operands,**kwargs) = @instructions << Instructions::CMOVPO.new(*operands,**kwargs)
        def cmovs(*operands,**kwargs) = @instructions << Instructions::CMOVS.new(*operands,**kwargs)
        def cmovz(*operands,**kwargs) = @instructions << Instructions::CMOVZ.new(*operands,**kwargs)
        def cmp(*operands,**kwargs) = @instructions << Instructions::CMP.new(*operands,**kwargs)
        def cmpbexadd(*operands,**kwargs) = @instructions << Instructions::CMPBEXADD.new(*operands,**kwargs)
        def cmpbxadd(*operands,**kwargs) = @instructions << Instructions::CMPBXADD.new(*operands,**kwargs)
        def cmplexadd(*operands,**kwargs) = @instructions << Instructions::CMPLEXADD.new(*operands,**kwargs)
        def cmplxadd(*operands,**kwargs) = @instructions << Instructions::CMPLXADD.new(*operands,**kwargs)
        def cmpnbexadd(*operands,**kwargs) = @instructions << Instructions::CMPNBEXADD.new(*operands,**kwargs)
        def cmpnbxadd(*operands,**kwargs) = @instructions << Instructions::CMPNBXADD.new(*operands,**kwargs)
        def cmpnlexadd(*operands,**kwargs) = @instructions << Instructions::CMPNLEXADD.new(*operands,**kwargs)
        def cmpnlxadd(*operands,**kwargs) = @instructions << Instructions::CMPNLXADD.new(*operands,**kwargs)
        def cmpnoxadd(*operands,**kwargs) = @instructions << Instructions::CMPNOXADD.new(*operands,**kwargs)
        def cmpnpxadd(*operands,**kwargs) = @instructions << Instructions::CMPNPXADD.new(*operands,**kwargs)
        def cmpnsxadd(*operands,**kwargs) = @instructions << Instructions::CMPNSXADD.new(*operands,**kwargs)
        def cmpnzxadd(*operands,**kwargs) = @instructions << Instructions::CMPNZXADD.new(*operands,**kwargs)
        def cmpoxadd(*operands,**kwargs) = @instructions << Instructions::CMPOXADD.new(*operands,**kwargs)
        def cmppd(*operands,**kwargs) = @instructions << Instructions::CMPPD.new(*operands,**kwargs)
        def cmpps(*operands,**kwargs) = @instructions << Instructions::CMPPS.new(*operands,**kwargs)
        def cmppxadd(*operands,**kwargs) = @instructions << Instructions::CMPPXADD.new(*operands,**kwargs)
        def cmpsd(*operands,**kwargs) = @instructions << Instructions::CMPSD.new(*operands,**kwargs)
        def cmpss(*operands,**kwargs) = @instructions << Instructions::CMPSS.new(*operands,**kwargs)
        def cmpsxadd(*operands,**kwargs) = @instructions << Instructions::CMPSXADD.new(*operands,**kwargs)
        def cmpxchg(*operands,**kwargs) = @instructions << Instructions::CMPXCHG.new(*operands,**kwargs)
        def cmpxchg16b(*operands,**kwargs) = @instructions << Instructions::CMPXCHG16B.new(*operands,**kwargs)
        def cmpxchg8b(*operands,**kwargs) = @instructions << Instructions::CMPXCHG8B.new(*operands,**kwargs)
        def cmpzxadd(*operands,**kwargs) = @instructions << Instructions::CMPZXADD.new(*operands,**kwargs)
        def comisd(*operands,**kwargs) = @instructions << Instructions::COMISD.new(*operands,**kwargs)
        def comiss(*operands,**kwargs) = @instructions << Instructions::COMISS.new(*operands,**kwargs)
        def cpuid(*operands,**kwargs) = @instructions << Instructions::CPUID.new(*operands,**kwargs)
        def cqo(*operands,**kwargs) = @instructions << Instructions::CQO.new(*operands,**kwargs)
        def crc32(*operands,**kwargs) = @instructions << Instructions::CRC32.new(*operands,**kwargs)
        def cvtdq2pd(*operands,**kwargs) = @instructions << Instructions::CVTDQ2PD.new(*operands,**kwargs)
        def cvtdq2ps(*operands,**kwargs) = @instructions << Instructions::CVTDQ2PS.new(*operands,**kwargs)
        def cvtpd2dq(*operands,**kwargs) = @instructions << Instructions::CVTPD2DQ.new(*operands,**kwargs)
        def cvtpd2pi(*operands,**kwargs) = @instructions << Instructions::CVTPD2PI.new(*operands,**kwargs)
        def cvtpd2ps(*operands,**kwargs) = @instructions << Instructions::CVTPD2PS.new(*operands,**kwargs)
        def cvtpi2pd(*operands,**kwargs) = @instructions << Instructions::CVTPI2PD.new(*operands,**kwargs)
        def cvtpi2ps(*operands,**kwargs) = @instructions << Instructions::CVTPI2PS.new(*operands,**kwargs)
        def cvtps2dq(*operands,**kwargs) = @instructions << Instructions::CVTPS2DQ.new(*operands,**kwargs)
        def cvtps2pd(*operands,**kwargs) = @instructions << Instructions::CVTPS2PD.new(*operands,**kwargs)
        def cvtps2pi(*operands,**kwargs) = @instructions << Instructions::CVTPS2PI.new(*operands,**kwargs)
        def cvtsd2si(*operands,**kwargs) = @instructions << Instructions::CVTSD2SI.new(*operands,**kwargs)
        def cvtsd2ss(*operands,**kwargs) = @instructions << Instructions::CVTSD2SS.new(*operands,**kwargs)
        def cvtsi2sd(*operands,**kwargs) = @instructions << Instructions::CVTSI2SD.new(*operands,**kwargs)
        def cvtsi2ss(*operands,**kwargs) = @instructions << Instructions::CVTSI2SS.new(*operands,**kwargs)
        def cvtss2sd(*operands,**kwargs) = @instructions << Instructions::CVTSS2SD.new(*operands,**kwargs)
        def cvtss2si(*operands,**kwargs) = @instructions << Instructions::CVTSS2SI.new(*operands,**kwargs)
        def cvttpd2dq(*operands,**kwargs) = @instructions << Instructions::CVTTPD2DQ.new(*operands,**kwargs)
        def cvttpd2pi(*operands,**kwargs) = @instructions << Instructions::CVTTPD2PI.new(*operands,**kwargs)
        def cvttps2dq(*operands,**kwargs) = @instructions << Instructions::CVTTPS2DQ.new(*operands,**kwargs)
        def cvttps2pi(*operands,**kwargs) = @instructions << Instructions::CVTTPS2PI.new(*operands,**kwargs)
        def cvttsd2si(*operands,**kwargs) = @instructions << Instructions::CVTTSD2SI.new(*operands,**kwargs)
        def cvttss2si(*operands,**kwargs) = @instructions << Instructions::CVTTSS2SI.new(*operands,**kwargs)
        def cwd(*operands,**kwargs) = @instructions << Instructions::CWD.new(*operands,**kwargs)
        def cwde(*operands,**kwargs) = @instructions << Instructions::CWDE.new(*operands,**kwargs)
        def dec(*operands,**kwargs) = @instructions << Instructions::DEC.new(*operands,**kwargs)
        def div(*operands,**kwargs) = @instructions << Instructions::DIV.new(*operands,**kwargs)
        def divpd(*operands,**kwargs) = @instructions << Instructions::DIVPD.new(*operands,**kwargs)
        def divps(*operands,**kwargs) = @instructions << Instructions::DIVPS.new(*operands,**kwargs)
        def divsd(*operands,**kwargs) = @instructions << Instructions::DIVSD.new(*operands,**kwargs)
        def divss(*operands,**kwargs) = @instructions << Instructions::DIVSS.new(*operands,**kwargs)
        def dppd(*operands,**kwargs) = @instructions << Instructions::DPPD.new(*operands,**kwargs)
        def dpps(*operands,**kwargs) = @instructions << Instructions::DPPS.new(*operands,**kwargs)
        def emms(*operands,**kwargs) = @instructions << Instructions::EMMS.new(*operands,**kwargs)
        def endbr64(*operands,**kwargs) = @instructions << Instructions::ENDBR64.new(*operands,**kwargs)
        def extractps(*operands,**kwargs) = @instructions << Instructions::EXTRACTPS.new(*operands,**kwargs)
        def extrq(*operands,**kwargs) = @instructions << Instructions::EXTRQ.new(*operands,**kwargs)
        def femms(*operands,**kwargs) = @instructions << Instructions::FEMMS.new(*operands,**kwargs)
        def gf2p8affineinvqb(*operands,**kwargs) = @instructions << Instructions::GF2P8AFFINEINVQB.new(*operands,**kwargs)
        def gf2p8affineqb(*operands,**kwargs) = @instructions << Instructions::GF2P8AFFINEQB.new(*operands,**kwargs)
        def gf2p8mulb(*operands,**kwargs) = @instructions << Instructions::GF2P8MULB.new(*operands,**kwargs)
        def haddpd(*operands,**kwargs) = @instructions << Instructions::HADDPD.new(*operands,**kwargs)
        def haddps(*operands,**kwargs) = @instructions << Instructions::HADDPS.new(*operands,**kwargs)
        def hsubpd(*operands,**kwargs) = @instructions << Instructions::HSUBPD.new(*operands,**kwargs)
        def hsubps(*operands,**kwargs) = @instructions << Instructions::HSUBPS.new(*operands,**kwargs)
        def idiv(*operands,**kwargs) = @instructions << Instructions::IDIV.new(*operands,**kwargs)
        def imul(*operands,**kwargs) = @instructions << Instructions::IMUL.new(*operands,**kwargs)
        def inc(*operands,**kwargs) = @instructions << Instructions::INC.new(*operands,**kwargs)
        def insertps(*operands,**kwargs) = @instructions << Instructions::INSERTPS.new(*operands,**kwargs)
        def insertq(*operands,**kwargs) = @instructions << Instructions::INSERTQ.new(*operands,**kwargs)
        def int(*operands,**kwargs) = @instructions << Instructions::INT.new(*operands,**kwargs)
        def int3(*operands,**kwargs) = @instructions << Instructions::INT3.new(*operands,**kwargs)
        def ja(*operands,**kwargs) = @instructions << Instructions::JA.new(*operands,**kwargs)
        def jae(*operands,**kwargs) = @instructions << Instructions::JAE.new(*operands,**kwargs)
        def jb(*operands,**kwargs) = @instructions << Instructions::JB.new(*operands,**kwargs)
        def jbe(*operands,**kwargs) = @instructions << Instructions::JBE.new(*operands,**kwargs)
        def jc(*operands,**kwargs) = @instructions << Instructions::JC.new(*operands,**kwargs)
        def je(*operands,**kwargs) = @instructions << Instructions::JE.new(*operands,**kwargs)
        def jecxz(*operands,**kwargs) = @instructions << Instructions::JECXZ.new(*operands,**kwargs)
        def jg(*operands,**kwargs) = @instructions << Instructions::JG.new(*operands,**kwargs)
        def jge(*operands,**kwargs) = @instructions << Instructions::JGE.new(*operands,**kwargs)
        def jl(*operands,**kwargs) = @instructions << Instructions::JL.new(*operands,**kwargs)
        def jle(*operands,**kwargs) = @instructions << Instructions::JLE.new(*operands,**kwargs)
        def jmp(*operands,**kwargs) = @instructions << Instructions::JMP.new(*operands,**kwargs)
        def jna(*operands,**kwargs) = @instructions << Instructions::JNA.new(*operands,**kwargs)
        def jnae(*operands,**kwargs) = @instructions << Instructions::JNAE.new(*operands,**kwargs)
        def jnb(*operands,**kwargs) = @instructions << Instructions::JNB.new(*operands,**kwargs)
        def jnbe(*operands,**kwargs) = @instructions << Instructions::JNBE.new(*operands,**kwargs)
        def jnc(*operands,**kwargs) = @instructions << Instructions::JNC.new(*operands,**kwargs)
        def jne(*operands,**kwargs) = @instructions << Instructions::JNE.new(*operands,**kwargs)
        def jng(*operands,**kwargs) = @instructions << Instructions::JNG.new(*operands,**kwargs)
        def jnge(*operands,**kwargs) = @instructions << Instructions::JNGE.new(*operands,**kwargs)
        def jnl(*operands,**kwargs) = @instructions << Instructions::JNL.new(*operands,**kwargs)
        def jnle(*operands,**kwargs) = @instructions << Instructions::JNLE.new(*operands,**kwargs)
        def jno(*operands,**kwargs) = @instructions << Instructions::JNO.new(*operands,**kwargs)
        def jnp(*operands,**kwargs) = @instructions << Instructions::JNP.new(*operands,**kwargs)
        def jns(*operands,**kwargs) = @instructions << Instructions::JNS.new(*operands,**kwargs)
        def jnz(*operands,**kwargs) = @instructions << Instructions::JNZ.new(*operands,**kwargs)
        def jo(*operands,**kwargs) = @instructions << Instructions::JO.new(*operands,**kwargs)
        def jp(*operands,**kwargs) = @instructions << Instructions::JP.new(*operands,**kwargs)
        def jpe(*operands,**kwargs) = @instructions << Instructions::JPE.new(*operands,**kwargs)
        def jpo(*operands,**kwargs) = @instructions << Instructions::JPO.new(*operands,**kwargs)
        def jrcxz(*operands,**kwargs) = @instructions << Instructions::JRCXZ.new(*operands,**kwargs)
        def js(*operands,**kwargs) = @instructions << Instructions::JS.new(*operands,**kwargs)
        def jz(*operands,**kwargs) = @instructions << Instructions::JZ.new(*operands,**kwargs)
        def kaddb(*operands,**kwargs) = @instructions << Instructions::KADDB.new(*operands,**kwargs)
        def kaddd(*operands,**kwargs) = @instructions << Instructions::KADDD.new(*operands,**kwargs)
        def kaddq(*operands,**kwargs) = @instructions << Instructions::KADDQ.new(*operands,**kwargs)
        def kaddw(*operands,**kwargs) = @instructions << Instructions::KADDW.new(*operands,**kwargs)
        def kandb(*operands,**kwargs) = @instructions << Instructions::KANDB.new(*operands,**kwargs)
        def kandd(*operands,**kwargs) = @instructions << Instructions::KANDD.new(*operands,**kwargs)
        def kandnb(*operands,**kwargs) = @instructions << Instructions::KANDNB.new(*operands,**kwargs)
        def kandnd(*operands,**kwargs) = @instructions << Instructions::KANDND.new(*operands,**kwargs)
        def kandnq(*operands,**kwargs) = @instructions << Instructions::KANDNQ.new(*operands,**kwargs)
        def kandnw(*operands,**kwargs) = @instructions << Instructions::KANDNW.new(*operands,**kwargs)
        def kandq(*operands,**kwargs) = @instructions << Instructions::KANDQ.new(*operands,**kwargs)
        def kandw(*operands,**kwargs) = @instructions << Instructions::KANDW.new(*operands,**kwargs)
        def kmovb(*operands,**kwargs) = @instructions << Instructions::KMOVB.new(*operands,**kwargs)
        def kmovd(*operands,**kwargs) = @instructions << Instructions::KMOVD.new(*operands,**kwargs)
        def kmovq(*operands,**kwargs) = @instructions << Instructions::KMOVQ.new(*operands,**kwargs)
        def kmovw(*operands,**kwargs) = @instructions << Instructions::KMOVW.new(*operands,**kwargs)
        def knotb(*operands,**kwargs) = @instructions << Instructions::KNOTB.new(*operands,**kwargs)
        def knotd(*operands,**kwargs) = @instructions << Instructions::KNOTD.new(*operands,**kwargs)
        def knotq(*operands,**kwargs) = @instructions << Instructions::KNOTQ.new(*operands,**kwargs)
        def knotw(*operands,**kwargs) = @instructions << Instructions::KNOTW.new(*operands,**kwargs)
        def korb(*operands,**kwargs) = @instructions << Instructions::KORB.new(*operands,**kwargs)
        def kord(*operands,**kwargs) = @instructions << Instructions::KORD.new(*operands,**kwargs)
        def korq(*operands,**kwargs) = @instructions << Instructions::KORQ.new(*operands,**kwargs)
        def kortestb(*operands,**kwargs) = @instructions << Instructions::KORTESTB.new(*operands,**kwargs)
        def kortestd(*operands,**kwargs) = @instructions << Instructions::KORTESTD.new(*operands,**kwargs)
        def kortestq(*operands,**kwargs) = @instructions << Instructions::KORTESTQ.new(*operands,**kwargs)
        def kortestw(*operands,**kwargs) = @instructions << Instructions::KORTESTW.new(*operands,**kwargs)
        def korw(*operands,**kwargs) = @instructions << Instructions::KORW.new(*operands,**kwargs)
        def kshiftlb(*operands,**kwargs) = @instructions << Instructions::KSHIFTLB.new(*operands,**kwargs)
        def kshiftld(*operands,**kwargs) = @instructions << Instructions::KSHIFTLD.new(*operands,**kwargs)
        def kshiftlq(*operands,**kwargs) = @instructions << Instructions::KSHIFTLQ.new(*operands,**kwargs)
        def kshiftlw(*operands,**kwargs) = @instructions << Instructions::KSHIFTLW.new(*operands,**kwargs)
        def kshiftrb(*operands,**kwargs) = @instructions << Instructions::KSHIFTRB.new(*operands,**kwargs)
        def kshiftrd(*operands,**kwargs) = @instructions << Instructions::KSHIFTRD.new(*operands,**kwargs)
        def kshiftrq(*operands,**kwargs) = @instructions << Instructions::KSHIFTRQ.new(*operands,**kwargs)
        def kshiftrw(*operands,**kwargs) = @instructions << Instructions::KSHIFTRW.new(*operands,**kwargs)
        def ktestb(*operands,**kwargs) = @instructions << Instructions::KTESTB.new(*operands,**kwargs)
        def ktestd(*operands,**kwargs) = @instructions << Instructions::KTESTD.new(*operands,**kwargs)
        def ktestq(*operands,**kwargs) = @instructions << Instructions::KTESTQ.new(*operands,**kwargs)
        def ktestw(*operands,**kwargs) = @instructions << Instructions::KTESTW.new(*operands,**kwargs)
        def kunpckbw(*operands,**kwargs) = @instructions << Instructions::KUNPCKBW.new(*operands,**kwargs)
        def kunpckdq(*operands,**kwargs) = @instructions << Instructions::KUNPCKDQ.new(*operands,**kwargs)
        def kunpckwd(*operands,**kwargs) = @instructions << Instructions::KUNPCKWD.new(*operands,**kwargs)
        def kxnorb(*operands,**kwargs) = @instructions << Instructions::KXNORB.new(*operands,**kwargs)
        def kxnord(*operands,**kwargs) = @instructions << Instructions::KXNORD.new(*operands,**kwargs)
        def kxnorq(*operands,**kwargs) = @instructions << Instructions::KXNORQ.new(*operands,**kwargs)
        def kxnorw(*operands,**kwargs) = @instructions << Instructions::KXNORW.new(*operands,**kwargs)
        def kxorb(*operands,**kwargs) = @instructions << Instructions::KXORB.new(*operands,**kwargs)
        def kxord(*operands,**kwargs) = @instructions << Instructions::KXORD.new(*operands,**kwargs)
        def kxorq(*operands,**kwargs) = @instructions << Instructions::KXORQ.new(*operands,**kwargs)
        def kxorw(*operands,**kwargs) = @instructions << Instructions::KXORW.new(*operands,**kwargs)
        def lahf(*operands,**kwargs) = @instructions << Instructions::LAHF.new(*operands,**kwargs)
        def lddqu(*operands,**kwargs) = @instructions << Instructions::LDDQU.new(*operands,**kwargs)
        def ldmxcsr(*operands,**kwargs) = @instructions << Instructions::LDMXCSR.new(*operands,**kwargs)
        def ldtilecfg(*operands,**kwargs) = @instructions << Instructions::LDTILECFG.new(*operands,**kwargs)
        def lea(*operands,**kwargs) = @instructions << Instructions::LEA.new(*operands,**kwargs)
        def lfence(*operands,**kwargs) = @instructions << Instructions::LFENCE.new(*operands,**kwargs)
        def lzcnt(*operands,**kwargs) = @instructions << Instructions::LZCNT.new(*operands,**kwargs)
        def maskmovdqu(*operands,**kwargs) = @instructions << Instructions::MASKMOVDQU.new(*operands,**kwargs)
        def maskmovq(*operands,**kwargs) = @instructions << Instructions::MASKMOVQ.new(*operands,**kwargs)
        def maxpd(*operands,**kwargs) = @instructions << Instructions::MAXPD.new(*operands,**kwargs)
        def maxps(*operands,**kwargs) = @instructions << Instructions::MAXPS.new(*operands,**kwargs)
        def maxsd(*operands,**kwargs) = @instructions << Instructions::MAXSD.new(*operands,**kwargs)
        def maxss(*operands,**kwargs) = @instructions << Instructions::MAXSS.new(*operands,**kwargs)
        def mcommit(*operands,**kwargs) = @instructions << Instructions::MCOMMIT.new(*operands,**kwargs)
        def mfence(*operands,**kwargs) = @instructions << Instructions::MFENCE.new(*operands,**kwargs)
        def minpd(*operands,**kwargs) = @instructions << Instructions::MINPD.new(*operands,**kwargs)
        def minps(*operands,**kwargs) = @instructions << Instructions::MINPS.new(*operands,**kwargs)
        def minsd(*operands,**kwargs) = @instructions << Instructions::MINSD.new(*operands,**kwargs)
        def minss(*operands,**kwargs) = @instructions << Instructions::MINSS.new(*operands,**kwargs)
        def monitor(*operands,**kwargs) = @instructions << Instructions::MONITOR.new(*operands,**kwargs)
        def monitorx(*operands,**kwargs) = @instructions << Instructions::MONITORX.new(*operands,**kwargs)
        def mov(*operands,**kwargs) = @instructions << Instructions::MOV.new(*operands,**kwargs)
        def movapd(*operands,**kwargs) = @instructions << Instructions::MOVAPD.new(*operands,**kwargs)
        def movaps(*operands,**kwargs) = @instructions << Instructions::MOVAPS.new(*operands,**kwargs)
        def movbe(*operands,**kwargs) = @instructions << Instructions::MOVBE.new(*operands,**kwargs)
        def movd(*operands,**kwargs) = @instructions << Instructions::MOVD.new(*operands,**kwargs)
        def movddup(*operands,**kwargs) = @instructions << Instructions::MOVDDUP.new(*operands,**kwargs)
        def movdir64b(*operands,**kwargs) = @instructions << Instructions::MOVDIR64B.new(*operands,**kwargs)
        def movdiri(*operands,**kwargs) = @instructions << Instructions::MOVDIRI.new(*operands,**kwargs)
        def movdq2q(*operands,**kwargs) = @instructions << Instructions::MOVDQ2Q.new(*operands,**kwargs)
        def movdqa(*operands,**kwargs) = @instructions << Instructions::MOVDQA.new(*operands,**kwargs)
        def movdqu(*operands,**kwargs) = @instructions << Instructions::MOVDQU.new(*operands,**kwargs)
        def movhlps(*operands,**kwargs) = @instructions << Instructions::MOVHLPS.new(*operands,**kwargs)
        def movhpd(*operands,**kwargs) = @instructions << Instructions::MOVHPD.new(*operands,**kwargs)
        def movhps(*operands,**kwargs) = @instructions << Instructions::MOVHPS.new(*operands,**kwargs)
        def movlhps(*operands,**kwargs) = @instructions << Instructions::MOVLHPS.new(*operands,**kwargs)
        def movlpd(*operands,**kwargs) = @instructions << Instructions::MOVLPD.new(*operands,**kwargs)
        def movlps(*operands,**kwargs) = @instructions << Instructions::MOVLPS.new(*operands,**kwargs)
        def movmskpd(*operands,**kwargs) = @instructions << Instructions::MOVMSKPD.new(*operands,**kwargs)
        def movmskps(*operands,**kwargs) = @instructions << Instructions::MOVMSKPS.new(*operands,**kwargs)
        def movntdq(*operands,**kwargs) = @instructions << Instructions::MOVNTDQ.new(*operands,**kwargs)
        def movntdqa(*operands,**kwargs) = @instructions << Instructions::MOVNTDQA.new(*operands,**kwargs)
        def movnti(*operands,**kwargs) = @instructions << Instructions::MOVNTI.new(*operands,**kwargs)
        def movntpd(*operands,**kwargs) = @instructions << Instructions::MOVNTPD.new(*operands,**kwargs)
        def movntps(*operands,**kwargs) = @instructions << Instructions::MOVNTPS.new(*operands,**kwargs)
        def movntq(*operands,**kwargs) = @instructions << Instructions::MOVNTQ.new(*operands,**kwargs)
        def movntsd(*operands,**kwargs) = @instructions << Instructions::MOVNTSD.new(*operands,**kwargs)
        def movntss(*operands,**kwargs) = @instructions << Instructions::MOVNTSS.new(*operands,**kwargs)
        def movq(*operands,**kwargs) = @instructions << Instructions::MOVQ.new(*operands,**kwargs)
        def movq2dq(*operands,**kwargs) = @instructions << Instructions::MOVQ2DQ.new(*operands,**kwargs)
        def movsd(*operands,**kwargs) = @instructions << Instructions::MOVSD.new(*operands,**kwargs)
        def movshdup(*operands,**kwargs) = @instructions << Instructions::MOVSHDUP.new(*operands,**kwargs)
        def movsldup(*operands,**kwargs) = @instructions << Instructions::MOVSLDUP.new(*operands,**kwargs)
        def movss(*operands,**kwargs) = @instructions << Instructions::MOVSS.new(*operands,**kwargs)
        def movsx(*operands,**kwargs) = @instructions << Instructions::MOVSX.new(*operands,**kwargs)
        def movsxd(*operands,**kwargs) = @instructions << Instructions::MOVSXD.new(*operands,**kwargs)
        def movupd(*operands,**kwargs) = @instructions << Instructions::MOVUPD.new(*operands,**kwargs)
        def movups(*operands,**kwargs) = @instructions << Instructions::MOVUPS.new(*operands,**kwargs)
        def movzx(*operands,**kwargs) = @instructions << Instructions::MOVZX.new(*operands,**kwargs)
        def mpsadbw(*operands,**kwargs) = @instructions << Instructions::MPSADBW.new(*operands,**kwargs)
        def mul(*operands,**kwargs) = @instructions << Instructions::MUL.new(*operands,**kwargs)
        def mulpd(*operands,**kwargs) = @instructions << Instructions::MULPD.new(*operands,**kwargs)
        def mulps(*operands,**kwargs) = @instructions << Instructions::MULPS.new(*operands,**kwargs)
        def mulsd(*operands,**kwargs) = @instructions << Instructions::MULSD.new(*operands,**kwargs)
        def mulss(*operands,**kwargs) = @instructions << Instructions::MULSS.new(*operands,**kwargs)
        def mulx(*operands,**kwargs) = @instructions << Instructions::MULX.new(*operands,**kwargs)
        def mwait(*operands,**kwargs) = @instructions << Instructions::MWAIT.new(*operands,**kwargs)
        def mwaitx(*operands,**kwargs) = @instructions << Instructions::MWAITX.new(*operands,**kwargs)
        def neg(*operands,**kwargs) = @instructions << Instructions::NEG.new(*operands,**kwargs)
        def nop(*operands,**kwargs) = @instructions << Instructions::NOP.new(*operands,**kwargs)
        def not(*operands,**kwargs) = @instructions << Instructions::NOT.new(*operands,**kwargs)
        def or(*operands,**kwargs) = @instructions << Instructions::OR.new(*operands,**kwargs)
        def orpd(*operands,**kwargs) = @instructions << Instructions::ORPD.new(*operands,**kwargs)
        def orps(*operands,**kwargs) = @instructions << Instructions::ORPS.new(*operands,**kwargs)
        def pabsb(*operands,**kwargs) = @instructions << Instructions::PABSB.new(*operands,**kwargs)
        def pabsd(*operands,**kwargs) = @instructions << Instructions::PABSD.new(*operands,**kwargs)
        def pabsw(*operands,**kwargs) = @instructions << Instructions::PABSW.new(*operands,**kwargs)
        def packssdw(*operands,**kwargs) = @instructions << Instructions::PACKSSDW.new(*operands,**kwargs)
        def packsswb(*operands,**kwargs) = @instructions << Instructions::PACKSSWB.new(*operands,**kwargs)
        def packusdw(*operands,**kwargs) = @instructions << Instructions::PACKUSDW.new(*operands,**kwargs)
        def packuswb(*operands,**kwargs) = @instructions << Instructions::PACKUSWB.new(*operands,**kwargs)
        def paddb(*operands,**kwargs) = @instructions << Instructions::PADDB.new(*operands,**kwargs)
        def paddd(*operands,**kwargs) = @instructions << Instructions::PADDD.new(*operands,**kwargs)
        def paddq(*operands,**kwargs) = @instructions << Instructions::PADDQ.new(*operands,**kwargs)
        def paddsb(*operands,**kwargs) = @instructions << Instructions::PADDSB.new(*operands,**kwargs)
        def paddsw(*operands,**kwargs) = @instructions << Instructions::PADDSW.new(*operands,**kwargs)
        def paddusb(*operands,**kwargs) = @instructions << Instructions::PADDUSB.new(*operands,**kwargs)
        def paddusw(*operands,**kwargs) = @instructions << Instructions::PADDUSW.new(*operands,**kwargs)
        def paddw(*operands,**kwargs) = @instructions << Instructions::PADDW.new(*operands,**kwargs)
        def palignr(*operands,**kwargs) = @instructions << Instructions::PALIGNR.new(*operands,**kwargs)
        def pand(*operands,**kwargs) = @instructions << Instructions::PAND.new(*operands,**kwargs)
        def pandn(*operands,**kwargs) = @instructions << Instructions::PANDN.new(*operands,**kwargs)
        def pause(*operands,**kwargs) = @instructions << Instructions::PAUSE.new(*operands,**kwargs)
        def pavgb(*operands,**kwargs) = @instructions << Instructions::PAVGB.new(*operands,**kwargs)
        def pavgusb(*operands,**kwargs) = @instructions << Instructions::PAVGUSB.new(*operands,**kwargs)
        def pavgw(*operands,**kwargs) = @instructions << Instructions::PAVGW.new(*operands,**kwargs)
        def pblendvb(*operands,**kwargs) = @instructions << Instructions::PBLENDVB.new(*operands,**kwargs)
        def pblendw(*operands,**kwargs) = @instructions << Instructions::PBLENDW.new(*operands,**kwargs)
        def pclmulqdq(*operands,**kwargs) = @instructions << Instructions::PCLMULQDQ.new(*operands,**kwargs)
        def pcmpeqb(*operands,**kwargs) = @instructions << Instructions::PCMPEQB.new(*operands,**kwargs)
        def pcmpeqd(*operands,**kwargs) = @instructions << Instructions::PCMPEQD.new(*operands,**kwargs)
        def pcmpeqq(*operands,**kwargs) = @instructions << Instructions::PCMPEQQ.new(*operands,**kwargs)
        def pcmpeqw(*operands,**kwargs) = @instructions << Instructions::PCMPEQW.new(*operands,**kwargs)
        def pcmpestri(*operands,**kwargs) = @instructions << Instructions::PCMPESTRI.new(*operands,**kwargs)
        def pcmpestrm(*operands,**kwargs) = @instructions << Instructions::PCMPESTRM.new(*operands,**kwargs)
        def pcmpgtb(*operands,**kwargs) = @instructions << Instructions::PCMPGTB.new(*operands,**kwargs)
        def pcmpgtd(*operands,**kwargs) = @instructions << Instructions::PCMPGTD.new(*operands,**kwargs)
        def pcmpgtq(*operands,**kwargs) = @instructions << Instructions::PCMPGTQ.new(*operands,**kwargs)
        def pcmpgtw(*operands,**kwargs) = @instructions << Instructions::PCMPGTW.new(*operands,**kwargs)
        def pcmpistri(*operands,**kwargs) = @instructions << Instructions::PCMPISTRI.new(*operands,**kwargs)
        def pcmpistrm(*operands,**kwargs) = @instructions << Instructions::PCMPISTRM.new(*operands,**kwargs)
        def pdep(*operands,**kwargs) = @instructions << Instructions::PDEP.new(*operands,**kwargs)
        def pext(*operands,**kwargs) = @instructions << Instructions::PEXT.new(*operands,**kwargs)
        def pextrb(*operands,**kwargs) = @instructions << Instructions::PEXTRB.new(*operands,**kwargs)
        def pextrd(*operands,**kwargs) = @instructions << Instructions::PEXTRD.new(*operands,**kwargs)
        def pextrq(*operands,**kwargs) = @instructions << Instructions::PEXTRQ.new(*operands,**kwargs)
        def pextrw(*operands,**kwargs) = @instructions << Instructions::PEXTRW.new(*operands,**kwargs)
        def pf2id(*operands,**kwargs) = @instructions << Instructions::PF2ID.new(*operands,**kwargs)
        def pf2iw(*operands,**kwargs) = @instructions << Instructions::PF2IW.new(*operands,**kwargs)
        def pfacc(*operands,**kwargs) = @instructions << Instructions::PFACC.new(*operands,**kwargs)
        def pfadd(*operands,**kwargs) = @instructions << Instructions::PFADD.new(*operands,**kwargs)
        def pfcmpeq(*operands,**kwargs) = @instructions << Instructions::PFCMPEQ.new(*operands,**kwargs)
        def pfcmpge(*operands,**kwargs) = @instructions << Instructions::PFCMPGE.new(*operands,**kwargs)
        def pfcmpgt(*operands,**kwargs) = @instructions << Instructions::PFCMPGT.new(*operands,**kwargs)
        def pfmax(*operands,**kwargs) = @instructions << Instructions::PFMAX.new(*operands,**kwargs)
        def pfmin(*operands,**kwargs) = @instructions << Instructions::PFMIN.new(*operands,**kwargs)
        def pfmul(*operands,**kwargs) = @instructions << Instructions::PFMUL.new(*operands,**kwargs)
        def pfnacc(*operands,**kwargs) = @instructions << Instructions::PFNACC.new(*operands,**kwargs)
        def pfpnacc(*operands,**kwargs) = @instructions << Instructions::PFPNACC.new(*operands,**kwargs)
        def pfrcp(*operands,**kwargs) = @instructions << Instructions::PFRCP.new(*operands,**kwargs)
        def pfrcpit1(*operands,**kwargs) = @instructions << Instructions::PFRCPIT1.new(*operands,**kwargs)
        def pfrcpit2(*operands,**kwargs) = @instructions << Instructions::PFRCPIT2.new(*operands,**kwargs)
        def pfrsqit1(*operands,**kwargs) = @instructions << Instructions::PFRSQIT1.new(*operands,**kwargs)
        def pfrsqrt(*operands,**kwargs) = @instructions << Instructions::PFRSQRT.new(*operands,**kwargs)
        def pfsub(*operands,**kwargs) = @instructions << Instructions::PFSUB.new(*operands,**kwargs)
        def pfsubr(*operands,**kwargs) = @instructions << Instructions::PFSUBR.new(*operands,**kwargs)
        def phaddd(*operands,**kwargs) = @instructions << Instructions::PHADDD.new(*operands,**kwargs)
        def phaddsw(*operands,**kwargs) = @instructions << Instructions::PHADDSW.new(*operands,**kwargs)
        def phaddw(*operands,**kwargs) = @instructions << Instructions::PHADDW.new(*operands,**kwargs)
        def phminposuw(*operands,**kwargs) = @instructions << Instructions::PHMINPOSUW.new(*operands,**kwargs)
        def phsubd(*operands,**kwargs) = @instructions << Instructions::PHSUBD.new(*operands,**kwargs)
        def phsubsw(*operands,**kwargs) = @instructions << Instructions::PHSUBSW.new(*operands,**kwargs)
        def phsubw(*operands,**kwargs) = @instructions << Instructions::PHSUBW.new(*operands,**kwargs)
        def pi2fd(*operands,**kwargs) = @instructions << Instructions::PI2FD.new(*operands,**kwargs)
        def pi2fw(*operands,**kwargs) = @instructions << Instructions::PI2FW.new(*operands,**kwargs)
        def pinsrb(*operands,**kwargs) = @instructions << Instructions::PINSRB.new(*operands,**kwargs)
        def pinsrd(*operands,**kwargs) = @instructions << Instructions::PINSRD.new(*operands,**kwargs)
        def pinsrq(*operands,**kwargs) = @instructions << Instructions::PINSRQ.new(*operands,**kwargs)
        def pinsrw(*operands,**kwargs) = @instructions << Instructions::PINSRW.new(*operands,**kwargs)
        def pmaddubsw(*operands,**kwargs) = @instructions << Instructions::PMADDUBSW.new(*operands,**kwargs)
        def pmaddwd(*operands,**kwargs) = @instructions << Instructions::PMADDWD.new(*operands,**kwargs)
        def pmaxsb(*operands,**kwargs) = @instructions << Instructions::PMAXSB.new(*operands,**kwargs)
        def pmaxsd(*operands,**kwargs) = @instructions << Instructions::PMAXSD.new(*operands,**kwargs)
        def pmaxsw(*operands,**kwargs) = @instructions << Instructions::PMAXSW.new(*operands,**kwargs)
        def pmaxub(*operands,**kwargs) = @instructions << Instructions::PMAXUB.new(*operands,**kwargs)
        def pmaxud(*operands,**kwargs) = @instructions << Instructions::PMAXUD.new(*operands,**kwargs)
        def pmaxuw(*operands,**kwargs) = @instructions << Instructions::PMAXUW.new(*operands,**kwargs)
        def pminsb(*operands,**kwargs) = @instructions << Instructions::PMINSB.new(*operands,**kwargs)
        def pminsd(*operands,**kwargs) = @instructions << Instructions::PMINSD.new(*operands,**kwargs)
        def pminsw(*operands,**kwargs) = @instructions << Instructions::PMINSW.new(*operands,**kwargs)
        def pminub(*operands,**kwargs) = @instructions << Instructions::PMINUB.new(*operands,**kwargs)
        def pminud(*operands,**kwargs) = @instructions << Instructions::PMINUD.new(*operands,**kwargs)
        def pminuw(*operands,**kwargs) = @instructions << Instructions::PMINUW.new(*operands,**kwargs)
        def pmovmskb(*operands,**kwargs) = @instructions << Instructions::PMOVMSKB.new(*operands,**kwargs)
        def pmovsxbd(*operands,**kwargs) = @instructions << Instructions::PMOVSXBD.new(*operands,**kwargs)
        def pmovsxbq(*operands,**kwargs) = @instructions << Instructions::PMOVSXBQ.new(*operands,**kwargs)
        def pmovsxbw(*operands,**kwargs) = @instructions << Instructions::PMOVSXBW.new(*operands,**kwargs)
        def pmovsxdq(*operands,**kwargs) = @instructions << Instructions::PMOVSXDQ.new(*operands,**kwargs)
        def pmovsxwd(*operands,**kwargs) = @instructions << Instructions::PMOVSXWD.new(*operands,**kwargs)
        def pmovsxwq(*operands,**kwargs) = @instructions << Instructions::PMOVSXWQ.new(*operands,**kwargs)
        def pmovzxbd(*operands,**kwargs) = @instructions << Instructions::PMOVZXBD.new(*operands,**kwargs)
        def pmovzxbq(*operands,**kwargs) = @instructions << Instructions::PMOVZXBQ.new(*operands,**kwargs)
        def pmovzxbw(*operands,**kwargs) = @instructions << Instructions::PMOVZXBW.new(*operands,**kwargs)
        def pmovzxdq(*operands,**kwargs) = @instructions << Instructions::PMOVZXDQ.new(*operands,**kwargs)
        def pmovzxwd(*operands,**kwargs) = @instructions << Instructions::PMOVZXWD.new(*operands,**kwargs)
        def pmovzxwq(*operands,**kwargs) = @instructions << Instructions::PMOVZXWQ.new(*operands,**kwargs)
        def pmuldq(*operands,**kwargs) = @instructions << Instructions::PMULDQ.new(*operands,**kwargs)
        def pmulhrsw(*operands,**kwargs) = @instructions << Instructions::PMULHRSW.new(*operands,**kwargs)
        def pmulhrw(*operands,**kwargs) = @instructions << Instructions::PMULHRW.new(*operands,**kwargs)
        def pmulhuw(*operands,**kwargs) = @instructions << Instructions::PMULHUW.new(*operands,**kwargs)
        def pmulhw(*operands,**kwargs) = @instructions << Instructions::PMULHW.new(*operands,**kwargs)
        def pmulld(*operands,**kwargs) = @instructions << Instructions::PMULLD.new(*operands,**kwargs)
        def pmullw(*operands,**kwargs) = @instructions << Instructions::PMULLW.new(*operands,**kwargs)
        def pmuludq(*operands,**kwargs) = @instructions << Instructions::PMULUDQ.new(*operands,**kwargs)
        def pop(*operands,**kwargs) = @instructions << Instructions::POP.new(*operands,**kwargs)
        def popcnt(*operands,**kwargs) = @instructions << Instructions::POPCNT.new(*operands,**kwargs)
        def por(*operands,**kwargs) = @instructions << Instructions::POR.new(*operands,**kwargs)
        def prefetch(*operands,**kwargs) = @instructions << Instructions::PREFETCH.new(*operands,**kwargs)
        def prefetchit0(*operands,**kwargs) = @instructions << Instructions::PREFETCHIT0.new(*operands,**kwargs)
        def prefetchit1(*operands,**kwargs) = @instructions << Instructions::PREFETCHIT1.new(*operands,**kwargs)
        def prefetchnta(*operands,**kwargs) = @instructions << Instructions::PREFETCHNTA.new(*operands,**kwargs)
        def prefetcht0(*operands,**kwargs) = @instructions << Instructions::PREFETCHT0.new(*operands,**kwargs)
        def prefetcht1(*operands,**kwargs) = @instructions << Instructions::PREFETCHT1.new(*operands,**kwargs)
        def prefetcht2(*operands,**kwargs) = @instructions << Instructions::PREFETCHT2.new(*operands,**kwargs)
        def prefetchw(*operands,**kwargs) = @instructions << Instructions::PREFETCHW.new(*operands,**kwargs)
        def prefetchwt1(*operands,**kwargs) = @instructions << Instructions::PREFETCHWT1.new(*operands,**kwargs)
        def psadbw(*operands,**kwargs) = @instructions << Instructions::PSADBW.new(*operands,**kwargs)
        def pshufb(*operands,**kwargs) = @instructions << Instructions::PSHUFB.new(*operands,**kwargs)
        def pshufd(*operands,**kwargs) = @instructions << Instructions::PSHUFD.new(*operands,**kwargs)
        def pshufhw(*operands,**kwargs) = @instructions << Instructions::PSHUFHW.new(*operands,**kwargs)
        def pshuflw(*operands,**kwargs) = @instructions << Instructions::PSHUFLW.new(*operands,**kwargs)
        def pshufw(*operands,**kwargs) = @instructions << Instructions::PSHUFW.new(*operands,**kwargs)
        def psignb(*operands,**kwargs) = @instructions << Instructions::PSIGNB.new(*operands,**kwargs)
        def psignd(*operands,**kwargs) = @instructions << Instructions::PSIGND.new(*operands,**kwargs)
        def psignw(*operands,**kwargs) = @instructions << Instructions::PSIGNW.new(*operands,**kwargs)
        def pslld(*operands,**kwargs) = @instructions << Instructions::PSLLD.new(*operands,**kwargs)
        def pslldq(*operands,**kwargs) = @instructions << Instructions::PSLLDQ.new(*operands,**kwargs)
        def psllq(*operands,**kwargs) = @instructions << Instructions::PSLLQ.new(*operands,**kwargs)
        def psllw(*operands,**kwargs) = @instructions << Instructions::PSLLW.new(*operands,**kwargs)
        def psrad(*operands,**kwargs) = @instructions << Instructions::PSRAD.new(*operands,**kwargs)
        def psraw(*operands,**kwargs) = @instructions << Instructions::PSRAW.new(*operands,**kwargs)
        def psrld(*operands,**kwargs) = @instructions << Instructions::PSRLD.new(*operands,**kwargs)
        def psrldq(*operands,**kwargs) = @instructions << Instructions::PSRLDQ.new(*operands,**kwargs)
        def psrlq(*operands,**kwargs) = @instructions << Instructions::PSRLQ.new(*operands,**kwargs)
        def psrlw(*operands,**kwargs) = @instructions << Instructions::PSRLW.new(*operands,**kwargs)
        def psubb(*operands,**kwargs) = @instructions << Instructions::PSUBB.new(*operands,**kwargs)
        def psubd(*operands,**kwargs) = @instructions << Instructions::PSUBD.new(*operands,**kwargs)
        def psubq(*operands,**kwargs) = @instructions << Instructions::PSUBQ.new(*operands,**kwargs)
        def psubsb(*operands,**kwargs) = @instructions << Instructions::PSUBSB.new(*operands,**kwargs)
        def psubsw(*operands,**kwargs) = @instructions << Instructions::PSUBSW.new(*operands,**kwargs)
        def psubusb(*operands,**kwargs) = @instructions << Instructions::PSUBUSB.new(*operands,**kwargs)
        def psubusw(*operands,**kwargs) = @instructions << Instructions::PSUBUSW.new(*operands,**kwargs)
        def psubw(*operands,**kwargs) = @instructions << Instructions::PSUBW.new(*operands,**kwargs)
        def pswapd(*operands,**kwargs) = @instructions << Instructions::PSWAPD.new(*operands,**kwargs)
        def ptest(*operands,**kwargs) = @instructions << Instructions::PTEST.new(*operands,**kwargs)
        def punpckhbw(*operands,**kwargs) = @instructions << Instructions::PUNPCKHBW.new(*operands,**kwargs)
        def punpckhdq(*operands,**kwargs) = @instructions << Instructions::PUNPCKHDQ.new(*operands,**kwargs)
        def punpckhqdq(*operands,**kwargs) = @instructions << Instructions::PUNPCKHQDQ.new(*operands,**kwargs)
        def punpckhwd(*operands,**kwargs) = @instructions << Instructions::PUNPCKHWD.new(*operands,**kwargs)
        def punpcklbw(*operands,**kwargs) = @instructions << Instructions::PUNPCKLBW.new(*operands,**kwargs)
        def punpckldq(*operands,**kwargs) = @instructions << Instructions::PUNPCKLDQ.new(*operands,**kwargs)
        def punpcklqdq(*operands,**kwargs) = @instructions << Instructions::PUNPCKLQDQ.new(*operands,**kwargs)
        def punpcklwd(*operands,**kwargs) = @instructions << Instructions::PUNPCKLWD.new(*operands,**kwargs)
        def push(*operands,**kwargs) = @instructions << Instructions::PUSH.new(*operands,**kwargs)
        def pxor(*operands,**kwargs) = @instructions << Instructions::PXOR.new(*operands,**kwargs)
        def rcl(*operands,**kwargs) = @instructions << Instructions::RCL.new(*operands,**kwargs)
        def rcpps(*operands,**kwargs) = @instructions << Instructions::RCPPS.new(*operands,**kwargs)
        def rcpss(*operands,**kwargs) = @instructions << Instructions::RCPSS.new(*operands,**kwargs)
        def rcr(*operands,**kwargs) = @instructions << Instructions::RCR.new(*operands,**kwargs)
        def rdfsbase(*operands,**kwargs) = @instructions << Instructions::RDFSBASE.new(*operands,**kwargs)
        def rdgsbase(*operands,**kwargs) = @instructions << Instructions::RDGSBASE.new(*operands,**kwargs)
        def rdpid(*operands,**kwargs) = @instructions << Instructions::RDPID.new(*operands,**kwargs)
        def rdpmc(*operands,**kwargs) = @instructions << Instructions::RDPMC.new(*operands,**kwargs)
        def rdpru(*operands,**kwargs) = @instructions << Instructions::RDPRU.new(*operands,**kwargs)
        def rdrand(*operands,**kwargs) = @instructions << Instructions::RDRAND.new(*operands,**kwargs)
        def rdseed(*operands,**kwargs) = @instructions << Instructions::RDSEED.new(*operands,**kwargs)
        def rdtsc(*operands,**kwargs) = @instructions << Instructions::RDTSC.new(*operands,**kwargs)
        def rdtscp(*operands,**kwargs) = @instructions << Instructions::RDTSCP.new(*operands,**kwargs)
        def ret(*operands,**kwargs) = @instructions << Instructions::RET.new(*operands,**kwargs)
        def rol(*operands,**kwargs) = @instructions << Instructions::ROL.new(*operands,**kwargs)
        def ror(*operands,**kwargs) = @instructions << Instructions::ROR.new(*operands,**kwargs)
        def rorx(*operands,**kwargs) = @instructions << Instructions::RORX.new(*operands,**kwargs)
        def roundpd(*operands,**kwargs) = @instructions << Instructions::ROUNDPD.new(*operands,**kwargs)
        def roundps(*operands,**kwargs) = @instructions << Instructions::ROUNDPS.new(*operands,**kwargs)
        def roundsd(*operands,**kwargs) = @instructions << Instructions::ROUNDSD.new(*operands,**kwargs)
        def roundss(*operands,**kwargs) = @instructions << Instructions::ROUNDSS.new(*operands,**kwargs)
        def rsqrtps(*operands,**kwargs) = @instructions << Instructions::RSQRTPS.new(*operands,**kwargs)
        def rsqrtss(*operands,**kwargs) = @instructions << Instructions::RSQRTSS.new(*operands,**kwargs)
        def sahf(*operands,**kwargs) = @instructions << Instructions::SAHF.new(*operands,**kwargs)
        def sal(*operands,**kwargs) = @instructions << Instructions::SAL.new(*operands,**kwargs)
        def sar(*operands,**kwargs) = @instructions << Instructions::SAR.new(*operands,**kwargs)
        def sarx(*operands,**kwargs) = @instructions << Instructions::SARX.new(*operands,**kwargs)
        def sbb(*operands,**kwargs) = @instructions << Instructions::SBB.new(*operands,**kwargs)
        def serialize(*operands,**kwargs) = @instructions << Instructions::SERIALIZE.new(*operands,**kwargs)
        def seta(*operands,**kwargs) = @instructions << Instructions::SETA.new(*operands,**kwargs)
        def setae(*operands,**kwargs) = @instructions << Instructions::SETAE.new(*operands,**kwargs)
        def setb(*operands,**kwargs) = @instructions << Instructions::SETB.new(*operands,**kwargs)
        def setbe(*operands,**kwargs) = @instructions << Instructions::SETBE.new(*operands,**kwargs)
        def setc(*operands,**kwargs) = @instructions << Instructions::SETC.new(*operands,**kwargs)
        def sete(*operands,**kwargs) = @instructions << Instructions::SETE.new(*operands,**kwargs)
        def setg(*operands,**kwargs) = @instructions << Instructions::SETG.new(*operands,**kwargs)
        def setge(*operands,**kwargs) = @instructions << Instructions::SETGE.new(*operands,**kwargs)
        def setl(*operands,**kwargs) = @instructions << Instructions::SETL.new(*operands,**kwargs)
        def setle(*operands,**kwargs) = @instructions << Instructions::SETLE.new(*operands,**kwargs)
        def setna(*operands,**kwargs) = @instructions << Instructions::SETNA.new(*operands,**kwargs)
        def setnae(*operands,**kwargs) = @instructions << Instructions::SETNAE.new(*operands,**kwargs)
        def setnb(*operands,**kwargs) = @instructions << Instructions::SETNB.new(*operands,**kwargs)
        def setnbe(*operands,**kwargs) = @instructions << Instructions::SETNBE.new(*operands,**kwargs)
        def setnc(*operands,**kwargs) = @instructions << Instructions::SETNC.new(*operands,**kwargs)
        def setne(*operands,**kwargs) = @instructions << Instructions::SETNE.new(*operands,**kwargs)
        def setng(*operands,**kwargs) = @instructions << Instructions::SETNG.new(*operands,**kwargs)
        def setnge(*operands,**kwargs) = @instructions << Instructions::SETNGE.new(*operands,**kwargs)
        def setnl(*operands,**kwargs) = @instructions << Instructions::SETNL.new(*operands,**kwargs)
        def setnle(*operands,**kwargs) = @instructions << Instructions::SETNLE.new(*operands,**kwargs)
        def setno(*operands,**kwargs) = @instructions << Instructions::SETNO.new(*operands,**kwargs)
        def setnp(*operands,**kwargs) = @instructions << Instructions::SETNP.new(*operands,**kwargs)
        def setns(*operands,**kwargs) = @instructions << Instructions::SETNS.new(*operands,**kwargs)
        def setnz(*operands,**kwargs) = @instructions << Instructions::SETNZ.new(*operands,**kwargs)
        def seto(*operands,**kwargs) = @instructions << Instructions::SETO.new(*operands,**kwargs)
        def setp(*operands,**kwargs) = @instructions << Instructions::SETP.new(*operands,**kwargs)
        def setpe(*operands,**kwargs) = @instructions << Instructions::SETPE.new(*operands,**kwargs)
        def setpo(*operands,**kwargs) = @instructions << Instructions::SETPO.new(*operands,**kwargs)
        def sets(*operands,**kwargs) = @instructions << Instructions::SETS.new(*operands,**kwargs)
        def setz(*operands,**kwargs) = @instructions << Instructions::SETZ.new(*operands,**kwargs)
        def sfence(*operands,**kwargs) = @instructions << Instructions::SFENCE.new(*operands,**kwargs)
        def sha1msg1(*operands,**kwargs) = @instructions << Instructions::SHA1MSG1.new(*operands,**kwargs)
        def sha1msg2(*operands,**kwargs) = @instructions << Instructions::SHA1MSG2.new(*operands,**kwargs)
        def sha1nexte(*operands,**kwargs) = @instructions << Instructions::SHA1NEXTE.new(*operands,**kwargs)
        def sha1rnds4(*operands,**kwargs) = @instructions << Instructions::SHA1RNDS4.new(*operands,**kwargs)
        def sha256msg1(*operands,**kwargs) = @instructions << Instructions::SHA256MSG1.new(*operands,**kwargs)
        def sha256msg2(*operands,**kwargs) = @instructions << Instructions::SHA256MSG2.new(*operands,**kwargs)
        def sha256rnds2(*operands,**kwargs) = @instructions << Instructions::SHA256RNDS2.new(*operands,**kwargs)
        def shl(*operands,**kwargs) = @instructions << Instructions::SHL.new(*operands,**kwargs)
        def shld(*operands,**kwargs) = @instructions << Instructions::SHLD.new(*operands,**kwargs)
        def shlx(*operands,**kwargs) = @instructions << Instructions::SHLX.new(*operands,**kwargs)
        def shr(*operands,**kwargs) = @instructions << Instructions::SHR.new(*operands,**kwargs)
        def shrd(*operands,**kwargs) = @instructions << Instructions::SHRD.new(*operands,**kwargs)
        def shrx(*operands,**kwargs) = @instructions << Instructions::SHRX.new(*operands,**kwargs)
        def shufpd(*operands,**kwargs) = @instructions << Instructions::SHUFPD.new(*operands,**kwargs)
        def shufps(*operands,**kwargs) = @instructions << Instructions::SHUFPS.new(*operands,**kwargs)
        def sqrtpd(*operands,**kwargs) = @instructions << Instructions::SQRTPD.new(*operands,**kwargs)
        def sqrtps(*operands,**kwargs) = @instructions << Instructions::SQRTPS.new(*operands,**kwargs)
        def sqrtsd(*operands,**kwargs) = @instructions << Instructions::SQRTSD.new(*operands,**kwargs)
        def sqrtss(*operands,**kwargs) = @instructions << Instructions::SQRTSS.new(*operands,**kwargs)
        def stc(*operands,**kwargs) = @instructions << Instructions::STC.new(*operands,**kwargs)
        def std(*operands,**kwargs) = @instructions << Instructions::STD.new(*operands,**kwargs)
        def stmxcsr(*operands,**kwargs) = @instructions << Instructions::STMXCSR.new(*operands,**kwargs)
        def sttilecfg(*operands,**kwargs) = @instructions << Instructions::STTILECFG.new(*operands,**kwargs)
        def sub(*operands,**kwargs) = @instructions << Instructions::SUB.new(*operands,**kwargs)
        def subpd(*operands,**kwargs) = @instructions << Instructions::SUBPD.new(*operands,**kwargs)
        def subps(*operands,**kwargs) = @instructions << Instructions::SUBPS.new(*operands,**kwargs)
        def subsd(*operands,**kwargs) = @instructions << Instructions::SUBSD.new(*operands,**kwargs)
        def subss(*operands,**kwargs) = @instructions << Instructions::SUBSS.new(*operands,**kwargs)
        def syscall(*operands,**kwargs) = @instructions << Instructions::SYSCALL.new(*operands,**kwargs)
        def t1mskc(*operands,**kwargs) = @instructions << Instructions::T1MSKC.new(*operands,**kwargs)
        def tcmmimfp16ps(*operands,**kwargs) = @instructions << Instructions::TCMMIMFP16PS.new(*operands,**kwargs)
        def tcmmrlfp16ps(*operands,**kwargs) = @instructions << Instructions::TCMMRLFP16PS.new(*operands,**kwargs)
        def tdpbf16ps(*operands,**kwargs) = @instructions << Instructions::TDPBF16PS.new(*operands,**kwargs)
        def tdpbssd(*operands,**kwargs) = @instructions << Instructions::TDPBSSD.new(*operands,**kwargs)
        def tdpbsud(*operands,**kwargs) = @instructions << Instructions::TDPBSUD.new(*operands,**kwargs)
        def tdpbusd(*operands,**kwargs) = @instructions << Instructions::TDPBUSD.new(*operands,**kwargs)
        def tdpbuud(*operands,**kwargs) = @instructions << Instructions::TDPBUUD.new(*operands,**kwargs)
        def tdpfp16ps(*operands,**kwargs) = @instructions << Instructions::TDPFP16PS.new(*operands,**kwargs)
        def test(*operands,**kwargs) = @instructions << Instructions::TEST.new(*operands,**kwargs)
        def tileloadd(*operands,**kwargs) = @instructions << Instructions::TILELOADD.new(*operands,**kwargs)
        def tileloaddt1(*operands,**kwargs) = @instructions << Instructions::TILELOADDT1.new(*operands,**kwargs)
        def tilerelease(*operands,**kwargs) = @instructions << Instructions::TILERELEASE.new(*operands,**kwargs)
        def tilestored(*operands,**kwargs) = @instructions << Instructions::TILESTORED.new(*operands,**kwargs)
        def tilezero(*operands,**kwargs) = @instructions << Instructions::TILEZERO.new(*operands,**kwargs)
        def tpause(*operands,**kwargs) = @instructions << Instructions::TPAUSE.new(*operands,**kwargs)
        def tzcnt(*operands,**kwargs) = @instructions << Instructions::TZCNT.new(*operands,**kwargs)
        def tzmsk(*operands,**kwargs) = @instructions << Instructions::TZMSK.new(*operands,**kwargs)
        def ucomisd(*operands,**kwargs) = @instructions << Instructions::UCOMISD.new(*operands,**kwargs)
        def ucomiss(*operands,**kwargs) = @instructions << Instructions::UCOMISS.new(*operands,**kwargs)
        def ud2(*operands,**kwargs) = @instructions << Instructions::UD2.new(*operands,**kwargs)
        def umonitor(*operands,**kwargs) = @instructions << Instructions::UMONITOR.new(*operands,**kwargs)
        def umwait(*operands,**kwargs) = @instructions << Instructions::UMWAIT.new(*operands,**kwargs)
        def unpckhpd(*operands,**kwargs) = @instructions << Instructions::UNPCKHPD.new(*operands,**kwargs)
        def unpckhps(*operands,**kwargs) = @instructions << Instructions::UNPCKHPS.new(*operands,**kwargs)
        def unpcklpd(*operands,**kwargs) = @instructions << Instructions::UNPCKLPD.new(*operands,**kwargs)
        def unpcklps(*operands,**kwargs) = @instructions << Instructions::UNPCKLPS.new(*operands,**kwargs)
        def vaddpd(*operands,**kwargs) = @instructions << Instructions::VADDPD.new(*operands,**kwargs)
        def vaddph(*operands,**kwargs) = @instructions << Instructions::VADDPH.new(*operands,**kwargs)
        def vaddps(*operands,**kwargs) = @instructions << Instructions::VADDPS.new(*operands,**kwargs)
        def vaddsd(*operands,**kwargs) = @instructions << Instructions::VADDSD.new(*operands,**kwargs)
        def vaddsh(*operands,**kwargs) = @instructions << Instructions::VADDSH.new(*operands,**kwargs)
        def vaddss(*operands,**kwargs) = @instructions << Instructions::VADDSS.new(*operands,**kwargs)
        def vaddsubpd(*operands,**kwargs) = @instructions << Instructions::VADDSUBPD.new(*operands,**kwargs)
        def vaddsubps(*operands,**kwargs) = @instructions << Instructions::VADDSUBPS.new(*operands,**kwargs)
        def vaesdec(*operands,**kwargs) = @instructions << Instructions::VAESDEC.new(*operands,**kwargs)
        def vaesdeclast(*operands,**kwargs) = @instructions << Instructions::VAESDECLAST.new(*operands,**kwargs)
        def vaesenc(*operands,**kwargs) = @instructions << Instructions::VAESENC.new(*operands,**kwargs)
        def vaesenclast(*operands,**kwargs) = @instructions << Instructions::VAESENCLAST.new(*operands,**kwargs)
        def vaesimc(*operands,**kwargs) = @instructions << Instructions::VAESIMC.new(*operands,**kwargs)
        def vaeskeygenassist(*operands,**kwargs) = @instructions << Instructions::VAESKEYGENASSIST.new(*operands,**kwargs)
        def valignd(*operands,**kwargs) = @instructions << Instructions::VALIGND.new(*operands,**kwargs)
        def valignq(*operands,**kwargs) = @instructions << Instructions::VALIGNQ.new(*operands,**kwargs)
        def vandnpd(*operands,**kwargs) = @instructions << Instructions::VANDNPD.new(*operands,**kwargs)
        def vandnps(*operands,**kwargs) = @instructions << Instructions::VANDNPS.new(*operands,**kwargs)
        def vandpd(*operands,**kwargs) = @instructions << Instructions::VANDPD.new(*operands,**kwargs)
        def vandps(*operands,**kwargs) = @instructions << Instructions::VANDPS.new(*operands,**kwargs)
        def vbcstnebf162ps(*operands,**kwargs) = @instructions << Instructions::VBCSTNEBF162PS.new(*operands,**kwargs)
        def vbcstnesh2ps(*operands,**kwargs) = @instructions << Instructions::VBCSTNESH2PS.new(*operands,**kwargs)
        def vblendmpd(*operands,**kwargs) = @instructions << Instructions::VBLENDMPD.new(*operands,**kwargs)
        def vblendmps(*operands,**kwargs) = @instructions << Instructions::VBLENDMPS.new(*operands,**kwargs)
        def vblendpd(*operands,**kwargs) = @instructions << Instructions::VBLENDPD.new(*operands,**kwargs)
        def vblendps(*operands,**kwargs) = @instructions << Instructions::VBLENDPS.new(*operands,**kwargs)
        def vblendvpd(*operands,**kwargs) = @instructions << Instructions::VBLENDVPD.new(*operands,**kwargs)
        def vblendvps(*operands,**kwargs) = @instructions << Instructions::VBLENDVPS.new(*operands,**kwargs)
        def vbroadcastf128(*operands,**kwargs) = @instructions << Instructions::VBROADCASTF128.new(*operands,**kwargs)
        def vbroadcastf32x2(*operands,**kwargs) = @instructions << Instructions::VBROADCASTF32X2.new(*operands,**kwargs)
        def vbroadcastf32x4(*operands,**kwargs) = @instructions << Instructions::VBROADCASTF32X4.new(*operands,**kwargs)
        def vbroadcastf32x8(*operands,**kwargs) = @instructions << Instructions::VBROADCASTF32X8.new(*operands,**kwargs)
        def vbroadcastf64x2(*operands,**kwargs) = @instructions << Instructions::VBROADCASTF64X2.new(*operands,**kwargs)
        def vbroadcastf64x4(*operands,**kwargs) = @instructions << Instructions::VBROADCASTF64X4.new(*operands,**kwargs)
        def vbroadcasti128(*operands,**kwargs) = @instructions << Instructions::VBROADCASTI128.new(*operands,**kwargs)
        def vbroadcasti32x2(*operands,**kwargs) = @instructions << Instructions::VBROADCASTI32X2.new(*operands,**kwargs)
        def vbroadcasti32x4(*operands,**kwargs) = @instructions << Instructions::VBROADCASTI32X4.new(*operands,**kwargs)
        def vbroadcasti32x8(*operands,**kwargs) = @instructions << Instructions::VBROADCASTI32X8.new(*operands,**kwargs)
        def vbroadcasti64x2(*operands,**kwargs) = @instructions << Instructions::VBROADCASTI64X2.new(*operands,**kwargs)
        def vbroadcasti64x4(*operands,**kwargs) = @instructions << Instructions::VBROADCASTI64X4.new(*operands,**kwargs)
        def vbroadcastsd(*operands,**kwargs) = @instructions << Instructions::VBROADCASTSD.new(*operands,**kwargs)
        def vbroadcastss(*operands,**kwargs) = @instructions << Instructions::VBROADCASTSS.new(*operands,**kwargs)
        def vcmppd(*operands,**kwargs) = @instructions << Instructions::VCMPPD.new(*operands,**kwargs)
        def vcmpph(*operands,**kwargs) = @instructions << Instructions::VCMPPH.new(*operands,**kwargs)
        def vcmpps(*operands,**kwargs) = @instructions << Instructions::VCMPPS.new(*operands,**kwargs)
        def vcmpsd(*operands,**kwargs) = @instructions << Instructions::VCMPSD.new(*operands,**kwargs)
        def vcmpsh(*operands,**kwargs) = @instructions << Instructions::VCMPSH.new(*operands,**kwargs)
        def vcmpss(*operands,**kwargs) = @instructions << Instructions::VCMPSS.new(*operands,**kwargs)
        def vcomisd(*operands,**kwargs) = @instructions << Instructions::VCOMISD.new(*operands,**kwargs)
        def vcomish(*operands,**kwargs) = @instructions << Instructions::VCOMISH.new(*operands,**kwargs)
        def vcomiss(*operands,**kwargs) = @instructions << Instructions::VCOMISS.new(*operands,**kwargs)
        def vcompresspd(*operands,**kwargs) = @instructions << Instructions::VCOMPRESSPD.new(*operands,**kwargs)
        def vcompressps(*operands,**kwargs) = @instructions << Instructions::VCOMPRESSPS.new(*operands,**kwargs)
        def vcvtdq2pd(*operands,**kwargs) = @instructions << Instructions::VCVTDQ2PD.new(*operands,**kwargs)
        def vcvtdq2ph(*operands,**kwargs) = @instructions << Instructions::VCVTDQ2PH.new(*operands,**kwargs)
        def vcvtdq2ps(*operands,**kwargs) = @instructions << Instructions::VCVTDQ2PS.new(*operands,**kwargs)
        def vcvtne2ps2bf16(*operands,**kwargs) = @instructions << Instructions::VCVTNE2PS2BF16.new(*operands,**kwargs)
        def vcvtneebf162ps(*operands,**kwargs) = @instructions << Instructions::VCVTNEEBF162PS.new(*operands,**kwargs)
        def vcvtneeph2ps(*operands,**kwargs) = @instructions << Instructions::VCVTNEEPH2PS.new(*operands,**kwargs)
        def vcvtneobf162ps(*operands,**kwargs) = @instructions << Instructions::VCVTNEOBF162PS.new(*operands,**kwargs)
        def vcvtneoph2ps(*operands,**kwargs) = @instructions << Instructions::VCVTNEOPH2PS.new(*operands,**kwargs)
        def vcvtneps2bf16(*operands,**kwargs) = @instructions << Instructions::VCVTNEPS2BF16.new(*operands,**kwargs)
        def vcvtpd2dq(*operands,**kwargs) = @instructions << Instructions::VCVTPD2DQ.new(*operands,**kwargs)
        def vcvtpd2ph(*operands,**kwargs) = @instructions << Instructions::VCVTPD2PH.new(*operands,**kwargs)
        def vcvtpd2ps(*operands,**kwargs) = @instructions << Instructions::VCVTPD2PS.new(*operands,**kwargs)
        def vcvtpd2qq(*operands,**kwargs) = @instructions << Instructions::VCVTPD2QQ.new(*operands,**kwargs)
        def vcvtpd2udq(*operands,**kwargs) = @instructions << Instructions::VCVTPD2UDQ.new(*operands,**kwargs)
        def vcvtpd2uqq(*operands,**kwargs) = @instructions << Instructions::VCVTPD2UQQ.new(*operands,**kwargs)
        def vcvtph2dq(*operands,**kwargs) = @instructions << Instructions::VCVTPH2DQ.new(*operands,**kwargs)
        def vcvtph2pd(*operands,**kwargs) = @instructions << Instructions::VCVTPH2PD.new(*operands,**kwargs)
        def vcvtph2ps(*operands,**kwargs) = @instructions << Instructions::VCVTPH2PS.new(*operands,**kwargs)
        def vcvtph2psx(*operands,**kwargs) = @instructions << Instructions::VCVTPH2PSX.new(*operands,**kwargs)
        def vcvtph2qq(*operands,**kwargs) = @instructions << Instructions::VCVTPH2QQ.new(*operands,**kwargs)
        def vcvtph2udq(*operands,**kwargs) = @instructions << Instructions::VCVTPH2UDQ.new(*operands,**kwargs)
        def vcvtph2uqq(*operands,**kwargs) = @instructions << Instructions::VCVTPH2UQQ.new(*operands,**kwargs)
        def vcvtph2uw(*operands,**kwargs) = @instructions << Instructions::VCVTPH2UW.new(*operands,**kwargs)
        def vcvtph2w(*operands,**kwargs) = @instructions << Instructions::VCVTPH2W.new(*operands,**kwargs)
        def vcvtps2dq(*operands,**kwargs) = @instructions << Instructions::VCVTPS2DQ.new(*operands,**kwargs)
        def vcvtps2pd(*operands,**kwargs) = @instructions << Instructions::VCVTPS2PD.new(*operands,**kwargs)
        def vcvtps2ph(*operands,**kwargs) = @instructions << Instructions::VCVTPS2PH.new(*operands,**kwargs)
        def vcvtps2phx(*operands,**kwargs) = @instructions << Instructions::VCVTPS2PHX.new(*operands,**kwargs)
        def vcvtps2qq(*operands,**kwargs) = @instructions << Instructions::VCVTPS2QQ.new(*operands,**kwargs)
        def vcvtps2udq(*operands,**kwargs) = @instructions << Instructions::VCVTPS2UDQ.new(*operands,**kwargs)
        def vcvtps2uqq(*operands,**kwargs) = @instructions << Instructions::VCVTPS2UQQ.new(*operands,**kwargs)
        def vcvtqq2pd(*operands,**kwargs) = @instructions << Instructions::VCVTQQ2PD.new(*operands,**kwargs)
        def vcvtqq2ph(*operands,**kwargs) = @instructions << Instructions::VCVTQQ2PH.new(*operands,**kwargs)
        def vcvtqq2ps(*operands,**kwargs) = @instructions << Instructions::VCVTQQ2PS.new(*operands,**kwargs)
        def vcvtsd2sh(*operands,**kwargs) = @instructions << Instructions::VCVTSD2SH.new(*operands,**kwargs)
        def vcvtsd2si(*operands,**kwargs) = @instructions << Instructions::VCVTSD2SI.new(*operands,**kwargs)
        def vcvtsd2ss(*operands,**kwargs) = @instructions << Instructions::VCVTSD2SS.new(*operands,**kwargs)
        def vcvtsd2usi(*operands,**kwargs) = @instructions << Instructions::VCVTSD2USI.new(*operands,**kwargs)
        def vcvtsh2sd(*operands,**kwargs) = @instructions << Instructions::VCVTSH2SD.new(*operands,**kwargs)
        def vcvtsh2si(*operands,**kwargs) = @instructions << Instructions::VCVTSH2SI.new(*operands,**kwargs)
        def vcvtsh2ss(*operands,**kwargs) = @instructions << Instructions::VCVTSH2SS.new(*operands,**kwargs)
        def vcvtsh2usi(*operands,**kwargs) = @instructions << Instructions::VCVTSH2USI.new(*operands,**kwargs)
        def vcvtsi2sd(*operands,**kwargs) = @instructions << Instructions::VCVTSI2SD.new(*operands,**kwargs)
        def vcvtsi2sh(*operands,**kwargs) = @instructions << Instructions::VCVTSI2SH.new(*operands,**kwargs)
        def vcvtsi2ss(*operands,**kwargs) = @instructions << Instructions::VCVTSI2SS.new(*operands,**kwargs)
        def vcvtss2sd(*operands,**kwargs) = @instructions << Instructions::VCVTSS2SD.new(*operands,**kwargs)
        def vcvtss2sh(*operands,**kwargs) = @instructions << Instructions::VCVTSS2SH.new(*operands,**kwargs)
        def vcvtss2si(*operands,**kwargs) = @instructions << Instructions::VCVTSS2SI.new(*operands,**kwargs)
        def vcvtss2usi(*operands,**kwargs) = @instructions << Instructions::VCVTSS2USI.new(*operands,**kwargs)
        def vcvttpd2dq(*operands,**kwargs) = @instructions << Instructions::VCVTTPD2DQ.new(*operands,**kwargs)
        def vcvttpd2qq(*operands,**kwargs) = @instructions << Instructions::VCVTTPD2QQ.new(*operands,**kwargs)
        def vcvttpd2udq(*operands,**kwargs) = @instructions << Instructions::VCVTTPD2UDQ.new(*operands,**kwargs)
        def vcvttpd2uqq(*operands,**kwargs) = @instructions << Instructions::VCVTTPD2UQQ.new(*operands,**kwargs)
        def vcvttph2dq(*operands,**kwargs) = @instructions << Instructions::VCVTTPH2DQ.new(*operands,**kwargs)
        def vcvttph2qq(*operands,**kwargs) = @instructions << Instructions::VCVTTPH2QQ.new(*operands,**kwargs)
        def vcvttph2udq(*operands,**kwargs) = @instructions << Instructions::VCVTTPH2UDQ.new(*operands,**kwargs)
        def vcvttph2uqq(*operands,**kwargs) = @instructions << Instructions::VCVTTPH2UQQ.new(*operands,**kwargs)
        def vcvttph2uw(*operands,**kwargs) = @instructions << Instructions::VCVTTPH2UW.new(*operands,**kwargs)
        def vcvttph2w(*operands,**kwargs) = @instructions << Instructions::VCVTTPH2W.new(*operands,**kwargs)
        def vcvttps2dq(*operands,**kwargs) = @instructions << Instructions::VCVTTPS2DQ.new(*operands,**kwargs)
        def vcvttps2qq(*operands,**kwargs) = @instructions << Instructions::VCVTTPS2QQ.new(*operands,**kwargs)
        def vcvttps2udq(*operands,**kwargs) = @instructions << Instructions::VCVTTPS2UDQ.new(*operands,**kwargs)
        def vcvttps2uqq(*operands,**kwargs) = @instructions << Instructions::VCVTTPS2UQQ.new(*operands,**kwargs)
        def vcvttsd2si(*operands,**kwargs) = @instructions << Instructions::VCVTTSD2SI.new(*operands,**kwargs)
        def vcvttsd2usi(*operands,**kwargs) = @instructions << Instructions::VCVTTSD2USI.new(*operands,**kwargs)
        def vcvttsh2si(*operands,**kwargs) = @instructions << Instructions::VCVTTSH2SI.new(*operands,**kwargs)
        def vcvttsh2usi(*operands,**kwargs) = @instructions << Instructions::VCVTTSH2USI.new(*operands,**kwargs)
        def vcvttss2si(*operands,**kwargs) = @instructions << Instructions::VCVTTSS2SI.new(*operands,**kwargs)
        def vcvttss2usi(*operands,**kwargs) = @instructions << Instructions::VCVTTSS2USI.new(*operands,**kwargs)
        def vcvtudq2pd(*operands,**kwargs) = @instructions << Instructions::VCVTUDQ2PD.new(*operands,**kwargs)
        def vcvtudq2ph(*operands,**kwargs) = @instructions << Instructions::VCVTUDQ2PH.new(*operands,**kwargs)
        def vcvtudq2ps(*operands,**kwargs) = @instructions << Instructions::VCVTUDQ2PS.new(*operands,**kwargs)
        def vcvtuqq2pd(*operands,**kwargs) = @instructions << Instructions::VCVTUQQ2PD.new(*operands,**kwargs)
        def vcvtuqq2ph(*operands,**kwargs) = @instructions << Instructions::VCVTUQQ2PH.new(*operands,**kwargs)
        def vcvtuqq2ps(*operands,**kwargs) = @instructions << Instructions::VCVTUQQ2PS.new(*operands,**kwargs)
        def vcvtusi2sd(*operands,**kwargs) = @instructions << Instructions::VCVTUSI2SD.new(*operands,**kwargs)
        def vcvtusi2sh(*operands,**kwargs) = @instructions << Instructions::VCVTUSI2SH.new(*operands,**kwargs)
        def vcvtusi2ss(*operands,**kwargs) = @instructions << Instructions::VCVTUSI2SS.new(*operands,**kwargs)
        def vcvtuw2ph(*operands,**kwargs) = @instructions << Instructions::VCVTUW2PH.new(*operands,**kwargs)
        def vcvtw2ph(*operands,**kwargs) = @instructions << Instructions::VCVTW2PH.new(*operands,**kwargs)
        def vdbpsadbw(*operands,**kwargs) = @instructions << Instructions::VDBPSADBW.new(*operands,**kwargs)
        def vdivpd(*operands,**kwargs) = @instructions << Instructions::VDIVPD.new(*operands,**kwargs)
        def vdivph(*operands,**kwargs) = @instructions << Instructions::VDIVPH.new(*operands,**kwargs)
        def vdivps(*operands,**kwargs) = @instructions << Instructions::VDIVPS.new(*operands,**kwargs)
        def vdivsd(*operands,**kwargs) = @instructions << Instructions::VDIVSD.new(*operands,**kwargs)
        def vdivsh(*operands,**kwargs) = @instructions << Instructions::VDIVSH.new(*operands,**kwargs)
        def vdivss(*operands,**kwargs) = @instructions << Instructions::VDIVSS.new(*operands,**kwargs)
        def vdpbf16ps(*operands,**kwargs) = @instructions << Instructions::VDPBF16PS.new(*operands,**kwargs)
        def vdppd(*operands,**kwargs) = @instructions << Instructions::VDPPD.new(*operands,**kwargs)
        def vdpps(*operands,**kwargs) = @instructions << Instructions::VDPPS.new(*operands,**kwargs)
        def vexp2pd(*operands,**kwargs) = @instructions << Instructions::VEXP2PD.new(*operands,**kwargs)
        def vexp2ps(*operands,**kwargs) = @instructions << Instructions::VEXP2PS.new(*operands,**kwargs)
        def vexpandpd(*operands,**kwargs) = @instructions << Instructions::VEXPANDPD.new(*operands,**kwargs)
        def vexpandps(*operands,**kwargs) = @instructions << Instructions::VEXPANDPS.new(*operands,**kwargs)
        def vextractf128(*operands,**kwargs) = @instructions << Instructions::VEXTRACTF128.new(*operands,**kwargs)
        def vextractf32x4(*operands,**kwargs) = @instructions << Instructions::VEXTRACTF32X4.new(*operands,**kwargs)
        def vextractf32x8(*operands,**kwargs) = @instructions << Instructions::VEXTRACTF32X8.new(*operands,**kwargs)
        def vextractf64x2(*operands,**kwargs) = @instructions << Instructions::VEXTRACTF64X2.new(*operands,**kwargs)
        def vextractf64x4(*operands,**kwargs) = @instructions << Instructions::VEXTRACTF64X4.new(*operands,**kwargs)
        def vextracti128(*operands,**kwargs) = @instructions << Instructions::VEXTRACTI128.new(*operands,**kwargs)
        def vextracti32x4(*operands,**kwargs) = @instructions << Instructions::VEXTRACTI32X4.new(*operands,**kwargs)
        def vextracti32x8(*operands,**kwargs) = @instructions << Instructions::VEXTRACTI32X8.new(*operands,**kwargs)
        def vextracti64x2(*operands,**kwargs) = @instructions << Instructions::VEXTRACTI64X2.new(*operands,**kwargs)
        def vextracti64x4(*operands,**kwargs) = @instructions << Instructions::VEXTRACTI64X4.new(*operands,**kwargs)
        def vextractps(*operands,**kwargs) = @instructions << Instructions::VEXTRACTPS.new(*operands,**kwargs)
        def vfcmaddcph(*operands,**kwargs) = @instructions << Instructions::VFCMADDCPH.new(*operands,**kwargs)
        def vfcmaddcsh(*operands,**kwargs) = @instructions << Instructions::VFCMADDCSH.new(*operands,**kwargs)
        def vfcmulcph(*operands,**kwargs) = @instructions << Instructions::VFCMULCPH.new(*operands,**kwargs)
        def vfcmulcsh(*operands,**kwargs) = @instructions << Instructions::VFCMULCSH.new(*operands,**kwargs)
        def vfixupimmpd(*operands,**kwargs) = @instructions << Instructions::VFIXUPIMMPD.new(*operands,**kwargs)
        def vfixupimmps(*operands,**kwargs) = @instructions << Instructions::VFIXUPIMMPS.new(*operands,**kwargs)
        def vfixupimmsd(*operands,**kwargs) = @instructions << Instructions::VFIXUPIMMSD.new(*operands,**kwargs)
        def vfixupimmss(*operands,**kwargs) = @instructions << Instructions::VFIXUPIMMSS.new(*operands,**kwargs)
        def vfmadd132pd(*operands,**kwargs) = @instructions << Instructions::VFMADD132PD.new(*operands,**kwargs)
        def vfmadd132ph(*operands,**kwargs) = @instructions << Instructions::VFMADD132PH.new(*operands,**kwargs)
        def vfmadd132ps(*operands,**kwargs) = @instructions << Instructions::VFMADD132PS.new(*operands,**kwargs)
        def vfmadd132sd(*operands,**kwargs) = @instructions << Instructions::VFMADD132SD.new(*operands,**kwargs)
        def vfmadd132ss(*operands,**kwargs) = @instructions << Instructions::VFMADD132SS.new(*operands,**kwargs)
        def vfmadd213pd(*operands,**kwargs) = @instructions << Instructions::VFMADD213PD.new(*operands,**kwargs)
        def vfmadd213ph(*operands,**kwargs) = @instructions << Instructions::VFMADD213PH.new(*operands,**kwargs)
        def vfmadd213ps(*operands,**kwargs) = @instructions << Instructions::VFMADD213PS.new(*operands,**kwargs)
        def vfmadd213sd(*operands,**kwargs) = @instructions << Instructions::VFMADD213SD.new(*operands,**kwargs)
        def vfmadd213ss(*operands,**kwargs) = @instructions << Instructions::VFMADD213SS.new(*operands,**kwargs)
        def vfmadd231pd(*operands,**kwargs) = @instructions << Instructions::VFMADD231PD.new(*operands,**kwargs)
        def vfmadd231ph(*operands,**kwargs) = @instructions << Instructions::VFMADD231PH.new(*operands,**kwargs)
        def vfmadd231ps(*operands,**kwargs) = @instructions << Instructions::VFMADD231PS.new(*operands,**kwargs)
        def vfmadd231sd(*operands,**kwargs) = @instructions << Instructions::VFMADD231SD.new(*operands,**kwargs)
        def vfmadd231ss(*operands,**kwargs) = @instructions << Instructions::VFMADD231SS.new(*operands,**kwargs)
        def vfmaddcph(*operands,**kwargs) = @instructions << Instructions::VFMADDCPH.new(*operands,**kwargs)
        def vfmaddcsh(*operands,**kwargs) = @instructions << Instructions::VFMADDCSH.new(*operands,**kwargs)
        def vfmaddpd(*operands,**kwargs) = @instructions << Instructions::VFMADDPD.new(*operands,**kwargs)
        def vfmaddps(*operands,**kwargs) = @instructions << Instructions::VFMADDPS.new(*operands,**kwargs)
        def vfmaddsd(*operands,**kwargs) = @instructions << Instructions::VFMADDSD.new(*operands,**kwargs)
        def vfmaddss(*operands,**kwargs) = @instructions << Instructions::VFMADDSS.new(*operands,**kwargs)
        def vfmaddsub132pd(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB132PD.new(*operands,**kwargs)
        def vfmaddsub132ph(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB132PH.new(*operands,**kwargs)
        def vfmaddsub132ps(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB132PS.new(*operands,**kwargs)
        def vfmaddsub213pd(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB213PD.new(*operands,**kwargs)
        def vfmaddsub213ph(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB213PH.new(*operands,**kwargs)
        def vfmaddsub213ps(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB213PS.new(*operands,**kwargs)
        def vfmaddsub231pd(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB231PD.new(*operands,**kwargs)
        def vfmaddsub231ph(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB231PH.new(*operands,**kwargs)
        def vfmaddsub231ps(*operands,**kwargs) = @instructions << Instructions::VFMADDSUB231PS.new(*operands,**kwargs)
        def vfmaddsubpd(*operands,**kwargs) = @instructions << Instructions::VFMADDSUBPD.new(*operands,**kwargs)
        def vfmaddsubps(*operands,**kwargs) = @instructions << Instructions::VFMADDSUBPS.new(*operands,**kwargs)
        def vfmsub132pd(*operands,**kwargs) = @instructions << Instructions::VFMSUB132PD.new(*operands,**kwargs)
        def vfmsub132ph(*operands,**kwargs) = @instructions << Instructions::VFMSUB132PH.new(*operands,**kwargs)
        def vfmsub132ps(*operands,**kwargs) = @instructions << Instructions::VFMSUB132PS.new(*operands,**kwargs)
        def vfmsub132sd(*operands,**kwargs) = @instructions << Instructions::VFMSUB132SD.new(*operands,**kwargs)
        def vfmsub132sh(*operands,**kwargs) = @instructions << Instructions::VFMSUB132SH.new(*operands,**kwargs)
        def vfmsub132ss(*operands,**kwargs) = @instructions << Instructions::VFMSUB132SS.new(*operands,**kwargs)
        def vfmsub213pd(*operands,**kwargs) = @instructions << Instructions::VFMSUB213PD.new(*operands,**kwargs)
        def vfmsub213ph(*operands,**kwargs) = @instructions << Instructions::VFMSUB213PH.new(*operands,**kwargs)
        def vfmsub213ps(*operands,**kwargs) = @instructions << Instructions::VFMSUB213PS.new(*operands,**kwargs)
        def vfmsub213sd(*operands,**kwargs) = @instructions << Instructions::VFMSUB213SD.new(*operands,**kwargs)
        def vfmsub213sh(*operands,**kwargs) = @instructions << Instructions::VFMSUB213SH.new(*operands,**kwargs)
        def vfmsub213ss(*operands,**kwargs) = @instructions << Instructions::VFMSUB213SS.new(*operands,**kwargs)
        def vfmsub231pd(*operands,**kwargs) = @instructions << Instructions::VFMSUB231PD.new(*operands,**kwargs)
        def vfmsub231ph(*operands,**kwargs) = @instructions << Instructions::VFMSUB231PH.new(*operands,**kwargs)
        def vfmsub231ps(*operands,**kwargs) = @instructions << Instructions::VFMSUB231PS.new(*operands,**kwargs)
        def vfmsub231sd(*operands,**kwargs) = @instructions << Instructions::VFMSUB231SD.new(*operands,**kwargs)
        def vfmsub231sh(*operands,**kwargs) = @instructions << Instructions::VFMSUB231SH.new(*operands,**kwargs)
        def vfmsub231ss(*operands,**kwargs) = @instructions << Instructions::VFMSUB231SS.new(*operands,**kwargs)
        def vfmsubadd132pd(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD132PD.new(*operands,**kwargs)
        def vfmsubadd132ph(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD132PH.new(*operands,**kwargs)
        def vfmsubadd132ps(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD132PS.new(*operands,**kwargs)
        def vfmsubadd213pd(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD213PD.new(*operands,**kwargs)
        def vfmsubadd213ph(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD213PH.new(*operands,**kwargs)
        def vfmsubadd213ps(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD213PS.new(*operands,**kwargs)
        def vfmsubadd231pd(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD231PD.new(*operands,**kwargs)
        def vfmsubadd231ph(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD231PH.new(*operands,**kwargs)
        def vfmsubadd231ps(*operands,**kwargs) = @instructions << Instructions::VFMSUBADD231PS.new(*operands,**kwargs)
        def vfmsubaddpd(*operands,**kwargs) = @instructions << Instructions::VFMSUBADDPD.new(*operands,**kwargs)
        def vfmsubaddps(*operands,**kwargs) = @instructions << Instructions::VFMSUBADDPS.new(*operands,**kwargs)
        def vfmsubpd(*operands,**kwargs) = @instructions << Instructions::VFMSUBPD.new(*operands,**kwargs)
        def vfmsubps(*operands,**kwargs) = @instructions << Instructions::VFMSUBPS.new(*operands,**kwargs)
        def vfmsubsd(*operands,**kwargs) = @instructions << Instructions::VFMSUBSD.new(*operands,**kwargs)
        def vfmsubss(*operands,**kwargs) = @instructions << Instructions::VFMSUBSS.new(*operands,**kwargs)
        def vfmulcph(*operands,**kwargs) = @instructions << Instructions::VFMULCPH.new(*operands,**kwargs)
        def vfmulcsh(*operands,**kwargs) = @instructions << Instructions::VFMULCSH.new(*operands,**kwargs)
        def vfnmadd132pd(*operands,**kwargs) = @instructions << Instructions::VFNMADD132PD.new(*operands,**kwargs)
        def vfnmadd132ph(*operands,**kwargs) = @instructions << Instructions::VFNMADD132PH.new(*operands,**kwargs)
        def vfnmadd132ps(*operands,**kwargs) = @instructions << Instructions::VFNMADD132PS.new(*operands,**kwargs)
        def vfnmadd132sd(*operands,**kwargs) = @instructions << Instructions::VFNMADD132SD.new(*operands,**kwargs)
        def vfnmadd132ss(*operands,**kwargs) = @instructions << Instructions::VFNMADD132SS.new(*operands,**kwargs)
        def vfnmadd213pd(*operands,**kwargs) = @instructions << Instructions::VFNMADD213PD.new(*operands,**kwargs)
        def vfnmadd213ph(*operands,**kwargs) = @instructions << Instructions::VFNMADD213PH.new(*operands,**kwargs)
        def vfnmadd213ps(*operands,**kwargs) = @instructions << Instructions::VFNMADD213PS.new(*operands,**kwargs)
        def vfnmadd213sd(*operands,**kwargs) = @instructions << Instructions::VFNMADD213SD.new(*operands,**kwargs)
        def vfnmadd213ss(*operands,**kwargs) = @instructions << Instructions::VFNMADD213SS.new(*operands,**kwargs)
        def vfnmadd231pd(*operands,**kwargs) = @instructions << Instructions::VFNMADD231PD.new(*operands,**kwargs)
        def vfnmadd231ph(*operands,**kwargs) = @instructions << Instructions::VFNMADD231PH.new(*operands,**kwargs)
        def vfnmadd231ps(*operands,**kwargs) = @instructions << Instructions::VFNMADD231PS.new(*operands,**kwargs)
        def vfnmadd231sd(*operands,**kwargs) = @instructions << Instructions::VFNMADD231SD.new(*operands,**kwargs)
        def vfnmadd231ss(*operands,**kwargs) = @instructions << Instructions::VFNMADD231SS.new(*operands,**kwargs)
        def vfnmaddpd(*operands,**kwargs) = @instructions << Instructions::VFNMADDPD.new(*operands,**kwargs)
        def vfnmaddps(*operands,**kwargs) = @instructions << Instructions::VFNMADDPS.new(*operands,**kwargs)
        def vfnmaddsd(*operands,**kwargs) = @instructions << Instructions::VFNMADDSD.new(*operands,**kwargs)
        def vfnmaddss(*operands,**kwargs) = @instructions << Instructions::VFNMADDSS.new(*operands,**kwargs)
        def vfnmsub132pd(*operands,**kwargs) = @instructions << Instructions::VFNMSUB132PD.new(*operands,**kwargs)
        def vfnmsub132ph(*operands,**kwargs) = @instructions << Instructions::VFNMSUB132PH.new(*operands,**kwargs)
        def vfnmsub132ps(*operands,**kwargs) = @instructions << Instructions::VFNMSUB132PS.new(*operands,**kwargs)
        def vfnmsub132sd(*operands,**kwargs) = @instructions << Instructions::VFNMSUB132SD.new(*operands,**kwargs)
        def vfnmsub132sh(*operands,**kwargs) = @instructions << Instructions::VFNMSUB132SH.new(*operands,**kwargs)
        def vfnmsub132ss(*operands,**kwargs) = @instructions << Instructions::VFNMSUB132SS.new(*operands,**kwargs)
        def vfnmsub213pd(*operands,**kwargs) = @instructions << Instructions::VFNMSUB213PD.new(*operands,**kwargs)
        def vfnmsub213ph(*operands,**kwargs) = @instructions << Instructions::VFNMSUB213PH.new(*operands,**kwargs)
        def vfnmsub213ps(*operands,**kwargs) = @instructions << Instructions::VFNMSUB213PS.new(*operands,**kwargs)
        def vfnmsub213sd(*operands,**kwargs) = @instructions << Instructions::VFNMSUB213SD.new(*operands,**kwargs)
        def vfnmsub213sh(*operands,**kwargs) = @instructions << Instructions::VFNMSUB213SH.new(*operands,**kwargs)
        def vfnmsub213ss(*operands,**kwargs) = @instructions << Instructions::VFNMSUB213SS.new(*operands,**kwargs)
        def vfnmsub231pd(*operands,**kwargs) = @instructions << Instructions::VFNMSUB231PD.new(*operands,**kwargs)
        def vfnmsub231ph(*operands,**kwargs) = @instructions << Instructions::VFNMSUB231PH.new(*operands,**kwargs)
        def vfnmsub231ps(*operands,**kwargs) = @instructions << Instructions::VFNMSUB231PS.new(*operands,**kwargs)
        def vfnmsub231sd(*operands,**kwargs) = @instructions << Instructions::VFNMSUB231SD.new(*operands,**kwargs)
        def vfnmsub231sh(*operands,**kwargs) = @instructions << Instructions::VFNMSUB231SH.new(*operands,**kwargs)
        def vfnmsub231ss(*operands,**kwargs) = @instructions << Instructions::VFNMSUB231SS.new(*operands,**kwargs)
        def vfnmsubpd(*operands,**kwargs) = @instructions << Instructions::VFNMSUBPD.new(*operands,**kwargs)
        def vfnmsubps(*operands,**kwargs) = @instructions << Instructions::VFNMSUBPS.new(*operands,**kwargs)
        def vfnmsubsd(*operands,**kwargs) = @instructions << Instructions::VFNMSUBSD.new(*operands,**kwargs)
        def vfnmsubss(*operands,**kwargs) = @instructions << Instructions::VFNMSUBSS.new(*operands,**kwargs)
        def vfpclasspd(*operands,**kwargs) = @instructions << Instructions::VFPCLASSPD.new(*operands,**kwargs)
        def vfpclassph(*operands,**kwargs) = @instructions << Instructions::VFPCLASSPH.new(*operands,**kwargs)
        def vfpclassps(*operands,**kwargs) = @instructions << Instructions::VFPCLASSPS.new(*operands,**kwargs)
        def vfpclasssd(*operands,**kwargs) = @instructions << Instructions::VFPCLASSSD.new(*operands,**kwargs)
        def vfpclasssh(*operands,**kwargs) = @instructions << Instructions::VFPCLASSSH.new(*operands,**kwargs)
        def vfpclassss(*operands,**kwargs) = @instructions << Instructions::VFPCLASSSS.new(*operands,**kwargs)
        def vfrczpd(*operands,**kwargs) = @instructions << Instructions::VFRCZPD.new(*operands,**kwargs)
        def vfrczps(*operands,**kwargs) = @instructions << Instructions::VFRCZPS.new(*operands,**kwargs)
        def vfrczsd(*operands,**kwargs) = @instructions << Instructions::VFRCZSD.new(*operands,**kwargs)
        def vfrczss(*operands,**kwargs) = @instructions << Instructions::VFRCZSS.new(*operands,**kwargs)
        def vgatherdpd(*operands,**kwargs) = @instructions << Instructions::VGATHERDPD.new(*operands,**kwargs)
        def vgatherdps(*operands,**kwargs) = @instructions << Instructions::VGATHERDPS.new(*operands,**kwargs)
        def vgatherpf0dpd(*operands,**kwargs) = @instructions << Instructions::VGATHERPF0DPD.new(*operands,**kwargs)
        def vgatherpf0dps(*operands,**kwargs) = @instructions << Instructions::VGATHERPF0DPS.new(*operands,**kwargs)
        def vgatherpf0qpd(*operands,**kwargs) = @instructions << Instructions::VGATHERPF0QPD.new(*operands,**kwargs)
        def vgatherpf0qps(*operands,**kwargs) = @instructions << Instructions::VGATHERPF0QPS.new(*operands,**kwargs)
        def vgatherpf1dpd(*operands,**kwargs) = @instructions << Instructions::VGATHERPF1DPD.new(*operands,**kwargs)
        def vgatherpf1dps(*operands,**kwargs) = @instructions << Instructions::VGATHERPF1DPS.new(*operands,**kwargs)
        def vgatherpf1qpd(*operands,**kwargs) = @instructions << Instructions::VGATHERPF1QPD.new(*operands,**kwargs)
        def vgatherpf1qps(*operands,**kwargs) = @instructions << Instructions::VGATHERPF1QPS.new(*operands,**kwargs)
        def vgatherqpd(*operands,**kwargs) = @instructions << Instructions::VGATHERQPD.new(*operands,**kwargs)
        def vgatherqps(*operands,**kwargs) = @instructions << Instructions::VGATHERQPS.new(*operands,**kwargs)
        def vgetexppd(*operands,**kwargs) = @instructions << Instructions::VGETEXPPD.new(*operands,**kwargs)
        def vgetexpph(*operands,**kwargs) = @instructions << Instructions::VGETEXPPH.new(*operands,**kwargs)
        def vgetexpps(*operands,**kwargs) = @instructions << Instructions::VGETEXPPS.new(*operands,**kwargs)
        def vgetexpsd(*operands,**kwargs) = @instructions << Instructions::VGETEXPSD.new(*operands,**kwargs)
        def vgetexpsh(*operands,**kwargs) = @instructions << Instructions::VGETEXPSH.new(*operands,**kwargs)
        def vgetexpss(*operands,**kwargs) = @instructions << Instructions::VGETEXPSS.new(*operands,**kwargs)
        def vgetmantpd(*operands,**kwargs) = @instructions << Instructions::VGETMANTPD.new(*operands,**kwargs)
        def vgetmantph(*operands,**kwargs) = @instructions << Instructions::VGETMANTPH.new(*operands,**kwargs)
        def vgetmantps(*operands,**kwargs) = @instructions << Instructions::VGETMANTPS.new(*operands,**kwargs)
        def vgetmantsd(*operands,**kwargs) = @instructions << Instructions::VGETMANTSD.new(*operands,**kwargs)
        def vgetmantsh(*operands,**kwargs) = @instructions << Instructions::VGETMANTSH.new(*operands,**kwargs)
        def vgetmantss(*operands,**kwargs) = @instructions << Instructions::VGETMANTSS.new(*operands,**kwargs)
        def vgf2p8affineinvqb(*operands,**kwargs) = @instructions << Instructions::VGF2P8AFFINEINVQB.new(*operands,**kwargs)
        def vgf2p8affineqb(*operands,**kwargs) = @instructions << Instructions::VGF2P8AFFINEQB.new(*operands,**kwargs)
        def vgf2p8mulb(*operands,**kwargs) = @instructions << Instructions::VGF2P8MULB.new(*operands,**kwargs)
        def vhaddpd(*operands,**kwargs) = @instructions << Instructions::VHADDPD.new(*operands,**kwargs)
        def vhaddps(*operands,**kwargs) = @instructions << Instructions::VHADDPS.new(*operands,**kwargs)
        def vhsubpd(*operands,**kwargs) = @instructions << Instructions::VHSUBPD.new(*operands,**kwargs)
        def vhsubps(*operands,**kwargs) = @instructions << Instructions::VHSUBPS.new(*operands,**kwargs)
        def vinsertf128(*operands,**kwargs) = @instructions << Instructions::VINSERTF128.new(*operands,**kwargs)
        def vinsertf32x4(*operands,**kwargs) = @instructions << Instructions::VINSERTF32X4.new(*operands,**kwargs)
        def vinsertf32x8(*operands,**kwargs) = @instructions << Instructions::VINSERTF32X8.new(*operands,**kwargs)
        def vinsertf64x2(*operands,**kwargs) = @instructions << Instructions::VINSERTF64X2.new(*operands,**kwargs)
        def vinsertf64x4(*operands,**kwargs) = @instructions << Instructions::VINSERTF64X4.new(*operands,**kwargs)
        def vinserti128(*operands,**kwargs) = @instructions << Instructions::VINSERTI128.new(*operands,**kwargs)
        def vinserti32x4(*operands,**kwargs) = @instructions << Instructions::VINSERTI32X4.new(*operands,**kwargs)
        def vinserti32x8(*operands,**kwargs) = @instructions << Instructions::VINSERTI32X8.new(*operands,**kwargs)
        def vinserti64x2(*operands,**kwargs) = @instructions << Instructions::VINSERTI64X2.new(*operands,**kwargs)
        def vinserti64x4(*operands,**kwargs) = @instructions << Instructions::VINSERTI64X4.new(*operands,**kwargs)
        def vinsertps(*operands,**kwargs) = @instructions << Instructions::VINSERTPS.new(*operands,**kwargs)
        def vlddqu(*operands,**kwargs) = @instructions << Instructions::VLDDQU.new(*operands,**kwargs)
        def vldmxcsr(*operands,**kwargs) = @instructions << Instructions::VLDMXCSR.new(*operands,**kwargs)
        def vmaskmovdqu(*operands,**kwargs) = @instructions << Instructions::VMASKMOVDQU.new(*operands,**kwargs)
        def vmaskmovpd(*operands,**kwargs) = @instructions << Instructions::VMASKMOVPD.new(*operands,**kwargs)
        def vmaskmovps(*operands,**kwargs) = @instructions << Instructions::VMASKMOVPS.new(*operands,**kwargs)
        def vmaxpd(*operands,**kwargs) = @instructions << Instructions::VMAXPD.new(*operands,**kwargs)
        def vmaxph(*operands,**kwargs) = @instructions << Instructions::VMAXPH.new(*operands,**kwargs)
        def vmaxps(*operands,**kwargs) = @instructions << Instructions::VMAXPS.new(*operands,**kwargs)
        def vmaxsd(*operands,**kwargs) = @instructions << Instructions::VMAXSD.new(*operands,**kwargs)
        def vmaxsh(*operands,**kwargs) = @instructions << Instructions::VMAXSH.new(*operands,**kwargs)
        def vmaxss(*operands,**kwargs) = @instructions << Instructions::VMAXSS.new(*operands,**kwargs)
        def vminpd(*operands,**kwargs) = @instructions << Instructions::VMINPD.new(*operands,**kwargs)
        def vminph(*operands,**kwargs) = @instructions << Instructions::VMINPH.new(*operands,**kwargs)
        def vminps(*operands,**kwargs) = @instructions << Instructions::VMINPS.new(*operands,**kwargs)
        def vminsd(*operands,**kwargs) = @instructions << Instructions::VMINSD.new(*operands,**kwargs)
        def vminsh(*operands,**kwargs) = @instructions << Instructions::VMINSH.new(*operands,**kwargs)
        def vminss(*operands,**kwargs) = @instructions << Instructions::VMINSS.new(*operands,**kwargs)
        def vmovapd(*operands,**kwargs) = @instructions << Instructions::VMOVAPD.new(*operands,**kwargs)
        def vmovaps(*operands,**kwargs) = @instructions << Instructions::VMOVAPS.new(*operands,**kwargs)
        def vmovd(*operands,**kwargs) = @instructions << Instructions::VMOVD.new(*operands,**kwargs)
        def vmovddup(*operands,**kwargs) = @instructions << Instructions::VMOVDDUP.new(*operands,**kwargs)
        def vmovdqa(*operands,**kwargs) = @instructions << Instructions::VMOVDQA.new(*operands,**kwargs)
        def vmovdqa32(*operands,**kwargs) = @instructions << Instructions::VMOVDQA32.new(*operands,**kwargs)
        def vmovdqa64(*operands,**kwargs) = @instructions << Instructions::VMOVDQA64.new(*operands,**kwargs)
        def vmovdqu(*operands,**kwargs) = @instructions << Instructions::VMOVDQU.new(*operands,**kwargs)
        def vmovdqu16(*operands,**kwargs) = @instructions << Instructions::VMOVDQU16.new(*operands,**kwargs)
        def vmovdqu32(*operands,**kwargs) = @instructions << Instructions::VMOVDQU32.new(*operands,**kwargs)
        def vmovdqu64(*operands,**kwargs) = @instructions << Instructions::VMOVDQU64.new(*operands,**kwargs)
        def vmovdqu8(*operands,**kwargs) = @instructions << Instructions::VMOVDQU8.new(*operands,**kwargs)
        def vmovhlps(*operands,**kwargs) = @instructions << Instructions::VMOVHLPS.new(*operands,**kwargs)
        def vmovhpd(*operands,**kwargs) = @instructions << Instructions::VMOVHPD.new(*operands,**kwargs)
        def vmovhps(*operands,**kwargs) = @instructions << Instructions::VMOVHPS.new(*operands,**kwargs)
        def vmovlhps(*operands,**kwargs) = @instructions << Instructions::VMOVLHPS.new(*operands,**kwargs)
        def vmovlpd(*operands,**kwargs) = @instructions << Instructions::VMOVLPD.new(*operands,**kwargs)
        def vmovlps(*operands,**kwargs) = @instructions << Instructions::VMOVLPS.new(*operands,**kwargs)
        def vmovmskpd(*operands,**kwargs) = @instructions << Instructions::VMOVMSKPD.new(*operands,**kwargs)
        def vmovmskps(*operands,**kwargs) = @instructions << Instructions::VMOVMSKPS.new(*operands,**kwargs)
        def vmovntdq(*operands,**kwargs) = @instructions << Instructions::VMOVNTDQ.new(*operands,**kwargs)
        def vmovntdqa(*operands,**kwargs) = @instructions << Instructions::VMOVNTDQA.new(*operands,**kwargs)
        def vmovntpd(*operands,**kwargs) = @instructions << Instructions::VMOVNTPD.new(*operands,**kwargs)
        def vmovntps(*operands,**kwargs) = @instructions << Instructions::VMOVNTPS.new(*operands,**kwargs)
        def vmovq(*operands,**kwargs) = @instructions << Instructions::VMOVQ.new(*operands,**kwargs)
        def vmovsd(*operands,**kwargs) = @instructions << Instructions::VMOVSD.new(*operands,**kwargs)
        def vmovsh(*operands,**kwargs) = @instructions << Instructions::VMOVSH.new(*operands,**kwargs)
        def vmovshdup(*operands,**kwargs) = @instructions << Instructions::VMOVSHDUP.new(*operands,**kwargs)
        def vmovsldup(*operands,**kwargs) = @instructions << Instructions::VMOVSLDUP.new(*operands,**kwargs)
        def vmovss(*operands,**kwargs) = @instructions << Instructions::VMOVSS.new(*operands,**kwargs)
        def vmovupd(*operands,**kwargs) = @instructions << Instructions::VMOVUPD.new(*operands,**kwargs)
        def vmovups(*operands,**kwargs) = @instructions << Instructions::VMOVUPS.new(*operands,**kwargs)
        def vmovw(*operands,**kwargs) = @instructions << Instructions::VMOVW.new(*operands,**kwargs)
        def vmpsadbw(*operands,**kwargs) = @instructions << Instructions::VMPSADBW.new(*operands,**kwargs)
        def vmulpd(*operands,**kwargs) = @instructions << Instructions::VMULPD.new(*operands,**kwargs)
        def vmulph(*operands,**kwargs) = @instructions << Instructions::VMULPH.new(*operands,**kwargs)
        def vmulps(*operands,**kwargs) = @instructions << Instructions::VMULPS.new(*operands,**kwargs)
        def vmulsd(*operands,**kwargs) = @instructions << Instructions::VMULSD.new(*operands,**kwargs)
        def vmulsh(*operands,**kwargs) = @instructions << Instructions::VMULSH.new(*operands,**kwargs)
        def vmulss(*operands,**kwargs) = @instructions << Instructions::VMULSS.new(*operands,**kwargs)
        def vorpd(*operands,**kwargs) = @instructions << Instructions::VORPD.new(*operands,**kwargs)
        def vorps(*operands,**kwargs) = @instructions << Instructions::VORPS.new(*operands,**kwargs)
        def vpabsb(*operands,**kwargs) = @instructions << Instructions::VPABSB.new(*operands,**kwargs)
        def vpabsd(*operands,**kwargs) = @instructions << Instructions::VPABSD.new(*operands,**kwargs)
        def vpabsq(*operands,**kwargs) = @instructions << Instructions::VPABSQ.new(*operands,**kwargs)
        def vpabsw(*operands,**kwargs) = @instructions << Instructions::VPABSW.new(*operands,**kwargs)
        def vpackssdw(*operands,**kwargs) = @instructions << Instructions::VPACKSSDW.new(*operands,**kwargs)
        def vpacksswb(*operands,**kwargs) = @instructions << Instructions::VPACKSSWB.new(*operands,**kwargs)
        def vpackusdw(*operands,**kwargs) = @instructions << Instructions::VPACKUSDW.new(*operands,**kwargs)
        def vpackuswb(*operands,**kwargs) = @instructions << Instructions::VPACKUSWB.new(*operands,**kwargs)
        def vpaddb(*operands,**kwargs) = @instructions << Instructions::VPADDB.new(*operands,**kwargs)
        def vpaddd(*operands,**kwargs) = @instructions << Instructions::VPADDD.new(*operands,**kwargs)
        def vpaddq(*operands,**kwargs) = @instructions << Instructions::VPADDQ.new(*operands,**kwargs)
        def vpaddsb(*operands,**kwargs) = @instructions << Instructions::VPADDSB.new(*operands,**kwargs)
        def vpaddsw(*operands,**kwargs) = @instructions << Instructions::VPADDSW.new(*operands,**kwargs)
        def vpaddusb(*operands,**kwargs) = @instructions << Instructions::VPADDUSB.new(*operands,**kwargs)
        def vpaddusw(*operands,**kwargs) = @instructions << Instructions::VPADDUSW.new(*operands,**kwargs)
        def vpaddw(*operands,**kwargs) = @instructions << Instructions::VPADDW.new(*operands,**kwargs)
        def vpalignr(*operands,**kwargs) = @instructions << Instructions::VPALIGNR.new(*operands,**kwargs)
        def vpand(*operands,**kwargs) = @instructions << Instructions::VPAND.new(*operands,**kwargs)
        def vpandd(*operands,**kwargs) = @instructions << Instructions::VPANDD.new(*operands,**kwargs)
        def vpandn(*operands,**kwargs) = @instructions << Instructions::VPANDN.new(*operands,**kwargs)
        def vpandnd(*operands,**kwargs) = @instructions << Instructions::VPANDND.new(*operands,**kwargs)
        def vpandnq(*operands,**kwargs) = @instructions << Instructions::VPANDNQ.new(*operands,**kwargs)
        def vpandq(*operands,**kwargs) = @instructions << Instructions::VPANDQ.new(*operands,**kwargs)
        def vpavgb(*operands,**kwargs) = @instructions << Instructions::VPAVGB.new(*operands,**kwargs)
        def vpavgw(*operands,**kwargs) = @instructions << Instructions::VPAVGW.new(*operands,**kwargs)
        def vpblendd(*operands,**kwargs) = @instructions << Instructions::VPBLENDD.new(*operands,**kwargs)
        def vpblendmb(*operands,**kwargs) = @instructions << Instructions::VPBLENDMB.new(*operands,**kwargs)
        def vpblendmd(*operands,**kwargs) = @instructions << Instructions::VPBLENDMD.new(*operands,**kwargs)
        def vpblendmq(*operands,**kwargs) = @instructions << Instructions::VPBLENDMQ.new(*operands,**kwargs)
        def vpblendmw(*operands,**kwargs) = @instructions << Instructions::VPBLENDMW.new(*operands,**kwargs)
        def vpblendvb(*operands,**kwargs) = @instructions << Instructions::VPBLENDVB.new(*operands,**kwargs)
        def vpblendw(*operands,**kwargs) = @instructions << Instructions::VPBLENDW.new(*operands,**kwargs)
        def vpbroadcastb(*operands,**kwargs) = @instructions << Instructions::VPBROADCASTB.new(*operands,**kwargs)
        def vpbroadcastd(*operands,**kwargs) = @instructions << Instructions::VPBROADCASTD.new(*operands,**kwargs)
        def vpbroadcastmb2q(*operands,**kwargs) = @instructions << Instructions::VPBROADCASTMB2Q.new(*operands,**kwargs)
        def vpbroadcastmw2d(*operands,**kwargs) = @instructions << Instructions::VPBROADCASTMW2D.new(*operands,**kwargs)
        def vpbroadcastq(*operands,**kwargs) = @instructions << Instructions::VPBROADCASTQ.new(*operands,**kwargs)
        def vpbroadcastw(*operands,**kwargs) = @instructions << Instructions::VPBROADCASTW.new(*operands,**kwargs)
        def vpclmulqdq(*operands,**kwargs) = @instructions << Instructions::VPCLMULQDQ.new(*operands,**kwargs)
        def vpcmov(*operands,**kwargs) = @instructions << Instructions::VPCMOV.new(*operands,**kwargs)
        def vpcmpb(*operands,**kwargs) = @instructions << Instructions::VPCMPB.new(*operands,**kwargs)
        def vpcmpd(*operands,**kwargs) = @instructions << Instructions::VPCMPD.new(*operands,**kwargs)
        def vpcmpeqb(*operands,**kwargs) = @instructions << Instructions::VPCMPEQB.new(*operands,**kwargs)
        def vpcmpeqd(*operands,**kwargs) = @instructions << Instructions::VPCMPEQD.new(*operands,**kwargs)
        def vpcmpeqq(*operands,**kwargs) = @instructions << Instructions::VPCMPEQQ.new(*operands,**kwargs)
        def vpcmpeqw(*operands,**kwargs) = @instructions << Instructions::VPCMPEQW.new(*operands,**kwargs)
        def vpcmpestri(*operands,**kwargs) = @instructions << Instructions::VPCMPESTRI.new(*operands,**kwargs)
        def vpcmpestrm(*operands,**kwargs) = @instructions << Instructions::VPCMPESTRM.new(*operands,**kwargs)
        def vpcmpgtb(*operands,**kwargs) = @instructions << Instructions::VPCMPGTB.new(*operands,**kwargs)
        def vpcmpgtd(*operands,**kwargs) = @instructions << Instructions::VPCMPGTD.new(*operands,**kwargs)
        def vpcmpgtq(*operands,**kwargs) = @instructions << Instructions::VPCMPGTQ.new(*operands,**kwargs)
        def vpcmpgtw(*operands,**kwargs) = @instructions << Instructions::VPCMPGTW.new(*operands,**kwargs)
        def vpcmpistri(*operands,**kwargs) = @instructions << Instructions::VPCMPISTRI.new(*operands,**kwargs)
        def vpcmpistrm(*operands,**kwargs) = @instructions << Instructions::VPCMPISTRM.new(*operands,**kwargs)
        def vpcmpq(*operands,**kwargs) = @instructions << Instructions::VPCMPQ.new(*operands,**kwargs)
        def vpcmpub(*operands,**kwargs) = @instructions << Instructions::VPCMPUB.new(*operands,**kwargs)
        def vpcmpud(*operands,**kwargs) = @instructions << Instructions::VPCMPUD.new(*operands,**kwargs)
        def vpcmpuq(*operands,**kwargs) = @instructions << Instructions::VPCMPUQ.new(*operands,**kwargs)
        def vpcmpuw(*operands,**kwargs) = @instructions << Instructions::VPCMPUW.new(*operands,**kwargs)
        def vpcmpw(*operands,**kwargs) = @instructions << Instructions::VPCMPW.new(*operands,**kwargs)
        def vpcomb(*operands,**kwargs) = @instructions << Instructions::VPCOMB.new(*operands,**kwargs)
        def vpcomd(*operands,**kwargs) = @instructions << Instructions::VPCOMD.new(*operands,**kwargs)
        def vpcompressb(*operands,**kwargs) = @instructions << Instructions::VPCOMPRESSB.new(*operands,**kwargs)
        def vpcompressd(*operands,**kwargs) = @instructions << Instructions::VPCOMPRESSD.new(*operands,**kwargs)
        def vpcompressq(*operands,**kwargs) = @instructions << Instructions::VPCOMPRESSQ.new(*operands,**kwargs)
        def vpcompressw(*operands,**kwargs) = @instructions << Instructions::VPCOMPRESSW.new(*operands,**kwargs)
        def vpcomq(*operands,**kwargs) = @instructions << Instructions::VPCOMQ.new(*operands,**kwargs)
        def vpcomub(*operands,**kwargs) = @instructions << Instructions::VPCOMUB.new(*operands,**kwargs)
        def vpcomud(*operands,**kwargs) = @instructions << Instructions::VPCOMUD.new(*operands,**kwargs)
        def vpcomuq(*operands,**kwargs) = @instructions << Instructions::VPCOMUQ.new(*operands,**kwargs)
        def vpcomuw(*operands,**kwargs) = @instructions << Instructions::VPCOMUW.new(*operands,**kwargs)
        def vpcomw(*operands,**kwargs) = @instructions << Instructions::VPCOMW.new(*operands,**kwargs)
        def vpconflictd(*operands,**kwargs) = @instructions << Instructions::VPCONFLICTD.new(*operands,**kwargs)
        def vpconflictq(*operands,**kwargs) = @instructions << Instructions::VPCONFLICTQ.new(*operands,**kwargs)
        def vpdpbssd(*operands,**kwargs) = @instructions << Instructions::VPDPBSSD.new(*operands,**kwargs)
        def vpdpbssds(*operands,**kwargs) = @instructions << Instructions::VPDPBSSDS.new(*operands,**kwargs)
        def vpdpbsud(*operands,**kwargs) = @instructions << Instructions::VPDPBSUD.new(*operands,**kwargs)
        def vpdpbsuds(*operands,**kwargs) = @instructions << Instructions::VPDPBSUDS.new(*operands,**kwargs)
        def vpdpbusd(*operands,**kwargs) = @instructions << Instructions::VPDPBUSD.new(*operands,**kwargs)
        def vpdpbusds(*operands,**kwargs) = @instructions << Instructions::VPDPBUSDS.new(*operands,**kwargs)
        def vpdpbuud(*operands,**kwargs) = @instructions << Instructions::VPDPBUUD.new(*operands,**kwargs)
        def vpdpbuuds(*operands,**kwargs) = @instructions << Instructions::VPDPBUUDS.new(*operands,**kwargs)
        def vpdpwssd(*operands,**kwargs) = @instructions << Instructions::VPDPWSSD.new(*operands,**kwargs)
        def vpdpwssds(*operands,**kwargs) = @instructions << Instructions::VPDPWSSDS.new(*operands,**kwargs)
        def vpdpwsud(*operands,**kwargs) = @instructions << Instructions::VPDPWSUD.new(*operands,**kwargs)
        def vpdpwsuds(*operands,**kwargs) = @instructions << Instructions::VPDPWSUDS.new(*operands,**kwargs)
        def vpdpwusd(*operands,**kwargs) = @instructions << Instructions::VPDPWUSD.new(*operands,**kwargs)
        def vpdpwusds(*operands,**kwargs) = @instructions << Instructions::VPDPWUSDS.new(*operands,**kwargs)
        def vpdpwuud(*operands,**kwargs) = @instructions << Instructions::VPDPWUUD.new(*operands,**kwargs)
        def vpdpwuuds(*operands,**kwargs) = @instructions << Instructions::VPDPWUUDS.new(*operands,**kwargs)
        def vperm2f128(*operands,**kwargs) = @instructions << Instructions::VPERM2F128.new(*operands,**kwargs)
        def vperm2i128(*operands,**kwargs) = @instructions << Instructions::VPERM2I128.new(*operands,**kwargs)
        def vpermb(*operands,**kwargs) = @instructions << Instructions::VPERMB.new(*operands,**kwargs)
        def vpermd(*operands,**kwargs) = @instructions << Instructions::VPERMD.new(*operands,**kwargs)
        def vpermi2b(*operands,**kwargs) = @instructions << Instructions::VPERMI2B.new(*operands,**kwargs)
        def vpermi2d(*operands,**kwargs) = @instructions << Instructions::VPERMI2D.new(*operands,**kwargs)
        def vpermi2pd(*operands,**kwargs) = @instructions << Instructions::VPERMI2PD.new(*operands,**kwargs)
        def vpermi2ps(*operands,**kwargs) = @instructions << Instructions::VPERMI2PS.new(*operands,**kwargs)
        def vpermi2q(*operands,**kwargs) = @instructions << Instructions::VPERMI2Q.new(*operands,**kwargs)
        def vpermi2w(*operands,**kwargs) = @instructions << Instructions::VPERMI2W.new(*operands,**kwargs)
        def vpermil2pd(*operands,**kwargs) = @instructions << Instructions::VPERMIL2PD.new(*operands,**kwargs)
        def vpermil2ps(*operands,**kwargs) = @instructions << Instructions::VPERMIL2PS.new(*operands,**kwargs)
        def vpermilpd(*operands,**kwargs) = @instructions << Instructions::VPERMILPD.new(*operands,**kwargs)
        def vpermilps(*operands,**kwargs) = @instructions << Instructions::VPERMILPS.new(*operands,**kwargs)
        def vpermpd(*operands,**kwargs) = @instructions << Instructions::VPERMPD.new(*operands,**kwargs)
        def vpermps(*operands,**kwargs) = @instructions << Instructions::VPERMPS.new(*operands,**kwargs)
        def vpermq(*operands,**kwargs) = @instructions << Instructions::VPERMQ.new(*operands,**kwargs)
        def vpermt2b(*operands,**kwargs) = @instructions << Instructions::VPERMT2B.new(*operands,**kwargs)
        def vpermt2d(*operands,**kwargs) = @instructions << Instructions::VPERMT2D.new(*operands,**kwargs)
        def vpermt2pd(*operands,**kwargs) = @instructions << Instructions::VPERMT2PD.new(*operands,**kwargs)
        def vpermt2ps(*operands,**kwargs) = @instructions << Instructions::VPERMT2PS.new(*operands,**kwargs)
        def vpermt2q(*operands,**kwargs) = @instructions << Instructions::VPERMT2Q.new(*operands,**kwargs)
        def vpermt2w(*operands,**kwargs) = @instructions << Instructions::VPERMT2W.new(*operands,**kwargs)
        def vpermw(*operands,**kwargs) = @instructions << Instructions::VPERMW.new(*operands,**kwargs)
        def vpexpandb(*operands,**kwargs) = @instructions << Instructions::VPEXPANDB.new(*operands,**kwargs)
        def vpexpandd(*operands,**kwargs) = @instructions << Instructions::VPEXPANDD.new(*operands,**kwargs)
        def vpexpandq(*operands,**kwargs) = @instructions << Instructions::VPEXPANDQ.new(*operands,**kwargs)
        def vpexpandw(*operands,**kwargs) = @instructions << Instructions::VPEXPANDW.new(*operands,**kwargs)
        def vpextrb(*operands,**kwargs) = @instructions << Instructions::VPEXTRB.new(*operands,**kwargs)
        def vpextrd(*operands,**kwargs) = @instructions << Instructions::VPEXTRD.new(*operands,**kwargs)
        def vpextrq(*operands,**kwargs) = @instructions << Instructions::VPEXTRQ.new(*operands,**kwargs)
        def vpextrw(*operands,**kwargs) = @instructions << Instructions::VPEXTRW.new(*operands,**kwargs)
        def vpgatherdd(*operands,**kwargs) = @instructions << Instructions::VPGATHERDD.new(*operands,**kwargs)
        def vpgatherdq(*operands,**kwargs) = @instructions << Instructions::VPGATHERDQ.new(*operands,**kwargs)
        def vpgatherqd(*operands,**kwargs) = @instructions << Instructions::VPGATHERQD.new(*operands,**kwargs)
        def vpgatherqq(*operands,**kwargs) = @instructions << Instructions::VPGATHERQQ.new(*operands,**kwargs)
        def vphaddbd(*operands,**kwargs) = @instructions << Instructions::VPHADDBD.new(*operands,**kwargs)
        def vphaddbq(*operands,**kwargs) = @instructions << Instructions::VPHADDBQ.new(*operands,**kwargs)
        def vphaddbw(*operands,**kwargs) = @instructions << Instructions::VPHADDBW.new(*operands,**kwargs)
        def vphaddd(*operands,**kwargs) = @instructions << Instructions::VPHADDD.new(*operands,**kwargs)
        def vphadddq(*operands,**kwargs) = @instructions << Instructions::VPHADDDQ.new(*operands,**kwargs)
        def vphaddsw(*operands,**kwargs) = @instructions << Instructions::VPHADDSW.new(*operands,**kwargs)
        def vphaddubd(*operands,**kwargs) = @instructions << Instructions::VPHADDUBD.new(*operands,**kwargs)
        def vphaddubq(*operands,**kwargs) = @instructions << Instructions::VPHADDUBQ.new(*operands,**kwargs)
        def vphaddubw(*operands,**kwargs) = @instructions << Instructions::VPHADDUBW.new(*operands,**kwargs)
        def vphaddudq(*operands,**kwargs) = @instructions << Instructions::VPHADDUDQ.new(*operands,**kwargs)
        def vphadduwd(*operands,**kwargs) = @instructions << Instructions::VPHADDUWD.new(*operands,**kwargs)
        def vphadduwq(*operands,**kwargs) = @instructions << Instructions::VPHADDUWQ.new(*operands,**kwargs)
        def vphaddw(*operands,**kwargs) = @instructions << Instructions::VPHADDW.new(*operands,**kwargs)
        def vphaddwd(*operands,**kwargs) = @instructions << Instructions::VPHADDWD.new(*operands,**kwargs)
        def vphaddwq(*operands,**kwargs) = @instructions << Instructions::VPHADDWQ.new(*operands,**kwargs)
        def vphminposuw(*operands,**kwargs) = @instructions << Instructions::VPHMINPOSUW.new(*operands,**kwargs)
        def vphsubbw(*operands,**kwargs) = @instructions << Instructions::VPHSUBBW.new(*operands,**kwargs)
        def vphsubd(*operands,**kwargs) = @instructions << Instructions::VPHSUBD.new(*operands,**kwargs)
        def vphsubdq(*operands,**kwargs) = @instructions << Instructions::VPHSUBDQ.new(*operands,**kwargs)
        def vphsubsw(*operands,**kwargs) = @instructions << Instructions::VPHSUBSW.new(*operands,**kwargs)
        def vphsubw(*operands,**kwargs) = @instructions << Instructions::VPHSUBW.new(*operands,**kwargs)
        def vphsubwd(*operands,**kwargs) = @instructions << Instructions::VPHSUBWD.new(*operands,**kwargs)
        def vpinsrb(*operands,**kwargs) = @instructions << Instructions::VPINSRB.new(*operands,**kwargs)
        def vpinsrd(*operands,**kwargs) = @instructions << Instructions::VPINSRD.new(*operands,**kwargs)
        def vpinsrq(*operands,**kwargs) = @instructions << Instructions::VPINSRQ.new(*operands,**kwargs)
        def vpinsrw(*operands,**kwargs) = @instructions << Instructions::VPINSRW.new(*operands,**kwargs)
        def vplzcntd(*operands,**kwargs) = @instructions << Instructions::VPLZCNTD.new(*operands,**kwargs)
        def vplzcntq(*operands,**kwargs) = @instructions << Instructions::VPLZCNTQ.new(*operands,**kwargs)
        def vpmacsdd(*operands,**kwargs) = @instructions << Instructions::VPMACSDD.new(*operands,**kwargs)
        def vpmacsdqh(*operands,**kwargs) = @instructions << Instructions::VPMACSDQH.new(*operands,**kwargs)
        def vpmacsdql(*operands,**kwargs) = @instructions << Instructions::VPMACSDQL.new(*operands,**kwargs)
        def vpmacssdd(*operands,**kwargs) = @instructions << Instructions::VPMACSSDD.new(*operands,**kwargs)
        def vpmacssdqh(*operands,**kwargs) = @instructions << Instructions::VPMACSSDQH.new(*operands,**kwargs)
        def vpmacssdql(*operands,**kwargs) = @instructions << Instructions::VPMACSSDQL.new(*operands,**kwargs)
        def vpmacsswd(*operands,**kwargs) = @instructions << Instructions::VPMACSSWD.new(*operands,**kwargs)
        def vpmacssww(*operands,**kwargs) = @instructions << Instructions::VPMACSSWW.new(*operands,**kwargs)
        def vpmacswd(*operands,**kwargs) = @instructions << Instructions::VPMACSWD.new(*operands,**kwargs)
        def vpmacsww(*operands,**kwargs) = @instructions << Instructions::VPMACSWW.new(*operands,**kwargs)
        def vpmadcsswd(*operands,**kwargs) = @instructions << Instructions::VPMADCSSWD.new(*operands,**kwargs)
        def vpmadcswd(*operands,**kwargs) = @instructions << Instructions::VPMADCSWD.new(*operands,**kwargs)
        def vpmadd52huq(*operands,**kwargs) = @instructions << Instructions::VPMADD52HUQ.new(*operands,**kwargs)
        def vpmadd52luq(*operands,**kwargs) = @instructions << Instructions::VPMADD52LUQ.new(*operands,**kwargs)
        def vpmaddubsw(*operands,**kwargs) = @instructions << Instructions::VPMADDUBSW.new(*operands,**kwargs)
        def vpmaddwd(*operands,**kwargs) = @instructions << Instructions::VPMADDWD.new(*operands,**kwargs)
        def vpmaskmovd(*operands,**kwargs) = @instructions << Instructions::VPMASKMOVD.new(*operands,**kwargs)
        def vpmaskmovq(*operands,**kwargs) = @instructions << Instructions::VPMASKMOVQ.new(*operands,**kwargs)
        def vpmaxsb(*operands,**kwargs) = @instructions << Instructions::VPMAXSB.new(*operands,**kwargs)
        def vpmaxsd(*operands,**kwargs) = @instructions << Instructions::VPMAXSD.new(*operands,**kwargs)
        def vpmaxsq(*operands,**kwargs) = @instructions << Instructions::VPMAXSQ.new(*operands,**kwargs)
        def vpmaxsw(*operands,**kwargs) = @instructions << Instructions::VPMAXSW.new(*operands,**kwargs)
        def vpmaxub(*operands,**kwargs) = @instructions << Instructions::VPMAXUB.new(*operands,**kwargs)
        def vpmaxud(*operands,**kwargs) = @instructions << Instructions::VPMAXUD.new(*operands,**kwargs)
        def vpmaxuq(*operands,**kwargs) = @instructions << Instructions::VPMAXUQ.new(*operands,**kwargs)
        def vpmaxuw(*operands,**kwargs) = @instructions << Instructions::VPMAXUW.new(*operands,**kwargs)
        def vpminsb(*operands,**kwargs) = @instructions << Instructions::VPMINSB.new(*operands,**kwargs)
        def vpminsd(*operands,**kwargs) = @instructions << Instructions::VPMINSD.new(*operands,**kwargs)
        def vpminsq(*operands,**kwargs) = @instructions << Instructions::VPMINSQ.new(*operands,**kwargs)
        def vpminsw(*operands,**kwargs) = @instructions << Instructions::VPMINSW.new(*operands,**kwargs)
        def vpminub(*operands,**kwargs) = @instructions << Instructions::VPMINUB.new(*operands,**kwargs)
        def vpminud(*operands,**kwargs) = @instructions << Instructions::VPMINUD.new(*operands,**kwargs)
        def vpminuq(*operands,**kwargs) = @instructions << Instructions::VPMINUQ.new(*operands,**kwargs)
        def vpminuw(*operands,**kwargs) = @instructions << Instructions::VPMINUW.new(*operands,**kwargs)
        def vpmovb2m(*operands,**kwargs) = @instructions << Instructions::VPMOVB2M.new(*operands,**kwargs)
        def vpmovd2m(*operands,**kwargs) = @instructions << Instructions::VPMOVD2M.new(*operands,**kwargs)
        def vpmovdb(*operands,**kwargs) = @instructions << Instructions::VPMOVDB.new(*operands,**kwargs)
        def vpmovdw(*operands,**kwargs) = @instructions << Instructions::VPMOVDW.new(*operands,**kwargs)
        def vpmovm2b(*operands,**kwargs) = @instructions << Instructions::VPMOVM2B.new(*operands,**kwargs)
        def vpmovm2d(*operands,**kwargs) = @instructions << Instructions::VPMOVM2D.new(*operands,**kwargs)
        def vpmovm2q(*operands,**kwargs) = @instructions << Instructions::VPMOVM2Q.new(*operands,**kwargs)
        def vpmovm2w(*operands,**kwargs) = @instructions << Instructions::VPMOVM2W.new(*operands,**kwargs)
        def vpmovmskb(*operands,**kwargs) = @instructions << Instructions::VPMOVMSKB.new(*operands,**kwargs)
        def vpmovq2m(*operands,**kwargs) = @instructions << Instructions::VPMOVQ2M.new(*operands,**kwargs)
        def vpmovqb(*operands,**kwargs) = @instructions << Instructions::VPMOVQB.new(*operands,**kwargs)
        def vpmovqd(*operands,**kwargs) = @instructions << Instructions::VPMOVQD.new(*operands,**kwargs)
        def vpmovqw(*operands,**kwargs) = @instructions << Instructions::VPMOVQW.new(*operands,**kwargs)
        def vpmovsdb(*operands,**kwargs) = @instructions << Instructions::VPMOVSDB.new(*operands,**kwargs)
        def vpmovsdw(*operands,**kwargs) = @instructions << Instructions::VPMOVSDW.new(*operands,**kwargs)
        def vpmovsqb(*operands,**kwargs) = @instructions << Instructions::VPMOVSQB.new(*operands,**kwargs)
        def vpmovsqd(*operands,**kwargs) = @instructions << Instructions::VPMOVSQD.new(*operands,**kwargs)
        def vpmovsqw(*operands,**kwargs) = @instructions << Instructions::VPMOVSQW.new(*operands,**kwargs)
        def vpmovswb(*operands,**kwargs) = @instructions << Instructions::VPMOVSWB.new(*operands,**kwargs)
        def vpmovsxbd(*operands,**kwargs) = @instructions << Instructions::VPMOVSXBD.new(*operands,**kwargs)
        def vpmovsxbq(*operands,**kwargs) = @instructions << Instructions::VPMOVSXBQ.new(*operands,**kwargs)
        def vpmovsxbw(*operands,**kwargs) = @instructions << Instructions::VPMOVSXBW.new(*operands,**kwargs)
        def vpmovsxdq(*operands,**kwargs) = @instructions << Instructions::VPMOVSXDQ.new(*operands,**kwargs)
        def vpmovsxwd(*operands,**kwargs) = @instructions << Instructions::VPMOVSXWD.new(*operands,**kwargs)
        def vpmovsxwq(*operands,**kwargs) = @instructions << Instructions::VPMOVSXWQ.new(*operands,**kwargs)
        def vpmovusdb(*operands,**kwargs) = @instructions << Instructions::VPMOVUSDB.new(*operands,**kwargs)
        def vpmovusdw(*operands,**kwargs) = @instructions << Instructions::VPMOVUSDW.new(*operands,**kwargs)
        def vpmovusqb(*operands,**kwargs) = @instructions << Instructions::VPMOVUSQB.new(*operands,**kwargs)
        def vpmovusqd(*operands,**kwargs) = @instructions << Instructions::VPMOVUSQD.new(*operands,**kwargs)
        def vpmovusqw(*operands,**kwargs) = @instructions << Instructions::VPMOVUSQW.new(*operands,**kwargs)
        def vpmovuswb(*operands,**kwargs) = @instructions << Instructions::VPMOVUSWB.new(*operands,**kwargs)
        def vpmovw2m(*operands,**kwargs) = @instructions << Instructions::VPMOVW2M.new(*operands,**kwargs)
        def vpmovwb(*operands,**kwargs) = @instructions << Instructions::VPMOVWB.new(*operands,**kwargs)
        def vpmovzxbd(*operands,**kwargs) = @instructions << Instructions::VPMOVZXBD.new(*operands,**kwargs)
        def vpmovzxbq(*operands,**kwargs) = @instructions << Instructions::VPMOVZXBQ.new(*operands,**kwargs)
        def vpmovzxbw(*operands,**kwargs) = @instructions << Instructions::VPMOVZXBW.new(*operands,**kwargs)
        def vpmovzxdq(*operands,**kwargs) = @instructions << Instructions::VPMOVZXDQ.new(*operands,**kwargs)
        def vpmovzxwd(*operands,**kwargs) = @instructions << Instructions::VPMOVZXWD.new(*operands,**kwargs)
        def vpmovzxwq(*operands,**kwargs) = @instructions << Instructions::VPMOVZXWQ.new(*operands,**kwargs)
        def vpmuldq(*operands,**kwargs) = @instructions << Instructions::VPMULDQ.new(*operands,**kwargs)
        def vpmulhrsw(*operands,**kwargs) = @instructions << Instructions::VPMULHRSW.new(*operands,**kwargs)
        def vpmulhuw(*operands,**kwargs) = @instructions << Instructions::VPMULHUW.new(*operands,**kwargs)
        def vpmulhw(*operands,**kwargs) = @instructions << Instructions::VPMULHW.new(*operands,**kwargs)
        def vpmulld(*operands,**kwargs) = @instructions << Instructions::VPMULLD.new(*operands,**kwargs)
        def vpmullq(*operands,**kwargs) = @instructions << Instructions::VPMULLQ.new(*operands,**kwargs)
        def vpmullw(*operands,**kwargs) = @instructions << Instructions::VPMULLW.new(*operands,**kwargs)
        def vpmultishiftqb(*operands,**kwargs) = @instructions << Instructions::VPMULTISHIFTQB.new(*operands,**kwargs)
        def vpmuludq(*operands,**kwargs) = @instructions << Instructions::VPMULUDQ.new(*operands,**kwargs)
        def vpopcntb(*operands,**kwargs) = @instructions << Instructions::VPOPCNTB.new(*operands,**kwargs)
        def vpopcntd(*operands,**kwargs) = @instructions << Instructions::VPOPCNTD.new(*operands,**kwargs)
        def vpopcntq(*operands,**kwargs) = @instructions << Instructions::VPOPCNTQ.new(*operands,**kwargs)
        def vpopcntw(*operands,**kwargs) = @instructions << Instructions::VPOPCNTW.new(*operands,**kwargs)
        def vpor(*operands,**kwargs) = @instructions << Instructions::VPOR.new(*operands,**kwargs)
        def vpord(*operands,**kwargs) = @instructions << Instructions::VPORD.new(*operands,**kwargs)
        def vporq(*operands,**kwargs) = @instructions << Instructions::VPORQ.new(*operands,**kwargs)
        def vpperm(*operands,**kwargs) = @instructions << Instructions::VPPERM.new(*operands,**kwargs)
        def vprold(*operands,**kwargs) = @instructions << Instructions::VPROLD.new(*operands,**kwargs)
        def vprolq(*operands,**kwargs) = @instructions << Instructions::VPROLQ.new(*operands,**kwargs)
        def vprolvd(*operands,**kwargs) = @instructions << Instructions::VPROLVD.new(*operands,**kwargs)
        def vprolvq(*operands,**kwargs) = @instructions << Instructions::VPROLVQ.new(*operands,**kwargs)
        def vprord(*operands,**kwargs) = @instructions << Instructions::VPRORD.new(*operands,**kwargs)
        def vprorq(*operands,**kwargs) = @instructions << Instructions::VPRORQ.new(*operands,**kwargs)
        def vprorvd(*operands,**kwargs) = @instructions << Instructions::VPRORVD.new(*operands,**kwargs)
        def vprorvq(*operands,**kwargs) = @instructions << Instructions::VPRORVQ.new(*operands,**kwargs)
        def vprotb(*operands,**kwargs) = @instructions << Instructions::VPROTB.new(*operands,**kwargs)
        def vprotd(*operands,**kwargs) = @instructions << Instructions::VPROTD.new(*operands,**kwargs)
        def vprotq(*operands,**kwargs) = @instructions << Instructions::VPROTQ.new(*operands,**kwargs)
        def vprotw(*operands,**kwargs) = @instructions << Instructions::VPROTW.new(*operands,**kwargs)
        def vpsadbw(*operands,**kwargs) = @instructions << Instructions::VPSADBW.new(*operands,**kwargs)
        def vpscatterdd(*operands,**kwargs) = @instructions << Instructions::VPSCATTERDD.new(*operands,**kwargs)
        def vpscatterdq(*operands,**kwargs) = @instructions << Instructions::VPSCATTERDQ.new(*operands,**kwargs)
        def vpscatterqd(*operands,**kwargs) = @instructions << Instructions::VPSCATTERQD.new(*operands,**kwargs)
        def vpscatterqq(*operands,**kwargs) = @instructions << Instructions::VPSCATTERQQ.new(*operands,**kwargs)
        def vpshab(*operands,**kwargs) = @instructions << Instructions::VPSHAB.new(*operands,**kwargs)
        def vpshad(*operands,**kwargs) = @instructions << Instructions::VPSHAD.new(*operands,**kwargs)
        def vpshaq(*operands,**kwargs) = @instructions << Instructions::VPSHAQ.new(*operands,**kwargs)
        def vpshaw(*operands,**kwargs) = @instructions << Instructions::VPSHAW.new(*operands,**kwargs)
        def vpshlb(*operands,**kwargs) = @instructions << Instructions::VPSHLB.new(*operands,**kwargs)
        def vpshld(*operands,**kwargs) = @instructions << Instructions::VPSHLD.new(*operands,**kwargs)
        def vpshldd(*operands,**kwargs) = @instructions << Instructions::VPSHLDD.new(*operands,**kwargs)
        def vpshldq(*operands,**kwargs) = @instructions << Instructions::VPSHLDQ.new(*operands,**kwargs)
        def vpshldvd(*operands,**kwargs) = @instructions << Instructions::VPSHLDVD.new(*operands,**kwargs)
        def vpshldvq(*operands,**kwargs) = @instructions << Instructions::VPSHLDVQ.new(*operands,**kwargs)
        def vpshldvw(*operands,**kwargs) = @instructions << Instructions::VPSHLDVW.new(*operands,**kwargs)
        def vpshldw(*operands,**kwargs) = @instructions << Instructions::VPSHLDW.new(*operands,**kwargs)
        def vpshlq(*operands,**kwargs) = @instructions << Instructions::VPSHLQ.new(*operands,**kwargs)
        def vpshlw(*operands,**kwargs) = @instructions << Instructions::VPSHLW.new(*operands,**kwargs)
        def vpshrdd(*operands,**kwargs) = @instructions << Instructions::VPSHRDD.new(*operands,**kwargs)
        def vpshrdq(*operands,**kwargs) = @instructions << Instructions::VPSHRDQ.new(*operands,**kwargs)
        def vpshrdvd(*operands,**kwargs) = @instructions << Instructions::VPSHRDVD.new(*operands,**kwargs)
        def vpshrdvq(*operands,**kwargs) = @instructions << Instructions::VPSHRDVQ.new(*operands,**kwargs)
        def vpshrdvw(*operands,**kwargs) = @instructions << Instructions::VPSHRDVW.new(*operands,**kwargs)
        def vpshrdw(*operands,**kwargs) = @instructions << Instructions::VPSHRDW.new(*operands,**kwargs)
        def vpshufb(*operands,**kwargs) = @instructions << Instructions::VPSHUFB.new(*operands,**kwargs)
        def vpshufbitqmb(*operands,**kwargs) = @instructions << Instructions::VPSHUFBITQMB.new(*operands,**kwargs)
        def vpshufd(*operands,**kwargs) = @instructions << Instructions::VPSHUFD.new(*operands,**kwargs)
        def vpshufhw(*operands,**kwargs) = @instructions << Instructions::VPSHUFHW.new(*operands,**kwargs)
        def vpshuflw(*operands,**kwargs) = @instructions << Instructions::VPSHUFLW.new(*operands,**kwargs)
        def vpsignb(*operands,**kwargs) = @instructions << Instructions::VPSIGNB.new(*operands,**kwargs)
        def vpsignd(*operands,**kwargs) = @instructions << Instructions::VPSIGND.new(*operands,**kwargs)
        def vpsignw(*operands,**kwargs) = @instructions << Instructions::VPSIGNW.new(*operands,**kwargs)
        def vpslld(*operands,**kwargs) = @instructions << Instructions::VPSLLD.new(*operands,**kwargs)
        def vpslldq(*operands,**kwargs) = @instructions << Instructions::VPSLLDQ.new(*operands,**kwargs)
        def vpsllq(*operands,**kwargs) = @instructions << Instructions::VPSLLQ.new(*operands,**kwargs)
        def vpsllvd(*operands,**kwargs) = @instructions << Instructions::VPSLLVD.new(*operands,**kwargs)
        def vpsllvq(*operands,**kwargs) = @instructions << Instructions::VPSLLVQ.new(*operands,**kwargs)
        def vpsllvw(*operands,**kwargs) = @instructions << Instructions::VPSLLVW.new(*operands,**kwargs)
        def vpsllw(*operands,**kwargs) = @instructions << Instructions::VPSLLW.new(*operands,**kwargs)
        def vpsrad(*operands,**kwargs) = @instructions << Instructions::VPSRAD.new(*operands,**kwargs)
        def vpsraq(*operands,**kwargs) = @instructions << Instructions::VPSRAQ.new(*operands,**kwargs)
        def vpsravd(*operands,**kwargs) = @instructions << Instructions::VPSRAVD.new(*operands,**kwargs)
        def vpsravq(*operands,**kwargs) = @instructions << Instructions::VPSRAVQ.new(*operands,**kwargs)
        def vpsravw(*operands,**kwargs) = @instructions << Instructions::VPSRAVW.new(*operands,**kwargs)
        def vpsraw(*operands,**kwargs) = @instructions << Instructions::VPSRAW.new(*operands,**kwargs)
        def vpsrld(*operands,**kwargs) = @instructions << Instructions::VPSRLD.new(*operands,**kwargs)
        def vpsrldq(*operands,**kwargs) = @instructions << Instructions::VPSRLDQ.new(*operands,**kwargs)
        def vpsrlq(*operands,**kwargs) = @instructions << Instructions::VPSRLQ.new(*operands,**kwargs)
        def vpsrlvd(*operands,**kwargs) = @instructions << Instructions::VPSRLVD.new(*operands,**kwargs)
        def vpsrlvq(*operands,**kwargs) = @instructions << Instructions::VPSRLVQ.new(*operands,**kwargs)
        def vpsrlvw(*operands,**kwargs) = @instructions << Instructions::VPSRLVW.new(*operands,**kwargs)
        def vpsrlw(*operands,**kwargs) = @instructions << Instructions::VPSRLW.new(*operands,**kwargs)
        def vpsubb(*operands,**kwargs) = @instructions << Instructions::VPSUBB.new(*operands,**kwargs)
        def vpsubd(*operands,**kwargs) = @instructions << Instructions::VPSUBD.new(*operands,**kwargs)
        def vpsubq(*operands,**kwargs) = @instructions << Instructions::VPSUBQ.new(*operands,**kwargs)
        def vpsubsb(*operands,**kwargs) = @instructions << Instructions::VPSUBSB.new(*operands,**kwargs)
        def vpsubsw(*operands,**kwargs) = @instructions << Instructions::VPSUBSW.new(*operands,**kwargs)
        def vpsubusb(*operands,**kwargs) = @instructions << Instructions::VPSUBUSB.new(*operands,**kwargs)
        def vpsubusw(*operands,**kwargs) = @instructions << Instructions::VPSUBUSW.new(*operands,**kwargs)
        def vpsubw(*operands,**kwargs) = @instructions << Instructions::VPSUBW.new(*operands,**kwargs)
        def vpternlogd(*operands,**kwargs) = @instructions << Instructions::VPTERNLOGD.new(*operands,**kwargs)
        def vpternlogq(*operands,**kwargs) = @instructions << Instructions::VPTERNLOGQ.new(*operands,**kwargs)
        def vptest(*operands,**kwargs) = @instructions << Instructions::VPTEST.new(*operands,**kwargs)
        def vptestmb(*operands,**kwargs) = @instructions << Instructions::VPTESTMB.new(*operands,**kwargs)
        def vptestmd(*operands,**kwargs) = @instructions << Instructions::VPTESTMD.new(*operands,**kwargs)
        def vptestmq(*operands,**kwargs) = @instructions << Instructions::VPTESTMQ.new(*operands,**kwargs)
        def vptestmw(*operands,**kwargs) = @instructions << Instructions::VPTESTMW.new(*operands,**kwargs)
        def vptestnmb(*operands,**kwargs) = @instructions << Instructions::VPTESTNMB.new(*operands,**kwargs)
        def vptestnmd(*operands,**kwargs) = @instructions << Instructions::VPTESTNMD.new(*operands,**kwargs)
        def vptestnmq(*operands,**kwargs) = @instructions << Instructions::VPTESTNMQ.new(*operands,**kwargs)
        def vptestnmw(*operands,**kwargs) = @instructions << Instructions::VPTESTNMW.new(*operands,**kwargs)
        def vpunpckhbw(*operands,**kwargs) = @instructions << Instructions::VPUNPCKHBW.new(*operands,**kwargs)
        def vpunpckhdq(*operands,**kwargs) = @instructions << Instructions::VPUNPCKHDQ.new(*operands,**kwargs)
        def vpunpckhqdq(*operands,**kwargs) = @instructions << Instructions::VPUNPCKHQDQ.new(*operands,**kwargs)
        def vpunpckhwd(*operands,**kwargs) = @instructions << Instructions::VPUNPCKHWD.new(*operands,**kwargs)
        def vpunpcklbw(*operands,**kwargs) = @instructions << Instructions::VPUNPCKLBW.new(*operands,**kwargs)
        def vpunpckldq(*operands,**kwargs) = @instructions << Instructions::VPUNPCKLDQ.new(*operands,**kwargs)
        def vpunpcklqdq(*operands,**kwargs) = @instructions << Instructions::VPUNPCKLQDQ.new(*operands,**kwargs)
        def vpunpcklwd(*operands,**kwargs) = @instructions << Instructions::VPUNPCKLWD.new(*operands,**kwargs)
        def vpxor(*operands,**kwargs) = @instructions << Instructions::VPXOR.new(*operands,**kwargs)
        def vpxord(*operands,**kwargs) = @instructions << Instructions::VPXORD.new(*operands,**kwargs)
        def vpxorq(*operands,**kwargs) = @instructions << Instructions::VPXORQ.new(*operands,**kwargs)
        def vrangepd(*operands,**kwargs) = @instructions << Instructions::VRANGEPD.new(*operands,**kwargs)
        def vrangeps(*operands,**kwargs) = @instructions << Instructions::VRANGEPS.new(*operands,**kwargs)
        def vrangesd(*operands,**kwargs) = @instructions << Instructions::VRANGESD.new(*operands,**kwargs)
        def vrangess(*operands,**kwargs) = @instructions << Instructions::VRANGESS.new(*operands,**kwargs)
        def vrcp14pd(*operands,**kwargs) = @instructions << Instructions::VRCP14PD.new(*operands,**kwargs)
        def vrcp14ps(*operands,**kwargs) = @instructions << Instructions::VRCP14PS.new(*operands,**kwargs)
        def vrcp14sd(*operands,**kwargs) = @instructions << Instructions::VRCP14SD.new(*operands,**kwargs)
        def vrcp14ss(*operands,**kwargs) = @instructions << Instructions::VRCP14SS.new(*operands,**kwargs)
        def vrcp28pd(*operands,**kwargs) = @instructions << Instructions::VRCP28PD.new(*operands,**kwargs)
        def vrcp28ps(*operands,**kwargs) = @instructions << Instructions::VRCP28PS.new(*operands,**kwargs)
        def vrcp28sd(*operands,**kwargs) = @instructions << Instructions::VRCP28SD.new(*operands,**kwargs)
        def vrcp28ss(*operands,**kwargs) = @instructions << Instructions::VRCP28SS.new(*operands,**kwargs)
        def vrcpph(*operands,**kwargs) = @instructions << Instructions::VRCPPH.new(*operands,**kwargs)
        def vrcpps(*operands,**kwargs) = @instructions << Instructions::VRCPPS.new(*operands,**kwargs)
        def vrcpsh(*operands,**kwargs) = @instructions << Instructions::VRCPSH.new(*operands,**kwargs)
        def vrcpss(*operands,**kwargs) = @instructions << Instructions::VRCPSS.new(*operands,**kwargs)
        def vreducepd(*operands,**kwargs) = @instructions << Instructions::VREDUCEPD.new(*operands,**kwargs)
        def vreduceph(*operands,**kwargs) = @instructions << Instructions::VREDUCEPH.new(*operands,**kwargs)
        def vreduceps(*operands,**kwargs) = @instructions << Instructions::VREDUCEPS.new(*operands,**kwargs)
        def vreducesd(*operands,**kwargs) = @instructions << Instructions::VREDUCESD.new(*operands,**kwargs)
        def vreducesh(*operands,**kwargs) = @instructions << Instructions::VREDUCESH.new(*operands,**kwargs)
        def vreducess(*operands,**kwargs) = @instructions << Instructions::VREDUCESS.new(*operands,**kwargs)
        def vrndscalepd(*operands,**kwargs) = @instructions << Instructions::VRNDSCALEPD.new(*operands,**kwargs)
        def vrndscaleph(*operands,**kwargs) = @instructions << Instructions::VRNDSCALEPH.new(*operands,**kwargs)
        def vrndscaleps(*operands,**kwargs) = @instructions << Instructions::VRNDSCALEPS.new(*operands,**kwargs)
        def vrndscalesd(*operands,**kwargs) = @instructions << Instructions::VRNDSCALESD.new(*operands,**kwargs)
        def vrndscalesh(*operands,**kwargs) = @instructions << Instructions::VRNDSCALESH.new(*operands,**kwargs)
        def vrndscaless(*operands,**kwargs) = @instructions << Instructions::VRNDSCALESS.new(*operands,**kwargs)
        def vroundpd(*operands,**kwargs) = @instructions << Instructions::VROUNDPD.new(*operands,**kwargs)
        def vroundps(*operands,**kwargs) = @instructions << Instructions::VROUNDPS.new(*operands,**kwargs)
        def vroundsd(*operands,**kwargs) = @instructions << Instructions::VROUNDSD.new(*operands,**kwargs)
        def vroundss(*operands,**kwargs) = @instructions << Instructions::VROUNDSS.new(*operands,**kwargs)
        def vrsqrt14pd(*operands,**kwargs) = @instructions << Instructions::VRSQRT14PD.new(*operands,**kwargs)
        def vrsqrt14ps(*operands,**kwargs) = @instructions << Instructions::VRSQRT14PS.new(*operands,**kwargs)
        def vrsqrt14sd(*operands,**kwargs) = @instructions << Instructions::VRSQRT14SD.new(*operands,**kwargs)
        def vrsqrt14ss(*operands,**kwargs) = @instructions << Instructions::VRSQRT14SS.new(*operands,**kwargs)
        def vrsqrt28pd(*operands,**kwargs) = @instructions << Instructions::VRSQRT28PD.new(*operands,**kwargs)
        def vrsqrt28ps(*operands,**kwargs) = @instructions << Instructions::VRSQRT28PS.new(*operands,**kwargs)
        def vrsqrt28sd(*operands,**kwargs) = @instructions << Instructions::VRSQRT28SD.new(*operands,**kwargs)
        def vrsqrt28ss(*operands,**kwargs) = @instructions << Instructions::VRSQRT28SS.new(*operands,**kwargs)
        def vrsqrtph(*operands,**kwargs) = @instructions << Instructions::VRSQRTPH.new(*operands,**kwargs)
        def vrsqrtps(*operands,**kwargs) = @instructions << Instructions::VRSQRTPS.new(*operands,**kwargs)
        def vrsqrtsh(*operands,**kwargs) = @instructions << Instructions::VRSQRTSH.new(*operands,**kwargs)
        def vrsqrtss(*operands,**kwargs) = @instructions << Instructions::VRSQRTSS.new(*operands,**kwargs)
        def vscalefpd(*operands,**kwargs) = @instructions << Instructions::VSCALEFPD.new(*operands,**kwargs)
        def vscalefph(*operands,**kwargs) = @instructions << Instructions::VSCALEFPH.new(*operands,**kwargs)
        def vscalefps(*operands,**kwargs) = @instructions << Instructions::VSCALEFPS.new(*operands,**kwargs)
        def vscalefsd(*operands,**kwargs) = @instructions << Instructions::VSCALEFSD.new(*operands,**kwargs)
        def vscalefsh(*operands,**kwargs) = @instructions << Instructions::VSCALEFSH.new(*operands,**kwargs)
        def vscalefss(*operands,**kwargs) = @instructions << Instructions::VSCALEFSS.new(*operands,**kwargs)
        def vscatterdpd(*operands,**kwargs) = @instructions << Instructions::VSCATTERDPD.new(*operands,**kwargs)
        def vscatterdps(*operands,**kwargs) = @instructions << Instructions::VSCATTERDPS.new(*operands,**kwargs)
        def vscatterpf0dpd(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF0DPD.new(*operands,**kwargs)
        def vscatterpf0dps(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF0DPS.new(*operands,**kwargs)
        def vscatterpf0qpd(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF0QPD.new(*operands,**kwargs)
        def vscatterpf0qps(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF0QPS.new(*operands,**kwargs)
        def vscatterpf1dpd(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF1DPD.new(*operands,**kwargs)
        def vscatterpf1dps(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF1DPS.new(*operands,**kwargs)
        def vscatterpf1qpd(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF1QPD.new(*operands,**kwargs)
        def vscatterpf1qps(*operands,**kwargs) = @instructions << Instructions::VSCATTERPF1QPS.new(*operands,**kwargs)
        def vscatterqpd(*operands,**kwargs) = @instructions << Instructions::VSCATTERQPD.new(*operands,**kwargs)
        def vscatterqps(*operands,**kwargs) = @instructions << Instructions::VSCATTERQPS.new(*operands,**kwargs)
        def vsha512msg1(*operands,**kwargs) = @instructions << Instructions::VSHA512MSG1.new(*operands,**kwargs)
        def vsha512msg2(*operands,**kwargs) = @instructions << Instructions::VSHA512MSG2.new(*operands,**kwargs)
        def vsha512rnds2(*operands,**kwargs) = @instructions << Instructions::VSHA512RNDS2.new(*operands,**kwargs)
        def vshuff32x4(*operands,**kwargs) = @instructions << Instructions::VSHUFF32X4.new(*operands,**kwargs)
        def vshuff64x2(*operands,**kwargs) = @instructions << Instructions::VSHUFF64X2.new(*operands,**kwargs)
        def vshufi32x4(*operands,**kwargs) = @instructions << Instructions::VSHUFI32X4.new(*operands,**kwargs)
        def vshufi64x2(*operands,**kwargs) = @instructions << Instructions::VSHUFI64X2.new(*operands,**kwargs)
        def vshufpd(*operands,**kwargs) = @instructions << Instructions::VSHUFPD.new(*operands,**kwargs)
        def vshufps(*operands,**kwargs) = @instructions << Instructions::VSHUFPS.new(*operands,**kwargs)
        def vsm3msg1(*operands,**kwargs) = @instructions << Instructions::VSM3MSG1.new(*operands,**kwargs)
        def vsm3msg2(*operands,**kwargs) = @instructions << Instructions::VSM3MSG2.new(*operands,**kwargs)
        def vsm3rnds2(*operands,**kwargs) = @instructions << Instructions::VSM3RNDS2.new(*operands,**kwargs)
        def vsm4key4(*operands,**kwargs) = @instructions << Instructions::VSM4KEY4.new(*operands,**kwargs)
        def vsm4rnds4(*operands,**kwargs) = @instructions << Instructions::VSM4RNDS4.new(*operands,**kwargs)
        def vsqrtpd(*operands,**kwargs) = @instructions << Instructions::VSQRTPD.new(*operands,**kwargs)
        def vsqrtph(*operands,**kwargs) = @instructions << Instructions::VSQRTPH.new(*operands,**kwargs)
        def vsqrtps(*operands,**kwargs) = @instructions << Instructions::VSQRTPS.new(*operands,**kwargs)
        def vsqrtsd(*operands,**kwargs) = @instructions << Instructions::VSQRTSD.new(*operands,**kwargs)
        def vsqrtsh(*operands,**kwargs) = @instructions << Instructions::VSQRTSH.new(*operands,**kwargs)
        def vsqrtss(*operands,**kwargs) = @instructions << Instructions::VSQRTSS.new(*operands,**kwargs)
        def vstmxcsr(*operands,**kwargs) = @instructions << Instructions::VSTMXCSR.new(*operands,**kwargs)
        def vsubpd(*operands,**kwargs) = @instructions << Instructions::VSUBPD.new(*operands,**kwargs)
        def vsubph(*operands,**kwargs) = @instructions << Instructions::VSUBPH.new(*operands,**kwargs)
        def vsubps(*operands,**kwargs) = @instructions << Instructions::VSUBPS.new(*operands,**kwargs)
        def vsubsd(*operands,**kwargs) = @instructions << Instructions::VSUBSD.new(*operands,**kwargs)
        def vsubsh(*operands,**kwargs) = @instructions << Instructions::VSUBSH.new(*operands,**kwargs)
        def vsubss(*operands,**kwargs) = @instructions << Instructions::VSUBSS.new(*operands,**kwargs)
        def vtestpd(*operands,**kwargs) = @instructions << Instructions::VTESTPD.new(*operands,**kwargs)
        def vtestps(*operands,**kwargs) = @instructions << Instructions::VTESTPS.new(*operands,**kwargs)
        def vucomisd(*operands,**kwargs) = @instructions << Instructions::VUCOMISD.new(*operands,**kwargs)
        def vucomish(*operands,**kwargs) = @instructions << Instructions::VUCOMISH.new(*operands,**kwargs)
        def vucomiss(*operands,**kwargs) = @instructions << Instructions::VUCOMISS.new(*operands,**kwargs)
        def vunpckhpd(*operands,**kwargs) = @instructions << Instructions::VUNPCKHPD.new(*operands,**kwargs)
        def vunpckhps(*operands,**kwargs) = @instructions << Instructions::VUNPCKHPS.new(*operands,**kwargs)
        def vunpcklpd(*operands,**kwargs) = @instructions << Instructions::VUNPCKLPD.new(*operands,**kwargs)
        def vunpcklps(*operands,**kwargs) = @instructions << Instructions::VUNPCKLPS.new(*operands,**kwargs)
        def vxorpd(*operands,**kwargs) = @instructions << Instructions::VXORPD.new(*operands,**kwargs)
        def vxorps(*operands,**kwargs) = @instructions << Instructions::VXORPS.new(*operands,**kwargs)
        def vzeroall(*operands,**kwargs) = @instructions << Instructions::VZEROALL.new(*operands,**kwargs)
        def vzeroupper(*operands,**kwargs) = @instructions << Instructions::VZEROUPPER.new(*operands,**kwargs)
        def wrfsbase(*operands,**kwargs) = @instructions << Instructions::WRFSBASE.new(*operands,**kwargs)
        def wrgsbase(*operands,**kwargs) = @instructions << Instructions::WRGSBASE.new(*operands,**kwargs)
        def xadd(*operands,**kwargs) = @instructions << Instructions::XADD.new(*operands,**kwargs)
        def xchg(*operands,**kwargs) = @instructions << Instructions::XCHG.new(*operands,**kwargs)
        def xgetbv(*operands,**kwargs) = @instructions << Instructions::XGETBV.new(*operands,**kwargs)
        def xlatb(*operands,**kwargs) = @instructions << Instructions::XLATB.new(*operands,**kwargs)
        def xor(*operands,**kwargs) = @instructions << Instructions::XOR.new(*operands,**kwargs)
        def xorpd(*operands,**kwargs) = @instructions << Instructions::XORPD.new(*operands,**kwargs)
        def xorps(*operands,**kwargs) = @instructions << Instructions::XORPS.new(*operands,**kwargs)
      end
    end
  end
end
