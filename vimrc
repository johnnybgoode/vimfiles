" be improved
set nocompatible
" mouse support
set mouse=n
" line numbers
set nu
" colors
syntax on
set t_Co=256
set background=dark
colorscheme autumn
" file type
set fileformats=unix,mac
" backspacing
set backspace=indent,eol,start
" indentation
set autoindent
set smartindent
" tabs
set tabstop=4
set sts=4
set sw=4
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
au BufWinLeave * mkview
au BufWinEnter * silent loadview
" current line/column highlighting
" color list: http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=234 " #1c1c1c
hi CursorColumn cterm=NONE ctermbg=234  " #1c1c1c
