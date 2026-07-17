let s:black  = '#2C323B'
let s:dark1  = '#3c3836'
let s:dark2  = '#242a32'
let s:gray   = '#928374'
let s:light1 = '#ebdbb2'
let s:light3 = '#bdae93'
let s:red    = '#fb4934'
let s:green  = '#98C379'
let s:yellow = '#fabd2f'
let s:blue   = '#83a598'
let s:purple = '#C678DD'
let s:orange = '#fe8019'

let s:p = {
      \ 'normal': {
      \   'left':   [ [ s:black, s:green ],  [ s:light1, s:dark2 ] ],
      \   'right':  [ [ s:black, s:green ],  [ s:light3, s:dark1 ] ],
      \   'middle': [ [ s:light3, s:black ] ],
      \   'warning': [ [ s:light1, s:orange ] ],
      \   'error':   [ [ s:light1, s:red ] ],
      \ },
      \ 'insert': {
      \   'left':   [ [ s:black, s:blue ],   [ s:light1, s:dark2 ] ],
      \   'right':  [ [ s:black, s:blue ],   [ s:light3, s:dark1 ] ],
      \   'middle': [ [ s:light3, s:black ] ],
      \ },
      \ 'visual': {
      \   'left':   [ [ s:black, s:purple ], [ s:light1, s:dark2 ] ],
      \   'right':  [ [ s:black, s:purple ], [ s:light3, s:dark1 ] ],
      \   'middle': [ [ s:light3, s:black ] ],
      \ },
      \ 'replace': {
      \   'left':   [ [ s:light1, s:red ],    [ s:light1, s:dark2 ] ],
      \   'right':  [ [ s:light1, s:red ],    [ s:light3, s:dark1 ] ],
      \   'middle': [ [ s:light3, s:black ] ],
      \ },
      \ 'inactive': {
      \   'left':   [ [ s:gray, s:dark2 ] ],
      \   'right':  [ [ s:gray, s:dark2 ] ],
      \   'middle': [ [ s:gray, s:black ] ],
      \ },
      \ 'tabline': {
      \   'left':   [ [ s:light3, s:dark2 ] ],
      \   'right':  [ [ s:light3, s:dark2 ] ],
      \   'middle': [ [ s:gray, s:dark2 ] ],
      \   'tabsel': [ [ s:black, s:blue ] ],
      \ },
      \ }

let g:lightline#colorscheme#deus#palette = lightline#colorscheme#flatten(s:p)
