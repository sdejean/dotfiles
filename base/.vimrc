set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" Vundle updates itself
Plugin 'gmarik/vundle'

Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'solarnz/thrift.vim'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()
" syntax highlighting
if has("syntax")
    syntax on
endif
if has('filetype')
    filetype on
    filetype indent on
    filetype plugin on
endif

set backspace=indent,eol,start

" automatically rebalance windows on vim resize
" instruct vim to automatically re-balance the visible splits as tmux panes
" are created, destroyed, or resized
autocmd VimResized * :wincmd =
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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
