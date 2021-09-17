" Plug
call plug#begin()
Plug 'dense-analysis/ale' " Linting
Plug 'flazz/vim-colorschemes' "Color schemes
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "Better search
Plug 'preservim/nerdcommenter' "Commenting and such
Plug 'roman/golden-ratio' "Resizes windows
Plug 'scrooloose/nerdtree' "File Tree
Plug 'tpope/vim-fugitive' "Git plugin
Plug 'tpope/vim-sensible' "Sensible defaults
Plug 'tpope/vim-surround' "Surround pairs
Plug 'janko-m/vim-test' "Test
Plug 'bswinnerton/vim-test-github' "Test @ GitHub
call plug#end()

syntax on

filetype indent plugin on  " Wrap gitcommit file types at the appropriate length syntax enable      " syntax highlighting
set vb             " flashes screen on errors
set hlsearch       " highlight search terms
set incsearch
set ignorecase
set number
set tags=tags

" indentation
set smartindent
set autoindent     " open lines at same indentation
set expandtab      " turn tabs into tabstop spaces
set tabstop=2      " 1 tab = 2 spaces
set shiftwidth=2   " shift 2 spaces

set textwidth=76
set wildmenu
set mouse=a       " allow mouse
"set cursorline   " highlights/underlines current line
set ruler         " shows cursor position
set background=dark

"Set color scheme
colorscheme 1989

" whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

filetype on         "enable filetype detection
filetype plugin on  "enable filetype-specific plugins
filetype plugin indent on " fix indenting of # comments

let NERDTreeShowHidden=1 "show hidden files in tree

" some mappings
let mapleader = ","
map <C-N> <esc>:NERDTreeToggle<CR>
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-P> <C-W>k
"Note that <CR> is used for ENTER
imap <leader>wq <esc>:wq<CR>

" clear highlights
nnoremap <Leader><space> :nohlsearch<CR>

" For testing w/ GH
let test#runners = {'Ruby': ['GitHub']}
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
" for vim-test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>


