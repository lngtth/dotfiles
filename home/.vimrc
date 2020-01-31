set autoread
set ruler
set cmdheight=1
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
syntax enable
set t_Co=256
set background=dark
if has("gui_running")
set guioptions-=T
	set guioptions-=e
	set t_Co=256
	set guitablabel=%M\ %t
endif
set encoding=utf8
set ffs=unix,dos,mac
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
"set wrap "Wrap lines
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
