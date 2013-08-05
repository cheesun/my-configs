execute pathogen#infect()

set nocompatible
syntax on
set number
colorscheme slate

filetype plugin indent on

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

" Whitespace highlighting
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * call DeleteTrailingWS()
" autocmd BufWrite *.py call DeleteTrailingWS()

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd BufEnter *.py set ai sw=4 ts=4 sta et fo=croql

" Mark the 80th column
set colorcolumn=80

" Ruby & Rails autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
