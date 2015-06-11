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
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'

 " Customized bundles
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
 Bundle 'elzr/vim-json.git'
 Bundle 'lukaszb/vim-web-indent.git'
 Bundle 'vim-scripts/taglist.vim.git'
 Bundle 'Shutnik/jshint2.vim'
 Bundle "pangloss/vim-javascript"
 Bundle "nathanaelkane/vim-indent-guides"
 Bundle "Raimondi/delimitMate"
 Bundle 'derekwyatt/vim-scala'

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
