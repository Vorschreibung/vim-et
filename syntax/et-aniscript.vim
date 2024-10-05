" Vim syntax file
" Language:    et-aniscript
" Homepage:    https://github.com/Rafflesiaceae/vim-et
" Author:      Vorschreibung
" Last Change: 2024-10-05

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

let b:current_syntax = "et-aniscript"


" Keywords / Match {{{1
syn keyword operators AND NOT MINUS
syn keyword conditions default weapons gen_bitflag movetype firing fast_reload enemy_weapon impact_point stunned
syn keyword noop NOOP
syn keyword partsBoth both
syn keyword partsLegs legs
syn keyword partsTorso torso

syntax match mountedMG42 "\<mounted MG42\>"
syntax match setWeapons "\<set weapons\>"
syntax match setMovetype "\<set movetype\>"

" Highlighting {{{1

hi def operators       ctermfg=yellow
hi def conditions      ctermfg=magenta
hi def noop            ctermfg=red
hi def partsBoth       ctermfg=green
hi def partsLegs       ctermfg=blue
hi def partsTorso      ctermfg=cyan

hi def mountedMG42     ctermfg=magenta
hi def setWeapons      ctermfg=red
hi def setMovetype     ctermfg=green

" Comments {{{1
syn region rMultilineComment matchgroup=multiLineComment start="/\*" end="\*/" extend
hi link multiLineComment Comment
hi link rMultilineComment Comment

syn region  singleLineComment	start="//" skip="\\$" end="$" keepend
hi link singleLineComment Comment


let &cpo = s:cpo_save
unlet s:cpo_save

" vim: et sw=2 sts=2
