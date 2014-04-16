set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "taglist.vim"
Bundle "SuperTab"
Bundle 'jlanzarotta/bufexplorer'
Bundle "winmanager"
Bundle "FromtonRouge/OmniCppComplete"
Bundle "ervandew/supertab"
Bundle "tomtom/tcomment_vim"
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
Bundle 'plasticboy/vim-markdown'
syntax on
"配色风格 desert darkblue ron
colorscheme desert

"设定行距 GUI 界面中生效
set linespace=4
"设定 GUI 选项
"set guioptions=gmrLtT  m:菜单 T:工具栏
set guioptions=gmrLt
"显示标尺
set ruler

"自动折行
"set nowrap
set wrap
"按完整单词折行
set nolinebreak
"set linebreak
"行宽（输入时自动插入换行符）
"set textwidth=80
set textwidth=0

"允许在 虚空间 内操作 （虚空间:不包含任何文本的空间。如换行符之后）
"set virtualedit=all
"禁止在 虚空间 内操作
set virtualedit=

"设定 Tab 键缩进的空格数
set tabstop=4
"设定编辑器将多少空格视为一个缩进
set shiftwidth=4
set smartindent
set expandtab
"将缩进转换为空格
"set expandtab
"设定自动缩进(新行与前一行缩进相同)
"set autoindent
"set noautoindent
set cindent
"插入模式下，“←”如何删除光标前的字符：行首空白、换行符、插入点之前的字符
set backspace=indent,eol,start

"命令行历史纪录
set history=500

"禁用增量搜索
set incsearch
"set noincsearch
"搜索时忽略大小写
set ignorecase
"set noignorecase
"高亮显示搜索结果
set hlsearch

"设定折叠方式
"set foldmethod=manual

"以下字符将被视为单词的一部分 (ASCII)：
"set iskeyword+=33-47,58-64,91-96,123-128

"显示行号
set nu

filetype on
" taglist 配置
let Tlist_Show_One_File = 1       "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1     "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1    "在右侧窗口中显示taglist窗口 

" winManager配置
let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 30
" nmap <silent> wm :WMToggle<cr>

" for js
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

set cursorline              " 突出显示当前行
set cursorcolumn              " 突出显示当前列
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行 
:hi CursorLine   cterm=NONE ctermbg=0 guibg=green guifg=white
:hi CursorColumn cterm=NONE ctermbg=0 guibg=green guifg=white
set colorcolumn=80
:hi ColorColumn ctermbg=0 guibg=lightgrey
