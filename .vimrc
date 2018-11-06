call plug#begin('~/.vim/bundle')
Plug 'sophacles/vim-processing'
"Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

set backspace=2

syntax on
set t_Co=256
set background=dark
colorscheme seoul256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight LineNr ctermbg=NONE
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

set relativenumber

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

autocmd filetype cpp nnoremap <F2> :w <bar> exec '!clear && g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
