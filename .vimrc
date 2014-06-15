set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" 檔案樹
Plugin 'scrooloose/nerdtree'
" 靜態語法檢查
Plugin 'scrooloose/syntastic'
"ruby
Plugin 'tpope/vim-rbenv'
"rails.vim
Plugin 'tpope/vim-rails'
"Powerline
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
"ColorsSchemes
Plugin 'flazz/vim-colorschemes'
"ctrl+P搜尋文件
Plugin 'kien/ctrlp.vim'
"matchit % 支援HTML Tag
Plugin 'tmhedberg/matchit'
" 自動結尾
Plugin 'Raimondi/delimitMate'
" 自動補全
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"通用設定
  "Leader鍵
  let mapleader = ","
  "utf8編碼
  set encoding=utf-8
  "256色
  set t_Co=256
  "顯示顏色高亮
  syntax enable
  "顯示行號
  set number
  "預設背景顏色
  set background=dark
  "tab for ruby
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab
	set smarttab
  set cindent
  "關閉提示音
  set vb t_vb=
  "縮排
  "http://stackoverflow.com/questions/10213744/vim-html-autoindent-not-working
  filetype on
  filetype plugin on
  filetype indent on

" NERDTree setting
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>2 :tabp<cr>
noremap <Leader>3 :tabn<cr>

" PowerLine setting
  "let g:Powerline_symbols = 'fancy'
  "set fillchars+=stl:\ ,stlnc:\
  "set laststatus=2

" AirLine setting
set laststatus=2
let g:airline_detect_whitespace = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'molokai'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
" old vim-powerline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ColorScheme
colorscheme molokai

" Systastic
let g:syntastic_check_on_open = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<s-c-j>"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
