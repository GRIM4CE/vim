"Key Bindings
let mapleader=","

nnoremap ; :

noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   <Home>   <NOP>
noremap   <End>    <NOP>
inoremap  <Esc>    <NOP>

nnoremap <leader>ww :w<CR>

nnoremap :bn :bnext
nnoremap :bp :bprev

inoremap jj <ESC>
inoremap jk <ESC>

nnoremap H ^
nnoremap L $

map <leader>rc :source ~/.vimrc<CR>

set nowrap
set tabstop=2 
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set visualbell           " don't beep
set noerrorbells         " don't beep
set undofile

filetype on
filetype indent on
syntax on

set lines=35 columns=150
set colorcolumn=100
set number
set showmatch
set cursorline
set autochdir
set hidden

" Tabs and extra whitespace are evil, so let's highlight them with some fun characters.
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"plugins
call plug#begin('~/.vim/plugged')

"Logic plugins
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-sensible'
Plug 'kana/vim-smartinput'
Plug 'tpope/vim-surround'
Plug 'Lokaltog/vim-easymotion'
Plug 'Shougo/neocomplete.vim'

"General Utilities
Plug 'kien/ctrlp.vim'
Plug 'c9s/bufexplorer'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'

"Color Schemes
Plug 'morhetz/gruvbox'

"Language plugins
Plug 'gcorne/vim-sass-lint'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'elzr/vim-json'

"Program Helpers
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-ragtag'
Plug 'skammer/vim-css-color'
Plug 'junegunn/vim-easy-align'
Plug 'othree/javascript-libraries-syntax.vim'

call plug#end()

"Functions
fun! SetScssConfig()
  let scssConfig = findfile('.scss-lint.yml', '.;')
  if scssConfig != ''
    let b:syntastic_scss_scss_lint_args = '--config ' . scssConfig
  endif
endf

"Color config
:color slate
colorscheme gruvbox

"Airline config 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:tmuxline_preset = 'tmux'
let g:airline#extensions#tmuxline#enabled = 0

"CtrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.sw*,*.zip,*.tar.*,*.tar,.git/*,*/node_modules/*,*/vendor/*,*/build/*,*/bin/*

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

"Set Scss Linter
autocmd FileType scss :call SetScssConfig()
