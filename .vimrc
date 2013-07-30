set nocompatible
filetype off
set background=dark


" allow switching between buffers without saving
set hidden
let mapleader = ","
set showcmd
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle Bundle manager. Great stuff.
" https://github.com/gmarik/vundle
"
" If there is a slash in the bundle-name
" it automatically installs from GitHub.
Bundle 'gmarik/vundle'

" very nice file browser
Bundle 'scrooloose/nerdtree'

" My personal favorite 'everywhere' theme. 
Bundle 'd11wtq/tomorrow-theme-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails'

Bundle 'taglist.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
syntax on

try 
  color Tomorrow-Night-Bright
catch
endtry

filetype plugin indent on

set nowrap
set number
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent

" Turn off tab expansion <F5>
map <F5> :set<Space>expandtab!<CR>
" ROT13 entire file stay on current line
map <F6> <Esc>mrggVGg?<CR>'r
" Toggle long lines with <F12>
map <F7> :set<Space>wrap!<CR>
" refresh diff
map <F8> :diffupdate<CR>
" Line numbers
map <F9> :set<Space>nu!<CR>
" reveal codes
map <F10> :set<Space>list!<CR>

" As a note to set all tabs to spaces use :retab

"Code folding settings
set foldmethod=syntax 
set foldnestmax=10
set nofoldenable
set foldlevel=1
"Note: za toggle on folding
"Note: zM fold everything rR unfold
"Note: zm and zr as well
"Note: help :folding


