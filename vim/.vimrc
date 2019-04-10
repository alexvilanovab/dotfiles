" Alex's .vimrc {{{

" Encoding 
set encoding=utf-8

" }}}


" Plugins {{{

" Load plugins
call plug#begin('~/.vim/plugged')
    Plug 'wincent/terminus'
    Plug 'scrooloose/nerdtree'
    Plug 'airblade/vim-gitgutter'
    Plug 'dylanaraps/wal.vim'
    Plug 'vim-airline/vim-airline'
call plug#end()

" }}}


" NERDTree {{{

" Tree toggle
map <silent> <C-b> :NERDTreeToggle<CR>

" Remove help message
let NERDTreeMinimalUI=1

" }}}


" GitGutter {{{

" Reduce diff delay
set updatetime=100

" }}}


" AirLine {{{

" Fancy arrows
let g:airline_powerline_fonts = 1

" }}}


" Look & Feel {{{

" Set filename as window title
set title
set titlestring=%t

" Display number bar
set number relativenumber

" Syntax theme
colorscheme wal

" }}}


" Text {{{

" Set tab as 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Fix backspace problems
set backspace=indent,eol,start

" }}}


" Folding {{{

" Set up folding
set foldmethod=marker
set foldlevel=99
set foldlevelstart=0

" }}}


" Macros {{{

" Compile and execute c++ code using F2
autocmd filetype cpp nnoremap <F2> :w <bar> exec '!clear && g++ -std=c++11 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" Compile and execute python code using F2
autocmd filetype python nnoremap <F2> :w <bar> exec '!clear && python3 '.shellescape('%')<CR>

" }}}
