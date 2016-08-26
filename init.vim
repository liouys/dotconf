" everything start here...

" 设置文件编码
set fenc=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" 启动语法检查
syntax enable
let mapleader=','

" Required:
call plug#begin('~/.config/nvim/plugged')

" core plugins
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>t'
let g:ctrlp_max_height = 30
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height = 20
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_switch_buffer = 'e'
nnoremap <leader>ev :CtrlP app/views<cr>
nnoremap <leader>ec :CtrlP app/controllers<cr>
nnoremap <leader>em :CtrlP app/models<cr>
nnoremap <leader>el :CtrlP lib<cr>
nnoremap <leader>ea :CtrlP app/assets<cr>
nnoremap <leader>ep :CtrlP public<cr>
nnoremap <leader>er :topleft :vsplit config/routes.rb<cr>
nnoremap <leader>eg :topleft :vsplit Gemfile<cr>

" --//vim main plugins
Plug 'sjl/gundo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#fnamemod = ':t'

"Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/tComment'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
nnoremap <leader>W :Gwrite<CR>
nnoremap <leader>C :Gcommit -v<CR>
nnoremap <leader>S :Gstatus \| 7<CR>
inoremap <leader>W <Esc><leader>W
inoremap <leader>C <Esc><leader>C
inoremap <leader>S <Esc><leader>S

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_leader_key = ','
Plug 'terryma/vim-multiple-cursors'

" --// togglable panels
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
map <leader>nt :NERDTreeFind<CR>
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:NERDTreeWinSize = 35
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'

" --//language bundle
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim'
Plug 'othree/javascript-libraries-syntax.vim'

Plug 'fatih/vim-go', {'for': 'go'}
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/c.vim'
Plug 'groovy.vim'
Plug 'vim-gradle'
Plug 'hhys/yaml-vim'

" --// database
Plug 'vim-scripts/SQLUtilities'
Plug 'NagatoPain/AutoSQLUpperCase.vim'

" --// autocomplete
"Plug 'Valloric/YouCompleteMe'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1

" --// snippets
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'L9' " function utility library.
Plug 'Shougo/unite.vim'

" --// configure management tools 
Plug 'saltstack/salt-vim'
Plug 'pearofducks/ansible-vim'

" -- for fun...
Plug 'uguu-org/vim-matrix-screensaver'

call plug#end()

" enable all the plugin
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

" General
syntax on
set mouse=a
set clipboard=unnamed
set history=1000
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent
set noswapfile " no create swap file when open file.
set nobackup
set nowritebackup
set modeline
set modelines=5
set autowrite
set autoread

let g:is_posix = 1

" vim gui
set tabpagemax=15
set noshowmode " hide the default mode text (e.g. -- INSERT -- below the statusline)
set cursorline
set shortmess=atI
autocmd InsertLeave * set cul
set scrolloff=3
set showcmd
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
set wildmenu
set foldenable
set foldlevelstart=10
set foldlevel=99
set foldmethod=indent
nnoremap <space> za

nnoremap j gj
nnoremap k gk

nnoremap B ^
nnoremap E $

nnoremap ^ <nop>
nnoremap $ <nop>

" 显示行号
set number
set relativenumber
set cmdheight=2
set langmenu=none
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set viminfo+=!
filetype on
filetype indent on

nmap tt :%s/\t/    /g<CR>

" Open new split panes to right and bottom, which feels or natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Easy escaping to normal model
inoremap jk <esc>

" Move to the next buffer
nmap <leader>. :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Split window Resize
"nmap <C-v> :vertical resize +5<CR>
"nmap <C-m> :vertical resize -5<CR>

" formatting
set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=5
set matchpairs+=<:>

autocmd Filetype gitcommit setlocal spell textwidth=72

" Key (re)Mappings
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc <CR>

nnoremap <leader>s :mksession<CR>

" Use local vimrc if available {{
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif

autocmd BufNewFile *.sh,*.rb,*.py exec ":call SetTile()"
func! SetTile()
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(line("."), "\# coding=utf-8")
        call append(line(".") + 1, "")
    endif
endfunc
autocmd BufNewFile * normal G

" togglables without FN keys
nnoremap <leader>1 :GundoToggle<CR>

" macos vs linux clipboard
if has("mac")
    set clipboard+=unnamed
else
    set clipboard=unnamedplus
endif

" enable angular syntax
let g:used_javascript_libs = 'jquery,angularjs'

" multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:session_autoload="no"
let g:session_autosave="no"
let g:session_command_aliase = 1
colorscheme candyman

" tabs
nmap <leader>tn :tabnew<cr>
nmap <leader>te : tabedit<cr>
nmap <leader>tc : tabclose<cr>
nmap <leader>tm : tabmove<cr>

:map <leader>w <C-w>w
