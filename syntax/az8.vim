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
syn match az6PreProc	"@\+[0-9]\+"
syn match az6PreProc	"@\+org"
syn match az6PreProc	"@\+here"
syn match az6PreProc	"@\+macro"
syn match az6PreProc	"@\+endmacro"
syn match az6PreProc	"@\+struct"
syn match az6PreProc	"@\+endstruct"
syn match az6PreProc	"@\+align"
syn match az6PreProc	"@\+defn"
syn match az6PreProc	"@\+redefn"
syn match az6PreProc	"@\+defl"
syn match az6PreProc	"@\+redefl"
syn match az6PreProc    "@\+undef"
syn match az6PreProc    "@\+isdef"
syn match az6PreProc	"@\+db"
syn match az6PreProc	"@\+dw"
syn match az6PreProc	"@\+ds"
syn match az6PreProc	"@\+echo"
syn match az6PreProc	"@\+die"
syn match az6PreProc	"@\+assert"
syn match az6PreProc	"@\+meta"
syn match az6PreProc	"@\+endmeta"
syn match az6PreProc	"@\+getmeta"
syn match az6PreProc	"@\+count"
syn match az6PreProc	"@\+each"
syn match az6PreProc	"@\+endeach"
syn match az6PreProc	"@\+string"
syn match az6PreProc	"@\+label"
syn match az6PreProc	"@\+hex"
syn match az6PreProc	"@\+bin"
syn match az6PreProc	"@\+parse"
syn match az6PreProc	"@\+segment"
syn match az6Include	"@\+include"
syn match az6Include	"@\+incbin"

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
