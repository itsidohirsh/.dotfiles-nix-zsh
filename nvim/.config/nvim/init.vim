" --- General 

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=4
set relativenumber
set signcolumn=number
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=8
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" Colorscheme
Plug 'sainnhe/gruvbox-material'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
" LSP
Plug 'neovim/nvim-lspconfig'
" Autocomplition
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

call plug#end()

" Require plugins
lua require('IdoHirsh0')


" --- Colors

set background=dark
set termguicolors
colorscheme gruvbox-material


" --- Remaps

let mapleader = ' '

" - General

" Save & quit
noremap <leader>w :w<Cr>
noremap <leader>q :wq<Cr>
noremap <leader>s :so %<Cr>

" Navigate between splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Create splits
nmap <C-s>j <C-w>s
nmap <C-s>l <C-w>v
nmap <C-o> <C-w>o

" Resize splits
noremap <C-Left> :vertical resize +3<Cr>
noremap <C-Right> :vertical resize -3<Cr>
noremap <C-Up> :resize +3<Cr>
noremap <C-Down> :resize -3<Cr>

" Move text
nnoremap J :m .+1<Cr>==
nnoremap K :m .-2<Cr>==
vnoremap <A-j> :m '>+1<Cr>gv=gv
vnoremap <A-k> :m '<-2<Cr>gv=gv

" Make Y behave like C, D ...
nnoremap Y y$

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ; ;<c-g>u
inoremap : ;<c-g>u
inoremap ( (<c-g>u
inoremap ) )<c-g>u
inoremap { {<c-g>u
inoremap } }<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Ctrl+/ to comment line

" - Telescope
nnoremap <leader>p :Telescope find_files<Cr>
nnoremap <leader>f :Telescope live_grep<Cr>

