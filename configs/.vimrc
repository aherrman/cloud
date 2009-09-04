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

set gfn=Consolas:h9:cANSI

" Taglist config for SSAS
" Requires ssas.vim syntax file and a ctags version that supports ssas
let tlist_ssas_settings = 'ssas;c:class;f:function;m:member'

" Change background of all characters past the 80th
function SetOverlength()
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.*/
endfunction

call SetOverlength()

command! -nargs=0 -bar SetOL call SetOverlength()
