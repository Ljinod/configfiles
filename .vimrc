""""""""""""""""""""""""""""""""""""""""""
""" Automatic reloading of .vimrc      
""""""""""""""""""""""""""""""""""""""""""
autocmd! bufwritepost .vimrc source %



""""""""""""""""""""""""""""""""""""""""""
""" Pathogen!      
""""""""""""""""""""""""""""""""""""""""""
filetype off
call pathogen#infect()
call pathogen#helptags()






" #############################################################################
" ##### SYNTAX AND INDENTATION
"
filetype plugin indent on
syntax on
set autoindent





" #############################################################################
" ##### BACKSPACE NORMAL BEHAVIOR
"
" There is apparently a bug with backspace that is not functionning normally
" so this option needs to be set like this to prevent this problem.
set backspace=2





" #############################################################################
" ##### COPY AND PASTE
"
" In order to be able to copy/paste from vim to anything else and the other 
" way around.
set pastetoggle=<F2>
set clipboard=unnamed





" #############################################################################
" ##### REMAPS

" Easier way to move a block of code: after selecting a block of code now I can
" shift it of one tabulation left/righ using '>' and '<'.
vnoremap < <gv
vnoremap > >gv

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l






" #############################################################################
" ##### TABES
"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab



" #############################################################################
" ##### NO BACKUP FILES
"
set nobackup
set nowritebackup
set noswapfile






" #############################################################################
" ##### COLOR SCHEMES
"
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_degrade=1
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast="high"
let g:solarized_visibility="low"
colorscheme solarized







" #############################################################################
" ##### LINE NUMBER AND LENGTH
" line numbers on 
set number

" http://earthwithsun.com/questions/356863/in-vim-how-i-can-set-a-local-match-only-for-a-specific-filetype
" When the line goes further than 80 characters while editing python/sh/c
" files then what goes beyond is highlighted.
augroup longLines
    autocmd! BufEnter *.py,*.sh,*.c,*.cpp,*.wiki :match ColorColumn /\%>80v.\+/ 
augroup END

" The table of colors, if ever I want to change
" http://img1.wikia.nocookie.net/__cb20110121055231/vim/images/1/16/Xterm-color-table.png
hi ColorColumn ctermbg=39






" #############################################################################
" ##### NERDTREE
"   https://github.com/scrooloose/nerdtree

" Automatically launching NERDTree with vim
" autocmd vimenter * NERDTree

" Automatically closes vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif




" #############################################################################
" ##### POWERLINE
" https://powerline.readthedocs.org/en/latest/usage/other.html#vim-statusline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
