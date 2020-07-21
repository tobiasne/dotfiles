set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" TODO
" :help 'list'
" :help folding

" safeguard for re-sourcing
autocmd!
set number
set showcmd
set linebreak
set laststatus=2
"set scrolloff=4
set noerrorbells visualbell t_vb= " no beeps of any kind
set winminheight=0
set splitbelow
set confirm
set history=2000 " 100x the default

set incsearch
set autoindent
set smartindent
set textwidth=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set isfname+=/,.
set backspace=2 " indent,eol,start
set nojoinspaces
set colorcolumn=79
set mouse=a
set nomousehide

if has("gui_running")
	set columns=140 lines=45
	if has("gui_gtk2")
"		set guioptions-=tT
"		set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
		set guifont=Monospace\ 8
		colorscheme gruvbox
	elseif has("gui_win32")
		"set guioptions-=tT
		colorscheme gruvbox
		set guifont=Consolas
	endif
else
	 "enable Xterm mouse wheel scrolling
	map  <xCSI>[62~ <MouseDown>
	map! <xCSI>[62~ <MouseDown>
	map  <xCSI>[63~ <MouseUp>
	map! <xCSI>[63~ <MouseUp>
	map  <xCSI>[64~ <S-MouseDown>
	map! <xCSI>[64~ <S-MouseDown>
	map  <xCSI>[65~ <S-MouseUp>
	map! <xCSI>[65~ <S-MouseUp>

	set background=dark
	if exists(":colorscheme")
		colorscheme gruvbox
	endif
endif

syntax on
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'
