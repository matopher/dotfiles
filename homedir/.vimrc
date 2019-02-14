" Must Have
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax on " syntax highlighting on
syntax enable
" let g:solarized_termtrans = 1
" call togglebg#map("<F5>")
" if has('gui_running')
"     set background=dark
" else
"     set background=dark
" endif

let mapleader = ','
set linespace=15

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visuals
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme ayu

let ayucolor="mirage"

set guifont=Menlo:h12

" Remove scrollbars
set guioptions-=l

set guioptions-=L

set guioptions-=r

set guioptions-=R

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split Management
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow

set splitright


nmap <C-J> <C-W><C-J>

nmap <C-K> <C-W><C-K>

nmap <C-H> <C-W><C-H>

nmap <C-L> <C-W><C-L>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

so ~/.vim/plugins.vim         " Source plugins from separate file

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>evp :tabedit ~/.vim/plugins.vim<cr>

" Toggle NERDtree with C-n
map <Leader>n <plug>NERDTreeTabsToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

" Yank text to the macOS clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$']

let g:NERDTreeHijackNetrw=0

" Autoclose if only NERDtree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|git\|vendor\|build_local',
  \ 'file': 'DS_Store'
  \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#streak = 1
let g:airline_theme='bubblegum'
