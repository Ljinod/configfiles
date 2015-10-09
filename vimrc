" #############################################################################
" ##### AUTOMATIC RELOAD OF VIMRC
autocmd! bufwritepost ~/.vimrc nested :source ~/.vimrc


" #############################################################################
" ##### PATHOGEN
filetype off
execute pathogen#infect()


" #############################################################################
" ##### COLORSCHEME
colorscheme jellybeans
let g:jellybeans_use_lowcolor_black = 1

" set background=light
" colorscheme solarized
" set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=0
" let g:solarized_degrade=1
" let g:solarized_bold=1
" let g:solarized_underline=1
" let g:solarized_italic=1
" let g:solarized_contrast="high"
" let g:solarized_visibility="low"



" #############################################################################
" ##### SYNTAX AND INDENTATION
syntax on
filetype plugin indent on
set autoindent


" #############################################################################
" ##### BUFFERS
" The autowrite option automatically saves the buffer before it is hidden
set autowriteall
" When F5 is pressed, a numbered list of file names is printed, and the user
" needs to type a single number based on the menu and press enter. The menu
" disappears after choosing the number so it appears only when you need it.
nnoremap <F5> :buffers<CR>:buffer<Space>


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
set expandtab
set shiftwidth=4
set tabstop=4


" #############################################################################
" ##### NO BACKUP FILES
"
set nobackup
set nowritebackup
set noswapfile


" #############################################################################
" ##### LINE NUMBER AND LENGTH
" line numbers on
set number

" http://earthwithsun.com/questions/356863/in-vim-how-i-can-set-a-local-match-only-for-a-specific-filetype
" When the line goes further than 80 characters while editing python/sh/c
" files then what goes beyond is highlighted.
" augroup longLines
"     autocmd! BufEnter *.py,*.sh,*.c,*.cpp,*.wiki :match ColorColumn /\%>80v.\+/
" augroup END

" Highlight the 80th column on the window
set colorcolumn=80
" The table of colors, if ever I want to change
" http://img1.wikia.nocookie.net/__cb20110121055231/vim/images/1/16/Xterm-color-table.png
hi ColorColumn ctermbg=16


" #############################################################################
" ##### NERDTREE
"   https://github.com/scrooloose/nerdtree

" Automatically launching NERDTree with vim even if no files were specified
" autocmd vimenter * NERDTree

" Automatically closes vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Asks NERDTree to ignore object files and executables
let NERDTreeIgnore=['.exe$[[file]]', '.o$[[file]]', '.enc$[[file]]']


" #############################################################################
" ##### NERDTREE-GIT-PLUGIN
"   https://github.com/Xuyuanp/nerdtree-git-plugin

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" #############################################################################
" ##### POWERLINE
" I don't know why - and I'm too tired to find out the reason(s) - but I can't
" get powerline to work with vim on my ArchLinux. Hence I'm switching to
" vim-airline.
" Documentation for powerline can be found here:
" https://powerline.readthedocs.org/en/latest/usage/other.html#vim-statusline

" set rtp+=/home/julien/.local/lib/python3.5/site-packages/powerline/bindings/vim
"
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup


" #############################################################################
" ##### VIM-AIRLINE
let g:airline_powerline_fonts = 1
