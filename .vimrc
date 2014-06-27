set tags=/home/matthew28/tags
nmap:TrinityToggleAll
nmap :TrinityToggleSourceExplorer
nmap:TrinityToggleTagList
filetype plugin indent on
set completeopt=longest,menu
     debian.vim
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
    nManagerWindowLayout='FileExplorer|TagList'
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

