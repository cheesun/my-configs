set number
colorscheme slate

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
