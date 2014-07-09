"***** Bundle initial and Setup *****
set nocompatible 
filetype off 
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	  echo "Installing Vundle.."
	    echo ""
		  silent !mkdir -p ~/.vim/bundle
		    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
			  let iCanHazVundle=0
		  endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"My Bundle list
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
"Bundle "davidhalter/jedi"
Bundle 'scrooloose/syntastic"'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/cscope.vim'
Bundle 'vim-scripts/SrcExpl'

" *****設定語法檢查 syntastic *****
let g:syntastic_error_symbol = '✗'	"set error or warning signs
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
"let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
"let g:syntastic_python_checkers=['pyflakes']
""highlight SyntasticErrorSign guifg=white guibg=black

let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons = 1	"whether to show balloons

" ***** YCM configuration *****
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR> 
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"******Matthew Vim  原始設定 ******
set tags=/home/matthew28/tags
nmap:TrinityToggleAllkj
nmap :TrinityToggleSourceExplorer
nmap:TrinityToggleTagList
filetype plugin indent on
set completeopt=longest,menu
     "debian.vim
    set nocompatible
    colorscheme ron      
    filetype on
    filetype plugin on
    set background=dark
    set autoindent        
    set tabstop=4        
    set softtabstop=4       
    set shiftwidth=4    
    set cindent          
    set showmatch        
    set linebreak        
    set whichwrap=b,s,<,>,[,] 
    set mouse=a           
    set number            
    set history=50        
    set laststatus=2 
    set ruler        
    set showcmd      
    set showmode     
    set incsearch        
	set hlsearch  
    "nManagerWindowLayout='FileExplorer|TagList'
    nmap wm :WMToggle<cr>
	nnoremap <silent> <F3> :Grep<CR>
nmap <F8>   :TrinityToggleAll<CR> 
nmap <F9>   :TrinityToggleSourceExplorer<CR>
nmap <F10>  :TrinityToggleTagList<CR> 
nmap <F11>  :TrinityToggleNERDTree<CR>
nmap <c-j>  :cn<CR>
nmap <c-k>  :cp<CR>
nmap <s-F9> viwy:vimgrep /\<<C-R>"\>/g **/*.[ch] **/*.[cpp]<CR>
nmap <c-e> :cs find e <C-R>=expand("<cword>")<CR><CR>
set tags=~/tags


set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"




