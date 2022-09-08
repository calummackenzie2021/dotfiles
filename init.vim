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
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-commentary'

" Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'sharkdp/fd'
Plug 'RishabhRD/popfix'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'shaunsingh/nord.nvim'

call plug#end()
filetype plugin indent on
syntax on

colorscheme nord
let g:mkdp_auto_close = 0
let g:snipMate = { 'snippet_version': 1 }
let mapleader = '\'

nnoremap <leader>m :MarkdownPreview<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bN<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-f> :FZF<CR>
nnoremap ; :
nnoremap : ;
imap <C-s> <Plug>snipMateNextOrTrigger
smap <C-s> <Plug>snipMateNextOrTrigger
nnoremap <F5> :term python3 %<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gR <Plug>(coc-rename)

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



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
