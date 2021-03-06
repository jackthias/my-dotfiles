set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rainglow/vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'rhysd/committia.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Expand tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set spell

" Git Configuration
set autoread
autocmd FocusGained,CursorHold ?* if getcmdwintype() == '' | checktime | endif

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' "highlight merge conflicts

" Back up files.
set backupdir=~/backup/vim
set dir=~/backup/vim/swap
set undodir=~/backup/vim/undos
set undofile
set bk

" Git commit messages wrapped to 72 chars
au FileType gitcommit setlocal textwidth=72
au FileType gitcommit setlocal colorcolumn=43
au FileType gitcommit match ErrorMsg /\%1l.\%>51v/
set number " show line numbers

" Syntax highlighting
syntax on
colorscheme wwdc16

set diffopt=filler,vertical " Show diff side by side

" Datetime in Status Bar
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

" Functions
noremap <SPACE> <C-F> " space to scroll down 
abb _me jackthias@icloud.com
com! Py ! python %
com! Wc ! wc %
com! Go ! go run %
com! Pbcopy %w !pbcopy
com! Jq %!python -m json.tool

