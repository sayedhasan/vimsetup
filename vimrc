"---------------------------------------------------------------------------------------------
" Modeline and Notes
"---------------------------------------------------------------------------------------------
"   vim: set sw=2 ts=2 sts=2 et tw=72 foldmarker={{{,}}} foldlevel=90 foldmethod=marker spell:
"   This is the personal .vimrc file of Sayed Hasan
"
"---------------------------------------------------------------------------------------------


" Multi platform shell settings {{{

" Must be first line
" Windows shell is bash
set nocompatible
if !(has('win16') || has('win32') || has('win64'))
  set shell=/bin/sh
endif

" Unix Shell is tcsh
if has('unix')
  set shell=tcsh
endif

" }}}

" Directory setup {{{

" On Windows, also use '.vim' instead of 'vimfiles';
" this makes synchronization across (heterogeneous)
" systems easier.
if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME
endif

" setup backdirectory
set backupdir=~/.cache/vim/swap
set directory=~/.cache/vim/swap

" }}}

" Vundle {{{
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set rtp+=~/.vim/bundle/vimproc.vim/autoload
set rtp+=~/.vim/bundle/vimproc.vim/plugin

" Let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" comments
Bundle 'http://github.com/tomtom/tcomment_vim.git'
" Bundle 'http://github.com/tpope/vim-commentary.git'
" Bundle 'http://github.com/scrooloose/nerdcommenter.git'

" Text manipulation
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/Gundo'
Bundle 'godlygeek/tabular'

" code navigation
Bundle 'http://github.com/majutsushi/tagbar.git'
Bundle 'http://github.com/nathanaelkane/vim-indent-guides.git'
Bundle 'michaeljsmith/vim-indent-object'

" buffer management
Bundle 'http://github.com/vim-scripts/bufkill.vim.git'
Bundle 'http://github.com/derekwyatt/vim-fswitch.git'
Bundle 'http://github.com/sjl/gundo.vim.git'
Bundle 'http://github.com/tpope/vim-repeat.git'
Bundle 'http://github.com/tpope/vim-unimpaired.git'
Bundle 'http://github.com/ciaranm/detectindent.git'
Bundle 'http://github.com/tpope/vim-endwise.git'
Bundle 'http://github.com/vim-scripts/FSwitch.git'

" code complete
Bundle 'http://github.com/mattn/emmet-vim'
Bundle 'http://github.com/tristen/vim-sparkup.git'
Bundle 'http://github.com/tpope/vim-surround.git'
" Bundle 'http://github.com/scrooloose/syntastic.git'
Bundle 'http://github.com/msanders/snipmate.vim.git'
" Bundle 'http://github.com/spf13/snipmate-snippets.git'
Bundle 'http://github.com/Shougo/neocomplcache.vim.git'
" Bundle 'http://github.com/Townk/vim-autoclose'

" file name and search
Bundle 'http://github.com/vim-scripts/L9.git'
Bundle 'http://github.com/vim-scripts/FuzzyFinder.git'
Bundle 'http://github.com/kien/ctrlp.vim.git'
Bundle 'http://github.com/shemerey/vim-project.git'
Bundle 'http://github.com/scrooloose/nerdtree.git'
" Bundle 'http://github.com/jistr/vim-nerdtree-tabs.git'
Bundle 'http://github.com/danro/rename.vim.git'

" repo-management
Bundle 'http://github.com/tpope/vim-git.git'
Bundle 'http://github.com/tpope/vim-fugitive.git'
Bundle 'int3/vim-extradite'
" Bundle 'http://github.com/mhinz/vim-signify.git'

" colorscheme font statusline
Bundle 'http://github.com/altercation/vim-colors-solarized.git'
Bundle 'http://github.com/flazz/vim-colorschemes.git'
Bundle 'http://github.com/drmikehenry/vim-fontsize.git'
Bundle 'http://github.com/maciakl/vim-neatstatus.git'
" Bundle 'http://github.com/Lokaltog/vim-powerline.git'
" Bundle 'http://github.com/bling/vim-airline.git'
" Bundle 'bling/vim-airline'
Bundle 'http://github.com/rey-wright/argokai.git'
Bundle 'http://github.com/Pychimp/Pychimp-vim.git'

" Allow pane movement to jump out of vim into tmux
Bundle 'christoomey/vim-tmux-navigator'

" language support
Bundle 'http://github.com/jcf/vim-latex.git'
Bundle 'http://github.com/vim-scripts/MatlabFilesEdition.git'
Bundle 'http://github.com/rayburgemeestre/phpfolding.vim.git'
Bundle 'http://github.com/spf13/PIV.git'
Bundle 'http://github.com/Lokaltog/vim-easymotion.git'
Bundle 'http://github.com/zaiste/tmux.vim.git'

" Haskell
Bundle 'raichoo/haskell-vim'
let g:haskell_enable_quantification = 1 " to enable highlighting of forall
let g:haskell_enable_recursivedo = 1 " to enable highlighting of mdo and rec
let g:haskell_enable_arrowsyntax = 1 " to enable highlighting of proc
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of pattern
let g:haskell_enable_typeroles = 1 " to enable highlighting of type roles

" Bundle 'enomsg/vim-haskellConcealPlus'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'eagletmt/neco-ghc'
Bundle 'Twinside/vim-hoogle'


" }}}


" set 7 linies offset to the cursur from bottom
set so=7

" Enable Matchit
runtime! macros/matchit.vim

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Show trailing whitespace
set list
" But only interesting whitespace
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif



" Tabstops and backspace related settings {
" --------------------------------------------
set tabstop=2                  " number of columns to shift for displaying <<TAB>>
set shiftwidth=2               " number of columns to shift in auto-indent mode << or >>
set softtabstop=2              " number of columns to shift in INSERT mode when hit <TAB>
set expandtab                  " expands tabs to spaces
set autoindent                 " copy indentation from the previous line ("stupid indent")
set backspace=eol,start,indent " allow backspacing over indent, eol, and the start of an insert
set whichwrap+=<,>,h,l


" Buffer related options {
" --------------------------------------------
set autoread                   " auto-loads a buffer when changed on disc
set wrapscan                   " set the search scan to wrap lines
set hidden                     " allow unsaved buffer
set lazyredraw                 " Don't update the display while executing macros
set textwidth=80               " Text width before wrapping lines
set clipboard+=unnamed         " To use system clipboard
" set encoding=utf8              " utf8 encoding, needed to show NERDTree properly
set ffs=unix,dos,mac           " EOF terminator type
set autochdir                  " Vim will change CWD automatically to the file opened
set number                     " shows line-number
set key=                       " Disable encryption (:X)


" Status line and other file info related stuff {
" --------------------------------------------
" set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set laststatus=2               " tell VIM to always put a status line in, even if there is only one window
set showcmd                    " shows last command at status line
set showmode                   " shows mode
set ch=1                       " make command line two lines high
" }


" Search related settings {
" --------------------------------------------
set showmatch                  " show the matching parentheses
set hlsearch                   " highlight match
set incsearch                  " incremental highlight of match
set noignorecase               " case sensitive search
" }


" GUI related things {
" --------------------------------------------
" set mousehide                  " Hide the mouse pointer while typing
" set guioptions=acg             " Hide gui menu
set timeoutlen=1500              " Some stuff I inherited
" Turn mouse mode on
nnoremap <leader>ma :set mouse=a<cr>
" Turn mouse mode off
nnoremap <leader>mo :set mouse=<cr>
" Default to mouse mode on
set mouse=a
" }


" Auto-complete stuff {
" --------------------------------------------
set history=700                " Command-line history
set wildmenu                   " command line auto-completion
set complete=.,w,b,t           " insert mode auto-completion
set showfulltag                " insert mode auto-completion with tag
" }


" Misc. settings {
" --------------------------------------------
set printoptions=header:0,duplex:long,paper:letter  " Printing options
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set shellslash                 " use windows/unix type slash for appropriate system
set vb                         " set visual bell -- do not wring it
set fillchars = ""             " something I don't understand
set grepprg=grep\ -nH\ $*      " grep option
set diffopt+=iwhite            " add ignorance of whitespace to diff
set magic                      " magic regular expression
set ambiwidth=double           " set wider character wider
" }


" Switch on syntax highlighting.
syntax on


" key mappings {
" Enhance '<' '>' , do not need to reselect the block after shift it.
vnoremap <silent> < <gv
vnoremap <silent> > >gv

" for Vim-latex
let g:tex_flavor='latex'

" Let the syntax highlighting for Java files allow cpp keywords
let java_allow_cpp_keywords = 1

" System default for mappings is now the "," character
let mapleader = ","

" Wipe out all buffers
nmap <silent> ,wa :1,9000bwipeout<cr>

" Toggle paste mode
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,md :!mkdir -p %:p:h<CR>

" Turn off that stupid highlight search
nmap <silent> ,n :nohls<CR>

" put the vim directives for my file editing settings in
nmap <silent> ,vi ovim:set ts=2 sts=2 sw=2:<CR>vim:fdm=marker fdl=1 fdc=0:<ESC>

" Show all available VIM servers
nmap <silent> ,ss :echo serverlist()<CR>

" The following beast is something i didn't write... it will return the
" syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as
" syntax highlighting goes.
nmap <silent> ,qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nmap <silent> ,cp :let @" = expand("%")<CR>

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Buffer creation
map <Tab> <C-W>w
map <Bar> <C-W>v<C-W><Right>
map -     <C-W>s<C-W><Down>

" set text wrapping toggles
nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>

" allow command line editing like emacs
cnoremap <C-A>      <Home>
cnoremap <C-B>      <Left>
cnoremap <C-E>      <End>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <End>
cnoremap <C-P>      <Up>
cnoremap <ESC>b     <S-Left>
cnoremap <ESC><C-B> <S-Left>
cnoremap <ESC>f     <S-Right>
cnoremap <ESC><C-F> <S-Right>
cnoremap <ESC><C-H> <C-W>

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Make horizontal scrolling easier
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh

" Add a GUID to the current line
imap <C-J>d <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>

" Search the current file for what's currently in the search register and display matches
nmap <silent> ,gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the word under the cursor and display matches
nmap <silent> ,gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the WORD under the cursor and display matches
nmap <silent> ,gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> ,u  :t.\|s/./-/g\|:nohls<cr>
nmap <silent> ,u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> ,u- :t.\|s/./-/g\|:nohls<cr>
nmap <silent> ,u~ :t.\|s/./\\~/g\|:nohls<cr>

" Shrink the current window to fit the number of lines in the buffer.  Useful
" for those buffers that are only a few lines
nmap <silent> ,sw :execute ":resize " . line('$')<cr>

" Tagbar plugin
nmap <F8> :TagbarToggle<CR>

" Use the bufkill plugin to eliminate a buffer but keep the window layout
nmap <Leader>bd :BD<cr>

" Use CTRL-E to replace the original ',' mapping
nnoremap <C-E> ,

" Make the current file executable
nmap <Leader>x :w<cr>:!chmod 755 %:p<cr>:e<cr>

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Initial path seeding
set path=
set tags=
set tags+=~/.ptags
" }


" Fugitive {
"-----------------------------------------------------------------------------
" Thanks to Drew Neil
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \  noremap <buffer> .. :edit %:h<cr> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete

nmap <Leader>gs :Gstatus<cr>
nmap <Leader>ge :Gedit<cr>
nmap <Leader>gw :Gwrite<cr>
nmap <Leader>gr :Gread<cr>
" }


" NERD Tree Plugin Settings {
"-----------------------------------------------------------------------------
" Toggle the NERD Tree on an off with F7
nmap <F7> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
nmap <S-F7> :NERDTreeClose<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" " Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
                   \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                   \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                   \ '\.intermediate\.manifest$', '^mt.dep$', '\.swp',
                   \ '\.swo' ]
" }


" L9 mappings {
"-----------------------------------------------------------------------------
" L9 creates an 'interesting' set of error formats when quickfix is engaged
" This mapping cleans it up
nmap <silent> ,eu :sign unplace *<cr>
" }


" FSwitch mappings {
"-----------------------------------------------------------------------------
nmap <silent> <Leader>of :FSHere<CR>
nmap <silent> <Leader>ol :FSRight<CR>
nmap <silent> <Leader>oL :FSSplitRight<CR>
nmap <silent> <Leader>oh :FSLeft<CR>
nmap <silent> <Leader>oH :FSSplitLeft<CR>
nmap <silent> <Leader>ok :FSAbove<CR>
nmap <silent> <Leader>oK :FSSplitAbove<CR>
nmap <silent> <Leader>oj :FSBelow<CR>
nmap <silent> <Leader>oJ :FSSplitBelow<CR>
" }


" FuzzyFinder Settings {
"-----------------------------------------------------------------------------
let g:fuf_splitPathMatching = 1
let g:fuf_maxMenuWidth = 110
let g:fuf_timeFormat = ''
nmap <silent> ,fv :FufFile ~/.vim/<cr>
nmap <silent> ,fc :FufMruCmd<cr>
nmap <silent> ,fm :FufMruFile<cr>

let g:CommandTMatchWindowAtTop = 1
let g:make_scala_fuf_mappings = 0
" }


" CtrlP Settings {
"-----------------------------------------------------------------------------
let g:ctrlp_switch_buffer = 'E'
let g:ctrlp_tabpage_position = 'c'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_root_markers = ['.project.root']
let g:ctrlp_custom_ignore = '\v%(/\.%(git|hg|svn)|\.%(class|o|png|jpg|jpeg|bmp|tar|jar|tgz|deb|zip)$|/target/)'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = '1ri'
let g:ctrlp_match_window = 'max:40'
let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-n>'],
  \ 'PrtSelectMove("k")':   ['<c-p>'],
  \ 'PrtHistory(-1)':       ['<c-j>', '<down>'],
  \ 'PrtHistory(1)':        ['<c-i>', '<up>']
\ }
map <Leader>fb :CtrlPBuffer<cr>
map <Leader>ff :CtrlP .<cr>
map <Leader>fr :CtrlP<cr>
map <Leader>fm :CtrlPMixed<cr>
" }


" SVN Helpers {
"-----------------------------------------------------------------------------
function! VCSDiffMore(from)
  let f = expand('%:p')
  let revisions = split(system("svn log " . f . " | grep '^r[0-9][0-9]*'"), '\n')
  let revisions = map(revisions, 'substitute(v:val, "r\\(\\d\\+\\) .*$", "\\1", "")')
  exec ":VCSVimDiff " . revisions[a:from]
endfunction
nmap <Leader>dd :call VCSDiffMore(0)<cr>
" }


" Autotags Settings {
"-----------------------------------------------------------------------------
let g:autotags_no_global = 0
let g:autotags_ctags_opts = "--exclude=target --exclude=vendor"
let g:autotags_ctags_languages = "+Scala,+Java,+Vim"
let g:autotags_ctags_langmap = "Scala:.scala,Java:.java,Vim:.vim,JavaScript:.js"
let g:autotags_ctags_global_include = ""
" }


" Gundo Settings {
"-----------------------------------------------------------------------------
nmap <c-F5> :GundoToggle<cr>
" }


" Functions and more key mappings {
"-----------------------------------------------------------------------------
if !exists('g:bufferJumpList')
    let g:bufferJumpList = {}
endif

function! MarkBufferInJumpList(bufstr, letter)
    let g:bufferJumpList[a:letter] = a:bufstr
endfunction

function! JumpToBufferInJumpList(letter)
    if has_key(g:bufferJumpList, a:letter)
        exe ":buffer " . g:bufferJumpList[a:letter]
    else
        echoerr a:letter . " isn't mapped to any existing buffer"
    endif
endfunction

function! ListJumpToBuffers()
    for key in keys(g:bufferJumpList)
        echo key . " = " . g:bufferJumpList[key]
    endfor
endfunction

function! IndentToNextBraceInLineAbove()
    :normal 0wk
    :normal "vyf(
    let @v = substitute(@v, '.', ' ', 'g')
    :normal j"vPl
endfunction

nmap <silent> ,ii :call IndentToNextBraceInLineAbove()<cr>

nmap <silent> ,mba :call MarkBufferInJumpList(expand('%:p'), 'a')<cr>
nmap <silent> ,mbb :call MarkBufferInJumpList(expand('%:p'), 'b')<cr>
nmap <silent> ,mbc :call MarkBufferInJumpList(expand('%:p'), 'c')<cr>
nmap <silent> ,mbd :call MarkBufferInJumpList(expand('%:p'), 'd')<cr>
nmap <silent> ,mbe :call MarkBufferInJumpList(expand('%:p'), 'e')<cr>
nmap <silent> ,mbf :call MarkBufferInJumpList(expand('%:p'), 'f')<cr>
nmap <silent> ,mbg :call MarkBufferInJumpList(expand('%:p'), 'g')<cr>
nmap <silent> ,jba :call JumpToBufferInJumpList('a')<cr>
nmap <silent> ,jbb :call JumpToBufferInJumpList('b')<cr>
nmap <silent> ,jbc :call JumpToBufferInJumpList('c')<cr>
nmap <silent> ,jbd :call JumpToBufferInJumpList('d')<cr>
nmap <silent> ,jbe :call JumpToBufferInJumpList('e')<cr>
nmap <silent> ,jbf :call JumpToBufferInJumpList('f')<cr>
nmap <silent> ,jbg :call JumpToBufferInJumpList('g')<cr>
nmap <silent> ,ljb :call ListJumpToBuffers()<cr>

function! DiffCurrentFileAgainstAnother(snipoff, replacewith)
  let currentFile = expand('%:p')
  let otherfile = substitute(currentFile, "^" . a:snipoff, a:replacewith, '')
  only
  execute "vertical diffsplit " . otherfile
endfunction

command! -nargs=+ DiffCurrent call DiffCurrentFileAgainstAnother(<f-args>)

function! RunSystemCall(systemcall)
  let output = system(a:systemcall)
  let output = substitute(output, "\n", '', 'g')
  return output
endfunction

function! HighlightAllOfWord(onoff)
  if a:onoff == 1
    :augroup highlight_all
    :au!
    :au CursorMoved * silent! exe printf('match Search /\<%s\>/', expand('<cword>'))
    :augroup END
  else
    :au! highlight_all
    match none /\<%s\>/
  endif
endfunction

:nmap <Leader>ha :call HighlightAllOfWord(1)<cr>
:nmap <Leader>hA :call HighlightAllOfWord(0)<cr>

function! LengthenCWD()
  let cwd = getcwd()
  if cwd == '/'
    return
  endif
  let lengthend = substitute(cwd, '/[^/]*$', '', '')
  if lengthend == ''
    let lengthend = '/'
  endif
  if cwd != lengthend
    exec ":lcd " . lengthend
  endif
endfunction

:nmap <Leader>ld :call LengthenCWD()<cr>

function! ShortenCWD()
  let cwd = split(getcwd(), '/')
  let filedir = split(expand("%:p:h"), '/')
  let i = 0
  let newdir = ""
  while i < len(filedir)
    let newdir = newdir . "/" . filedir[i]
    if len(cwd) == i || filedir[i] != cwd[i]
      break
    endif
    let i = i + 1
  endwhile
  exec ":lcd /" . newdir
endfunction

:nmap <Leader>sd :call ShortenCWD()<cr>

function! RedirToYankRegisterF(cmd, ...)
  let cmd = a:cmd . " " . join(a:000, " ")
  redir @*>
  exe cmd
  redir END
endfunction

command! -complete=command -nargs=+ RedirToYankRegister
  \ silent! call RedirToYankRegisterF(<f-args>)

function! ToggleMinimap()
  if exists("s:isMini") && s:isMini == 0
    let s:isMini = 1
  else
    let s:isMini = 0
  end

  if (s:isMini == 0)
    " save current visible lines
    let s:firstLine = line("w0")
    let s:lastLine = line("w$")

    " make font small
    " exe "set guifont=" . g:small_font
    " highlight lines which were visible
    let s:lines = ""
    for i in range(s:firstLine, s:lastLine)
      let s:lines = s:lines . "\\%" . i . "l"

      if i < s:lastLine
        let s:lines = s:lines . "\\|"
      endif
    endfor

    exe 'match Visible /' . s:lines . '/'
    hi Visible guibg=lightblue guifg=black term=bold
    nmap <s-j> 10j
    nmap <s-k> 10k
  else
    " exe "set guifont=" . g:main_font
    hi clear Visible
    nunmap <s-j>
    nunmap <s-k>
  endif
endfunction

command! ToggleMinimap call ToggleMinimap()

" I /literally/ never use this and it's pissing me off
" nnoremap <space> :ToggleMinimap<CR>
" }


" Commands {
"-----------------------------------------------------------------------------
" FreemindToList {
function! FreemindToListF()
  setl filetype=
  silent! :%s/^\(\s*\).*TEXT="\([^"]*\)".*$/\1- \2/
  silent! :g/^\s*</d
  silent! :%s/&quot;/"/g
  silent! :%s/&apos;/\'/g
  silent! g/^-/s/- //
  silent! g/^\w/t.|s/./=/g
  silent! g/^\s*-/normal O
  silent! normal 3GgqG
  silent! %s/^\s\{4}\zs-/o/
  silent! %s/^\s\{12}\zs-/+/
  silent! %s/^\s\{16}\zs-/*/
  silent! %s/^\s\{20}\zs-/#/
  silent! normal gg
endfunction

command! FreemindToList call FreemindToListF()
" }

" Auto commands {
"-----------------------------------------------------------------------------
augroup sayed_files
  au!
  au BufNewFile,BufRead  *.mi     set filetype=tcl
  au BufNewFile,BufRead  *.fi     set filetype=tcl
  au BufNewFile,BufRead *.pdb     set filetype=tcl
  au BufNewFile,BufRead *.log     set filetype=tcl
  au BufNewFile,BufRead   *.m     set filetype=matlab
  au BufNewFile,BufRead *.inc     set filetype=make
  au BufNewFile,BufRead *.dat     set filetype=perl
  au BufNewFile,BufRead *.t       set filetype=perl
  au BufNewFile,BufRead *.newrule set filetype=perl
  au BufNewFile,BufRead zirconQA  set fdm=marker
  " au BufNewFile,BufRead *.txt colorscheme slate
augroup END

autocmd BufEnter *.m compiler mlint
" }


" Fix constant spelling mistakes {
"-----------------------------------------------------------------------------
iab Acheive    Achieve
iab acheive    achieve
iab Alos       Also
iab alos       also
iab Aslo       Also
iab aslo       also
iab Becuase    Because
iab becuase    because
iab Bianries   Binaries
iab bianries   binaries
iab Bianry     Binary
iab bianry     binary
iab Charcter   Character
iab charcter   character
iab Charcters  Characters
iab charcters  characters
iab Exmaple    Example
iab exmaple    example
iab Exmaples   Examples
iab exmaples   examples
iab Fone       Phone
iab fone       phone
iab Seperate   Separate
iab seperate   separate
iab Seureth    Suereth
iab seureth    suereth
iab Shoudl     Should
iab shoudl     should
iab Taht       That
iab taht       that
iab Teh        The
iab teh        the
" }

" Remember last cursor location {
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" }

" All of my unstructured stuffs {

" saving macros
let @a = ':%s/ /\/g\ggvG'

nmap <silent> ,src :set lines=42 columns=158<CR>
nmap <silent> ,srr :set lines=42<CR>
nmap <silent> ,scc :set columns=158<CR>
nmap <silent> <F5> :!%<CR>
imap <silent> <F5> <ESC>:w<CR>:!%<CR>
nmap <silent> <F6> :!perl -d:ptkdb %&<CR>

" perl related settings
let perl_include = 1
let perl_extended_vars = 1
let perl_want_scope_in_variables = 1

" autocmd Filetype perl :set equalprg=perltidy\ -i=2\ -nt\ -msc=2\ -ci=2\ -dsm\ -asc\ -lp\ -l=110\ -isbc\ -dws\ -w
" nmap <silent> ,p ggO#!/usr/intel/pkgs/perl/5.8.5/bin/perl<CR><CR>use strict;<CR>use warnings;<CR><CR><ESC><C-V>4kx6Gdd:w<CR>:!chmod u+x %:p<CR>:e<CR>
" nmap <silent> ,p ggO#!/usr/intel/pkgs/perl/5.14.1/bin/perl<CR><CR>use strict;<CR>use warnings;<CR><CR><ESC><C-V>4kx6Gdd:w<CR>:!chmod u+x %:p<CR>:e<CR>
nmap <silent> ,p ggO<ESC>:r ~/commands/perl_template.pl<CR>ggddG:se ft=perl<CR>:w<CR>:!chmod u+x %:p<CR>
nmap <silent> ,py ggO#!/nfs/pdx/home/shasan/usr/pkgs/python/2.7.6/bin/python<CR><ESC>:!chmod u+x %:p<CR>G
nmap <silent> ,py3 ggO#!/nfs/pdx/home/shasan/usr/pkgs/python/3.4.0/bin/python3<CR><ESC>:!chmod u+x %:p<CR>G


" folding stuff
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" shortcut to bright colorschemes
nmap <silent> <C-S-F1> :colorscheme visualstudio<CR>
nmap <silent> <C-S-F3> :colorscheme dual<CR>
nmap <silent> <C-S-F5> :colorscheme emacs<CR>
nmap <silent> <C-S-F7> :colorscheme default<CR>

" shortcut to mte colorschemes
nmap <silent> <C-S-F2> :colorscheme slate<CR>
nmap <silent> <C-S-F4> :colorscheme xoria256<CR>
nmap <silent> <C-S-F6> :colorscheme mustang<CR>

map <silent> <F1> "zyiw:he <C-R>"<CR>

inoremap <Leader>fn <C-R>=expand("%:t")<CR>
inoremap <Leader>fp <C-R>=getcwd()<CR>

"set guifont=Menlo:h14
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set gfn=Inconsolata\ 16
try
  colorscheme solarized
  " set background=light
  set background=dark
catch
endtry

set number
set laststatus=2
set showcmd
set showmode
set hlsearch
set incsearch
set encoding=utf-8

"+----------------------------
"| airline
"+----------------------------
" let g:airline_theme             = 'solarized'
" let g:airline_enable_branch     = 1
" let g:airline_enable_syntastic  = 1
" let g:airline_left_sep          = ''
" let g:airline_left_alt_sep      = ''
" let g:airline_right_sep         = ''
" let g:airline_right_alt_sep     = ''
" let g:airline_branch_prefix     = ''
" let g:airline_readonly_symbol   = ''
" let g:airline_linecolumn_prefix = ''
" let g:airline_powerline_fonts   = 1
" let g:airline_detect_modified   = 1
" let g:airline_detect_paste      = 1
set lazyredraw
" }

" set tags=/nfs/pdx/disks/tcad_ptm_pdmg_work_12/usr/shasan/2014/Q1/mds/tags;
set tags=./tags;

"+----------------------------
"| vim-latex configuration
"+----------------------------
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""

set shellredir=>
" set shortmess+=I

" run the current line as shell command
nmap <C-S-F1> :echo system(getline('.'))<CR>


" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

augroup whitespace
  autocmd!
  autocmd BufWrite *.hs :call DeleteTrailingWS()
augroup END


nmap <Leader>ccc :%s/\s\+$//g<CR>
nmap <silent> ,wa :1,9000bwipeout<cr>


"----------------------------------
" google style
"----------------------------------
" Show line numbers.
set number

" Turn on syntax highlighting.
syntax on

" Detect if the current file type is a C-like language.
au BufNewFile,BufRead c,cpp,objc,*.mm call SetupForCLang()

" Configuration for C-like languages.
function! SetupForCLang()
    " Highlight lines longer than 80 characters.
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
    " Alternately, uncomment these lines to wrap at 80 characters.
    " setlocal textwidth=80
    " setlocal wrap

    " Use 2 spaces for indentation.
    setlocal shiftwidth=2
    setlocal tabstop=2
    setlocal softtabstop=2
    setlocal expandtab

    " Configure auto-indentation formatting.
    setlocal cindent
    setlocal cinoptions=h1,l1,g1,t0,i4,+4,(0,w1,W4
    setlocal indentexpr=GoogleCppIndent()
    let b:undo_indent = "setl sw< ts< sts< et< tw< wrap< cin< cino< inde<"

    " Uncomment these lines to map F5 to the CEF style checker. Change the path to match your system.
    map! <F5> <Esc>:!python /tmp/shasan/Code/chromium/cef3/tools/check_style.py %:p 2> lint.out<CR>:cfile lint.out<CR>:silent !rm lint.out<CR>:redraw!<CR>:cc<CR>
    map  <F5> <Esc>:!python /tmp/shasan/Code/chromium/cef3/tools/check_style.py %:p 2> lint.out<CR>:cfile lint.out<CR>:silent !rm lint.out<CR>:redraw!<CR>:cc<CR>
endfunction

" From https://github.com/vim-scripts/google.vim/blob/master/indent/google.vim
function! GoogleCppIndent()
    let l:cline_num = line('.')

    let l:orig_indent = cindent(l:cline_num)

    if l:orig_indent == 0 | return 0 | endif

    let l:pline_num = prevnonblank(l:cline_num - 1)
    let l:pline = getline(l:pline_num)
    if l:pline =~# '^\s*template' | return l:pline_indent | endif

    " TODO: I don't know to correct it:
    " namespace test {
    " void
    " ....<-- invalid cindent pos
    "
    " void test() {
    " }
    "
    " void
    " <-- cindent pos
    if l:orig_indent != &shiftwidth | return l:orig_indent | endif

    let l:in_comment = 0
    let l:pline_num = prevnonblank(l:cline_num - 1)
    while l:pline_num > -1
        let l:pline = getline(l:pline_num)
        let l:pline_indent = indent(l:pline_num)

        if l:in_comment == 0 && l:pline =~ '^.\{-}\(/\*.\{-}\)\@<!\*/'
            let l:in_comment = 1
        elseif l:in_comment == 1
            if l:pline =~ '/\*\(.\{-}\*/\)\@!'
                let l:in_comment = 0
            endif
        elseif l:pline_indent == 0
            if l:pline !~# '\(#define\)\|\(^\s*//\)\|\(^\s*{\)'
                if l:pline =~# '^\s*namespace.*'
                    return 0
                else
                    return l:orig_indent
                endif
            elseif l:pline =~# '\\$'
                return l:orig_indent
            endif
        else
            return l:orig_indent
        endif

        let l:pline_num = prevnonblank(l:pline_num - 1)
    endwhile

    return l:orig_indent
endfunction
