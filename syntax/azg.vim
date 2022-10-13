syn case ignore
syn sync fromstart

" Common Z80 Assembly instructions
syn keyword gbz80Inst adc add and bit call ccf cp cpl
syn keyword gbz80Inst daa dec di djnz ei halt stop
syn keyword gbz80Inst inc jp jr ld ldh
syn keyword gbz80Inst nop or push pop
syn keyword gbz80Inst res ret reti rl rla rlc rlca
syn keyword gbz80Inst rr rra rrc rrca rst sbc scf set sla sra swap
syn keyword gbz80Inst srl sub xor

" Grab the condition too
syn match gbz80Inst "\s\+jp\s\+n\=[cz]\>" "Match Z C NZ NC
syn match gbz80Inst "\s\+jr\s\+n\=[cz]\>" "Match Z C NZ NC
syn match gbz80Inst "\s\+call\s\+n\=[cz]\>" "Match Z C NZ NC
syn match gbz80Inst "\s\+ret\s\+n\=[cz]\>" "Match Z C NZ NC

" Registers
syn keyword gbz80Reg af bc de hl
syn keyword gbz80Reg sp a b c d e f h l

" PreProcessor commands
syn match gbz80PreProc	"@\+[0-9]\+"
syn match gbz80PreProc	"@\+org"
syn match gbz80PreProc	"@\+here"
syn match gbz80PreProc	"@\+macro"
syn match gbz80PreProc	"@\+endmacro"
syn match gbz80PreProc	"@\+struct"
syn match gbz80PreProc	"@\+endstruct"
syn match gbz80PreProc	"@\+sizeof"
syn match gbz80PreProc	"@\+align"
syn match gbz80PreProc	"@\+defn"
syn match gbz80PreProc	"@\+redefn"
syn match gbz80PreProc	"@\+defl"
syn match gbz80PreProc	"@\+redefl"
syn match gbz80PreProc  "@\+undef"
syn match gbz80PreProc  "@\+isdef"
syn match gbz80PreProc	"@\+db"
syn match gbz80PreProc	"@\+dw"
syn match gbz80PreProc	"@\+ds"
syn match gbz80PreProc	"@\+echo"
syn match gbz80PreProc	"@\+die"
syn match gbz80PreProc	"@\+assert"
syn match gbz80PreProc	"@\+meta"
syn match gbz80PreProc	"@\+endmeta"
syn match gbz80PreProc	"@\+getmeta"
syn match gbz80PreProc	"@\+count"
syn match gbz80PreProc	"@\+each"
syn match gbz80PreProc	"@\+endeach"
syn match gbz80PreProc	"@\+entropy"
syn match gbz80PreProc	"@\+string"
syn match gbz80PreProc	"@\+label"
syn match gbz80PreProc	"@\+hex"
syn match gbz80PreProc	"@\+bin"
syn match gbz80PreProc	"@\+parse"
syn match gbz80PreProc	"@\+segment"
syn match gbz80PreProc	"@\+include"
syn match gbz80PreProc	"@\+incbin"
syn match gbz80PreProc	"@\+if"
syn match gbz80PreProc	"@\+endif"

" Strings
syn region gbz80String start=/"/ skip=/\\./ end=/"/
syn region gbz80String start=/'/ skip=/\\./ end=/'/

" Labels
syn match gbz80Lbl "[A-Za-z_.?][A-Za-z_.?0-9]*:\="
syn region gbz80Lbl2 start="(" end=")" oneline contains=gbz80Number,gbz80Lbl,gbz80Lbl2,gbz80Other

" Operators
syn match gbz80Other "[~+\-*/%^&=!<>]"

" Numbers
syn match gbz80Number "\<\d\+\>"
syn match gbz80Number "\<%[01]\+\>"
syn match gbz80Number "\$[0-9a-fA-F]\+"

" Indirect register access
syn region gbz80Reg start=/(sp/ end=/)/ keepend oneline contains=gbz80Lbl,gbz80Number,gbz80Reg,gbz80Other
syn match gbz80Reg "(b\=c)"
syn match gbz80Reg "(de)"
syn match gbz80Reg "(hl)"
syn match gbz80Reg "(hl+)"
syn match gbz80Reg "(hl-)"
syn match gbz80Reg "(sp)"

" Comments
syn keyword	gbz80Todo		contained TODO FIXME XXX
syn match gbz80Comment ";.*$" contains=gbz80Todo

hi def link gbz80Reg Constant
hi def link gbz80Lbl Type
hi def link gbz80Lbl2 Type
hi def link gbz80Comment Comment
hi def link gbz80Comment2 Comment
hi def link gbz80Inst Statement
hi def link gbz80Include Include
hi def link gbz80PreProc PreProc
hi def link gbz80Number Number
hi def link gbz80String String
hi def link gbz80Other Operator
hi def link gbz80Todo Todo

let b:current_syntax = "azg"
set ts=8
set sw=8
set noet
