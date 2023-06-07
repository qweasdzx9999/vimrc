au GUIEnter * simalt ~x
set guioptions -=m 
set guioptions -=r 
set guioptions -=T
set guioptions -=e
set guifont=Hack\ Regular:h20

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline


set encoding=utf-8
set number
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set hlsearch
set history=1000
set backspace=2
set noswapfile
set noshowmode
set belloff=all


set updatetime=300
set signcolumn=yes
set laststatus=2

call plug#begin()

Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'psliwka/vim-smoothie'

Plug 'itchyny/lightline.vim'

Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-commentary'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'

call plug#end()

set background=dark
set termguicolors
colorscheme deep-space
let g:lightline = {'colorscheme': 'deepspace'}

"coc
" Use <C-l> for trigger snippet expand.
imap <C-u> <Plug>(coc-snippets-expand)

inoremap <silent><expr><C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <silent><expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
