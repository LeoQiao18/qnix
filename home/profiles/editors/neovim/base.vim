let g:mapleader = "\<Space>"

syntax on
filetype on
filetype plugin indent on
colorscheme tokyonight
set number relativenumber " hybrid line number
set termguicolors
set signcolumn=yes
set mouse=a

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" wrapping
set wrap linebreak nolist
set virtualedit=
setlocal display+=lastline
noremap j gj
noremap k gk
noremap <Home> g<Home>
noremap <End>  g<End>

function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> j
    silent! nunmap <buffer> k 
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap <buffer> <silent> j gj
    noremap <buffer> <silent> k gk
    noremap <buffer> <silent> <Home> g<Home>
    noremap <buffer> <silent> <End>  g<End>
  endif
endfunction

" file encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

" shell
if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" listchars
set nolist
set listchars=tab:>-,space:⋅,eol:↴

" indentation
set expandtab
set tabstop=2
set shiftwidth=2

" file types
autocmd FileType go setlocal noexpandtab tabstop=8 shiftwidth=8
autocmd FileType make,cmake setlocal noexpandtab tabstop=8 shiftwidth=8
autocmd FileType text,markdown setlocal spell spelllang=en_us

" clear highlight
nnoremap <silent> <esc> :noh<return><esc>
