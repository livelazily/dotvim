call plug#begin('~/.vim/bundle')

Plug 'asins/vimcdoc'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
Plug 'mattn/emmet-vim', {'for': ['xml', 'html']}
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-pasta'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lepture/vim-jinja', {'for': 'jinja'}
Plug 'Shougo/neocomplete.vim'
Plug 'mhinz/vim-hugefile'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
"Plugin 'pangloss/vim-javascript'
Plug 'livelazily/vim-jsbeautify', {'for': ['javascript', 'json']}
Plug 'tpope/vim-jdaddy', {'for': 'json'}
Plug 'groenewege/vim-less', {'for': 'less'}
Plug 'sukima/xmledit', {'for': 'xml'}
Plug 'hdima/python-syntax', {'for': 'python'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'jlanzarotta/bufexplorer'
Plug 'inside/vim-search-pulse'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'unblevable/quick-scope'
Plug 'junegunn/vim-easy-align'
Plug 'bkad/CamelCaseMotion'
Plug 'tmhedberg/SimpylFold', {'for': 'python'}
Plug 'Konfekt/FastFold'
Plug 'mbbill/fencview'
Plug 'davidhalter/jedi-vim', {'for': 'python'}

"snipmate dependencies
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plug 'Shougo/neosnippet'
Plug 'honza/vim-snippets'

" vim-scripts repos
Plug 'vim-scripts/Align'
Plug 'vim-scripts/SQLUtilities', {'for': 'sql'}
Plug 'vim-scripts/matchit.zip'

"color schemes
"Plugin 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/Lucius'
Plug 'nanotech/jellybeans.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'joshdick/onedark.vim'
Plug 'joshdick/airline-onedark.vim'

call plug#end()

syntax on
set nocompatible
set directory=.,$TEMP
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

set encoding=utf-8
set langmenu=zh_CN.utf-8
language message zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set fileencodings=utf-8,gb18030,gbk,gb2312,big5,euc-jp,euc-kr,cp936,ucs-bom,latin1

set autoindent
set autoread
set backspace=indent,eol,start
set cindent
set cursorline
set directory=$HOME/.vimswp,.,$TEMP
set display+=lastline
set guioptions-=T
set helplang=cn
set hlsearch
"set incsearch
set laststatus=2
set linebreak
set listchars=eol:¶,tab:»-
set modeline
set mouse=a
set nobackup
set nowritebackup
set number
set relativenumber
set scrolloff=5
set selection=inclusive
set shiftround
set shiftwidth=4
set expandtab
set showcmd
set showmatch
set splitbelow
set splitright
set smartcase
set synmaxcol=500
set tabstop=4
set virtualedit=block
set wildmenu
set wildmode=longest,full

" Vim 7.3 setting
if v:version >= 703
    set undofile
    set undodir=~/.vim/undodir,.
endif

" relativenumber disable in insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" airline settings
let g:airline_powerline_fonts = 1
"let g:airline_theme='jellybeans'
let g:airline_theme='onedark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = '␤'

" Java syntax setting
let java_highlight_all=1
let java_highlight_functions="style"

"colorscheme
set background=dark
colorscheme onedark
"colorscheme lucius
if g:colors_name == 'lucius'
    if has("gui")
        LuciusDark
    else
        LuciusDarkLowContrast
    endif
endif

"==================== NeoComplCache Start ====================
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" disable default snippets
let g:neosnippet#disable_runtime_snippets = { '_': 1 }
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" <CR>: close popup and save indent.
"imap <expr><CR> '<Plug>delimitMateCR'
imap <expr><CR> pumvisible() ? neocomplete#close_popup() : '<Plug>delimitMateCR'
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"==================== NeoComplCache End ====================

" NERDTree
map <F7> :NERDTreeToggle<cr>
let NERDTreeChDirMode=1

" Tagbar
nmap <F6> :TagbarToggle<CR>

" format xml
"nnoremap ,td :%!tidy -xml -raw -i -m -w 150 --escape-cdata y -q -<CR>
au FileType xml setlocal equalprg=tidy\ -xml\ -raw\ -i\ -m\ -w\ 150\ --escape-cdata\ y\ -q\ -
"au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"Jinja template file
au BufNewFile,BufRead *.jinja,*.jinja2 set filetype=jinja

"Json setting
au BufRead,BufNewFile *.json set filetype=json
let g:vim_json_syntax_conceal = 0

" coffeescript
au BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
let coffee_indent_keep_current = 1

" markdown
let g:vim_markdown_folding_disabled=1

"编辑模式下的光标移动
imap <M-i> <Up>
imap <M-k> <Down>
imap <M-j> <Left>
imap <M-l> <Right>
imap <M-u> <C-Left>
imap <M-o> <C-Right>
" Mac OS 下的特殊处理
imap ˙ <Left>
imap ∆ <Down>
imap ˚ <Up>
imap ¬ <Right>
imap ¨ <C-Left>
imap ø <C-Right>

"python设置
" 自动检测文件类型并加载相应的设置
filetype plugin indent on

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python setlocal et | setlocal sta | setlocal sw=4 | setlocal foldlevel=3
" save the python file and run it
autocmd FileType python nnoremap <F2> <ESC>:w<CR>:!python3 %<CR>

" Python Unittest 的一些设置
" 可以让我们在编写 Python 代码及 unittest 测试时不需要离开 vim
" 键入 :make 或者点击 gvim 工具条上的 make 按钮就自动执行测试用例
autocmd FileType python compiler pyunit
"    autocmd FileType python setlocal makeprg=python\ ./alltests.py
"    autocmd BufNewFile,BufRead test*.py setlocal makeprg=python\ %

" 自动使用新文件模板
"    autocmd BufNewFile test*.py 0r ~/.vim/skeleton/test.py
"    autocmd BufNewFile alltests.py 0r ~/.vim/skeleton/alltests.py
autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton.py
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
let python_highlight_all = 1
let python_print_as_function = 1
if has('python3')
    let g:jedi#force_py_version = 3
endif


"SQLUtil setting
let g:sqlutil_align_where = 0

"undotree shout cut
nnoremap <F5> :UndotreeToggle<CR>

"jsbeautify
map <Leader>ff :call JsBeautify()<cr>

map <Space> <PageDown>

"ctrlP
"let g:ctrlp_map = '<M-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" gradle syntax highlighting
au BufNewFile,BufRead *.gradle set filetype=groovy

" delimitmate settings
let delimitMate_expand_cr = 1

" javascript libraries syntax
let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs'
autocmd FileType javascript setlocal expandtab
autocmd FileType json setlocal expandtab
autocmd FileType json setlocal textwidth=120

" better increment search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
let g:incsearch#magic = '\v'

" ubuntu gnome terminal 256 color
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

"quick-scope: Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

if (!empty($TMUX))
    let trueColor = system("tmux info | grep Tc")
    if trueColor =~ "true" && has('termguicolors')
        set termguicolors
    endif
else
    if has('termguicolors')
        set termguicolors
    endif

    if &term =~ '256color'
        " disable Background Color Erase (BCE) so that color schemes
        " render properly when inside 256-color tmux and GNU screen.
        " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
        set t_ut=
    endif
endif
