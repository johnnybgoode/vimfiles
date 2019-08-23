" be improved
set nocompatible

" mouse support
set mouse=ni
if &term =~ '^screen'
  set ttymouse=xterm2
endif

" line numbers
set nu

" colors
syntax on

" Override colors and highlight groups after colorscheme is loaded
autocmd ColorScheme * hi Normal ctermbg=234 guibg=#1c1c1c
" autocmd ColorScheme * hi StatusLine ctermbg=188 guibg=#1c1c1c ctermfg=0
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

"let &colorcolumn="80,".join(range(120,999),",")
"highlight ColorColumn ctermbg=235 guibg=#2c2d27

" file type
set fileformats=unix,mac

" status line
set statusline=%F     " Full filepath
set statusline+=%=    " Switch to the right side
set statusline+=%l    " Current line
set statusline+=/     " Separator
set statusline+=%L    " Total lines
set statusline+=:
set statusline+=%c

" backspacing
set backspace=indent,eol,start

" indentation
set autoindent
set smartindent

" tabs
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

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
set timeoutlen=100

" command line autocomplete
set wildmode=longest,list,full
set wildmenu

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevelstart=1
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

" remap tap navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"remap leader (\)
let mapleader=" "

" easy editing/reloading of vimrc
nmap <leader>s :source $HOME/.vimrc<enter>
nmap <leader>v :et $HOME/.vimrc<enter>

" better line traversal
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

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
nmap <leader>a $
nmap <leader>i ^
nmap <leader>m :set mouse=<enter>
nmap <leader>M :set mouse=ni<enter>
nmap <leader>t :retab<CR>:%s;^\(\s\{2\}\);\=repeat(' ', len(submatch(0)));g<CR>:noh<CR>:0<CR>

" Quit on :Q because sometimes you sit on the Shift too long.
:command Q q
:command Qa qa

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


" Turn off swap
set noswapfile
set backupcopy=yes

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

" plugins
execute pathogen#infect()

"  nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>

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
