filetype plugin indent on
syntax on
set et sw=4 ts=4
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set tags=./tags,tags,.git/tags;
set tags+=/Users/bmatt/Development/microchip_solutions_v2012-10-15/Microchip/Include/tags

function! LoadCscope()
  let db = findfile("cscope.out", ".git;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/.git/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()

set clipboard=unnamed
