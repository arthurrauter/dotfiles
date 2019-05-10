set fileencoding=utf-8
set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set undofile
set backupdir=~/tmp//
set directory=~/tmp//
set undodir=~/tmp//

nnoremap j gj
nnoremap k gk
nnoremap H vh
vnoremap H h
nnoremap L vl
vnoremap L l
nnoremap J vj
vnoremap J j
nnoremap K vk
vnoremap K k

nnoremap <c-f> /

"splits
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"BELLS AND WHISTLES
set number
set showcmd
set smarttab
set nosmartindent
set listchars=tab:t·,space:·,trail:!
set textwidth=80
"MULTIPLE COMMANDS IN THE SAME LINE
nnoremap <F2> :source ~/.vimrc<cr>:echo "vimrc reloaded"<cr>
nnoremap <F3> :e <cr>
nnoremap <F4> :buffers <cr>
nnoremap <F5> :set list!<cr>
nnoremap <F6> :jumps<cr>
nnoremap <F7> :marks<cr>
nnoremap <F8> :reg<cr>

"PLUGINS BECAUSE I AM SPECIAL
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'severin-lemaignan/vim-minimap'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'djoshea/vim-autoread'
Plug '907th/vim-auto-save'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jnurmine/zenburn'
Plug 'tomasr/molokai'
"Plug 'numirias/semshi'

" Initialize plugin system
call plug#end()

"lightline.vim needs it
set laststatus=2
set noshowmode

" vim-auto-save
let g:auto_save = 1

" fzf vim
nnoremap <C-p> :Files<cr>

" zenburn
colors zenburn
set term=screen-256color
