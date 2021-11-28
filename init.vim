set nocompatible
filetype off
set encoding=utf-8
set relativenumber
set number

call plug#begin()

" Plug 'davidhalter/jedi-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tmhedberg/SimpylFold'
" Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'vim-scripts/indentpython.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'kristijanhusak/orgmode.nvim'


" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()
filetype plugin indent on
syntax on


let g:snipMate = { 'snippet_version': 1 }

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bN<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-f> :FZF<CR>
nnoremap ; :
nnoremap : ;
imap <C-s> <Plug>snipMateNextOrTrigger
smap <C-s> <Plug>snipMateNextOrTrigger
nnoremap <F5> :term python3 %<CR>



au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set autoindent |
	\ set colorcolumn=80 |
	\ set fileformat=unix |
	\ set expandtab

au BufNewFile,BufRead *.{js,ts,json}
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set autoindent |
	\ set fileformat=unix |
	\ set expandtab



au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
set listchars=tab:>~,nbsp:_,trail:.
set list

set foldmethod=indent
set foldlevel=99
nnoremap <Space> za





set shortmess+=I




set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch
set noswapfile
set noerrorbells
set mouse+=a

set guicursor=a:blinkon100





set shell=/bin/bash







nmap Q <Nop>
hi Pmenu ctermbg=109 guibg=White
