set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Solarized color scheme
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'scrooloose/nerdtree.git'

" Editor
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set t_Co=256

if version >= 703
    set colorcolumn=120
end

" Solarized
call togglebg#map("<F5>")
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" NERDtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
