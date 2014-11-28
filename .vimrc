set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" 檔案樹
Plugin 'scrooloose/nerdtree'
" 靜態語法檢查
Plugin 'tpope/vim-pathogen'
Plugin 'scrooloose/syntastic'

" 查看 git branch 差異標記
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" airline
Plugin 'bling/vim-airline'

"ColorsSchemes
Plugin 'flazz/vim-colorschemes'

"ctrl+P搜尋文件
Plugin 'kien/ctrlp.vim'

"matchit % 支援HTML Tag
Plugin 'tmhedberg/matchit'

" 自動補全
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    "自動縮排

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
  "set shiftwidth=0 "自動縮排
	autocmd Filetype html setlocal ts=2 sts=2 sw=2
	autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
	autocmd Filetype php setlocal ts=4 sts=4 sw=4
	autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

 	"set expandtab
	set smarttab
  "set cindent
  "mac backspace can't working
  set nocompatible
  set backspace=indent,eol,start
  "關閉提示音
  set vb t_vb=
  "縮排
  "http://stackoverflow.com/questions/10213744/vim-html-autoindent-not-working
  filetype on
  filetype plugin on
  filetype indent on

	"語法檢查

" NERDTree setting
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>2 :tabp<cr>
noremap <Leader>3 :tabn<cr>

" AirLine setting
set laststatus=2
let g:airline_detect_whitespace = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'molokai'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'
" old vim-powerline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" ColorScheme
colorscheme molokai

" Systastic
execute pathogen#infect()
let g:syntastic_check_on_open = 1

