let fortran_free_source=1


set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0 wrapmargin=0
syntax on
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
autocmd BufWritePre *.F90 %s/\s\+$//e
autocmd BufWritePre *.py %s/\s\+$//e
autocmd BufWritePre *.text %s/\s\+$//e
set fillchars+=vert:\ 
let g:airline_solarized_bg='dark'


call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()

