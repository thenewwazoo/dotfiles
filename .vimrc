execute pathogen#infect()
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

autocmd BufWritePre * %s/\s\+$//e

set clipboard=unnamed

"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_rust_src_path="/Users/bmatt/Development/rust-1.18.0/src"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_auto_jump = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['cargo']
let g:syntastic_java_checkers = ['']
let g:syntastic_cpp_checkers = ['']
