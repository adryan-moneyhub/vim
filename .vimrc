"" VUNDLE CONFIGURATION OPTIONS
" ------------------------------------------------------------
" OPTIONAL: pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" To ignore plugin indent changes, instead use:
" "filetype plugin on"

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" PERSONAL CONFIG
" ------------------------------------------------------------

set nocompatible              " be iMproved, required
set number
set laststatus=2
set expandtab
set shiftwidth=2
set softtabstop=2
set nofoldenable
syntax enable
filetype off                  " required

" VUNDLE CONFIG
" ------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" let Vundle manage Vundle, required
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/ctrlp.vim'
Bundle 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-surround'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'yegappan/mru'
Bundle 'myusuf3/numbers.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" CUSTOM KEY MAPPINGS
" ------------------------------------------------------------
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" POST VUNDLE CONFIGURATION
" ------------------------------------------------------------
let g:neocomplcache_enable_at_startup = 1
:set directory=$HOME/.vim/swapfiles//
autocmd FileType <desired_filetypes> autocmd BufWritePre <buffer> StripWhitespace

" THEMES
" ------------------------------------------------------------
colorscheme molokai
autocmd BufNewFile,BufReadPost *.cjsx set filetype=coffee
