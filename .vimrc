syntax on
set number relativenumber 
set mouse=a
set noerrorbells
set vb t_vb=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow
set splitright
set backspace=indent,eol,start
" set termguicolors
filetype plugin indent on

" Plug to handle vim packages
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'miyase256/vim-ripgrep', {'branch': 'fix/remove-complete-from-RgRoot'}
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'

call plug#end()

" Configure theme
colo nord
set background=dark
set colorcolumn=88
highlight ColorColumn ctermbg=lightcyan guibg=lightgray

" set package shortcut keys and settings
if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<cr>', '<c-s>'],
    \ 'AcceptSelection("e")': ['<c-cr>', '<2-LeftMouse>'],
    \ 'AcceptSelection("v")': ['<c-x>', '<c-v>', '<RightMouse>'] }
let g:ycm_clangd_binary_path='/opt/homebrew/opt/llvm/bin/clangd'

" set custom shortcut keys
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :wincmd H <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <C-a> :CtrlP ~<CR> 
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +10<CR>
nnoremap <silent> <Leader>- :vertical resize -10<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

" commands for different filetypes
autocmd Filetype markdown setlocal ts=2 sts=2 sw=2
