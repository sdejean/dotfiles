set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'tpope/vim-sql'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" syntax highlighting
if has("syntax")
    syntax on
endif
if has('filetype')
    filetype on
    filetype indent on
    filetype plugin on
endif

" initial directives
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" basic formatting
set showmatch   " show matching brackets
set nowrap      " do not wrap lines
set number      " line numbers

" indent / tab setting
set tabstop=8       " tabs are 4 spaces wide
set softtabstop=4   " number of spaces to count for <tab> and <bs> operations
set shiftwidth=4    " number of spaces for each step of autoindent
set expandtab       " Expand tabs to space characters
set autoindent      " copy indent from current line upon newline
if has("cident")
        set cindent     " smart indent in certain conditions, ex. braces, keywords
elseif has("smartindent")
        set smartindent     " smart indent in certain conditions, ex. braces, keywords
endif

if has("folding")
    set nofoldenable        " dont fold by default
    set foldmethod=indent   " fold based on indent
    set foldnestmax=10      " deepest fold is 10 levels
    set foldlevel=1         " folds with a higher level will be closed
endif

" mouse options
if has("mouse")
    set mouse=a
endif

" search options
if has("extra_search")
    set incsearch   " incremental search or find-as-you-type
endif
set ignorecase      " case-insensitive search
set smartcase       " case-sensitive search if a cap is used

if has("showcmd")
    set showcmd     " Show (partial) command in status line.
endif

"set clipboard=unnamed   " alias the unnamed register to the + register for X Windoes


"" solarized 
" dark background
set background=dark
" solarized
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized


"" powerline
"" Un-comment the following line if pathogen is not installed
" set rtp+=~/.vim/bundle/vim-powerline
set laststatus=2    " Always display the statusline in all windows
set noshowmode      " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
