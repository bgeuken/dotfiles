set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Fast file navigation for VIM
Plugin 'wincent/command-t'
" Vim theming
Plugin 'morhetz/gruvbox'
" Open files on line xy (vim file:line)
Plugin 'kopischke/vim-fetch'
" Disable background color erase
" https://sunaku.github.io/vim-256color-bce.html
Plugin 'nacitar/terminalkeys.vim'
" https://github.com/bogado/file-line
Plugin 'bogado/file-line'
"
Plugin 'openssl.vim'

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
"

" gruvbox theme
colorscheme gruvbox
set background=dark
"let g:gruvbox_contrast_dark=soft

" https://sunaku.github.io/vim-256color-bce.html
" Fix background color erase
set t_ut=

" search while chars get entered
set incsearch
set ignorecase
set smartcase
set hlsearch

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" indentation depending on file type
filetype indent on

" autocomplete menu
set wildmenu

" store backup files in /tmp
" https://dougblack.io/words/a-good-vimrc.html
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set number
set mouse=a
