let g:airline#themes#deus#palette = {}

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

let s:IA = [s:gray, s:dark2, 245, 239]
let s:N1 = [s:black, s:green, 235, 142]
let s:N2 = [s:light1, s:dark2, 223, 239]
let s:N3 = [s:light3, s:dark1, 248, 237]
let s:I1 = [s:black, s:blue, 235, 109]
let s:I2 = [s:light1, s:dark2, 223, 239]
let s:I3 = [s:N3[0], s:N3[1], s:N3[2], s:N3[3]]
let s:V1 = [s:black, s:purple, 235, 175]
let s:V2 = [s:light1, s:dark2, 223, 239]
let s:V3 = [s:N3[0], s:N3[1], s:N3[2], s:N3[3]]
let s:RE = [s:black, s:red, 235, 167]
let s:YE = [s:light1, s:orange, 223, 208]

let g:airline#themes#deus#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#deus#palette.normal_modified = {
      \ 'airline_c': [s:orange, s:dark2, 208, 239, ''],
      \ }
let g:airline#themes#deus#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#deus#palette.insert_modified = {
      \ 'airline_c': [s:orange, s:dark2, 208, 239, ''],
      \ }
let g:airline#themes#deus#palette.replace = copy(g:airline#themes#deus#palette.insert)
let g:airline#themes#deus#palette.replace.airline_a = [s:RE[0], s:RE[1], s:RE[2], s:RE[3], '']
let g:airline#themes#deus#palette.insert_modified = {
      \ 'airline_c': [s:orange, s:dark2, 208, 239, ''],
      \ }
let g:airline#themes#deus#palette.visual = copy(g:airline#themes#deus#palette.normal)
let g:airline#themes#deus#palette.visual.airline_a = [s:V1[0], s:V1[1], s:V1[2], s:V1[3], '']
let g:airline#themes#deus#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let g:airline#themes#deus#palette.normal.airline_warning = s:YE
let g:airline#themes#deus#palette.insert.airline_warning = s:YE
let g:airline#themes#deus#palette.visual.airline_warning = s:YE
let g:airline#themes#deus#palette.replace.airline_warning = s:YE
let g:airline#themes#deus#palette.normal.airline_error = s:RE
let g:airline#themes#deus#palette.insert.airline_error = s:RE
let g:airline#themes#deus#palette.visual.airline_error = s:RE
let g:airline#themes#deus#palette.replace.airline_error = s:RE
