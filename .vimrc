" Vim configuration file

" Set line number
set nu
" Set the tab as 4 spaces and insert spaces for tab
set tabstop=4 expandtab
" Set indent and set as 4 spaces
set autoindent shiftwidth=4
" Set syntax highlight
syntax on
" Set color scheme
colorscheme desert
" Better command line completion 
set wildmenu
" Show number of character or lines you select in visual mode
set showcmd
" Highlight the search
set hlsearch
" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
" Prompt the confirmation if buffer is not saved
set confirm
" Show cursor position at the bottom line
set ruler
" Sec command height as 2 lines 
set cmdheight=2
