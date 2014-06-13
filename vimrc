" set another shell (syntastic doesn't like fish)
set shell=bash

" disable beeping
set noerrorbells
set visualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

" set font
set gfn=Inconsolata\ Medium\ 10

" Ctrl+Backspace deletes last word
inoremap <C-BS> <esc>bcw

" Ctrl+Del deletes next word
inoremap <C-Del> <esc>wcw

" buffers can exist in background without being in a window
set hidden

" Automatically save before commands like :next and :make
set autowrite

" buffer browsing with left/right arrows
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" Use Ctrl-Tab to toggle between splits
nnoremap <C-Tab> <C-W><C-W>

" Split windows to the right
set splitright

" for when you mess up and hold shift too long (using ! to prevent errors while
" sourcing vimrc after it was updated)
command! W w
command! WQ wq
command! Wq wq
command! Q q

" relative line numbers
set relativenumber

" highlight cursor line and cursor column markers
" set cursorline
set cursorcolumn

" use hard tabs for indentation
set tabstop=3
set softtabstop=3 	" makes backspace treat 4 spaces like a tab
set shiftwidth=3 	" makes indents 4 spaces wide as well
set expandtab 		" actually, expand tabs into spaces

" Search & Matching
set showcmd	" Show (partial) command in status line.
set showmatch	" Show matching brackets.
set ignorecase	" Do case insensitive matching
set smartcase	" Do smart case matching
set incsearch	" incremental search
set hlsearch	" highlights searches
set noerrorbells " suppress audible bell
set novisualbell " suppress bell blink

" save more in undo history
set history=1000000
set undolevels=1000000
set undofile " keep a persistent backup file
set undodir=$HOME/.vim/undo

" Syntax Highlighting & Indents
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set autoindent " always indent
set copyindent " copy previous indent on autoindenting
set smartindent

set backspace=indent,eol,start " backspace over everything in insert mode

" Enable wild menu, but ignore nonsensical files
set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.obj,*~
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*/Library/**
set wildignore+=*/.nx/**,*.app

" pathogen
execute pathogen#infect()

" enable solarized color scheme
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" airline
set ls=2
set laststatus=2

" gundo
nnoremap <F5> :GundoToggle<CR>


" bind NERDTree to F1 (we don't need help)
nnoremap <f1> :NERDTreeToggle<cr>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" syntastic
map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>
