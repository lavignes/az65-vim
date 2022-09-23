syn case ignore

" Common Z80 Assembly instructions
syn keyword az8Instruction adc add and bit ccf cp cpd cpdr cpi cpir cpl
syn keyword az8Instruction daa di djnz ei exx halt im in
syn keyword az8Instruction ind ini indr inir jp jr ld ldd lddr ldi ldir
syn keyword az8Instruction neg nop or otdr otir out outd outi
syn keyword az8Instruction res rl rla rlc rlca rld
syn keyword az8Instruction rr rra rrc rrca rrd sbc scf set sla sll sra
syn keyword az8Instruction srl sub xor
" syn keyword az8Instruction push pop call ret reti retn inc dec ex rst

" Any other stuff
syn match az8Identifier		"[a-z_][a-z0-9_]*"

" Instructions changing stack
syn keyword az8SpecInst push pop call ret reti retn rst
syn match az8Instruction "\<inc\>"
syn match az8Instruction "\<dec\>"
syn match az8Instruction "\<ex\>"
syn match az8SpecInst "\<inc\s\+sp\>"me=s+3
syn match az8SpecInst "\<dec\s\+sp\>"me=s+3
syn match az8SpecInst "\<ex\s\+(\s*sp\s*)\s*,\s*hl\>"me=s+2

"Labels
syn match az8Label		"[a-z_\.][a-z0-9_\.]*:?"

" PreProcessor commands
syn match az8PreProc	"@org"
syn match az8PreProc	"@here"
syn match az8PreProc	"@macro"
syn match az8PreProc	"@endmacro"
syn match az8PreProc	"@struct"
syn match az8PreProc	"@endstruct"
syn match az8PreProc	"@align"
syn match az8PreProc	"@defn"
syn match az8PreProc	"@redefn"
syn match az8PreProc	"@defl"
syn match az8PreProc	"@redefl"
syn match az8PreProc    "@undef"
syn match az8PreProc    "@isdef"
syn match az8PreProc	"@db"
syn match az8PreProc	"@dw"
syn match az8PreProc	"@ds"
syn match az8PreProc	"@echo"
syn match az8PreProc	"@die"
syn match az8PreProc	"@assert"
syn match az8PreProc	"@meta"
syn match az8PreProc	"@endmeta"
syn match az8PreProc	"@getmeta"
syn match az8PreProc	"@count"
syn match az8PreProc	"@each"
syn match az8PreProc	"@endeach"
syn match az8PreProc	"@string"
syn match az8PreProc	"@label"
syn match az8PreProc	"@hex"
syn match az8PreProc	"@bin"
syn match az8PreProc	"@parse"
syn match az8PreProc	"@segment"
syn match az8Include	"@include"
syn match az8Include	"@incbin"

" Common strings
syn match az8String		"\".*\""
syn match az8String		"\'.*\'"

" Numbers
syn match az8Number		"[0-9]\+"
syn match az8Number		"\$[0-9a-fA-F]\+"
syn match az8Number		"%[01]\+"
" Comments
syn match az8Comment	";.*"

syn case match

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link az8Section		Special
hi def link az8Label		Label
hi def link az8Comment		Comment
hi def link az8Instruction	Statement
hi def link az8SpecInst		Statement
hi def link az8Include		Include
hi def link az8PreCondit	PreCondit
hi def link az8PreProc		PreProc
hi def link az8Number		Number
hi def link az8String		String

let b:current_syntax = "az8"
set ts=8
set sw=8
set noet
