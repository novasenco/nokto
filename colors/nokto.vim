" Name: nokto2
" Description: black, spacey, colorscheme
" Author: Nova Senco <novasenco at protonmail dot ch>
" Last Change: 23 October 2020
" URL: https://github.com/novasenco/nokto
" Type: dark

highlight clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'vulpo'
if &background isnot 'dark'
  set background=dark
endif

if has('gui_running') || has('termguicolors') && &termguicolors
  let g:terminal_ansi_colors = ['#303030', '#d75f5f', '#87af87', '#d7875f', '#5f87af', '#af87af', '#87afaf', '#c6c6c6', '#444444', '#af5f87', '#87af5f', '#d7af87', '#5f8787', '#af87d7', '#5faf87', '#e4e4e4']
endif

highlight! link Function Identifier
highlight! link PreProc Identifier
highlight! link Special Identifier
highlight! link Type Identifier
highlight! link HtmlBold Bold
highlight! link HtmlItalic Italic
highlight! link HtmlUnderline Underlined
highlight! link Terminal Normal
highlight! link StatusLineTerm StatusLine
highlight! link StatusLineTermNC StatusLineNC
highlight! link Folded NonText
highlight! link MoreMsg ModeMsg
highlight! link Question ModeMsg
highlight! link SpellCap SpellBad
highlight! link SpellLocal SpellBad
highlight! link SpellRare SpellBad
" filetype modifications
if get(g:, 'vulpo_ft_mods', 1)
  " c
  highlight! link cStorageClass Statement
  highlight! link cEnum Statement
  highlight! link cTypedef Statement
  highlight! link cMacroName Identifier
  highlight! link cDataStructureKeyword Identifier
  " vim
  highlight! link vimHiAttrib Constant
  highlight! link vimCommentTitle Title
endif

" automatically downgrade if &t_Co is smaller than 256
if (exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2) < 256
  highlight Normal cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#c6c6c6 guibg=#000000
  highlight Constant cterm=NONE ctermfg=11 ctermbg=NONE gui=NONE guifg=#d7af87 guibg=NONE
  highlight String cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#87af87 guibg=NONE
  highlight Identifier cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#87afaf guibg=NONE
  highlight Statement cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#af87af guibg=NONE
  highlight Comment cterm=italic ctermfg=8 ctermbg=NONE gui=italic guifg=#444444 guibg=NONE
  highlight Ignore cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#444444 guibg=NONE
  highlight Bold cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
  highlight Italic cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=NONE guibg=NONE
  highlight Underlined cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
  highlight Tag cterm=underline ctermfg=5 ctermbg=NONE gui=underline guifg=#af87af guibg=NONE
  highlight Error cterm=bold,reverse ctermfg=9 ctermbg=NONE gui=bold,reverse guifg=#af5f87 guibg=NONE
  highlight Todo cterm=bold,reverse ctermfg=6 ctermbg=NONE gui=bold,reverse guifg=#87afaf guibg=NONE
  highlight StatusLine cterm=NONE ctermfg=7 ctermbg=8 gui=NONE guifg=#c6c6c6 guibg=#444444
  highlight StatusLineNC cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight TabLine cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight TabLineFill cterm=NONE ctermfg=2 ctermbg=0 gui=NONE guifg=#87af87 guibg=#303030
  highlight TabLineSel cterm=bold ctermfg=11 ctermbg=8 gui=bold guifg=#d7af87 guibg=#444444
  highlight Pmenu cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight PmenuSel cterm=NONE ctermfg=7 ctermbg=8 gui=NONE guifg=#c6c6c6 guibg=#444444
  highlight PmenuSbar cterm=reverse ctermfg=0 ctermbg=NONE gui=reverse guifg=#303030 guibg=NONE
  highlight PmenuThumb cterm=reverse ctermfg=6 ctermbg=NONE gui=reverse guifg=#87afaf guibg=NONE
  highlight WildMenu cterm=bold,reverse ctermfg=11 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
  highlight Title cterm=italic,bold ctermfg=6 ctermbg=NONE gui=italic,bold guifg=#87afaf guibg=NONE
  highlight SpecialKey cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#444444 guibg=NONE
  highlight NonText cterm=italic ctermfg=4 ctermbg=0 gui=italic guifg=#5f87af guibg=#121212
  highlight EndOfBuffer cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#5f87af guibg=NONE
  highlight Search cterm=bold,reverse ctermfg=3 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE
  highlight IncSearch cterm=bold,reverse ctermfg=11 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
  highlight QuickFixLine cterm=bold ctermfg=NONE ctermbg=0 gui=bold guifg=NONE guibg=#303030
  highlight Conceal cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#5f87af guibg=NONE
  highlight Cursor cterm=reverse ctermfg=7 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
  highlight lCursor cterm=reverse ctermfg=7 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
  highlight CursorIM cterm=reverse ctermfg=7 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
  highlight Directory cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#5f87af guibg=NONE
  highlight ErrorMsg cterm=bold,reverse ctermfg=9 ctermbg=NONE gui=bold,reverse guifg=#af5f87 guibg=NONE
  highlight WarningMsg cterm=bold,reverse ctermfg=11 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
  highlight ModeMsg cterm=bold ctermfg=11 ctermbg=NONE gui=bold guifg=#d7af87 guibg=NONE
  highlight SpellBad cterm=bold,reverse ctermfg=9 ctermbg=NONE gui=bold,reverse guifg=#af5f87 guibg=NONE
  highlight DiffAdd cterm=bold,reverse ctermfg=6 ctermbg=NONE gui=bold,reverse guifg=#87afaf guibg=NONE
  highlight DiffDelete cterm=NONE ctermfg=9 ctermbg=9 gui=NONE guifg=#af5f87 guibg=#af5f87
  highlight DiffChange cterm=reverse ctermfg=4 ctermbg=NONE gui=reverse guifg=#5f87af guibg=NONE
  highlight DiffText cterm=bold,reverse ctermfg=11 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
  highlight DiffAdded cterm=bold ctermfg=6 ctermbg=0 gui=bold guifg=#87afaf guibg=#121212
  highlight DiffRemoved cterm=bold ctermfg=9 ctermbg=0 gui=bold guifg=#af5f87 guibg=#121212
  highlight ColorColumn cterm=NONE ctermfg=NONE ctermbg=0 gui=NONE guifg=NONE guibg=#121212
  highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=0 gui=NONE guifg=NONE guibg=#121212
  highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=0 gui=NONE guifg=NONE guibg=#121212
  highlight Visual cterm=NONE ctermfg=6 ctermbg=0 gui=NONE guifg=#87afaf guibg=#303030
  highlight VisualNOS cterm=NONE ctermfg=6 ctermbg=0 gui=NONE guifg=#87afaf guibg=#303030
  highlight VertSplit cterm=NONE ctermfg=6 ctermbg=NONE gui=NONE guifg=#87afaf guibg=NONE
  highlight LineNr cterm=NONE ctermfg=12 ctermbg=0 gui=NONE guifg=#5f8787 guibg=#303030
  highlight CursorLineNr cterm=NONE ctermfg=9 ctermbg=0 gui=NONE guifg=#af5f87 guibg=#303030
  highlight LineNrAbove cterm=NONE ctermfg=12 ctermbg=0 gui=NONE guifg=#5f8787 guibg=#303030
  highlight LineNrBelow cterm=NONE ctermfg=12 ctermbg=0 gui=NONE guifg=#5f8787 guibg=#303030
  highlight FoldColumn cterm=NONE ctermfg=9 ctermbg=0 gui=NONE guifg=#af5f87 guibg=#303030
  highlight SignColumn cterm=NONE ctermfg=12 ctermbg=0 gui=NONE guifg=#5f8787 guibg=#303030
  highlight MatchParen cterm=bold,reverse ctermfg=4 ctermbg=NONE gui=bold,reverse guifg=#5f87af guibg=NONE
  finish
endif

highlight Normal cterm=NONE ctermfg=251 ctermbg=16 gui=NONE guifg=#c6c6c6 guibg=#000000

" |group-name|

highlight Constant cterm=NONE ctermfg=180 ctermbg=NONE gui=NONE guifg=#d7af87 guibg=NONE
highlight String cterm=NONE ctermfg=108 ctermbg=NONE gui=NONE guifg=#87af87 guibg=NONE
highlight Identifier cterm=NONE ctermfg=109 ctermbg=NONE gui=NONE guifg=#87afaf guibg=NONE
highlight Statement cterm=NONE ctermfg=139 ctermbg=NONE gui=NONE guifg=#af87af guibg=NONE

highlight Comment cterm=italic ctermfg=238 ctermbg=NONE gui=italic guifg=#444444 guibg=NONE
highlight Ignore cterm=NONE ctermfg=238 ctermbg=NONE gui=NONE guifg=#444444 guibg=NONE

highlight Bold cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
highlight Italic cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=NONE guibg=NONE
highlight Underlined cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
highlight Tag cterm=underline ctermfg=139 ctermbg=NONE gui=underline guifg=#af87af guibg=NONE

highlight Error cterm=bold,reverse ctermfg=132 ctermbg=NONE gui=bold,reverse guifg=#af5f87 guibg=NONE
highlight Todo cterm=bold,reverse ctermfg=109 ctermbg=NONE gui=bold,reverse guifg=#87afaf guibg=NONE

" |highlight-groups|

highlight StatusLine cterm=NONE ctermfg=251 ctermbg=238 gui=NONE guifg=#c6c6c6 guibg=#444444
highlight StatusLineNC cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030

highlight TabLine cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030
highlight TabLineFill cterm=NONE ctermfg=108 ctermbg=236 gui=NONE guifg=#87af87 guibg=#303030
highlight TabLineSel cterm=bold ctermfg=180 ctermbg=238 gui=bold guifg=#d7af87 guibg=#444444

highlight Pmenu cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030
highlight PmenuSel cterm=NONE ctermfg=251 ctermbg=238 gui=NONE guifg=#c6c6c6 guibg=#444444
highlight PmenuSbar cterm=reverse ctermfg=236 ctermbg=NONE gui=reverse guifg=#303030 guibg=NONE
highlight PmenuThumb cterm=reverse ctermfg=109 ctermbg=NONE gui=reverse guifg=#87afaf guibg=NONE

highlight WildMenu cterm=bold,reverse ctermfg=180 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE

highlight Title cterm=italic,bold ctermfg=109 ctermbg=NONE gui=italic,bold guifg=#87afaf guibg=NONE
highlight SpecialKey cterm=NONE ctermfg=238 ctermbg=NONE gui=NONE guifg=#444444 guibg=NONE

highlight NonText cterm=italic ctermfg=67 ctermbg=233 gui=italic guifg=#5f87af guibg=#121212

highlight EndOfBuffer cterm=NONE ctermfg=67 ctermbg=NONE gui=NONE guifg=#5f87af guibg=NONE

highlight Search cterm=bold,reverse ctermfg=173 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE
highlight IncSearch cterm=bold,reverse ctermfg=180 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
highlight QuickFixLine cterm=bold ctermfg=NONE ctermbg=236 gui=bold guifg=NONE guibg=#303030

highlight Conceal cterm=NONE ctermfg=67 ctermbg=NONE gui=NONE guifg=#5f87af guibg=NONE
highlight Cursor cterm=reverse ctermfg=251 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
highlight lCursor cterm=reverse ctermfg=251 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
highlight CursorIM cterm=reverse ctermfg=251 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE

highlight Directory cterm=NONE ctermfg=67 ctermbg=NONE gui=NONE guifg=#5f87af guibg=NONE

highlight ErrorMsg cterm=bold,reverse ctermfg=132 ctermbg=NONE gui=bold,reverse guifg=#af5f87 guibg=NONE
highlight WarningMsg cterm=bold,reverse ctermfg=180 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE

highlight ModeMsg cterm=bold ctermfg=180 ctermbg=NONE gui=bold guifg=#d7af87 guibg=NONE

highlight SpellBad cterm=bold,reverse ctermfg=132 ctermbg=NONE gui=bold,reverse guifg=#af5f87 guibg=NONE

highlight DiffAdd cterm=bold,reverse ctermfg=109 ctermbg=NONE gui=bold,reverse guifg=#87afaf guibg=NONE
highlight DiffDelete cterm=NONE ctermfg=132 ctermbg=132 gui=NONE guifg=#af5f87 guibg=#af5f87
highlight DiffChange cterm=reverse ctermfg=67 ctermbg=NONE gui=reverse guifg=#5f87af guibg=NONE
highlight DiffText cterm=bold,reverse ctermfg=180 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE

highlight DiffAdded cterm=bold ctermfg=109 ctermbg=233 gui=bold guifg=#87afaf guibg=#121212
highlight DiffRemoved cterm=bold ctermfg=132 ctermbg=233 gui=bold guifg=#af5f87 guibg=#121212

highlight ColorColumn cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#121212
highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#121212
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#121212

highlight Visual cterm=NONE ctermfg=109 ctermbg=236 gui=NONE guifg=#87afaf guibg=#303030
highlight VisualNOS cterm=NONE ctermfg=109 ctermbg=236 gui=NONE guifg=#87afaf guibg=#303030

highlight VertSplit cterm=NONE ctermfg=109 ctermbg=NONE gui=NONE guifg=#87afaf guibg=NONE

highlight LineNr cterm=NONE ctermfg=66 ctermbg=236 gui=NONE guifg=#5f8787 guibg=#303030
highlight CursorLineNr cterm=NONE ctermfg=132 ctermbg=236 gui=NONE guifg=#af5f87 guibg=#303030
highlight LineNrAbove cterm=NONE ctermfg=66 ctermbg=236 gui=NONE guifg=#5f8787 guibg=#303030
highlight LineNrBelow cterm=NONE ctermfg=66 ctermbg=236 gui=NONE guifg=#5f8787 guibg=#303030
highlight FoldColumn cterm=NONE ctermfg=132 ctermbg=236 gui=NONE guifg=#af5f87 guibg=#303030
highlight SignColumn cterm=NONE ctermfg=66 ctermbg=236 gui=NONE guifg=#5f8787 guibg=#303030

highlight MatchParen cterm=bold,reverse ctermfg=67 ctermbg=NONE gui=bold,reverse guifg=#5f87af guibg=NONE

