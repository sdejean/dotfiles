set nocompatible
filetype off
"" Vundle Plugin Manager
call plug#begin('~/.config/nvim/plugged/')
" Vundle updates itself
Plug 'gmarik/vundle'
" powerline and colorscheme
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" dbext
Plug 'vim-scripts/dbext.vim'
" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
" formatting helpers
Plug 'editorconfig/editorconfig-vim'
Plug 'ntpeters/vim-better-whitespace'
" syntax helpers
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go'
Plug 'benekastah/neomake'
Plug 'pearofducks/ansible-vim'
Plug 'rodjek/vim-puppet'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'fatih/vim-go'
Plug 'klen/python-mode'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'solarnz/thrift.vim'
call plug#end()

" syntax highlighting
if has('syntax')
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

" vim split settings
set splitbelow
set splitright

" indent / tab setting
set tabstop=8       " tabs are 4 spaces wide
set softtabstop=4   " number of spaces to count for <tab> and <bs> operations
set shiftwidth=4    " number of spaces for each step of autoindent
set expandtab       " Expand tabs to space characters
set autoindent      " copy indent from current line upon newline
if has('cident')
        set cindent
elseif has('smartindent')
        set smartindent
endif

if has('folding')
    set nofoldenable        " dont fold by default
    set foldmethod=indent   " fold based on indent
    set foldnestmax=10      " deepest fold is 10 levels
    set foldlevel=1         " folds with a higher level will be closed
endif

" mouse options
if has('mouse')
    set mouse=a
endif

" search options
if has('extra_search')
    set incsearch   " incremental search or find-as-you-type
endif
set ignorecase      " case-insensitive search
set smartcase       " case-sensitive search if a cap is used

if has('showcmd')
    set showcmd     " Show (partial) command in status line.
endif

" alias the unnamed register to the + register for X Windoes
"set clipboard=unnamed


"" solarized
" dark background
set background=dark
" solarized
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized

"" airline
"" Un-comment the following line if pathogen is not installed
set laststatus=2    " Always display the statusline in all windows
set noshowmode      " Hide the default mode text (e.g. -- INSERT -- below the
                    " statusline)

let g:airline_powerline_fonts = 1

"" python-mode
let g:pymode_rope = 0   " rope - turn it off, it's slow in python

"" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'

"" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
