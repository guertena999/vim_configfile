syntax enable
filetype on
filetype indent on
filetype plugin on
map <F3> :!g++ -g % -o %:r && ./%:r <CR>
map <F4> :!g++ -g % -o %:r <CR>
map <F2> :w <CR>
map <F12> :!gdb ./%:r <CR>
map <C-n> :NERDTree<CR>
map <F4> :call PRUN()<CR>

set laststatus=2
set ruler
set number
set cursorline
set cursorcolumn

let Tlist_Show_One_File=1     
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window=1 
let Tlist_Sort_Type="name" 
set hlsearch

filetype plugin indent on
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 2     
let OmniCpp_ShowPrototypeInAbbr = 1 
let OmniCpp_MayCompleteScope = 1 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme sonokai
  func! PRUN()
      exec "w" 
          if &filetype == 'python'
                  exec "!python %"
                      endif
	endfunc
