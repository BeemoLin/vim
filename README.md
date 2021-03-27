vim
===
使用 vundle 插件工具
`git clone https://github.com/BeemoLin/vim.git`

`cp vim/.vimrc ~/.vimrc`

`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

In the vim

`:PluginInstall`

restart vim

done!

指令
===

# 游標移動
	gg	移到第一行
	G	移到最後一行
	行數 → G	移動到第 n 行
	0	移動到該行最前面
	$	移動到該行最後面
	字數 → [Space]	向右移動 n 個字元
	行數 → [Enter]	向下移動 n 行
# 標記與複製
	v	開始字串標記
	V	開始行標記
	v → [Ctrl]-V	開始區塊標記
	d	刪除標記的內容
	y	複製標記的內容
	yy	複製游標行
	yG	複製游標行到最後一行
	y1G	複製游標行到第一行
	y$	複製游標處到最後一個字元
	y0	複製游標處到第一個字元
	p	在下一行貼上複製或刪除的內容
	[Ctrl]-R → 0	在下一行貼上複製或刪除的內容，適用於編輯模式及指令行
# 其他指令
	u	還原指令
	[Ctrl]-R	重做指令
	.	重覆上一個指令
 		! 命令	執行 linux 指令，並顯示執行結果

    # 插件指令
 		shift + w NERDTree
	shift + e undoTree
	shift + left 切換左邊分頁
	shift + right 切換右邊分頁
	control + p 搜尋檔案
	control + i 搜尋git內文件
	shift + o 搜尋現在開啟文件
	shift + f 搜尋包含內文
# 搜尋與取代
	/搜尋字串	向下搜尋字串
	?搜尋字串	向上搜尋字串
	n	繼續下一個搜尋結果
	N	繼續上一個搜尋結果
	:起始行,終止行s/搜尋字串/取代字串/gic
		從第 n 行到第 n 行取代字串 (後面的 g: 整行全部, i: 不分大小寫,c: 詢問)
	:%s/搜尋字串/取代字串/g	全部取代字串 (後面的 g: 整行全部, i: 不分大小寫, c: 詢問)
# 刪除
	dd	刪除游標行
	dG	刪除游標行到最後一行
	d1G	刪除游標行到第一行
	d$	刪除游標處到最後一個字元
	d0	刪除游標處到第一個字元
