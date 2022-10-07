syn case ignore

" Common 6502 Assembly instructions
syn keyword az6Instruction adc and asl bcc bcs beq bit bmi mne bpl brk
syn keyword az6Instruction bvc bvs clc cld cli clv cmp cpx cpy dec dex
syn keyword az6Instruction dey eor inc inx iny jmp jsr lda ldx ldy lsr
syn keyword az6Instruction nop ora pha php pla plp rol ror rti rts sbc
syn keyword az6Instruction sec sed sei sta stx sty tax tay tsx txa txs
syn keyword az6Instruction tya

" Any other stuff
syn match az6Identifier		"[a-z_][a-z0-9_]*"

"Labels
syn match az6Label		"[a-z_\.][a-z0-9_\.]*:?"

" PreProcessor commands
syn match az6PreProc	"@\+[0-9]\+"
syn match az6PreProc	"@\+org"
syn match az6PreProc	"@\+here"
syn match az6PreProc	"@\+macro"
syn match az6PreProc	"@\+endmacro"
syn match az6PreProc	"@\+struct"
syn match az6PreProc	"@\+endstruct"
syn match az6PreProc	"@\+sizeof"
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
syn match az6PreProc	"@\+metaget"
syn match az6PreProc	"@\+meta"
syn match az6PreProc	"@\+endmeta"
syn match az6PreProc	"@\+count"
syn match az6PreProc	"@\+each"
syn match az6PreProc	"@\+endeach"
syn match az6PreProc	"@\+string"
syn match az6PreProc	"@\+label"
syn match az6PreProc	"@\+hex"
syn match az6PreProc	"@\+bin"
syn match az6PreProc	"@\+parse"
syn match az6PreProc	"@\+segment"
syn match az6PreProc	"@\+if"
syn match az6PreProc	"@\+endif"
syn match az6Include	"@\+include"
syn match az6Include	"@\+incbin"

" Common strings
syn match az6String		"\".*\""
syn match az6String		"\'.*\'"

" Numbers
syn match az6Number		"[0-9]\+"
syn match az6Number		"\$[0-9a-fA-F]\+"
syn match az6Number		"%[01]\+"
" Comments
syn match az6Comment	";.*"

syn case match

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link az6Section		Special
hi def link az6Label		Label
hi def link az6Comment		Comment
hi def link az6Instruction	Statement
hi def link az6Include		Include
hi def link az6PreProc		PreProc
hi def link az6Number		Number
hi def link az6String		String

let b:current_syntax = "az6"
set ts=8
set sw=8
set noet
