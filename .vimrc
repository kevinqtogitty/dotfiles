" Plugins
source ~/.vim/plugins.vim

" Line numbers
set number                " Show absolute number for current line
set relativenumber        " Show relative numbers for other lines

" Colors
set termguicolors
colorscheme kyotonight

" Clipboard
set clipboard=unnamed,unnamedplus

" Filetype detection and syntax
filetype plugin indent on
syntax on

" Basic indentation behavior
set autoindent
set smartindent

" Use spaces instead of tabs
set expandtab

" Default to 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Make backspace behave nicely
set backspace=indent,eol,start

" Optional: better searching
set ignorecase
set smartcase

" Optional: enable undo file
set undofile

" Key remaps
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprev<CR>
