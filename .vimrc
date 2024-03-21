runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"Buffers
set hidden

"Readability
syntax enable
set number
set relativenumber
set numberwidth=3
set wrap

"Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
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

"For finding files
set path+=**

"Leader
nnoremap <SPACE> <Nop>
let mapleader = " "

"ALE Config
let g:ale_completion_enabled = 1

"ALE Shortcuts
nnoremap <leader>g :ALEGoToDefinition hidden<CR>
nnoremap <leader>n :ALENext -wrap -error<CR>
nnoremap <leader>p :ALEPrevious -wrap -error<CR>

"For showing function names
fun! ShowFuncName()
    let lnum = line(".")
    let col = col(".")
    echohl ModeMsg
    echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
    echohl None
    call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>

"Wayland clipboard
xnoremap y y:call system("wl-copy", @")<cr>
