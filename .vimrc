" PLUGIN

call plug#begin()
" a Git wrapper so awesome
Plug 'tpope/vim-fugitive'
" A tree explorer plugin for vim
Plug 'scrooloose/nerdtree'
" Git flag on nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'kballard/vim-swift'
Plug 'bumaociyuan/vim-swift'
" Fuzzy file, buffer, mru, tag, etc finder
Plug 'kien/ctrlp.vim'
" precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'
" lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'
" Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks
Plug 'airblade/vim-gitgutter'
" Vim motions on speed
Plug 'easymotion/vim-easymotion'
" Vim plugin for the Perl module / CLI script 'ack'
Plug 'mileszs/ack.vim'
" Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'
Plug 'rking/ag.vim'
" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'
" The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
Plug 'SirVer/ultisnips'
" vim-snipmate default snippets (Previously snipmate-snippets)
Plug 'honza/vim-snippets'
call plug#end()

" CONFIGURATION

" scrooloose/nerdtree
"" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if the only window left open is a NERDTree
"" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
"" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" altercation/vim-colors-solarized
"" https://github.com/altercation/vim-colors-solarized
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" hightline current line and column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" tab spaces
set tabstop=2
set expandtab
set shiftwidth=2

" number
set nu

" hide scroll
set guioptions-=L
set guioptions-=r

" split line
hi VertSplit term=reverse cterm=reverse gui=none guibg=#002b36 guifg=#859900

" font
set guifont=SF\ Mono\ Regular:h14

" KEY MAP

" scrooloose/nerdtree
"" https://github.com/scrooloose/nerdtree
map <D-F1> :NERDTreeToggle<CR>
imap <D-F1> <Esc>:NERDTreeToggle<CR>

" kien/ctrlp.vim
"" https://github.com/kien/ctrlp.vim
let g:ctrlp_map = '<D-O>'

" mileszs/ack.vim
"" https://github.com/mileszs/ack.vim
map <D-F> :Ack<Space>

" rking/ag.vim
"" https://github.com/rking/ag.vim
map <D-A> :Ag<Space>

" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Alt + * move line
"" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" move between different window 
map <D-J> <C-W>j
map <D-K> <C-W>k
map <D-H> <C-W>h
map <D-L> <C-W>l

