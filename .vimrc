set nocompatible
filetype off

"Enable Vundle plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle
Plugin 'VundleVim/Vundle.vim'

"Pathogen
execute pathogen#infect()

"Appearances
syntax enable
" set background=light
colo desert

"Autocompletion menu in zsh with <C-d> in vim
set wildmenu
set wildmode=full

"Set up tab spaces
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set autoindent
set hls

"Show tab characters
set list
set listchars=tab:\|\ 

"backspace problem
set backspace=indent,eol,start

"Split right
set splitright
"Split below
set splitbelow

"Enter a new line
map <ENTER> o<ESC>
map <S-ENTER> O<ESC>

"Enter semi-colon at the end of the line
map <C-s> A;<ESC>

set number
filetype plugin indent on

"Automatically open NERDTree when enter vim
"autocmd vimenter * NERDTree

"NERDTree shit
map <C-n> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_focus_on_files=1

let NERDTreeShowHidden=1

"Syntastic shit
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"JS syntax highlighting in html/css
let g:javascript_enable_domhtmlcss = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Enable JSX syntax in .js files
let g:jsx_ext_required = 0

"vim-airline
let g:airline#extensions#tabline#enabled = 1
" statusline appears all the time
set laststatus=2

"end of Vundle -- required
call vundle#end()
