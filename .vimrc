set number
syn on

set hlsearch
set incsearch

set scrolloff=1000

set list
set listchars=tab:..,trail:_,nbsp:~,extends:>,precedes:<

set showbreak=\\\ 
set wrap!

call plug#begin('~/.vim/plugged')

Plug 'derekwyatt/vim-scala'

call plug#end()

