hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'deus'

if !has('gui_running') && &t_Co != 256
  finish
endif

let s:black       = ['#2C323B', 235]
let s:gray_dark   = ['#3c3836', 237]
let s:gray_darker = ['#242a32', 239]
let s:gray        = ['#928374', 245]
let s:gray_light  = ['#c0c0c0', 251]
let s:white       = ['#ffffff', 15]

let s:dsdark0  = ['#2C323B', 235]
let s:dsdark1  = ['#3c3836', 237]
let s:dsdark2  = ['#242a32', 239]
let s:dsdark3  = ['#665c54', 241]
let s:dsdark4  = ['#7c6f64', 243]
let s:dsColumn = ['#35312f', 239]

let s:dslight0 = ['#d2d2d2', 229]
let s:dslight1 = ['#ebdbb2', 223]
let s:dslight2 = ['#d5c4a1', 250]
let s:dslight3 = ['#bdae93', 248]
let s:dslight4 = ['#a89984', 246]

let s:tan       = ['#f4c069', 180]
let s:red       = ['#fb4934', 167]
let s:red_dark  = ['#a80000', 124]
let s:red_light = ['#ff4090', 203]
let s:orange       = ['#fe8019', 208]
let s:orange_light = ['#f0af00', 214]
let s:yellow = ['#fabd2f', 220]
let s:green_dark  = ['#50de60', 83]
let s:green       = ['#98C379', 142]
let s:green_light = ['#a0ff70', 72]
let s:blue  = ['#83a598', 109]
let s:cyan  = ['#8ec07c', 108]
let s:ice   = ['#49a0f0', 63]
let s:teal     = ['#00d0c0', 38]
let s:turqoise = ['#2bff99', 33]
let s:magenta       = ['#d5508f', 126]
let s:magenta_dark  = ['#bb0099', 126]
let s:pink          = ['#ffa6ff', 162]
let s:pink_light    = ['#ffb7b7', 38]
let s:purple        = ['#C678DD', 175]
let s:purple_light  = ['#A8D5E2', 63]
let s:magenta_light = ['#BD93BD', 63]
let s:navyblue      = ['#6699CC', 63]

function! s:HL(group, fg, ...)
  let fg = a:fg
  if a:0 >= 1
    let bg = a:1
  else
    let bg = ['NONE', 'NONE']
  endif
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE'
  endif
  let histring = 'hi ' . a:group
  if type(fg) == type([])
    let histring .= ' guifg=' . fg[0] . ' ctermfg=' . fg[1]
  else
    let histring .= ' guifg=' . fg . ' ctermfg=NONE'
  endif
  if type(bg) == type([])
    let histring .= ' guibg=' . bg[0] . ' ctermbg=' . bg[1]
  else
    let histring .= ' guibg=' . bg . ' ctermbg=NONE'
  endif
  let histring .= ' gui=' . emstr . ' cterm=' . emstr
  execute histring
endfunction

function! s:Link(from, to)
  execute 'hi! link ' . a:from . ' ' . a:to
endfunction

set background=dark

call s:HL('Normal', s:dslight1, s:black)

" Editor UI
call s:HL('ColorColumn',   ['NONE', 'NONE'], s:dsColumn)
call s:HL('Conceal',       s:blue)
call s:HL('Cursor',        ['NONE', 'NONE'], ['NONE', 'NONE'], 'inverse')
call s:HL('CursorColumn',  ['NONE', 'NONE'], s:gray_dark)
call s:HL('CursorLine',    ['NONE', 'NONE'], s:gray_darker)
call s:HL('CursorLineNr',  s:dslight1, s:gray_darker)
call s:HL('Directory',     s:ice, ['NONE', 'NONE'], 'bold')
call s:HL('EndOfBuffer',   s:gray_darker)
call s:HL('ErrorMsg',      s:red, ['NONE', 'NONE'], 'bold')
call s:HL('FoldColumn',    s:gray, s:gray_darker, 'bold')
call s:HL('Folded',        s:magenta, s:dsdark2, 'italic')
call s:HL('HintMsg',       s:gray, ['NONE', 'NONE'], 'italic')
call s:HL('IncSearch',     ['NONE', 'NONE'], ['NONE', 'NONE'], 'inverse')
call s:HL('InfoMsg',       s:green)
call s:HL('LineNr',        s:gray)
call s:HL('MatchParen',    s:green, s:yellow, 'bold,underline')
call s:HL('ModeMsg',       s:yellow)
call s:HL('MoreMsg',       s:yellow)
call s:HL('NonText',       s:gray_darker)
call s:HL('Pmenu',         s:dslight1, s:dsdark2)
call s:HL('PmenuSbar',     ['NONE', 'NONE'], s:dsdark2)
call s:HL('PmenuSel',      s:dsdark1, s:blue, 'bold')
call s:HL('PmenuThumb',    ['NONE', 'NONE'], s:dsdark4)
call s:HL('Question',      s:orange_light, ['NONE', 'NONE'], 'underline')
call s:HL('QuickFixLine',  ['NONE', 'NONE'], s:gray_darker)
call s:HL('Search',        s:dsdark2, s:yellow)
call s:HL('SignColumn',    ['NONE', 'NONE'], ['NONE', 'NONE'])
call s:HL('SpecialKey',    s:orange)
call s:HL('SpellBad',      ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:red)
call s:HL('SpellCap',      ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:yellow)
call s:HL('SpellLocal',    ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:green)
call s:HL('SpellRare',     ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:orange)
call s:HL('StatusLine',    s:green_light, s:gray_darker)
call s:HL('StatusLineNC',  s:gray, s:gray_darker)
call s:HL('StatusLineTerm',    s:green_light, s:black)
call s:HL('StatusLineTermNC',  s:gray, s:gray_darker)
call s:HL('TabLine',       s:dsdark4, s:gray_darker)
call s:HL('TabLineFill',   s:blue)
call s:HL('TabLineSel',    s:dslight3)
call s:HL('Title',         s:dslight3)
call s:HL('VertSplit',     s:dsdark4)
call s:HL('Visual',        ['NONE', 'NONE'], ['NONE', 'NONE'], 'inverse')
call s:HL('VisualNOS',     ['NONE', 'NONE'], s:gray_darker)
call s:HL('WarningMsg',    s:orange)
call s:HL('WildMenu',      ['NONE', 'NONE'], ['NONE', 'NONE'])

" Syntax
call s:HL('Comment', s:gray, ['NONE', 'NONE'], 'italic')

call s:HL('Constant',  s:orange_light)
call s:HL('String',    s:green)
call s:HL('Character', s:purple)
call s:HL('Number',    s:purple)
call s:HL('Boolean',   s:purple)
call s:HL('Float',     s:purple)

call s:HL('Identifier', s:blue)
call s:HL('Function',   s:green, ['NONE', 'NONE'], 'bold')

call s:HL('Statement',   s:red)
call s:HL('Conditional', s:red, ['NONE', 'NONE'], 'italic')
call s:HL('Repeat',      s:red)
call s:HL('Label',       s:magenta_light, ['NONE', 'NONE'], 'italic')
call s:HL('Operator',    s:blue)
call s:HL('Keyword',     s:red)
call s:HL('Exception',   s:red, ['NONE', 'NONE'], 'bold')

call s:HL('PreProc',   s:tan)
call s:HL('Include',   s:blue, ['NONE', 'NONE'], 'nocombine')
call s:HL('Define',    s:blue, ['NONE', 'NONE'], 'nocombine')
call s:HL('Macro',     s:blue, ['NONE', 'NONE'], 'italic')
call s:HL('PreCondit', s:tan, ['NONE', 'NONE'], 'italic')

call s:HL('Type',         s:yellow)
call s:HL('StorageClass', s:orange)
call s:HL('Structure',    s:blue, ['NONE', 'NONE'], 'bold')
call s:HL('Typedef',      s:cyan, ['NONE', 'NONE'], 'italic')

call s:HL('Special',        s:magenta, ['NONE', 'NONE'], 'bold')
call s:HL('SpecialChar',    s:red_light, ['NONE', 'NONE'], 'italic')
call s:HL('Tag',            s:orange)
call s:HL('Delimiter',      s:orange)
call s:HL('SpecialComment', s:gray, ['NONE', 'NONE'], 'bold,nocombine')
call s:HL('Debug',          s:orange_light)

call s:HL('Underlined', s:turqoise, ['NONE', 'NONE'], 'underline')
call s:HL('Ignore',     s:gray)
call s:HL('Error',      s:white, s:red_dark)
call s:HL('Todo',       s:yellow, ['NONE', 'NONE'], 'bold,underline')

" Diffs
call s:HL('DiffAdd',    s:green_dark, ['NONE', 'NONE'], 'inverse')
call s:HL('DiffChange', s:yellow, ['NONE', 'NONE'], 'inverse')
call s:HL('DiffDelete', s:red, ['NONE', 'NONE'], 'inverse')
call s:HL('DiffText',   ['NONE', 'NONE'], ['NONE', 'NONE'], 'inverse')

" LSP
call s:HL('DiagnosticError',   s:red)
call s:HL('DiagnosticHint',    s:magenta)
call s:HL('DiagnosticInfo',    s:green)
call s:HL('DiagnosticWarning', s:orange)
call s:HL('DiagnosticOk',      s:green)
call s:HL('DiagnosticFloatingError',   s:red)
call s:HL('DiagnosticFloatingHint',    s:magenta)
call s:HL('DiagnosticFloatingInfo',    s:green)
call s:HL('DiagnosticFloatingWarning', s:orange)
call s:HL('DiagnosticSignError',   s:red)
call s:HL('DiagnosticSignHint',    s:magenta)
call s:HL('DiagnosticSignInfo',    s:green)
call s:HL('DiagnosticSignWarning', s:orange)
call s:HL('DiagnosticVirtualTextError',   s:red)
call s:HL('DiagnosticVirtualTextHint',    s:magenta)
call s:HL('DiagnosticVirtualTextInfo',    s:green)
call s:HL('DiagnosticVirtualTextWarning', s:orange)
call s:HL('LspInlayHint',      '#88698A', ['NONE', 'NONE'], 'italic')
call s:HL('LspReferenceRead',  ['NONE', 'NONE'], s:gray_darker)
call s:HL('LspReferenceText',  ['NONE', 'NONE'], s:gray_darker)
call s:HL('LspReferenceWrite', ['NONE', 'NONE'], s:gray_darker)

" Coc
call s:HL('CocErrorHighlight',   ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:red)
call s:HL('CocHintHighlight',    ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:magenta)
call s:HL('CocInfoHighlight',    ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:pink_light)
call s:HL('CocWarningHighlight', ['NONE', 'NONE'], ['NONE', 'NONE'], 'undercurl', s:orange)
call s:Link('CocErrorSign',   'ErrorMsg')
call s:Link('CocHintSign',    'HintMsg')
call s:Link('CocInfoSign',    'InfoMsg')
call s:Link('CocWarningSign', 'WarningMsg')
call s:HL('CocHighlightText', s:dslight1, s:gray_darker)

" Treesitter
call s:HL('TSAnnotation',      s:blue)
call s:HL('TSAttribute',       s:blue, ['NONE', 'NONE'], 'italic')
call s:HL('TSBoolean',         s:purple)
call s:HL('TSCharacter',       s:purple)
call s:HL('TSComment',         s:gray)
call s:HL('TSConditional',     s:red)
call s:HL('TSConstBuiltin',    s:orange)
call s:HL('TSConstMacro',      s:orange)
call s:HL('TSConstructor',     s:yellow)
call s:HL('TSException',       s:red)
call s:HL('TSField',           s:blue)
call s:HL('TSFloat',           s:purple)
call s:HL('TSFuncBuiltin',     s:green, ['NONE', 'NONE'], 'bold')
call s:HL('TSFuncMacro',       s:green, ['NONE', 'NONE'], 'bold')
call s:HL('TSFunction',        s:green, ['NONE', 'NONE'], 'bold')
call s:HL('TSInclude',         s:red)
call s:HL('TSKeyword',         s:red)
call s:HL('TSKeywordFunction', s:red)
call s:HL('TSKeywordModifier', s:orange)
call s:HL('TSKeywordOperator', s:red)
call s:HL('TSKeywordReturn',   s:red)
call s:HL('TSLabel',           s:magenta_light, ['NONE', 'NONE'], 'italic')
call s:HL('TSLiteral',         s:green)
call s:HL('TSMath',            s:purple)
call s:HL('TSMethod',          s:green, ['NONE', 'NONE'], 'bold')
call s:HL('TSNamespace',       s:yellow)
call s:HL('TSNumber',          s:purple)
call s:HL('TSOperator',        s:blue)
call s:HL('TSParameter',       s:dslight3, ['NONE', 'NONE'], 'italic')
call s:HL('TSParameterReference', s:dslight3)
call s:HL('TSProperty',        s:blue)
call s:HL('TSPunctDelimiter',  s:orange)
call s:HL('TSPunctBracket',    s:dslight2)
call s:HL('TSPunctSpecial',    s:orange)
call s:HL('TSRepeat',          s:red)
call s:HL('TSStorageClass',    s:orange)
call s:HL('TSStrike',          s:gray)
call s:HL('TSString',          s:green)
call s:HL('TSStringEscape',    s:red_light)
call s:HL('TSStrong',          s:dslight1, ['NONE', 'NONE'], 'bold')
call s:HL('TSSymbol',          s:orange)
call s:HL('TSTag',             s:red)
call s:HL('TSTagDelimiter',    s:orange)
call s:HL('TSText',            s:dslight1)
call s:HL('TSTitle',           s:dslight3, ['NONE', 'NONE'], 'bold')
call s:HL('TSType',            s:yellow)
call s:HL('TSTypeBuiltin',     s:yellow)
call s:HL('TSTypeQualifier',   s:orange)
call s:HL('TSURI',             s:blue, ['NONE', 'NONE'], 'underline')
call s:HL('TSVariable',        s:dslight2)
call s:HL('TSVariableBuiltin', s:orange)
call s:HL('TSSpecial',         s:magenta, ['NONE', 'NONE'], 'bold')
call s:HL('TSEmphasis',        ['NONE', 'NONE'], ['NONE', 'NONE'], 'italic')

" Git
call s:HL('GitGutterAdd',          s:green)
call s:HL('GitGutterChange',       s:yellow)
call s:HL('GitGutterDelete',       s:red)
call s:HL('GitGutterChangeDelete', s:orange)
call s:Link('SignifySignAdd',          'GitGutterAdd')
call s:Link('SignifySignChange',       'GitGutterChange')
call s:Link('SignifySignDelete',       'GitGutterDelete')
call s:Link('SignifySignChangeDelete', 'GitGutterChangeDelete')

" ALE
call s:Link('ALEErrorSign',   'ErrorMsg')
call s:Link('ALEWarningSign', 'WarningMsg')

" NERDTree
call s:Link('NERDTreeCWD',       'Label')
call s:Link('NERDTreeUp',        'Operator')
call s:Link('NERDTreeDir',       'Directory')
call s:Link('NERDTreeDirSlash',  'Delimiter')
call s:Link('NERDTreeOpenable',  'NERDTreeDir')
call s:Link('NERDTreeClosable',  'NERDTreeOpenable')
call s:Link('NERDTreeExecFile',  'Function')
call s:Link('NERDTreeLinkTarget','Tag')
call s:HL('NERDTreeFlag',       s:gray)
call s:HL('NERDTreeHelp',       s:gray)

" CtrlP
call s:Link('CtrlPMatch',     'Function')
call s:Link('CtrlPNoEntries', 'Error')
call s:HL('CtrlPPrtBase', s:gray, s:gray_darker)
call s:HL('CtrlPPrtCursor', s:blue, s:gray_darker, 'bold')

" FZF
call s:HL('FzfNormal',     s:dslight1, s:black)
call s:HL('FzfBorder',     s:gray)
call s:HL('FzfPrompt',     s:blue)
call s:HL('FzfPointer',    s:red)
call s:HL('FzfMarker',     s:green)

" Telescope
call s:HL('TelescopePromptNormal',   s:dslight1, s:black)
call s:HL('TelescopePromptBorder',   s:dsdark4)
call s:HL('TelescopeResultsNormal',  s:dslight1, s:black)
call s:HL('TelescopeResultsBorder',  s:dsdark4)
call s:HL('TelescopePreviewNormal',  s:dslight1, s:black)
call s:HL('TelescopePreviewBorder',  s:dsdark4)
call s:HL('TelescopeSelection',      ['NONE', 'NONE'], s:gray_darker)
call s:HL('TelescopeMultiSelection', ['NONE', 'NONE'], s:gray_darker)
call s:HL('TelescopeMatching',       s:green)

" EasyMotion / Hop
call s:Link('EasyMotion', 'IncSearch')
call s:Link('JumpMotion', 'EasyMotion')
call s:HL('HopNextKey',  s:orange, ['NONE', 'NONE'], 'bold')
call s:HL('HopNextKey1', s:blue, ['NONE', 'NONE'], 'bold')
call s:HL('HopNextKey2', s:gray)

" Indent guides
call s:HL('IndentGuidesOdd',  ['NONE', 'NONE'], s:gray_darker)
call s:HL('IndentGuidesEven', ['NONE', 'NONE'], s:gray)
call s:HL('IndentBlanklineChar', s:gray_darker)
call s:HL('IndentBlanklineContextChar', s:gray)

" Markdown
call s:HL('markdownH1', s:red, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH2', s:orange, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH3', s:yellow, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH4', s:green_dark, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH5', s:cyan, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH6', s:purple_light, ['NONE', 'NONE'], 'bold')
call s:HL('markdownBold', s:dslight1, ['NONE', 'NONE'], 'bold')
call s:HL('markdownItalic', ['NONE', 'NONE'], ['NONE', 'NONE'], 'italic')
call s:HL('markdownCode', s:green)
call s:HL('markdownCodeBlock', s:green)
call s:HL('markdownCodeDelimiter', s:green)
call s:HL('markdownLinkText', s:blue, ['NONE', 'NONE'], 'underline')
call s:HL('markdownUrl', s:purple)
call s:HL('markdownListMarker', s:purple)
call s:Link('mkdCode', 'markdownCode')
call s:Link('mkdCodeDelimiter', 'markdownCodeDelimiter')
call s:Link('mkdLink', 'markdownLinkText')
call s:Link('mkdURL', 'markdownUrl')

" Diff in gitcommit
call s:Link('diffAdded',   'DiffAdd')
call s:Link('diffRemoved', 'DiffDelete')
call s:Link('diffFile',    'PreProc')
call s:Link('diffNewFile', 'PreCondit')
call s:Link('diffLine',    'Type')

" Language specific
call s:HL('cssProp',               s:blue)
call s:HL('cssClassName',          s:yellow)
call s:HL('cssClassNameDot',       s:yellow)
call s:HL('cssBraces',             s:orange)
call s:Link('cssTagName', 'Type')
call s:Link('cssAttr', 'Constant')
call s:HL('javaScriptBraces',      s:dslight2)
call s:Link('javaScriptFunction',  'Keyword')
call s:Link('javaScriptNull',      'Boolean')
call s:Link('javaScriptNumber',    'Number')
call s:HL('pythonSelf',            s:orange, ['NONE', 'NONE'], 'italic')
call s:Link('pythonFunction',      'Function')
call s:Link('pythonBuiltin',       'Operator')
call s:Link('pythonException',     'Exception')
call s:Link('pythonInclude',       'Include')
call s:Link('pythonDecorator',     'PreProc')
call s:Link('pythonClass',         'Structure')
call s:HL('goBuiltins',            s:orange)
call s:Link('goFunction',          'Function')
call s:Link('goType',              'Type')
call s:Link('goTypeName',          'Type')
call s:Link('goParamType',         'Typedef')
call s:Link('goVarAssign',         'Identifier')
call s:Link('goVarDefs',           'Identifier')
call s:Link('rustKeyword',         'Keyword')
call s:Link('rustModPath',         'Include')
call s:Link('rustTrait',           'StorageClass')
call s:Link('rustSelf',            'Identifier')

" LSP Saga / LSPSA
call s:Link('DefinitionCount',     'Number')
call s:Link('DefinitionIcon',      'Special')
call s:Link('ReferencesCount',     'Number')
call s:Link('ReferencesIcon',      'DefinitionIcon')
call s:Link('TargetFileName',      'Directory')
call s:Link('TargetWord',          'Title')

" vim-startify
call s:HL('StartifyHeader',  s:orange, ['NONE', 'NONE'], 'bold')
call s:Link('StartifyBracket', 'Delimiter')
call s:Link('StartifyFile',    'Directory')
call s:Link('StartifyNumber',  'Number')
call s:Link('StartifyPath',    'Comment')
call s:Link('StartifySlash',   'Comment')
call s:Link('StartifySection', 'Type')

" WhichKey
call s:HL('WhichKey',      s:green, ['NONE', 'NONE'], 'bold')
call s:HL('WhichKeyGroup', s:blue, ['NONE', 'NONE'], 'bold')
call s:Link('WhichKeySeperator', 'Comment')
call s:Link('WhichKeyDesc',      'Identifier')

" Notification
call s:HL('NotifyERRORBorder', s:red)
call s:HL('NotifyWARNBorder',  s:orange)
call s:HL('NotifyINFOBorder',  s:green)
call s:HL('NotifyDEBUGBorder', s:gray)
call s:HL('NotifyTRACEBorder', s:blue)
call s:HL('NotifyERRORIcon',   s:red)
call s:HL('NotifyWARNIcon',    s:orange)
call s:HL('NotifyINFOIcon',    s:green)
call s:HL('NotifyDEBUGIcon',   s:gray)
call s:HL('NotifyTRACEIcon',   s:blue)
call s:HL('NotifyERRORTitle',  s:red)
call s:HL('NotifyWARNTitle',   s:orange)
call s:HL('NotifyINFOTitle',   s:green)
call s:HL('NotifyDEBUGTitle',  s:gray)
call s:HL('NotifyTRACETitle',  s:blue)

" Terminal colors
if has('nvim')
  let g:terminal_color_0  = '#2C323B'
  let g:terminal_color_1  = '#fb4934'
  let g:terminal_color_2  = '#98C379'
  let g:terminal_color_3  = '#fabd2f'
  let g:terminal_color_4  = '#83a598'
  let g:terminal_color_5  = '#C678DD'
  let g:terminal_color_6  = '#8ec07c'
  let g:terminal_color_7  = '#ebdbb2'
  let g:terminal_color_8  = '#928374'
  let g:terminal_color_9  = '#fe8019'
  let g:terminal_color_10 = '#50de60'
  let g:terminal_color_11 = '#f0af00'
  let g:terminal_color_12 = '#6699CC'
  let g:terminal_color_13 = '#d5508f'
  let g:terminal_color_14 = '#2bff99'
  let g:terminal_color_15 = '#ffffff'
endif
