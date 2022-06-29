" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set relativenumber       " 设置相对位置
language en_US.utf8      " 设置语言

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set wildmenu             " vim自身命名行模式智能补全
" set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    let system = system('uname -s')
    if system == "Darwin\n"
        set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h18 " 设置字体
    else
        set guifont=DroidSansMono\ Nerd\ Font\ Regular\ 18      " 设置字体
    endif
    set guioptions-=m           " 隐藏菜单栏
    set guioptions-=T           " 隐藏工具栏
    set guioptions-=L           " 隐藏左侧滚动条
    set guioptions-=r           " 隐藏右侧滚动条
    set guioptions-=b           " 隐藏底部滚动条
    set showtabline=0           " 隐藏Tab栏
    set guicursor=n-v-c:ver5    " 设置光标为竖线
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 卸载默认插件UnPlug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:deregister(repo)
  let repo = substitute(a:repo, '[\/]\+$', '', '')
  let name = fnamemodify(repo, ':t:s?\.git$??')
  call remove(g:plugs, name)
endfunction
command! -nargs=1 -bar UnPlug call s:deregister(<args>)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'phaazon/hop.nvim'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'puremourning/vimspector'
Plug 'preservim/nerdcommenter'
Plug 'plasticboy/vim-markdown'
Plug 'dosimple/workspace.vim'
Plug 'liuchengxu/vista.vim'
Plug 'xiangjs6/bclose.vim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-orgmode/orgmode'

Plug 'ojroques/vim-oscyank', {'branch': 'main'}
call plug#end()  

" load vim default plugin
runtime macros/matchit.vim

" 编辑vimrc相关配置文件
nnoremap <leader>e :edit $MYVIMRC<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" 分屏窗口移动
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" 删除不习惯的按键
nnoremap <c-q> <nop>

" workspace
nnoremap <silent> <leader><tab>1 :WS 1<CR>
nnoremap <silent> <leader><tab>2 :WS 2<CR>
nnoremap <silent> <leader><tab>3 :WS 3<CR>
nnoremap <silent> <leader><tab>4 :WS 4<CR>
nnoremap <silent> <leader><tab>5 :WS 5<CR>
nnoremap <silent> <leader><tab>6 :WS 6<CR>
nnoremap <silent> <leader><tab>7 :WS 7<CR>
nnoremap <silent> <leader><tab>8 :WS 8<CR>
nnoremap <silent> <leader><tab>9 :WS 9<CR>
nnoremap <silent> <leader><tab>0 :WS 10<CR>

nnoremap <silent> <leader><tab>t1 :WSbmv 1<CR>
nnoremap <silent> <leader><tab>t2 :WSbmv 2<CR>
nnoremap <silent> <leader><tab>t3 :WSbmv 3<CR>
nnoremap <silent> <leader><tab>t4 :WSbmv 4<CR>
nnoremap <silent> <leader><tab>t5 :WSbmv 5<CR>
nnoremap <silent> <leader><tab>t6 :WSbmv 6<CR>
nnoremap <silent> <leader><tab>t7 :WSbmv 7<CR>
nnoremap <silent> <leader><tab>t8 :WSbmv 8<CR>
nnoremap <silent> <leader><tab>t9 :WSbmv 9<CR>
nnoremap <silent> <leader><tab>t0 :WSbmv 10<CR>

nnoremap <silent> <leader><tab><tab> :call WS_Backforth()<CR>

" Show info line about workspaces
map <silent> <leader><tab>s :echo WS_Line()<CR>

" 复制当前选中到系统剪切板
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
vnoremap <leader>y "+y
vnoremap <leader>Y "+Y


" 复制当前选中到系统剪切板和ssh剪切板中
let g:oscyank_term = 'default'
nnoremap <leader>y "+y:OSCYank<CR>
nnoremap <leader>Y "+Y:OSCYank<CR> 
vnoremap <leader>y "+y:OSCYank<CR> 
vnoremap <leader>Y "+Y:OSCYank<CR>

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" 配置insert模式的快捷鍵
inoremap <c-l> <delete>
inoremap <c-b> <left>
inoremap <c-f> <right>
imap <c-h> <backspace>

" 配置buffer操作 bclose
let g:bclose_no_plugin_maps = 1
nnoremap <silent> <leader>d :Bclose<CR>
nnoremap <silent> <leader>D :%bd\|e#\|bd#<cr>


" hide buffer quicklist and terminal
autocmd BufEnter * if &buftype == 'terminal' | setlocal nobuflisted | endif

augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" 主题设置
set background=dark
colorscheme gruvbox

" 新建.h头文件
autocmd BufNeWFile *.[h] exec ":call CFileHeader()"
func CFileHeader()
        call setline(1, "#ifndef ".strftime(tr(toupper(expand('%d')), '.', '_')))
        call append(line("."), "#define ".strftime(tr(toupper(expand('%d')), '.', '_')))
        call append(line(".")+1, "")
        call append(line(".")+2, "#endif //".strftime(tr(toupper(expand('%d')), '.', '_')))
        exec "$"
endfunc

" 新建.py文件
autocmd BufNeWFile *.py exec ":call PyFile()"
func PyFile()
        call setline(1, "#!/usr/bin/python")
        call append(line("."), "# -*- coding: utf-8 -*-  ")
        call append(line(".")+1, "")
        exec "$"
endfunc

" 提示80字符限制
autocmd BufWinEnter *.asm,*.c,*.cpp,*.h,*.sh,*.py,*.vim,*.cc
            \ setlocal colorcolumn=81
"autocmd BufWinLeave * setlocal colorcolumn=0

" coc配置
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" inoremap <silent><expr> <c-j> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" 括号换行
inoremap <silent><expr> <c-j> "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
" If you want to keep your overrides in your vimrc instead of doing an after plugin,
" you can use this "trick" anywhere in your vimrc file:
" `autocmd VimEnter * noremap <leader>cc echo "my purpose"`
autocmd VimEnter * nmap <silent> gd <Plug>(coc-definition)
autocmd VimEnter * nmap <silent> gy <Plug>(coc-type-definition)
autocmd VimEnter * nmap <silent> gi <Plug>(coc-implementation)
autocmd VimEnter * nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <space>rn <Plug>(coc-rename)
" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Use <c-p> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-p> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" coc-rime
inoremap <silent> <c-c> <c-o>:CocCommand rime.toggle<CR>

" coc-project
nnoremap <silent> <space>pp  :CocList project<cr>

" coc-terminal
nmap <silent> <space>te <Plug>(coc-terminal-toggle)

" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" nerdtree
nnoremap <silent> <leader>n :NERDTreeToggle %:p:h<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" search
nnoremap <c-s> :set hlsearch<cr><Esc>

" hop
lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran',
                       \ jump_on_sole_occurrence = false }
nnoremap <leader>w :HopWordMW<cr>

" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

" LeaderF
nnoremap <leader>f :LeaderfFile %:p:h<cr>
nnoremap <leader>b :LeaderfBuffer<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine',
                    \ '.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0
let g:Lf_CommandMap = {'<C-K>': ['<C-p>'], '<C-J>': ['<C-n>'],
           \ '<CR>' : ['<c-o>'], '<Del>' : ['<c-d>']}
let g:Lf_NormalMap = {
    \ "_":      [["<C-n>", "j"],
    \            ["<C-p>", "k"]
    \           ],
    \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
    \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
    \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
    \ "Tag":    [],
    \ "BufTag": [],
    \ "Function": [],
    \ "Line":   [],
    \ "History":[],
    \ "Help":   [],
    \ "Self":   [],
    \ "Colorscheme": []
    \}

" ack
nnoremap <leader>F :Ack!<space><space>%:p:h<s-left><left>

" tabular
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>

" command cli
cnoremap <c-a> <home>
cnoremap <c-b> <left>
cnoremap <c-f> <right>
cnoremap <c-l> <delete>
cnoremap <c-p> <up>
cnoremap <c-n> <down>

" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>

" debug
let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <F2> :call vimspector#Reset()<cr>
nnoremap <F7> :call vimspector#StepOut()<cr>

" terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>

" vim-markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" indentLine
" 关闭json双引号隐藏
"let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = ""
" let g:indentLine_setConceal = 0
" let g:indentLine_fileTypeExclude = ['json']

" nerdcommenter
autocmd VimEnter * nmap <silent> <leader>cc <leader>c<space>
autocmd VimEnter * vmap <silent> <leader>cc <leader>c<space>

" orgmode
lua << EOF

-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {'~/org/*'},
  org_default_notes_file = '~/org/index.org',
  org_todo_keywords = {'TODO', 'WAITING', '|', 'DONE', 'ABORT'}
})
EOF

nnoremap <leader>oe :edit ~/org/index.org<cr>

" 清除没有名字的空buffer 
function! CleanNoNameEmptyBuffers()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val) < 0 && (getbufline(v:val, 1, "$") == [""])')
    if !empty(buffers)
        execute 'bd '.join(buffers, ' ')
    endif
endfunction
autocmd BufWinLeave * exec ":call CleanNoNameEmptyBuffers()"

" vista
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cc': 'coc',
  \ 'c': 'coc',
  \ 'cpp': 'coc',
  \ 'py': 'coc',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

autocmd FileType vista,vista_kind nmap <buffer> <silent> o <cr>

nnoremap <silent> <space>tt :Vista!!<cr>
