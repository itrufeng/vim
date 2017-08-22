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
Plug 'terryma/vim-multiple-cursors'
" The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
Plug 'SirVer/ultisnips'
" vim-snipmate default snippets (Previously snipmate-snippets)
Plug 'honza/vim-snippets'
" Vim Cucumber runtime files
Plug 'tpope/vim-cucumber'
" Automated tag file generation and syntax highlighting of tags in Vim
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
" Vim plug for switching between companion source files (e.g. ".h" and ".cpp")
Plug 'derekwyatt/vim-fswitch'
call plug#end()

" CONFIGURATION

" scrooloose/nerdtree
"" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree | wincmd p
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

" Auto reload file when file changed
:set autoread

" hide scroll
set guioptions-=L
set guioptions-=r

" split line
hi VertSplit term=reverse cterm=reverse gui=none guibg=#002b36 guifg=#859900

" font
set guifont=SF\ Mono\ Regular:h14

" KEY MAP
" kien/ctrlp.vim
"" Recent file
map <Leader>e :CtrlPBuffer<Enter>

" mileszs/ack.vim
"" https://github.com/mileszs/ack.vim
map <Leader>f :Ack!<Space>
map <Leader>fo :Ack! --objc<Space>
map <Leader>fs :Ack! --swift<Space>
map <Leader>fp :Ack! --python<Space>

" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" derekwyatt/vim-fswitch
nmap <silent> <Leader>of :FSHere<cr>
nmap <silent> <Leader>ol :FSRight<cr>
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>oh :FSLeft<cr>
nmap <silent> <Leader>oH :FSSplitLeft<cr>
nmap <silent> <Leader>ok :FSAbove<cr>
nmap <silent> <Leader>oK :FSSplitAbove<cr>
nmap <silent> <Leader>oj :FSBelow<cr>
nmap <silent> <Leader>oJ :FSSplitBelow<cr>

" Alt + * move line
"" http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" move between different window 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" quit
nmap <Leader>w :wq<Enter>
nmap <Leader>q :q!<Enter>
imap <Leader>w <Esc>:wq<Enter>
imap <Leader>q <Esc>:q!<Enter>

" resize window
map <Leader>< :vertical resize -10<Enter>
map <Leader>> :vertical resize +10<Enter>
