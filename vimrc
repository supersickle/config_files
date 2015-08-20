set nocompatible
filetype off
set background=dark

execute pathogen#infect()
" allow switching between buffers without saving
set hidden
let mapleader = ","
set showcmd
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle Bundle manager. Great stuff.
" setup vundle if not already
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" see vundle website for more details
" https://github.com/gmarik/vundle
"
" If there is a slash in the bundle-name
" it automatically installs from GitHub.
Plugin 'gmarik/vundle'

" very nice file browser
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

" My personal favorite 'everywhere' theme. 
Plugin 'd11wtq/tomorrow-theme-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails'
Plugin 'powerline/powerline'
" Faust syntax
Plugin 'gmoe/vim-faust'

Plugin 'taglist.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
syntax on

try 
  color Tomorrow-Night-Bright
catch
endtry

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin indent on

set nowrap
set number
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set backspace=indent,eol,start

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

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

"##############################################################################                                                                         
"" Easier split navigation                                                                                                                               
"##############################################################################                                                                         
"
"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

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


