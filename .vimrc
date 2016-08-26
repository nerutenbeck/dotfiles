set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-git'
Plugin 'ervandew/supertab'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'sjl/gundo.vim'
Plugin 'fs111/pydoc.vim'
Plugin 'alfredodeza/pytest.vim'
Plugin 'reinh/vim-makegreen'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'zirrostig/vim-schlepp'

call vundle#end()            " required

filetype plugin indent on    " required
syntax on
syntax enable

set number
set foldlevel=99
set foldmethod=indent
set title
set showmatch
set ruler
set statusline=%{fugitive#statusline()}
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set background=dark
set t_Co=16

au FileType python set omnifunc=pythoncomplete#Complete

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "context"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:solarized_termcolors=256
map <leader>n :NERDTreeToggle<CR>
vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight

colorscheme solarized
