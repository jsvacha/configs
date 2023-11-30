"Buffers
set hidden

"Readability
syntax enable
set number
set numberwidth=3
set wrap

"Indentation
set shiftwidth=2
set tabstop=2
set shiftround
set autoindent
set expandtab
set smarttab

"Search
set hlsearch
set ignorecase
set incsearch
set smartcase

"Clipboard
set clipboard=unnamedplus

"Cursor
set cursorline
set scrolloff=2

"General UI
set wildmenu
set laststatus=2

"Theme
set background=dark

"Treat different files differently
filetype plugin indent on
autocmd FileType make setlocal noexpandtab
