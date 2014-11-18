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

" syntax highlighting
if has("syntax")
    syntax on
endif

if has("showcmd")
    set showcmd     " Show (partial) command in status line.
endif

"set clipboard=unnamed   " alias the unnamed register to the + register for X Windoes

