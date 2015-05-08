"
"
"
"Vimrc setting
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 通用配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置Vim历史纪录的行数
set history=700

" 关闭兼容模式
set nocompatible
set backspace=indent,eol,start

" 插件导入
if filereadable(expand("~/.vim/bundles.vim"))
    source ~/.vim/bundles.vim
endif

" 检测文件的类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on 
" 允许插件
filetype plugin on 
" 启动自动补全
filetype plugin indent on

" 文件修改以后自动载入
set autoread

" 修改leader键
let mapleader = ","
let g:mapleader = ","

" 高亮搜索、实时搜索、忽略大小写
set hlsearch
set incsearch
set ignorecase
set smartcase

" 取消备份
" set nobackup
" 关闭交换文件
" set nosmapfile

" 按空格或,/取消搜索高亮
nmap <silent> <leader>/ :nohlsearch<CR>
noremap <silent> <Space> :silent noh<CR>
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 颜色,字体,主题设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮
syntax enable  
syntax on

" 主题风格

" 主题 solarized
" let g:solarized_termcolors=256
" "set background=dark
" set background=light
" colorscheme solarized
" set t_Co=256

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" 字体和大小
set guifont=Monaco:h14
set guifontwide=Source\ Sans\ Pro:h14


"==========================================
"" Display Settings 展示/排版等界面格式设置
"==========================================
""
" 显示当前的行号列号：
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7
" set winwidth=79
" 显示行号：
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 取消换行。
set nowrap
" 括号配对情况,跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

" 设置代码折叠
set foldenable
set foldmethod=indent
set foldlevel=99
" 可组合 {} () <> []使用
" zc 关闭当前打开的折叠
" zo 打开当前的折叠
" zm 关闭所有折叠
" zM 关闭所有折叠及其嵌套的折叠
" zr 打开所有折叠
" zR 打开所有折叠及其嵌套的折叠
" zd 删除当前折叠
" zE 删除所有折叠
" zj 移动至下一个折叠
" zk 移动至上一个折叠
" zn 禁用折叠
" zN 启用折叠

" 缩进配置
set smartindent " Smart indent
set autoindent " 打开自动缩进
" never add copyindent, case error " copy the previous indentation on autoindenting

" tab相关变更
set tabstop=4 " 设置Tab键的宽度 [等同的空格个数]
set shiftwidth=4 " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
set smarttab " insert tabs on the start of a line according to shiftwidth,
set expandtab " 将Tab自动转化成空格 [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"==========================================
"" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" set helplang=cn
" set langmenu=zh_CN.UTF-8
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac
" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B
"
"==========================================
"" Gvim设置
"==========================================
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T


"==========================================
""         others 其它设置
"==========================================
"autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。
autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。
"" 自动补全配置
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
"" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
" set wildignore=*.o,*~,*.pyc,*.class


"==========================================
"    HotKey Settings 自定义快捷键设置
"==========================================
"" 主要按键重定义
" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
"Treat long lines as break lines (useful when moving around in them)
"se swap之后，同物理行上线直接跳
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
" " F1 - F6 设置
" " F1 废弃这个键,防止调出系统帮助
" " F2 行号开关，用于鼠标复制代码用
" " F3 显示可打印字符开关
" " F4 换行开关
" " F5 粘贴模式paste_mode开关,用于有格式的代码粘贴
" " F6 语法开关，关闭语法可以加快大文件的展示
" " I can type :help on my own, thanks. Protect your fat fingers from the
nmap <F1> :w!<cr>
""为方便复制，用<F2>开启/关闭行号显示:
function! HideNumber()
    if(&relativenumber == &number)
        set relativenumber! number!
    elseif(&number)
        set number!
    else
        set relativenumber!
    endif
        set number?
    endfunc
nnoremap <F2> :call HideNumber()<CR>
nnoremap <F4> :set wrap! wrap?<CR>
"set paste
set pastetoggle=<F5> " when in insert mode, press <F5> to go to
" paste mode, where you can paste mass data
" that won't be autoindented
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


"==========================================
"      FileType Settings 文件类型设置
"==========================================
"" Python 文件的一般设置，比如不要 tab 等
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()




"==========================================
""               插件设置
"==========================================
"############vim-airline##################
if isdirectory(expand("~/.vim/bundle/vim-airline/"))
    if !exists('g:airline_theme')
        "let g:airline_theme = 'solarized'
        let g:airline_theme = 'powerlineish'
    endif
    if !exists('g:airline_powerline_fonts')
        " Use the default set of separators with a few customizations
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_left_sep = '▶'
        let g:airline_left_alt_sep = '❯'
        let g:airline_right_sep = '◀'
        let g:airline_right_alt_sep = '❮'
    endif
endif

"############nerdtree##################
    map <C-e> :NERDTreeToggle<CR>
    map <leader>e :NERDTreeFind<CR>
    nmap <leader>nt :NERDTreeFind<CR>
    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
    let g:nerdtree_tabs_open_on_gui_startup=0
