" be improved
set nocompatible

" mouse support
set mouse=ni

" line numbers
set nu

" colors
syntax on

" Override colors and highlight groups after colorscheme is loaded
autocmd ColorScheme * hi Normal ctermbg=234 guibg=#1c1c1c
autocmd ColorScheme * hi StatusLine ctermbg=NONE guibg=#1c1c1c
" auto highlight trailing whitespace
autocmd ColorScheme * hi TrailingWhitespace guifg=#ffffe0 guibg=#284f28 ctermfg=230 ctermbg=22
autocmd ColorScheme * match TrailingWhitespace /\s\+$/

" colorscheme tango_jeiv
" colorscheme candycode
let g:zenburn_transparent=1
"let g:zenburn_high_Contrast=1
let g:zenburn_alternate_Visual=1
let g:zenburn_disable_Lable_underline=1
colorscheme zenburn


" file type
set fileformats=unix,mac

" backspacing
set backspace=indent,eol,start

" indentation
set autoindent
set smartindent

" tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

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
set timeoutlen=250

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
hi CursorLine cterm=NONE ctermbg=235 " #1c1c1c
hi CursorColumn cterm=NONE ctermbg=234  " #1c1c1c

" use unnamed register for global clipboard
set clipboard=unnamed

" force tabs
nnoremap gf <C-W>gf
cab et tabe

" remap tab navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"remap leader (\)
nnoremap <Space> <Nop>
let mapleader=" "

" easy editing/reloading of vimrc
nmap <leader>s :source $HOME/.vimrc<enter>
nmap <leader>e :et $HOME/.vimrc<enter>

" better line traversal
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" colemak line traversal
let colemak=0
if colemak==1
  remap n h
  remap e j
  remap i k
  remap l o
endif

" emulate emacs/bash Ctrl-a and Ctrl-e movement in the : prompt
cnoremap <C-A> <Home>
cnoremap <C-E> <End>

" Move lines up/down with alt-k/alt-j
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" misc shortcuts
nmap <leader>a u$
nnoremap <leader>i ^
nmap <leader>m :set mouse=<enter>
nmap <leader>M :set mouse=ni<enter>
nmap <leader>t :retab<CR>

" mouse wheel for scrolling only
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>
map <5-MiddleMouse> <Nop>
imap <5-MiddleMouse> <Nop>

" replace word with buffer
" TODO figure out better handling for middle of line vs end of line
" instaed of two mappings
nnoremap  <leader>r :execute 'normal "tdw' <bar> :execute 'normal "*p' <CR>
nnoremap  <leader>R :execute 'normal "tdw' <bar> :execute 'normal "*P' <CR>

" Turn off swap
set noswapfile

" smart indent when entering insert mode with i on emtpy line
"function! IndentWithI()
"  if len(getline('.')) == 0
"    return "\"_ddO"
"  else
"    return "i"
"  endif
"endfunction

"nnoremap <expr> i IndentWithI()

" make this into a plugin
" :silent execute \"!myscript &>/dev/null &\" | redraw!

" Install plugins
call plug#begin()

Plug 'edkolev/tmuxline.vim'
Plug 'https://github.com/jistr/vim-nerdtree-tabs.git'
Plug 'justinmk/vim-sneak'
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Plugin config

"  nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

"  airline
set laststatus=2

let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline_inactive_collapse=1

"  tmuxline
" disable so tmuxline doesn't overwrite the tmux config
let g:airline#extensions#tmuxline#enabled = 0

"  Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.(git|hg|svn)\|node_modules$\|log\|tmp$',
  \ 'file': '\.(so|dat|DS_Store)$',
  \ }
nmap <leader>lw :CtrlP<CR><C-\>w

" Tagbar
nnoremap <leader>tt :TagbarToggle<CR>

" Colemak
nnoremap <leader>K source "$HOME/.vim/vim-colemak/plugin/colemak.vim"

" Surround


" ZMK
"
function! ZReplace(l_start, l_end)
  " :<, >s/[ ]{2,}/;;/g
  execute a:l_start . ',' . a:l_end . 's/[ ]\{2,\}/;;/g'
  " reselect the visual area after the command executes
  execute "normal! gv"
endfunction

function! ZPad(l_start, l_end)
  let i = 0
  let delim = ';;'
  let num_lns = a:l_end - a:l_start
  let upr_lns = num_lns - 2  " number of non-thumb rows
  let upr_d   = repeat(delim, 7)
  let lwr_d   = repeat(delim, 2)

  for ln in range(a:l_start, a:l_end)
    if i <= upr_lns
      let cur_line = getline(ln)
      let new_line = substitute(cur_line, ',;;', ','.upr_d, 'g')
      call setline(ln, new_line)
    endif
    if i == num_lns
      let cur_line = getline(ln)
      let new_line = substitute(cur_line, ',;;', ','.lwr_d, '')
      let new_line = substitute(new_line, '.*,\zs;;\ze', lwr_d, 'g')
      call setline(ln, new_line)
    endif
    let i = i + 1
  endfor
  execute "normal! gv"
endfunction

function! ZFormatTable() range
  let l:l_start = a:firstline
  let l:l_end = a:lastline

  call ZReplace(l_start, l_end)
  call ZPad(l_start, l_end)

  let column = '/opt/homebrew/opt/util-linux/bin/column'
  execute ': silent ' . l_start . ',' . l_end . "! COLS=`echo {1..35} | sed 's/ /,/g'`; " . column . " -s';;' -o' ' -t -R \"$COLS\" 2>/dev/null"

  execute "normal! \<esc>"
endfunction

command! -range ZTable <line1>,<line2>call ZFormatTable()

