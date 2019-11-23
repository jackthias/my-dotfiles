setlocal textwidth=72
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
set number " show line numbers
noremap <SPACE> <C-F> " space to scroll down 
abb _me jackthias@icloud.com
com! Py ! python %
com! Wc ! wc %
syntax on
colorscheme delek
set diffopt=filler,vertical " Show diff side by side
