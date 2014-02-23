set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Solarized color scheme
Bundle 'altercation/vim-colors-solarized.git'
" Quick search plugin
Bundle 'kien/ctrlp.vim.git'
Bundle 'git://github.com/ervandew/supertab.git'
" A tree explorer plugin
Bundle 'scrooloose/nerdtree.git'
" Javascript plugins
Bundle 'pangloss/vim-javascript.git'
Bundle 'itspriddle/vim-jquery.git'
Bundle 'walm/jshint.vim.git'
" Ack search
Bundle 'mileszs/ack.vim.git'
" Snipets
Bundle 'git://github.com/vim-scripts/UltiSnips.git'

" Editor
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
" Copy indent from current line when starting a new line
set autoindent

set t_Co=256

if version >= 703
    set colorcolumn=120
end
" Character encoding used inside Vim
" Only available when compiled with the +multi_byte feature
set encoding=utf-8
" Character encodings considered when starting to edit an existing file
" Only available when compiled with the +multi_byte feature
set fileencodings=utf-8,cp1251

" Always show tabs
" set showtabline=2
" Display invisible characters
set list
if version >= 700
    set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
else
    set listchars=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:_
endif
" Search
" While typing a search command, show pattern matches as it is typed
" Only available when compiled with the +extra_search feature
set incsearch
" When there is a previous search pattern, highlight all its matches
" Only available when compiled with the +extra_search feature
set hlsearch
" Ignore case in search patterns
set ignorecase
" Override the 'ignorecase' if the search pattern contains upper case characters
set smartcase
" All matches in a line are substituted instead of one
set gdefault

set visualbell
set cursorline

" Splitting a window will put the new window below the current one
" See :sp
" Only available when compiled with the +windows feature
set splitbelow
" Splitting a window will put the new window right of the current one
" See :vsp
" Only available when compiled with the +vertsplit feature
set splitright

" Solarized
" http://stackoverflow.com/questions/7278267/incorrect-colors-with-vim-in-iterm2-using-solarized#comment11144700_7278548
call togglebg#map("<F5>")
syntax enable
set background=dark
let g:solarized_termtrans = 0
let g:solarized_termcolors=256
try
    colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
    echo "Solarized theme not found. Run :BundleInstall"
endtry

" NERDtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" ,f
    " Fast grep
    " Recursive search in current directory for matches with current word
    map <Leader>f :execute "Ack " . expand("<cword>") <Bar> cw<CR>

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
