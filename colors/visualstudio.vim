" This color scheme was derived from:
"
" Blueshift color scheme
" by Jan Zwiener, mail: jan@zwiener.org
" Based upon the pyte color scheme by Henning Hasemann
"
" 2010/11/16: Version 1.0
"

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "visualstudio"

" Taglist colors
hi MyTagListFileName    guifg=black   guibg=#c0d0e0 ctermbg=152
hi MyTagListTagName     guifg=black   guibg=#ffbc29 ctermbg=214

if version >= 700
  hi CursorLine     guibg=#f6f6f6 ctermbg=15
  hi CursorColumn   guibg=#f6f6f6 ctermbg=15
  hi MatchParen     guifg=black     guibg=#bfbfbf ctermbg=250

  hi TabLine        guifg=black     guibg=#b0b8c0 ctermbg=250
  hi TabLineFill    guifg=#9098a0 ctermfg=246
  hi TabLineSel     guifg=black     guibg=#f0f0f0 ctermbg=7 gui=bold

  hi Pmenu          guifg=white     guibg=#808080 ctermbg=244
  hi PmenuSel       guifg=black     guibg=#ffbc29 ctermbg=214
endif

hi Title        guifg=#202020 ctermfg=234   gui=none
hi Underlined   guifg=#202020 ctermfg=234   gui=underline

hi Normal       guifg=black     guibg=#f2f2f2 ctermbg=7
hi ModeMsg      guifg=black     guibg=#f2f2f2 ctermbg=7
hi Cursor       guifg=#f0f0f0 ctermfg=7   guibg=#101010 ctermbg=233
hi LineNr       guifg=#2b91af ctermfg=31   guibg=#f2f2f2 ctermbg=7 gui=none
hi Visual       guifg=white     guibg=#5381bc ctermbg=67
hi WildMenu     guifg=black     guibg=#ffbc29 ctermbg=214
hi IncSearch    guibg=black     guifg=#ffbc29 ctermfg=214
hi Question     guifg=black     guibg=#ffbc29 ctermbg=214

hi StatusLine   guifg=white     guibg=black   gui=bold
hi StatusLineNC guifg=white     guibg=#8090a0 ctermbg=103 gui=bold
hi VertSplit    guifg=#a0b0c0 ctermfg=145   guibg=#a0b0c0 ctermbg=145 gui=none

hi NonText      guifg=#bebebe ctermfg=250   guibg=#f2f2f2 ctermbg=7
hi Comment      guifg=#008000 ctermfg=28   gui=none
hi Folded       guifg=#708090 ctermfg=66   guibg=#c0d0e0 ctermbg=152
hi Folded       guifg=#708090 ctermfg=66   guibg=#c0d0e0 ctermbg=152
hi FoldColumn   guifg=#708090 ctermfg=66   guibg=#c0d0e0 ctermbg=152

hi Constant     guifg=#6f008a ctermfg=54   gui=none
hi Number       guifg=black
hi Float        guifg=black
hi Boolean      guifg=#0070af ctermfg=25   gui=none
hi String       guifg=#a31515 ctermfg=124   gui=none

hi Statement    guifg=blue      gui=none
hi StorageClass guifg=#0070af ctermfg=25   gui=none
hi Type         guifg=#0070af ctermfg=25   gui=none
hi Typedef      guifg=blue      gui=none
hi Structure    guifg=blue      gui=none
hi Identifier   guifg=#0070af ctermfg=25   gui=none
hi Function     guifg=#0070af ctermfg=25   gui=none
hi Repeat       guifg=blue      gui=none
hi Conditional  guifg=blue      gui=none
hi Operator     guifg=blue      gui=none

hi PreProc      guifg=#2222ff ctermfg=21   gui=none
hi Define       guifg=#2222ff ctermfg=21   gui=none
hi Include      guifg=#2222ff ctermfg=21   gui=none

hi Error        guifg=red       guibg=#f2f2f2 ctermbg=7   gui=bold,underline
hi Todo         guifg=blue      guibg=yellow    gui=none
hi Search       guifg=black     guibg=yellow    gui=none
hi SpecialKey	guifg=#1060a0 ctermfg=25   guibg=#f2f2f2 ctermbg=7
hi Special      guifg=#666600 ctermfg=58   guibg=#f2f2f2 ctermbg=7

" Diff
hi DiffChange   guifg=NONE      guibg=#e0e0e0 ctermbg=7   gui=bold
hi DiffText     guifg=NONE      guibg=#f0c8c8 ctermbg=224   gui=bold
hi DiffAdd      guifg=NONE      guibg=#c0e0d0 ctermbg=152   gui=bold
hi DiffDelete   guifg=NONE      guibg=#f0e0b0 ctermbg=223   gui=bold

" set guifont=Consolas\ for\ Powerline\ FixedD\ 11

