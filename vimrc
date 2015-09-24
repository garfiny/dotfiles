set nocompatible  "We don't want vi compatibility.
filetype off

set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
"  Bundle 'git://git.wincent.com/command-t.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'jistr/vim-nerdtree-tabs.git'
Bundle 'Raimondi/delimitMate.git'
Bundle 'docunext/closetag.vim.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'ervandew/supertab.git'
Bundle 'msanders/snipmate.vim.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-speeddating.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'nelstrom/vim-textobj-rubyblock.git'
Bundle 'kana/vim-textobj-user.git'
Bundle 'groenewege/vim-less.git'
Bundle 'tpope/vim-haml.git'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'cakebaker/scss-syntax.vim.git'
Bundle 'vim-scripts/mru.vim.git'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/ruby-matchit.git'
Bundle 'vim-scripts/Colour-Sampler-Pack'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-sensible'
Bundle 'mileszs/ack.vim.git'
Bundle 'slim-template/vim-slim.git'
Bundle 'vinhtiensinh/clipboard_file_open.git'
Bundle 'vim-scripts/dbext.vim.git'
Bundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM.git'
Bundle 'vim-scripts/TaskList.vim'
Bundle 'elzr/vim-json.git'
Bundle 'lukaszb/vim-web-indent.git'
Bundle 'vim-scripts/taglist.vim.git'
Bundle 'Shutnik/jshint2.vim'
Bundle "pangloss/vim-javascript"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "Raimondi/delimitMate"
Bundle 'derekwyatt/vim-scala'
Bundle 'powerline/powerline'

filetype plugin indent on     " required!
au FileType javascript setl sw=2 sts=2 et
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.."
"
"
set nowrap
" NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
" autocmd vimenter * if !argc() | NERDTree | endif

set t_Co=256
set background=dark
call togglebg#map("<F5>")
colorscheme wombat256

" MRU
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'

" FuzzyFinder
map <C-H> :FufFile<CR>
map <C-B> :FufBuffer<CR>

" Window Controll
nmap <Space> <C-W>

" sensible
set incsearch
set scrolloff=1

runtime! ftplugin/man.vim
au FileType ruby setl sw=2 sts=2 et

au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
au FileType xsd exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=10000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
set number
set winwidth=79
set showcmd
set tags+=gems.tags
