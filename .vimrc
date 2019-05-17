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
set backspace=indent,eol,start

nnoremap j gj
nnoremap k gk
nnoremap H B
vnoremap H B
nnoremap L E
vnoremap L E
nnoremap J }
vnoremap J }
nnoremap K {
vnoremap K {
inoremap <c-h> <nop>
inoremap <c-j> <nop>
inoremap <c-k> <nop>
inoremap <c-l> <nop>
nnoremap <c-f> /

"splits
set splitbelow
set splitright

"BELLS AND WHISTLES
set number
set showcmd
set smarttab
set nosmartindent
set listchars=tab:t·,space:·,trail:!
set textwidth=80
set cc=80
set hlsearch
set incsearch
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
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'numirias/semshi'

" Initialize plugin system
call plug#end()

" lightline.vim needs it
set laststatus=2
set noshowmode

" vim-auto-save
let g:auto_save = 1

" fzf vim
nnoremap <C-p> :Files<cr>

" zenburn:
colors zenburn
set term=screen-256color
hi Search ctermfg=209
hi Search ctermbg=237
hi IncSearch ctermfg=209
hi IncSearch ctermbg=233

" git gutter:
set updatetime=100
" write swp file after 100 if nothing happens
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=0
highlight GitGutterAdd ctermfg=2 ctermbg=0
highlight GitGutterChange ctermfg=3 ctermbg=0
highlight GitGutterDelete ctermfg=1 ctermbg=0
" colors must be here to override zenburn
