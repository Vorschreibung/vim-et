" Vim syntax file
" Language:    et-mapscript
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
syn keyword states default invisible underconstruction

syn keyword events spawn death buildstart decayed built
" syn match specialEvent "trigger\s\+\([^\s]\+\)\s\+\([^\s]\+\)"
" syntax match EmphasisMarker "_" contained
" syn match specialEvent "trigger\s\+"
" syn region specialEvent	start="//" skip="\\$" end="$" keepend
" syn match specialEvent "trigger"

" syn region  singleLineComment	start="//" skip="\\$" end="$" keepend
" hi link singleLineComment
syn match eventTrigger "\zstrigger\ze\s\+\(\S\+\)$"
syn match cmdTrigger "\zstrigger\ze\s\+\(\S\+\)\s\+\(\S\+\)$"
syn match digits "\<\d\+\>"

syn region  string	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+

syn keyword ifop
            \ inc
            \ abort_if_less_than
            \ abort_if_greater_than
            \ abort_if_not_equal
            \ abort_if_equal
            \ set
            \ random
            \ bitset
            \ bitreset
            \ abort_if_bitset
            \ abort_if_not_bitset
            \ trigger_if_equal
            \ wait_while_equal

syn match cmdRemove "^\s\+remove$"
            " \ trigger
            " \ remove
syn keyword cmds
            \ gotomarker
            \ playsound
            \ playanim
            \ wait
            \ alertentity
            \ togglespeaker
            \ disablespeaker
            \ enablespeaker
            \ accum
            \ globalaccum
            \ print
            \ faceangles
            \ resetscript
            \ attachtotag
            \ halt
            \ stopsound
            \ entityscriptname
            \ wm_axis_respawntime
            \ wm_allied_respawntime
            \ wm_number_of_objectives
            \ wm_setwinner
            \ wm_set_defending_team
            \ wm_announce
            \ wm_teamvoiceannounce
            \ wm_addteamvoiceannounce
            \ wm_removeteamvoiceannounce
            \ wm_announce_icon
            \ wm_endround
            \ wm_set_round_timelimit
            \ wm_voiceannounce
            \ wm_objective_status
            \ wm_set_main_objective
            \ setstate
            \ followspline
            \ followpath
            \ abortmove
            \ setspeed
            \ setrotation
            \ stoprotation
            \ startanimation
            \ attatchtotrain
            \ freezeanimation
            \ unfreezeanimation
            \ remapshader
            \ remapshaderflush
            \ changemodel
            \ setchargetimefactor
            \ setdamagable
            \ repairmg42
            \ sethqstatus
            \ printaccum
            \ printglobalaccum
            \ cvar
            \ abortifwarmup
            \ abortifnotsingleplayer
            \ mu_start
            \ mu_play
            \ mu_stop
            \ mu_queue
            \ mu_fade
            \ setdebuglevel
            \ setposition
            \ setautospawn
            \ setmodelfrombrushmodel
            \ fadeallsounds
            \ construct
            \ spawnrubble
            \ setglobalfog
            \ allowtankexit
            \ allowtankenter
            \ settankammo
            \ addtankammo
            \ kill
            \ disablemessage
            \ set
            \ create
            \ delete
            \ constructible_class
            \ constructible_chargebarreq
            \ constructible_constructxpbonus
            \ constructible_destructxpbonus
            \ constructible_health
            \ constructible_weaponclass
            \ constructible_duration

" Highlighting {{{1
hi def states                 ctermfg=cyan
hi def events                 ctermfg=magenta
hi def eventTrigger           ctermfg=magenta
hi def cmdTrigger             ctermfg=yellow
hi def digits                 ctermfg=lightcyan
hi def string                 ctermfg=green
hi def ifop                   ctermfg=blue
hi def cmdRemove              ctermfg=yellow
hi def cmds                   ctermfg=yellow

" Comments {{{1
syn region rMultilineComment matchgroup=multiLineComment start="/\*" end="\*/" extend
hi link multiLineComment Comment
hi link rMultilineComment Comment

syn region  singleLineComment	start="//" skip="\\$" end="$" keepend
hi link singleLineComment Comment


let &cpo = s:cpo_save
unlet s:cpo_save

" vim: et sw=2 sts=2
