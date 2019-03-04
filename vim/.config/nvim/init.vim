" Alex's init.vim {{{

" Encoding 
set encoding=utf-8
scriptencoding utf-8

" Install plugins if they are not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config//nvim/autoload/plug.vim --create-dirs
	   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

" }}}


" Plugins {{{

" Load plugins
call plug#begin('~/.config/nvim/plugged')
    Plug 'junegunn/goyo.vim'
	let g:goyo_width = 120
	function! s:goyo_enter()
	    set number
	    set relativenumber
	    set laststatus=0
	endfunction
	function! s:goyo_leave()
	endfunction
	autocmd! User GoyoEnter nested call <SID>goyo_enter()
	autocmd! User GoyoLeave nested call <SID>goyo_leave()
	autocmd VimResized * execute "normal \<C-W>="

    Plug 'dylanaraps/wal.vim'
    Plug 'itchyny/lightline.vim'
call plug#end()

" Set up Goyo

" }}}


" Look & Feel {{{

" Syntax theme
colorscheme wal
let g:lightline = {'colorscheme': 'wal'}

" Set filename as window title
set title
set titlestring=%t

" Display number bar
set number relativenumber

" }}}


" Text {{{

set shiftwidth=4

" }}}


" Folding {{{

set foldmethod=marker
set foldlevel=99
set foldlevelstart=0

" }}}


" Macros {{{

" Switch Goyo using F12
nmap <F12> :Goyo<cr>

" Compile and execute c++ code (F2 linked to g++, F3 linked to p2++)
autocmd filetype cpp nnoremap <F2> :w <bar> exec '!clear && g++ -std=c++11 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F3> :w <bar> exec '!clear && p2++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" Compile and execute python code using F2
autocmd filetype python nnoremap <F2> :w <bar> exec '!clear && python3 '.shellescape('%')<CR>

" }}}
