syn case ignore
syn sync fromstart

" Common Z80 Assembly instructions
syn keyword z80Inst adc add and bit call ccf cp cpd cpdr cpi cpir cpl
syn keyword z80Inst daa dec di djnz ei ex exx halt im in
syn keyword z80Inst inc ind ini indr inir jp jr ld ldd lddr ldi ldir
syn keyword z80Inst neg nop or otdr otir out outd outi push pop
syn keyword z80Inst res ret reti retn rl rla rlc rlca rld
syn keyword z80Inst rr rra rrc rrca rrd rst sbc scf set sla sll sra
syn keyword z80Inst srl sub xor

" Grab the condition too
syn match z80Inst "\s\+jp\s\+n\=[covz]\>" "Match Z C O V NZ NC NO NV
syn match z80Inst "\s\+jp\s\+p[elo]\=\>" "Match P PE PO PL
syn match z80Inst "\s\+jp\s\+mi\=\>" "Match M MI
syn match z80Inst "\s\+jp\s\+eq\>" "Match EQ
syn match z80Inst "\s\+jp\s\+[gn]e\>" "Match NE GE
syn match z80Inst "\s\+jp\s\+lt\>" "Match LT
syn match z80Inst "\s\+jp\s\+sn\=f\>" "Match SF SNF

syn match z80Inst "\s\+jr\s\+n\=[zc]\>" "Match Z C NZ NC
syn match z80Inst "\s\+jr\s\+eq\>" "Match EQ
syn match z80Inst "\s\+jr\s\+[gn]e\>" "Match NE GE
syn match z80Inst "\s\+jr\s\+lt\>" "Match LT

syn match z80Inst "\s\+call\s\+n\=[covz]\>" "Match Z C O V NZ NC NO NV
syn match z80Inst "\s\+call\s\+p[elo]\=\>" "Match P PE PO PL
syn match z80Inst "\s\+call\s\+mi\=\>" "Match M MI
syn match z80Inst "\s\+call\s\+eq\>" "Match EQ
syn match z80Inst "\s\+call\s\+[gn]e\>" "Match NE GE
syn match z80Inst "\s\+call\s\+lt\>" "Match LT
syn match z80Inst "\s\+call\s\+sn\=f\>" "Match SF SNF

syn match z80Inst "\s\+ret\s\+n\=[covz]\>" "Match Z C O V NZ NC NO NV
syn match z80Inst "\s\+ret\s\+p[elo]\=\>" "Match P PE PO PL
syn match z80Inst "\s\+ret\s\+mi\=\>" "Match M MI
syn match z80Inst "\s\+ret\s\+eq\>" "Match EQ
syn match z80Inst "\s\+ret\s\+[gn]e\>" "Match NE GE
syn match z80Inst "\s\+ret\s\+lt\>" "Match LT
syn match z80Inst "\s\+ret\s\+sn\=f\>" "Match SF SNF

" Registers
syn keyword z80Reg af af' bc de hl ix ixh ixl iy iyh iyl
syn keyword z80Reg sp a b c d e f h i l r

" PreProcessor commands
syn match z80PreProc	"@\+[0-9]\+"
syn match z80PreProc	"@\+org"
syn match z80PreProc	"@\+here"
syn match z80PreProc	"@\+macro"
syn match z80PreProc	"@\+endmacro"
syn match z80PreProc	"@\+struct"
syn match z80PreProc	"@\+endstruct"
syn match z80PreProc	"@\+align"
syn match z80PreProc	"@\+defn"
syn match z80PreProc	"@\+redefn"
syn match z80PreProc	"@\+defl"
syn match z80PreProc	"@\+redefl"
syn match z80PreProc    "@\+undef"
syn match z80PreProc    "@\+isdef"
syn match z80PreProc	"@\+db"
syn match z80PreProc	"@\+dw"
syn match z80PreProc	"@\+ds"
syn match z80PreProc	"@\+echo"
syn match z80PreProc	"@\+die"
syn match z80PreProc	"@\+assert"
syn match z80PreProc	"@\+meta"
syn match z80PreProc	"@\+endmeta"
syn match z80PreProc	"@\+getmeta"
syn match z80PreProc	"@\+count"
syn match z80PreProc	"@\+each"
syn match z80PreProc	"@\+endeach"
syn match z80PreProc	"@\+string"
syn match z80PreProc	"@\+label"
syn match z80PreProc	"@\+hex"
syn match z80PreProc	"@\+bin"
syn match z80PreProc	"@\+parse"
syn match z80PreProc	"@\+segment"
syn match z80PreProc	"@\+include"
syn match z80PreProc	"@\+incbin"
syn match z80PreProc    "@\+if"
syn match z80PreProc    "@\+endif"

" Strings
syn region z80String start=/"/ skip=/\\./ end=/"/
syn region z80String start=/'/ skip=/\\./ end=/'/

" Labels
syn match z80Lbl "[A-Za-z_.?][A-Za-z_.?0-9]*:\="
syn region z80Lbl2 start="(" end=")" oneline contains=z80Number,z80Lbl,z80Lbl2,z80Other

" Operators
syn match z80Other "[~+\-*/%^&=!<>]"

" Numbers
syn match z80Number "\<\d\+\>"
syn match z80Number "\<%[01]\+\>"
syn match z80Number "\$[0-9a-fA-F]\+"

" Indirect register access
syn region z80Reg start=/(ix/ end=/)/ keepend oneline contains=z80Lbl,z80Number,z80Reg,z80Other
syn region z80Reg start=/(iy/ end=/)/ keepend oneline contains=z80Lbl,z80Number,z80Reg,z80Other
syn match z80Reg "(b\=c)"
syn match z80Reg "(de)"
syn match z80Reg "(hl)"
syn match z80Reg "(sp)"

" Comments
syn keyword	z80Todo		contained TODO FIXME XXX
syn match z80Comment ";.*$" contains=z80Todo

hi def link z80Reg Constant
hi def link z80Lbl Type
hi def link z80Lbl2 Type
hi def link z80Comment Comment
hi def link z80Comment2 Comment
hi def link z80Inst Statement
hi def link z80Include Include
hi def link z80PreProc PreProc
hi def link z80Number Number
hi def link z80String String
hi def link z80Other Operator
hi def link z80Todo Todo

let b:current_syntax = "az8"
set ts=8
set sw=8
set noet
