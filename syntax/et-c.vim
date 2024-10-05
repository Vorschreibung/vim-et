" Vim syntax file
" Language:    et-c
" Homepage:    https://github.com/Rafflesiaceae/vim-et
" Author:      Vorschreibung
" Last Change: 2024-10-05

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim


" just reuse c syntax
:runtime! syntax/c.vim


let &cpo = s:cpo_save
unlet s:cpo_save

" vim: et sw=2 sts=2
