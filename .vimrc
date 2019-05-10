set fileencoding=utf-8
set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
nnoremap j gj
nnoremap k gk
"MUST HAVE
nnoremap H vh
vnoremap H h
nnoremap L vl
vnoremap L l

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
nnoremap <F5> :set list!<cr>
nnoremap <F6> :jumps<cr>
nnoremap <F7> :marks<cr>
nnoremap <F8> :reg<cr>

"Control arrows were destroying everything
nnoremap <C-Left> B
nnoremap [1;5D B
nnoremap <C-Down> }
nnoremap [1;5B }
nnoremap <C-Up> {
nnoremap [1;5A {
nnoremap <C-Right> E
nnoremap [1;5C E

nnoremap [1;2C vl
vnoremap [1;2C l
nnoremap [1;2D vh
vnoremap [1;2D h
nnoremap [1;2A vk
vnoremap [1;2A k
nnoremap [1;2B vj
vnoremap [1;2B j
