
" Expand tabs to 4 spaces
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab

setlocal autoindent

" Git commit messages wrapped to 72 chars
au FileType gitcommit setlocal textwidth=72
set number " show line numbers

" Syntax highlighting
syntax on
colorscheme delek

set diffopt=filler,vertical " Show diff side by side

" Functions
noremap <SPACE> <C-F> " space to scroll down 
abb _me jackthias@icloud.com
com! Py ! python %
com! Wc ! wc %
com! Go ! go run %
