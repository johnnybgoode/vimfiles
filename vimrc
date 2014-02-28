" be improved
set nocompatible
" mouse support
set mouse=ni
" line numbers
set nu
" colors
syntax on
set t_Co=256
set background=dark
" colorscheme tango_jeiv
colorscheme candycode
" file type
set fileformats=unix,mac
" backspacing
set backspace=indent,eol,start
" indentation
set autoindent
"set smartindent
" tabs
set tabstop=2
set ts=2
set sts=2
set sw=2
" searching
set ic
set scs
set hlsearch
set showmatch
set incsearch
" visual bell
set vb
" tmp paths
set backupdir=/tmp
set directory=/tmp
" timeout
set timeoutlen=500
" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
if expand('%:t') != ''
	au BufWinLeave * mkview
	au BufWinEnter * silent loadview
endif
" current line/column highlighting
" color list: http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=234 " #1c1c1c
hi CursorColumn cterm=NONE ctermbg=234  " #1c1c1c
" use unnamed register for global clipboard
set clipboard=unnamedplus
" force tabs
nnoremap gf <C-W>gf
cab et tabe
" easy editing/reloading of vimrc
:nmap ,s :source $HOME/.vimrc<enter>
:nmap ,v :et $HOME/.vimrc<enter>

" misc shortcuts
:nmap ,A $
:nmap ,I ^
:nmap mof :set mouse=<enter>
:nmap mon :set mouse=ni<enter>

" mouse wheel for scrolling only
:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>
:map <2-MiddleMouse> <Nop>
:imap <2-MiddleMouse> <Nop>
:map <3-MiddleMouse> <Nop>
:imap <3-MiddleMouse> <Nop>
:map <4-MiddleMouse> <Nop>
:imap <4-MiddleMouse> <Nop>
:map <5-MiddleMouse> <Nop>
:imap <5-MiddleMouse> <Nop>
