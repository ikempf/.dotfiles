"Options ------------------
set number
syn on

set hlsearch
set incsearch

set scrolloff=1000

set list
set listchars=tab:..,trail:_,nbsp:~,extends:>,precedes:<

set showbreak=\\\ 
set wrap!

"Key mappings ------------

"Plugins -----------------
call plug#begin('~/.vim/plugged')

Plug 'derekwyatt/vim-scala'
Plug 'junegunn/goyo.vim'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

