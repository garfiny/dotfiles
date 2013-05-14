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

 filetype plugin indent on     " required!
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
 colorscheme Wombat256

 " MRU
 let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'

 " FuzzyFinder
 map <C-H> :FufFile<CR>

 " Window Controll
 nmap <Space> <C-W>

 " sensible
 set incsearch
 set scrolloff=1

 runtime! ftplugin/man.vim
 au FileType ruby setl sw=2 sts=2 et

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

 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " MULTIPURPOSE TAB KEY
 " " Indent if we're at the beginning of a line. Else, do completion.
 " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
	return "\<tab>"
    else
    	return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " RUNNING TESTS
 " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " map <leader>t :silent call RunTestFile()<cr>
 " map <leader>T :silent call RunNearestTest()<cr>
 " map <leader>a :silent call RunTests('')<cr>
 " map <leader>c :w\|:silent !script/features<cr>
 " map <leader>w :w\|:silent !script/features --profile wip<cr>
 "
 function! RunTestFile(...)
    if a:0
    	let command_suffix = a:1
    else
    	let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
    if in_test_file
	call SetTestFile()
    elseif !exists("t:grb_test_file")
    	return
    end
	call RunTests(t:grb_test_file .  command_suffix)
 endfunction

 function! RunNearestTest()
 	let spec_line_number = line('.')
 	call RunTestFile(":" .  spec_line_number)
 endfunction

 function! SetTestFile()
	 " Set the spec file that tests will be run for.
	 let t:grb_test_file=@%
 endfunction

function!  RunTests(filename)
	" Write the file and run tests for the given filename
	:w
	if match(a:filename, '\.feature$') != -1
		exec ":!script/features " .  a:filename
	else
		if filereadable("script/test")
			exec ":!script/test " .  a:filename
		elseif filereadable("Gemfile")
			exec ":!bundle exec rspec --color " .  a:filename
		else
			exec ":!rspec --color " .  a:filename
		end
	end
endfunction
