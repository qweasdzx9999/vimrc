set guifont=Fira\ Code\ +\ WFM\ Sans\ SC:h18
au GUIEnter * simalt ~x

filetype on
filetype plugin on
filetype indent on

set encoding=utf-8
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set number
set signcolumn=yes
set backspace=2

set incsearch
set ignorecase
set smartcase
set hlsearch
set history=1000

set nocompatible
set noswapfile
set nobackup
set nowritebackup
set noshowmode

set belloff=all

set updatetime=300

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=e  "tab
set laststatus=2

call plug#begin()

Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'psliwka/vim-smoothie'
Plug 'frazrepo/vim-rainbow'
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

let g:rainbow_active = 1

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

map fw <Plug>(easymotion-w)
map fb <Plug>(easymotion-b)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)

inoremap <expr><C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
imap <C-u> <Plug>(coc-snippets-expand)

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <C-h> coc#pum#visible() ? coc#pum#confirm() : "\<C-h>"

let g:coc_global_extensions = ['coc-json', 'coc-git','coc-pyright','coc-tsserver','coc-vimlsp','coc-snippets']
