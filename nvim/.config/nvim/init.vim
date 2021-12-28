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
set backupdir=/tmp//
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
" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
" Show git changes in file
Plug 'airblade/vim-gitgutter'
" Colorscheme
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
" Status bar
Plug 'vim-airline/vim-airline'
" For Commenting gcc & gc
Plug 'tpope/vim-commentary'
" CTRL + N for multiple cursors
Plug 'terryma/vim-multiple-cursors' 
" Show indented lines
Plug 'Yggdroot/indentLine'

call plug#end()

" Require plugins
lua require('IdoHirsh0')


" --- Colors

set background=dark
set termguicolors
colorscheme gruvbox
" colorscheme gruvbox-material


" --- Remaps

let mapleader = ' '

" - General

" Change Esc key
imap jk <Esc>

" Save & quit
noremap <leader>w :w<Cr>
noremap <leader>q :q<Cr>
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
inoremap : :<c-g>u
inoremap ( (<c-g>u
inoremap ) )<c-g>u
inoremap { {<c-g>u
inoremap } }<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Code formatting
nnoremap <leader>f :lua vim.lsp.buf.formatting({})<Cr>

" - Telescope
nnoremap <leader>pp :Telescope find_files<Cr>
nnoremap <leader>pf :Telescope live_grep<Cr>

" - NerdTree
nnoremap <F5> :NERDTreeToggle<Cr>
let g:NERDTreeGitStatusWithFlags = 1

" - TreeSitter
nnoremap <leader>if :TSInstallInfo<Cr>
nnoremap <leader>ii :TSInstall 

