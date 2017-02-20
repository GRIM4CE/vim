set tabstop=2 
set shiftwidth=2
set expandtab
set visualbell           " don't beep
set noerrorbells         " don't beep
syntax on

"plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'gcorne/vim-sass-lint'
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'
call plug#end()

"Color config
colorscheme gruvbox

"Airline config 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"CtrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"syntastic config
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_sass_checkers=["sasslint"]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"inoremap
:inoremap jj <esc>
