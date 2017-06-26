set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" PluginList
" PluginInstall
" PluginClean
" PluginSearch foo

Plugin 'vim-airline/vim-airline' "status-bar
Plugin 'vim-airline/vim-airline-themes' "status-bar-themes
Plugin 'scrooloose/nerdtree' "nerdtree - folder explorer
Plugin 'airblade/vim-gitgutter' "git change check
Plugin 'tpope/vim-fugitive' "git status-bar w/ vim-airline
Plugin 'scrooloose/syntastic' "grammar checker
Plugin 'thaerkh/vim-workspace' "workspace for auto save session

Plugin 'tomlion/vim-solidity'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'shougo/vimshell.vim'
Plugin 'shougo/vimproc.vim'

Plugin 'valloric/youcompleteme'


call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline
let g:airline#extension#tabline#enabled = 1 "turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 "turn on bottom bar
" vim-workspace
let g:workspace_session_name = 'Session.vim'
let g:workspace_persist_undo_history = 1 "enabled = 1, disabeld = 0
let g:workspace_undodir='.undodir'
let g:workspace_autosave_always = 1

colorscheme monokai

syntax on
set number
set relativenumber
set hlsearch "highliht search word
set ignorecase "ignore capital/noncapital
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "fill space with space not \\t
autocmd FileType make setlocal noexpandtab "Makefile is exception case about tab<->space
"set pastetoggle=<F2> "recognize binding key in insert mode.
set mouse=a

" Key settings
let mapleader = ","

nnoremap <leader>p :bp<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>v :vs<CR>
nnoremap <leader>s :sp<CR>
nnoremap <tab><tab> :tabnew<CR>
nnoremap <tab>w :tabclose<CR>
nnoremap <tab><Left> :tabp<CR>
nnoremap <tab><Right> :tabn<CR>

map <F2> :NERDTreeToggle<CR>
nnoremap <leader>z :ToggleWorkspace<CR>


