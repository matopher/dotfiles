syntax enable

"-------------General Settings--------------"
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ','
set linespace=10
set tabstop=4                   					" a tab is four spaces
set expandtab
set softtabstop=4
set shiftwidth
set visualbell           " don't beep
set noerrorbells         " don't beep
" set autowriteall

"Show (partial) command in the status line
set showcmd

"-------------Visuals--------------"
set termguicolors     " enable true colors support
let ayucolor="mirage"
colorscheme ayu

set t_CO=256	
set guifont=Hack:h12
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
nmap <Leader>pi :PluginInstall<cr>

"Shortcut to edit snippets
nmap <Leader>es :e ~/.vim/snippets/<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" CtrlP Mappings
" nmap <D-p> :CtrlP<cr>
nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

nmap <Leader>f :tag<space>

" Emmet Mappings
let g:user_emmet_leader_key='<tab>'

"-------------Autocommands--------------"
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"-------------Laravel-Specific--------------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :e app/<cr>
nmap <Leader><Leader>v :e resources/views<cr>

"-------------NERDTree--------------"
let NERDTreeIgnore=['\.DS_Store$'] 					" let NERDTreeShowHidden=1

let g:NERDTreeHijackNetrw=0

" Toggle NERDtree with Command + k
map <D-k> :NERDTreeToggle<CR>

"-------------Greplace.vim--------------"
set grepprg=ag 										" Use Ag for search

let g:grep_cmd_opts = '--line-numbers --noheading'

"-------------vim-php-cs-fixer--------------"
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_verbose = 1

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

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

" Tips
" Press zz to center line in middle of screen 
