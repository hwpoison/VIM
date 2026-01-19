" 
" TO RELOAD CONFIGURATION USES :so $MYVIMRC to edit it :e $MYVIMRC
"
" my favorite colorscheme :)
colorscheme torte

" Set mi fav fount
set guifont=Consolas

" show line numbers and relative line
set number
set relativenumber

" enable the sintax highlight
syntax enable

" associate files *.bob with c syntax
au BufRead,BufNewFile *.bob set  filetype=c

" Place under current file path each time file is opened
au BufRead,BufNewFile *.* cd %:h 
command Cwd cd %:h

" show highlight during search (use noh to hidden it)
set hlsearch

" maximize the current windows during startup 
autocmd GUIEnter * simalt ~x

" tab width settindg
set tabstop=4
set shiftwidth=4
set laststatus=2
set cin!

" Prevent to save the buffer before alternate to another one
set hidden

" CTRL+n for jum to the next buffer, CTRL+p to previous buffer
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

" Create a new tab using CTRL+T
nnoremap <C-t> :tabnew<CR>

" menubar / commands completion menu
set wildmenu
set wildoptions=pum

" autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" not sensitive seach highlights
set ignorecase
set smartcase

" For C Progamming
let g:GCC_FULL_PATH = 'C:\Users\a851770\Downloads\Python\mingw-w64-v11.0.0\mingw64\bin\gcc'
command Com execute "!" . g:GCC_FULL_PATH . " % -o %:r && %:r"

" new vim9 feature: Autocompletion (Extracted from official documentation https://vim-jp.org/vimdoc-en/insert.html#ins-autocompletion)
set autocomplete
set complete=.^5,w^5,b^5,u^5
set completeopt=popup
" uses TAB or S-TAB to iterate over autocompletion popup
inoremap <silent><expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Autocompletion but for comandline
autocmd CmdlineChanged [:\/\?] call wildtrigger()
set wildmode=noselect:lastused,full
set wildoptions=pum

" Copy and paste from cliboard using CTR+C and CTR+V (doesn't affect the
" default y and p)
" ctrl-shift-c is copy
vnoremap <C-S-C> "+y
" ctrl-shift-v is paste
map <C-S-V> "+gP
imap <C-S-V>  <C-R>+
cmap <C-S-V>  <C-R>+
