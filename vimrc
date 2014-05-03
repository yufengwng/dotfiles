" Yufeng Wang vimrc config file "

" make vim more useful!
set nocompatible

" use pathogen as plugin manager
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" vim behavior
set title               " change terminal title
set number              " set line numbering
set hidden              " hide buffers instead of closing
set mouse=a             " enable mouse
set scrolloff=5         " keep lines above and below cursor
set autoread            " refresh when file is changed outside
set spelllang=en_us     " set spelling language to English
set background=dark
"colorscheme molokai

" searching
set hlsearch            " highlight search terms
set incsearch           " show search matches as you type
set ignorecase          " case insensitive search
set smartcase           " case sensitive when uppercase present

" tab settings
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
autocmd BufNewFile,BufRead *.py set tabstop=4 shiftwidth=4 softtabstop=4

" enable native syntax highlight for markdown with .md extension
autocmd BufNewFile,BufRead *.md set filetype=markdown

" kick vim into 256 colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" vim-airline config
set laststatus=2        " enable airline all the time
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" latex support
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Syntastic
let g:syntastic_java_javac_classpath = '/home/yufeng/androidSDK/platforms/android-19/android.jar'

let mapleader = '\'

" clear search highlights
nmap <leader>c :nohlsearch<CR>

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab settings
nmap <leader>e :tabprevious<CR>
nmap <leader>r :tabnext<CR>
nmap <leader>t :tabedit <C-r>=expand("%:p:h")<CR>/

" buffer settings
nmap <leader>b :buffers<CR>
nmap <C-b> :bprevious<CR>
nmap <C-n> :bnext<CR>
nmap <C-d> :bdelete<CR>
nmap <C-e> :edit <C-r>=expand("%:p:h")<CR>/

" key mappings
nnoremap j gj
nnoremap k gk
nmap <F5> :edit<CR>
nmap <F8> :set mouse=a<CR>
nmap <F9> :set mouse=""<CR>
nmap <F12> :set spell!<CR>
nmap <leader>p :set paste!<CR>
nmap <leader>w :write<CR>
nmap <leader>q :quit<CR>
nmap <C-a> ggvG$

" plugin mappings
nmap <F2> :CtrlPMixed<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

