" Personal settings
colorscheme torte
set ts=2
set sw=2
set et
set tw=80
set foldmethod=indent

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.ahk setf autohotkey 
au BufNewFile,BufRead *.asc set filetype=ssas

" Taglist config for SSAS
" Requires ssas.vim syntax file and a ctags version that supports ssas
let tlist_ssas_settings = 'ssas;c:class;f:function;m:member'
