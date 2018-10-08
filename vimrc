set ai                                 " Auto indent
set clipboard=unnamed                  " Set system clipboard
set confirm                            " Confirm instead of fail
set cursorline                         " Highlight current line
set hidden                             " Hidden changes in buffers
set hlsearch
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
colorscheme mustang
"colorscheme calmar256-dark

" 80 column indicator
"match ErrorMsg '\%>80v.\+'

" Spellcheck
"set spell

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

" Syntastic with C++11
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

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

" File browser
nnoremap <Leader>1 :NERDTreeToggle<CR>
"nnoremap <Leader>1 :e.<CR>:set number<CR>
let g:NERDTreeHijackNetrw=0
let g:netrw_liststyle=3

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

"These are to cancel the default behavior of d, D, c, C
"  to put the text they delete in the default register.
"  Note that this means e.g. "ad won't copy the text into
"  register a anymore.  You have to explicitly yank it.
nnoremap d "dd
vnoremap d "dd
nnoremap D "dD
vnoremap D "dD
nnoremap c "dc
vnoremap c "dc
nnoremap C "dC
vnoremap C "dC

" Tab navigation like Firefox.
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

" Alternative tab navigation
nnoremap H gT
nnoremap L gt

" Remove trailing whitespace
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Backup and Swap files settings
silent execute '!mkdir ~/.vim/ >/dev/null 2>&1'
silent execute '!mkdir ~/.vim/backup/ >/dev/null 2>&1'
silent execute '!mkdir ~/.vim/swap/ >/dev/null 2>&1'
set backup
set swapfile
set backupdir=~/.vim/backup//,.,~/tmp,/var/tmp,/tmp
set directory=~/.vim/swap//,.,~/tmp,/var/tmp,/tmp

