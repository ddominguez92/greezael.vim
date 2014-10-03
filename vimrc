set ai                                 " Auto indent
set cc=100                             " Color column
set clipboard=unnamed                  " Set system clipboard
set confirm                            " Don't fail because of unsaved changes, confirm instead
set cursorline                         " Highlight current line 
set hidden                             " Hidden changes in buffers
set incsearch                          " Set incremental search
set laststatus=2                       " Status line
set lazyredraw                         " Speed it up
set list                               " Show non printable chars
set listchars=tab:»·,trail:·,precedes:<,extends:>
set matchpairs+=<:>                    " specially for html
set mouse=a                            " Mouse
set nocompatible                       " Sanitize before setting up
set ruler                              " Ruler
set showcmd                            " Show incomplete commands
set visualbell                         " Don't beep
set wildmenu                           " Better command-line completion
syntax on                              " Enable syntax highlighting

" Colorscheme
set t_Co=256
colorscheme candycode

" Ignore case on searchs, unless caps are present
set ignorecase
set smartcase

" Increased history and undo
set history=1000
set undolevels=1000

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Autoindent
filetype plugin indent on

" Save when forgot to sudo
cmap w!! w !sudo tee % >/dev/null

" Plugins
execute pathogen#infect()

" Set the user command key (space)
let mapleader = " "

" Relative numbers
function! RelativeNumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <Leader>9 :call RelativeNumberToggle()<cr>
set number " Show line numbers

" NerdTreeToogle
nnoremap <Leader>1 :NERDTreeToggle<CR>
" Save
nnoremap <Leader>2 :w<CR>
" Change to shell
nnoremap <Leader>3 :sh<CR>
" Quit
nnoremap <Leader>4 :qa<CR>

" Remap buffer actions
nnoremap <Leader>5 :bnext<CR>
nnoremap <Leader>6 :b#<CR>
nnoremap <Leader>7 :buffers<CR>:buffer<Space>
nnoremap <Leader>8 :bdelete<CR>

" Gundo
nnoremap <Leader>0 :GundoToggle<CR>

" Easy navigation in insert mode
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Backup and Swap files settings
silent execute '!mkdir ~/.vim/ >/dev/null 2>&1'
silent execute '!mkdir ~/.vim/backup/ >/dev/null 2>&1'
silent execute '!mkdir ~/.vim/swap/ >/dev/null 2>&1'
set backup
set swapfile
set backupdir=~/.vim/backup//,.,~/tmp,/var/tmp,/tmp
set directory=~/.vim/swap//,.,~/tmp,/var/tmp,/tmp

