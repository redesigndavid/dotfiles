" make sure that plug.vim is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/goyo.vim'
Plug 'w0rp/ale'
Plug 'jnurmine/Zenburn'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'davidhalter/jedi-vim'
Plug 'mhinz/vim-signify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'whatyouhide/vim-lengthmatters'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

syntax on
filetype plugin indent on

" automatically reload .vimrc
autocmd! bufwritepost .vimrc source %

" eco files
au BufNewFile,BufRead *.eco set filetype=python
au BufNewFile,BufRead *.eco3 set filetype=javascript

" some prefs
set textwidth=79
set softtabstop=4
set shiftwidth=4
set autoindent
set tabstop=4
set shiftround
set expandtab
set laststatus=2
set history=700
set undolevels=700
set number
set relativenumber

" make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
set bs=2

" colors
set background=dark
let base16colorspace=256
colorscheme molokai
set t_ut=''

" disable stupid backup and swap files - they trigger too many events
set nowritebackup
set noswapfile

" better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" rebind leader key
let mapleader = ","

nnoremap <silent> <leader>      :<c-u>WhichKey ','<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>


" ale lint setup
let g:ale_lint_delay = 10
let g:ale_python_flake8_executable = 'flake8'

" jedi setup
let jedi#goto_command = ''
let jedi#goto_assignments_command = ''
let jedi#goto_definitions_command = ''
let jedi#rename_command = ''

" abbreviations
ia pdbpdb import pdb;  # XXXpdb.set_trace();  # XXX
ia pyqtpdb from PyQt4.QtCore import pyqtRemoveInputHook;  # XXXpyqtRemoveInputHook();  # XXXimport pdb;pdb.set_trace();  # XXX


" vimsig
let g:signify_vcs_list = ['perforce', 'git']
let g:signify_realtime = 0
let g:signify_cursorhold_normal = 0

"set background=dark
"colorscheme molokai

"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

let g:lengthmatters_on_by_default = 0
set nocompatible
