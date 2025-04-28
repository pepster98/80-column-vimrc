" 8 space tabs, enable line numbers
set tabstop=8
set number

" set text overlength color after 80 columns
function! SetOverLengthHighlight()
  syntax match OverLength /\%81v.\+/ containedin=ALL
	highlight OverLength ctermfg=red guifg=red
endfunction

" Autocommand group for applying to C/C++ filetypes only
augroup CppOverLengthHighlight
	autocmd!
	autocmd FileType c,cpp,h,hpp,cc,cxx,make call SetOverLengthHighlight()
 	autocmd BufRead,BufNewFile Makefile set filetype=make
augroup END
