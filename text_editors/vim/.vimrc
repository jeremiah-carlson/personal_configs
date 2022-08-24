set exrc

"Visibility
set noautoindent
set expandtab
set tabstop=6
set shiftwidth=4
set nohlsearch
set nowrap
set scrolloff=10

"Functionality
set incsearch
set number relativenumber
set nu rnu
set hidden


"Errors & Formatting
set signcolumn=yes
set colorcolumn=100
hi ColorColumn ctermbg=lightcyan guibg=blue
syntax on

"Sound Control
set belloff=all

"Netwr Settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
