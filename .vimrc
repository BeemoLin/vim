" --- vbundle ---
set nocompatible "去除VIM一致性
filetype off "必須
"設定 vbundle 初始化路徑
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 啟動 vundle 管理插件
Plugin 'VundleVim/Vundle.vim'

" 在此增加其他 vundle 插件
Plugin 'mhinz/vim-startify' " 啟動顯示畫面
Plugin 'preservim/nerdtree' " 檔案總管
Plugin 'ryanoasis/vim-devicons' "nerdtree icon
Plugin 'mbbill/undotree' "修改紀錄
Plugin 'tpope/vim-fugitive' " git 指令支援
Plugin 'vim-gitgutter' " git 行號狀態 
Plugin 'vim-airline/vim-airline' " airline 顯示git狀態
Plugin 'vim-airline/vim-airline-themes' "airline theme
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } } "模糊搜尋
Plugin 'junegunn/fzf.vim' "模糊搜尋

call vundle#end()
filetype plugin indent on " 載入 vim 內建插件

" --- basic settings ---
syntax on "啟用 Syntax Highlighting 配色功能
set backspace=indent,eol,start  " more powerful backspacing
set t_Co=256 " color
set tabstop=4 softtabstop=4 shiftwidth=4 "把縮排跟 Tab 鍵預設的 8 格空白大小改成 4 格
set number "設定顯示行數
set relativenumber "相對行數
set ruler "設定右下角顯示游標所在行數及字元數
set background=dark "深色模式
colorscheme molokai "配色主題
set ignorecase smartcase "search 忽略大小寫 但搜尋字有大寫才敏感
set history=1000 "指令紀錄
set hlsearch "搜尋顯示結果
set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,euc-jp,euc-kr,latin1 "讀檔
set encoding=utf-8 " 寫檔
set cursorcolumn "游標顯示-直向
set cursorline " 游標顯示-橫向
nnoremap <S-Tab> << " shift + Tab for command mode
inoremap <S-Tab> <C-d> " shift + Tab for insert mode

" --- status bar ---
"set laststatus=2 "狀態列

" --- Tab settings ---
map <S-t> :tabnew<CR>
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

" --- NERDTree ---
map <S-w> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " 顯示隱藏檔案
let g:webdevicons_enable = 1 "show icon
let g:webdevicons_enable_nerdtree = 1 " show icon on nerdtree

" --- undoTree ---
map <S-e> :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle=1 "自動focus undoTree
set undofile " 持久化 undo歷史 Maintain undo history between sessions
set undodir=~/.vim/undodir " undo 儲存位置

" --- git ---
map <S-l> :Git diff<CR>
let g:airline_theme='google_dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" --- YouCompleteMe ---
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/opt/homebrew/Caskroom/miniforge/base/bin/python'

" --- vue settings ---
autocmd BufEnter,BufRead *.vue set filetype=vue.javascript " for vue with js

"VUE 設定
"使用兩個空白
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2
au BufNewFile,BufRead *.html,*.js,*.vue set expandtab
au BufNewFile,BufRead *.html,*.js,*.vue set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue set fileformat=unix

" --- FZF 模糊搜尋 ---
let g:fzf_layout = { 'down': '40%' }
nnoremap <C-p> :Files<Cr> "系統檔案
nnoremap <C-i> :GFiles<Cr> "git內文件
nnoremap <S-o> :Buffers<Cr> "現在開啟文件
nnoremap <S-f> :Rg<Cr> "搜尋包含內文

" --- startify ---
let g:startify_custom_header = [
      \ '   # 游標移動',
      \ '		gg	移到第一行',
      \ '		G	移到最後一行',
      \ '		行數 → G	移動到第 n 行',
      \ '		0	移動到該行最前面',
      \ '		$	移動到該行最後面',
      \ '		字數 → [Space]	向右移動 n 個字元',
      \ '		行數 → [Enter]	向下移動 n 行',
      \ '   # 標記與複製',
      \ '		v	開始字串標記',
      \ '		V	開始行標記',
      \ '		v → [Ctrl]-V	開始區塊標記',
      \ '		d	刪除標記的內容',
      \ '		y	複製標記的內容',
      \ '		yy	複製游標行',
      \ '		yG	複製游標行到最後一行',
      \ '		y1G	複製游標行到第一行',
      \ '		y$	複製游標處到最後一個字元',
      \ '		y0	複製游標處到第一個字元',
      \ '		p	在下一行貼上複製或刪除的內容',
      \ '		[Ctrl]-R → 0	在下一行貼上複製或刪除的內容，適用於編輯模式及指令行',
      \ '   # 其他指令',
      \ '		u	還原指令',
      \ '		[Ctrl]-R	重做指令',
      \ '		.	重覆上一個指令',
      \ '		! 命令	執行 linux 指令，並顯示執行結果',
      \ ]
let g:startify_custom_footer = [
      \ '   # 插件指令',
      \ '		shift + w NERDTree',
      \ '		shift + e undoTree',
      \ '		shift + left 切換左邊分頁',
      \ '		shift + right 切換右邊分頁',
      \ '		control + p 搜尋檔案',
      \ '		control + i 搜尋git內文件',
      \ '		shift + o 搜尋現在開啟文件',
      \ '		shift + f 搜尋包含內文',
      \ '   # 搜尋與取代',
      \ '		/搜尋字串	向下搜尋字串',
      \ '		?搜尋字串	向上搜尋字串',
      \ '		n	繼續下一個搜尋結果',
      \ '		N	繼續上一個搜尋結果',
      \ '		:起始行,終止行s/搜尋字串/取代字串/gic',
      \ '			從第 n 行到第 n 行取代字串 (後面的 g: 整行全部, i: 不分大小寫,c: 詢問)',
      \ '		:%s/搜尋字串/取代字串/g	全部取代字串 (後面的 g: 整行全部, i: 不分大小寫, c: 詢問)',
      \ '   # 刪除',
      \ '		dd	刪除游標行',
      \ '		dG	刪除游標行到最後一行',
      \ '		d1G	刪除游標行到第一行',
      \ '		d$	刪除游標處到最後一個字元',
      \ '		d0	刪除游標處到第一個字元',
      \ ]

