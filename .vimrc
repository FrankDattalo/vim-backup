set number
syntax enable

" spacing configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set shiftround
set smarttab
" end spacing configuration

" display line and column
set ruler

" error bells
set noerrorbells
set visualbell

" move with mouse 
set mouse=a

" backspace over end of line
set backspace=indent,eol,start
set autoread

" show command on bottom
set showcmd

set nowrap

set showcmd
filetype indent on
set wildmenu
set lazyredraw

" search configuration
set showmatch
set incsearch
set hlsearch
" end search configuration

" folding configuration
set foldenable
set foldlevelstart=10
set foldnestmax=10
" toggle folding with space
nnoremap <space> za
set foldmethod=indent
" end folding configuration

" swap file configuration
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
" end swap file configuration

" nerdtree remap
nnoremap <C-t> :NERDTree<Enter>

" disable ex mode
map Q <Nop>

" use system clipboard for macvim
set clipboard=unnamed

" coc configuration
set hidden
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" end coc configuration

" ctrl p configuration
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=/tmp/*,*.so,*.swp,*.zip,*.class
let g:ctrlp_extensions = [ 'dir', 'line', 'mixed' ]
noremap <C-S-p> :CtrlPLine<Enter>
" end control p configuration

autocmd vimenter * colorscheme gruvbox

" highlight trailing whitespace and tabs
set list listchars=trail:~,tab:>-
