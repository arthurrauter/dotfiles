set backspace=indent,eol,start "backspace is unstoppable

"jk don't skip the part of the line that was wrapped
nnoremap j gj
nnoremap k gk

set esckeys "esc is fast
set ttimeoutlen=50 "ms waited to timeout a key code
set ttyfast "more chars are sent to the screen for redrawing

set fileencoding=utf-8 "used for the file
set encoding=utf-8 "used 'inside' vim to display

set hidden "no longer prompts for save when opening a file to current buffer

" sane swap/recovery files and full undo history
set backupdir=~/tmp//
set directory=~/tmp//
set undofile
set undodir=~/tmp//

set tabstop=4 "tab will show as x spaces
set softtabstop=4 "tab will insert/delete x spaces
set shiftwidth=4 ">>, << and  == will shift x spaces
set expandtab "all inserted/shifted tabs become spaces
set autoindent "copies the indent of line above

set listchars=tab:t·,space:·,trail:!

set hlsearch "highlight found patterns with /
set incsearch "highligt as you type
set ignorecase "ignore case...
set smartcase "UnLeSs YoU hAvE a CaPiTaL lEtTeR iN iT
" hlsearch colors define after theme is applied below

set cursorline "highlight line the cursor is in
set number "show line number
set textwidth=80 "add newline when text reaches 80 chars
set colorcolumn=80 "highlight column 80

set splitbelow "horizontal splits open below the current pane
"set splitright "vertical splits open to the right of the current pane

set showcmd "show current command input sequence on last line of the screen.

"make background transparent
"hi Normal guibg=NONE ctermbg=NONE


set tags=tags "use ctags

nnoremap K ^
vnoremap K ^
nnoremap J $
vnoremap J $

" nnoremap H B
" vnoremap H B
" nnoremap L E
" vnoremap L E
" nnoremap J }
" vnoremap J }
" nnoremap K {
" vnoremap K {
inoremap <c-h> <nop>
inoremap <c-j> <nop>
inoremap <c-k> <nop>
inoremap <c-l> <nop>
nnoremap <c-f> /

"BELLS AND WHISTLES
"set smarttab
set nosmartindent
"MULTIPLE COMMANDS IN THE SAME LINE
nnoremap <F2> :source ~/.vimrc<cr>:echo "vimrc reloaded"<cr>
nnoremap <F3> :e <cr>
nnoremap <F4> :buffers <cr>
nnoremap <F5> :set list!<cr>
nnoremap <F6> :jumps<cr>
nnoremap <F7> :marks<cr>
nnoremap <F8> :reg<cr>

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'djoshea/vim-autoread'
Plug '907th/vim-auto-save'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jnurmine/zenburn'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'numirias/semshi'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'scrooloose/nerdtree'
"Plug 'tomasr/molokai'
"Plug 'altercation/vim-colors-solarized'

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
