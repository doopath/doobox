" -----------------------------------------------------------------------------
" File: doobox.vim
" Description: Retro groove color scheme for Vim
" Author: doopath <dooapth@gmail.com>
" Source: https://github.com/doopath/doobox
" -----------------------------------------------------------------------------

function! doobox#invert_signs_toggle()
  if g:doobox_invert_signs == 0
    let g:doobox_invert_signs=1
  else
    let g:doobox_invert_signs=0
  endif

  colorscheme doobox
endfunction

" Search Highlighting {{{

function! doobox#hls_show()
  set hlsearch
  call GruvboxHlsShowCursor()
endfunction

function! doobox#hls_hide()
  set nohlsearch
  call GruvboxHlsHideCursor()
endfunction

function! doobox#hls_toggle()
  if &hlsearch
    call doobox#hls_hide()
  else
    call doobox#hls_show()
  endif
endfunction

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
