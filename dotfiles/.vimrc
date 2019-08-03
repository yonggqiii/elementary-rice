" Defaults
set lbr nu et ts=4 sw=4 ai si sc bs=2 wb nobk vb so=1 ru ls=2 ww=b,s,h,l,<,>,[,]
set com=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-,n:\:
set nojs vi=""
set mps+=<:>
set clipboard=unnamedplus

" Quick compile / run
map <F6> <Esc>:w<CR>:! pandoc --latex-engine xelatex -t beamer %:r.md -o %:r.pdf <CR>:! impressive -t None %:r.pdf<CR>

vnoremap cp "*y
noremap test :source $VIMRUNTIME/syntax/hitest.vim<CR>

" Stop points
set <C-Right>=^[[1;5C 
inoremap <C-Right> <Esc>G/<++>;<CR>"_c5l
map <C-Right> G/<++>;<CR>"_c5l

autocmd FileType html setlocal ts=2 sw=2
autocmd FileType xml setlocal ts=2 sw=2
autocmd FileType javascript setlocal ts=2 sw=2
autocmd FileType css setlocal ts=2 sw=2
autocmd FileType yml setlocal ts=2 sw=2

autocmd FileType java inoremap For for (int i = 0<++>;; i < n<++>;; ++i<++>;) {<CR><++>;<CR>}<Esc>G/<++>;<CR>"_c5l
autocmd FileType java inoremap newclass <++>;class <++>; {<CR><CR><++>;<CR><CR>}<Esc>G/<++>;<CR>"_c5l
autocmd FileType java inoremap newint <++>;interface <++>; {<CR><CR><++>;<CR><CR>}<Esc>G/<++>;<CR>"_c5l
autocmd FileType java inoremap newab <++>;abstract class <++>; {<CR><CR><++>;<CR><CR>}<Esc>G/<++>;<CR>"_c5l
autocmd FileType java inoremap psvm public static void main(String[] args) {<CR><++>;<CR>return;<CR>}<Esc>G/<++>;<CR>"_c5l
autocmd FileType java inoremap sysout System.out.println()<LEFT>
autocmd FileType java inoremap syserr System.err.println()<LEFT>

autocmd FileType c inoremap imv // Pre-processor directives<CR><BACKSPACE><BACKSPACE><BACKSPACE>#include <stdio.h><CR><CR>// Function prototypes<CR><BACKSPACE><BACKSPACE><BACKSPACE><CR>int main(int argc, char* argv[]) {<CR><++>;<CR>return 0;<CR>}<Esc>G/<++>;<CR>"_c5l
autocmd FileType c inoremap For for (i = 0<++>;; i < n<++>;; ++i) {<CR><++>;<CR>}
autocmd FileType c inoremap newFunc <++>;{<CR><++>;<CR>}<Esc>gg/int main(<CR>i<CR><UP><UP>
autocmd FileType c inoremap pf printf();<LEFT><LEFT>
autocmd FileType c inoremap sf scanf();<LEFT><LEFT>

autocmd FileType tex inoremap () \left(<++>;\right)<++>;<Esc>G/<++>;<CR>"_c5l
autocmd FileType tex inoremap ARRAY \begin{array}{<++>;}<CR><++>;<CR>\end{array}<Esc>G/<++>;<CR>"_c5l
autocmd FileType tex inoremap [] \left[<++>;\right]<++>;<Esc>G/<++>;<CR>"_c5l
autocmd FileType tex inoremap TEXT \textrm{}<++>;<LEFT>
autocmd FileType tex inoremap ITEMIZE \begin{itemize}<CR><++>;<CR>\end{itemize}<Esc>G/<++>;<CR>"_c5l
autocmd FileType tex inoremap MM $$<++>;<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
autocmd FileType tex inoremap IM $$$$<++>;<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
autocmd FileType tex inoremap FRAC \frac{<++>;}{<++>;}<++>;
autocmd FileType tex inoremap INT \int_{<++>;}^{<++>;}{<++>;}<++>;
autocmd FileType tex inoremap SUM \sum_{<++>;}^{<++>;}{<++>;}<++>;
autocmd FileType tex map <F6> <Esc>:w<CR>:! pdflatex %<CR><CR>
autocmd FileType tex inoremap <F6> <Esc>:w<CR>:! pdflatex %<CR><CR>


" Shortcuts
ia teh the
ia hte the
ia oyu you

" Zen mode
map <F2> :Goyo<CR>
inoremap <F2> <Esc>:Goyo<CR>i

" Plugins
call plug#begin()
Plug 'junegunn/goyo.vim'
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
  set lbr nu et ts=4 sw=4 ai si sc bs=2 wb nobk vb so=1 ru ls=2 ww=b,s,h,l,<,>,[,]
  set com=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-,n:\:
  set nojs vi=""
  set mps+=<:>
  set clipboard=autoselect,exclude:.*
  Goyo 80x120
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
call plug#end()
color darktheme
