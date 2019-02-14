syntax enable
let mapleader = ','
set linespace=10

"-------------Visuals--------------"
colorscheme ayu

set t_CO=256	
let ayucolor="mirage"
set guifont=Menlo:h12

" Remove scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"-------------Search--------------"
set hlsearch								"Highlight all matched terms.
set incsearch								"Incrementally highlight, as we type.

"-------------Split Management--------------"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Vundle--------------"
set nocompatible              " be iMproved, required
filetype off                  " required

so ~/.vim/plugins.vim         " Source plugins from separate file


"-------------Mapppings--------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>evp :tabedit ~/.vim/plugins.vim<cr>

" Toggle NERDtree with C-n
map <Leader>n :NERDTreeToggle<CR>

"-------------Autocommands--------------"
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

"-------------NERDTree--------------"
let NERDTreeIgnore=['\.DS_Store$'] 					" let NERDTreeShowHidden=1

"-------------Ctrlp--------------"
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|git\|vendor\|build_local',
  \ 'file': 'DS_Store'
  \ }

"-------------Other--------------"

let g:sneak#streak = 1
let g:airline_theme='bubblegum'

									" Yank text to the macOS clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
