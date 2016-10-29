" ----------------------------------------------------------------------------
"  0 plugins
" ----------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

Plug 'chriskempson/base16-vim' " base16 colorscheme
" Plug 'altercation/vim-colors-solarized' " Solarized colorscheme.
" Plug 'frankier/neovim-colors-solarized-truecolor-only' " Solarized colorscheme for Neovim.
Plug 'vim-airline/vim-airline' " Lean & mean status/tabline that's light as air.
Plug 'vim-airline/vim-airline-themes' " Collection of themes for vim-airline.
Plug 'easymotion/vim-easymotion' " Vim motions on speed.
" Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file, bufffer, mru, tag, etc finder.
" Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } " A file tree explorer.
Plug 'scrooloose/nerdcommenter' " Intensely orgasmic commenting.
Plug 'tpope/vim-surround' " Quoting/parenthesizing made simple.
" Plug 'tpope/vim-repeat' " Enable repeating supported plugin maps with ".".
Plug 'tpope/vim-unimpaired' " Pairs of handy bracket mappings.
" Plug 'tpope/vim-speeddating' " Use CTRL-A/CTRL-X to increment dates, times, and more.
Plug 'tpope/vim-sleuth' " Detect indent style (tabs vs. spaces).
" Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'Raimondi/delimitMate' " Provides insert mode auto-completion for quotes, parens, brackets, etc.
" Plug 'ervandew/supertab' " All insert mode completions with Tab.
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' } " Code completion engine.
" Plug 'scrooloose/syntastic' " Synchronous syntax checking for vim.
" Plug 'neomake/neomake' " Asynchronous syntax checking for neovim, replacement for syntastic.
" Plug 'majutsushi/tagbar' " Display tags in a window.
" Plug 'ludovicchabant/vim-gutentags' " Automatic tag management.
" Plug 'airblade/vim-gitgutter' " Show git diff in the gutter.
" Plug 'godlygeek/tabular' " Script for text filtering and alignment.
" Plug 'junegunn/vim-easy-align' " Alignment plugin.
Plug 'Yggdroot/indentLine' " Display the indention levels with thin vertical lines.
Plug 'ntpeters/vim-better-whitespace' " Highlight trailing whitespace in red.
Plug 'sickill/vim-pasta' " Context-aware pasting.
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits.
" Plug 'tmux-plugins/vim-tmux-focus-events' "Make terminal vim and tmux work better together.
" Plug 'edkolev/tmuxline.vim' " Simple tmux statusline generator.
" Plug 'terryma/vim-multiple-cursors' " Sublime Text style multiple selections.
" Plug 'junegunn/goyo.vim' " Distraction-free writing.
Plug 'justinmk/vim-syntax-extra' " Better syntax highlighting for C.
" Plug 'JamshedVesuna/vim-markdown-preview' " A light Vim plugin for previewing markdown files in a browser.
Plug 'mileszs/ack.vim' " Plugin for the Perl module/CLI script 'ack'.

call plug#end()

" ----------------------------------------------------------------------------
"  1 important
" ----------------------------------------------------------------------------
set nocompatible " use vim mode, not compatible with vi

" ----------------------------------------------------------------------------
"  2 moving around, searching and patterns
" ----------------------------------------------------------------------------
set incsearch " show match for partly typed search command
set ignorecase " ignore case when using a search pattern
set smartcase " override 'ignorecase' when pattern has upper case characters

" ----------------------------------------------------------------------------
"  3 tags
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  4 displaying text
" ----------------------------------------------------------------------------
set list " highlight whitespace chars
set listchars=tab:\|\ ,eol:¬,trail:⋅,extends:❯,precedes:❮ " highlight whitespace chars
set number " show line numbers
set lazyredraw " don't redraw while executing macros
set linebreak " set soft wrapping
set showbreak=\ \ \ ↪ " show indented arrow at beginning of soft-wrapped line

" ----------------------------------------------------------------------------
"  5 syntax, highlighting and spelling
" ----------------------------------------------------------------------------
set cursorline " highlight the screen line of the cursor
set cursorcolumn " highlight the screen column of the cursor
"set colorcolumn=80 " highlight column 80
filetype indent on " load filetype-specific indent files
syntax enable
set synmaxcol=160 " speed up editing of files with long lines
set hlsearch " highlight all matches for the last used search pattern
set spelllang=en " set spellcheck language

" ----------------------------------------------------------------------------
"  6 multiple windows
" ----------------------------------------------------------------------------
set laststatus=2 " always show a status line
set hidden " hide buffers instead of closing them (no need to save)
set splitbelow " a new window is put below the current one
set splitright " a new window is put right of the current one

" ----------------------------------------------------------------------------
"  7 multiple tab pages
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
"  8 terminal
" ----------------------------------------------------------------------------
set title " show info in the terminal window title
set ttyfast " indicates a fast terminal connection to make redrawing smoother

" ----------------------------------------------------------------------------
"  9 using the mouse
" ----------------------------------------------------------------------------
if has('mouse')
  set mouse=a " enable mouse support
endif

" ----------------------------------------------------------------------------
" 10 printing
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 11 messages and info
" ----------------------------------------------------------------------------
set ruler " show cursor position below each window
set shortmess+=I " remove useless splash screen after start
set showcmd " show incomplete commands in status line
set showmode " display the current mode in the status line
set confirm " start a dialog when a command fails
set visualbell " use a visual bell instead of beeping

" ----------------------------------------------------------------------------
" 12 selecting text
" ----------------------------------------------------------------------------
set selection=inclusive " makes multiple cursor plugin work in GVim/MacVim
if has("clipboard")
  set clipboard=unnamed " yank to system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
" ----------------------------------------------------------------------------
" 13 editing text
" ----------------------------------------------------------------------------
set undolevels=1000 " mucho mucho undo
set showmatch " highlight matching [{()}]
set backspace=indent,eol,start " allow backspace over everything in insert mode

" ----------------------------------------------------------------------------
" 14 tabs and indenting
" ----------------------------------------------------------------------------
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in a tab when editing
set shiftwidth=4 " number of spaces used for each step of (auto)indent
set expandtab " use spaces instead of tabs
set smarttab " a <Tab> in an indent inserts 'shiftwidth' spaces
set autoindent " automatically set the indent of a new line
set smartindent " do clever autoindenting

" ----------------------------------------------------------------------------
" 15 folding
" ----------------------------------------------------------------------------
set foldenable " enable folding
set foldmethod=syntax " fold based on syntax
set foldlevel=10 " folds with a level higher than this number will be closed

" ----------------------------------------------------------------------------
" 16 diff mode
" ----------------------------------------------------------------------------
set diffopt+=vertical " options for diff mode

" ----------------------------------------------------------------------------
" 17 mapping
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 18 reading and writing files
" ----------------------------------------------------------------------------
set autoread " automatically read a file when it was modified outside of Vim

" ----------------------------------------------------------------------------
" 19 the swap file
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 20 command line editing
" ----------------------------------------------------------------------------
set history=1000 " mucho mucho command history
set wildmenu " command-line completion shows a list of matches

" ----------------------------------------------------------------------------
" 21 executing external commands
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 22 running make and jumping to errors
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 23 language specific
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 24 multi-byte characters
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" 25 various
" ----------------------------------------------------------------------------
" Use ; as the leader key.
let mapleader = ';'

" Saves the current cursor position, removes all trailing whitespaces, and returns to the saved cursor position.
fun! <SID>StripTrailingWhitespaces()
  " Only strip if the b:noStripWhitespace variable is not set.
  if exists('b:noStripWhitespace')
    return
  endif
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" Automatically remove trailing spaces on write.
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Make the default filetype for every new file 'text'.
autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif

" Do not strip trailing spaces in plain text files.
autocmd FileType text,markdown,pandoc let b:noStripWhitespace=1

" Set indentation to 2 spaces when editing TeX files.
autocmd FileType plaintex,tex,latex setlocal ts=2 sw=2 sts=2 expandtab
autocmd BufEnter *.tex setlocal ts=2 sw=2 sts=2 expandtab

" Set indentation to 4 spaces when editing Python files.
autocmd FileType python setlocal ts=4 sw=4 sts=4 expandtab
autocmd BufEnter *.py setlocal ts=4 sw=4 sts=4 expandtab

" Set indentation to 4 spaces when editing Markdown files.
autocmd FileType markdown,pandoc setlocal ts=4 sw=4 sts=4 expandtab
autocmd BufEnter *.md setlocal ts=4 sw=4 sts=4 expandtab

" Type w!! if you forgot to sudo.
cmap w!! w !sudo tee % >/dev/null

" Show search matches in the middle of the window.
nnoremap n nzz
nnoremap N Nzz

" Clear highlighted search.
noremap <space> :set hlsearch! hlsearch?<cr>

" Shortcuts to quickly edit and source vimrc.
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Navigate by display lines, not file lines.
"noremap  <buffer> <silent> k gk
"noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
" Navigate by physical lines when used with a count, otherwise use virtual lines.
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" ----------------------------------------------------------------------------
" vim-airline settings
" ----------------------------------------------------------------------------
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1 " Attention: Requires powerline fonts!
let g:airline#extensions#tabline#enabled = 1 " show buffers at the top if only one tab is open
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" ----------------------------------------------------------------------------
" EasyMotion settings
" ----------------------------------------------------------------------------
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1 " smartcase mode

" ----------------------------------------------------------------------------
" NERDTree settings
" ----------------------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR> " open NERDTree with Ctrl + n
let NERDTreeShowHidden=1 " show hidden files

" ----------------------------------------------------------------------------
" NERDCommenter settings
" ----------------------------------------------------------------------------
let g:NERDSpaceDelims = 1 " add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " use compact syntax for prettified multi-line comments

" ----------------------------------------------------------------------------
" YouCompleteMe settings
" ----------------------------------------------------------------------------
let g:ycm_confirm_extra_conf = 0

" ----------------------------------------------------------------------------
" vim-multiple-cursors settings
" ----------------------------------------------------------------------------
" let g:multi_cursor_start_key='<C-M>' " map start key separately from next key

" ----------------------------------------------------------------------------
" Goyo settings
" ----------------------------------------------------------------------------
map <C-g> :Goyo<CR> " open Goyo with Ctrl + g
"let g:goyo_width=120
let g:goyo_height="65%"

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set nocursorcolumn
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=0
  set cursorcolumn
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" ----------------------------------------------------------------------------
" indentLine settings
" ----------------------------------------------------------------------------
" let g:indentLine_color_gui = '#839496'
let g:indentLine_char = '│'

" ----------------------------------------------------------------------------
" vim-markdown-preview settings
" ----------------------------------------------------------------------------
" let vim_markdown_preview_hotkey='<C-m>' " map hotkey to Ctrl+M
let vim_markdown_preview_github=1 " use GitHub flavoured markdown
let vim_markdown_preview_toggle=2 " display images automatically on buffer write

" ----------------------------------------------------------------------------
" vim-tmux-navigator settings
" ----------------------------------------------------------------------------
" Workaround to make Ctrl+h work in NeoVim
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" ----------------------------------------------------------------------------
" ack.vim settings
" ----------------------------------------------------------------------------
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ----------------------------------------------------------------------------
" visual setup
" ----------------------------------------------------------------------------
set t_Co=256 " enable 256 colors

" Spelling error highlighting.
autocmd ColorScheme * hi clear SpellBad
  \| hi SpellBad cterm=undercurl,bold ctermfg=red

" Colorscheme.
"set termguicolors " required by nvim to display some colorschemes correctly (TODO use this option in the future)
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 " (TODO remove this in the future)

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
else
  let base16colorspace=256
  colorscheme base16-monokai
endif

" GUI Font.
if has('gui_running')
  "set linespace=2
  if has('gui_gtk2') " GNU/Linux
    set guifont=Hack 12
  else " macOS
    set guifont=Hack:h12
  endif
endif
