set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'taglist.vim'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'winmanager'
Bundle 'FromtonRouge/OmniCppComplete'

Bundle 'ervandew/supertab'
Bundle 'SuperTab'
Bundle 'tomtom/tcomment_vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'

" https://github.com/plasticboy/vim-markdown
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'

Bundle 'derekwyatt/vim-scala'
Bundle 'Valloric/YouCompleteMe'

" python
Bundle 'python.vim'
" https://github.com/vim-scripts/Pydiction
Bundle 'Pydiction'

" surround
Bundle 'tpope/vim-surround'

" NERD tree
Bundle 'The-NERD-tree'

Plugin 'altercation/vim-colors-solarized'

"Set map leader
let mapleader=","
let g:mapleader=","

syntax on

"显示行号
set nu
set relativenumber

"设定行距 GUI 界面中生效
set linespace=4
"设定 GUI 选项
"set guioptions=gmrLtT  m:菜单 T:工具栏
set guioptions=gmrLt
"显示标尺
set ruler


"禁止在 虚空间 内操作
set virtualedit=

set smarttab
"将缩进转换为空格
set expandtab
"设定 Tab 键缩进的空格数
set tabstop=4
set shiftwidth=4

set autoindent
set smartindent
"自动折行
set wrap
"linebreak
set lbr
"行宽（输入时自动插入换行符）textwidth
set tw=100

"插入模式下，“←”如何删除光标前的字符：行首空白、换行符、插入点之前的字符
set backspace=indent,eol,start

"命令行历史纪录
set history=500

"增量搜索
set incsearch
"搜索时忽略大小写
set ignorecase
set smartcase
"高亮显示搜索结果
set hlsearch

"Enable filetype plugins
filetype plugin on
filetype indent on

"当文件被外部文件修改时自动加载
set autoread

"快速保存
" nmap <leader>w :w!<cr>
" 强制退出
nmap <leader>q :q!<cr>

"turn on the wild menu
set wildmenu


" Don't redraw while executing macros (good performance config)
set lazyredraw

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"配色风格 desert darkblue ron
set background=dark
colorscheme solarized

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"Use Unix as the standard file type
set ffs=unix,dos,mac

" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


" Taglist 配置
let Tlist_Show_One_File = 1       "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1     "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1    "在右侧窗口中显示taglist窗口 

" winManager配置
let g:winManagerWindowLayout = "NERDTree"
let g:persistentBehaviour = 0
let g:NERDTree_title="[NERDTree]"
let g:winManagerWidth = 30

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap <silent> <leader>wm :WMToggle<cr>
map <leader>wf :FirstExplorerWindow<cr> 
map <leader>wb :BottomExplorerWindow<cr> 
map <F2> :WMToggle<cr>

" for js
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" set cursorline              " 突出显示当前行
" set cursorcolumn              " 突出显示当前列
" autocmd InsertLeave * se nocul  " 用浅色高亮当前行
" autocmd InsertEnter * se cul    " 用浅色高亮当前行
" :hi CursorLine   cterm=NONE ctermbg=0 guibg=grey guifg=white
" :hi CursorColumn cterm=NONE ctermbg=0 guibg=grey guifg=white
" set colorcolumn=100
" :hi ColorColumn ctermbg=0 guibg=lightgrey

" 显示tab和空格
set list
" 设置tab和空格样式
set lcs=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
highlight LeaderTab guifg=#666666
" 匹配行首tab
match LeaderTab /^\t/

" Pydiction
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

" markdown disable folding
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1

"source vimrc, 编辑vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>


" guifont
set guifont=Monospace\ 13

" quick jump between splits
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" gvim和系统剪切板交互
set clipboard=unnamed

" 快速运行脚本文件
autocmd FileType python nnoremap <buffer> <leader>r :w<CR>:!python % <CR>

