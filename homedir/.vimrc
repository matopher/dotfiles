syntax enable

"-------------General Settings--------------"
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ','
set linespace=10
set tabstop=4                   					" a tab is four spaces
set visualbell           " don't beep
set noerrorbells         " don't beep

"Show (partial) command in the status line
set showcmd

"-------------Visuals--------------"
colorscheme ayu

set t_CO=256	
let ayucolor="mirage"
set guifont=Menlo:h12
set number                      					" always show line numbers
set guioptions-=e 									"No GUI tabs

hi Directory guifg=white
hi LineNr guifg=#B8C2CC guibg=bg
hi foldcolumn guibg=bg
" set foldcolumn=2

" Remove scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"-------------Search--------------"
set hlsearch								"Highlight all matched terms.
set incsearch								"Incrementally highlight, as we type.
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,

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
"Shortcut to edit vimrc and plugin files
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>evp :tabedit ~/.vim/plugins.vim<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" CtrlP Mappings
" nmap <D-p> :CtrlP<cr>
nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

nmap <Leader>f :tag<space>

"-------------Autocommands--------------"
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

"-------------Laravel-Specific--------------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :e app/<cr>
nmap <Leader><Leader>v :e resources/views<cr>

"-------------NERDTree--------------"
let NERDTreeIgnore=['\.DS_Store$'] 					" let NERDTreeShowHidden=1

let g:NERDTreeHijackNetrw=0

" Toggle NERDtree with C-n
map <Leader>n :NERDTreeToggle<CR>

"-------------Greplace.vim--------------"
set grepprg=ag 										" Use Ag for search

let g:grep_cmd_opts = '--line-numbers --noheading'

"-------------Ctrlp--------------"
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|git\|vendor\|build_local',
  \ 'file': 'DS_Store'
  \ }

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_extensions = ['buffertag']

"-------------Other--------------"

let g:sneak#streak = 1
let g:airline_theme='bubblegum'

									" Yank text to the macOS clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Tips
" Press zz to center line in middle of screen 
