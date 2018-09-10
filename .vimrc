set mouse=a

" For opening NERDTree automatically when vim starts up
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown " For forcing Markdown
set conceallevel=2
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'vimwiki/vimwiki'
Plug 'nvie/vim-flake8'
Plug 'jpalardy/vim-slime'
Plug 'ivanov/vim-ipython'
call plug#end()

set nocompatible
filetype plugin on
syntax on

let g:vimwiki_ext2syntax = {'.md': 'markdown',
                  \ '.mkd': 'markdown',
\ '.wiki': 'media'}

set clipboard=unnamedplus " To copy content to clipboard from vim

" SirCmpwn versio

set laststatus=2
set t_Co=256

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
let g:jsx_ext_required = 0

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set magic " unbreak vim's regex implementation

set number
set scrolloff=3
set sidescroll=3
set noesckeys

set ruler
set cc=80
set nowrap

set ignorecase
set smartcase

set splitbelow
set hidden
set notimeout

" Search as you type, highlight results
set incsearch
set showmatch
set hlsearch

set backupdir=~/.cache
set directory=~/.cache

set tags=./tags;

let mapleader = "\<space>"
nnoremap \\ :noh<cr> " Clear higlighting
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR> " Trim trailing spaces
nnoremap Y y$
nnoremap cc :center<cr>
inoremap <C-c> <ESC>
" Ex mode is fucking dumb
nnoremap Q <Nop>

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=e

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

syntax enable
colorscheme ron
highlight Search ctermbg=12
highlight NonText ctermfg=darkgrey
highlight SpecialKey ctermfg=darkgrey
highlight clear SignColumn
highlight Comment cterm=italic ctermfg=darkgrey
highlight StatusLine cterm=none ctermbg=none ctermfg=darkgrey
highlight StatusLineNC cterm=none ctermbg=none ctermfg=darkgrey
highlight Title cterm=none ctermfg=darkgrey
highlight TabLineFill cterm=none
highlight TabLine cterm=none ctermfg=darkgrey ctermbg=none
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey
highlight jsParensError ctermbg=NONE

" Preferences for various file formats
autocmd FileType c setlocal noet ts=4 sw=4 tw=80
autocmd FileType h setlocal noet ts=4 sw=4 tw=80
autocmd FileType cpp setlocal noet ts=4 sw=4 tw=80
autocmd FileType s setlocal noet ts=4 sw=4
autocmd FileType go setlocal noet ts=4 sw=4
autocmd FileType hy setlocal filetype=lisp
autocmd FileType sh setlocal noet ts=4 sw=4
autocmd BufRead,BufNewFile *.js setlocal et ts=2 sw=2
autocmd FileType html setlocal et ts=2 sw=2
autocmd FileType htmldjango setlocal et ts=2 sw=2
autocmd FileType ruby setlocal et ts=2 sw=2
autocmd FileType scss setlocal et ts=2 sw=2
autocmd FileType yaml setlocal et ts=2 sw=2
autocmd FileType markdown setlocal tw=80
autocmd FileType text setlocal tw=80
autocmd FileType meson setlocal noet ts=2 sw=2
autocmd FileType bzl setlocal et ts=2 sw=2
autocmd FileType typescript setlocal et ts=2 sw=2
autocmd BufNewFile,BufRead *.ms set syntax=python ts=4 sw=4 noet
autocmd BufNewFile,BufRead *.scd set ts=4 sw=4 noet
autocmd FileType tex hi Error ctermbg=NONE
