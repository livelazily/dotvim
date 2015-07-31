syntax on

"  vundle settings
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" original repos on github
Plugin 'asins/vimcdoc'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
"Plugin 'ervandew/supertab'
Plugin 'fs111/pydoc.vim'
"Plugin 'kana/vim-smartinput'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sickill/vim-pasta'
Plugin 'simnalamburt/vim-mundo'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'plasticboy/vim-markdown'
Plugin 'itchyny/lightline.vim'
Plugin 'kana/vim-fakeclip'
Plugin 'lepture/vim-jinja'
Plugin 'Shougo/neocomplete'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'groenewege/vim-less'
Plugin 'sukima/xmledit'
Plugin 'hdima/python-syntax'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'elzr/vim-json'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'inside/vim-search-pulse'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/javascript-libraries-syntax.vim'

"snipmate dependencies
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'Shougo/neosnippet'
Plugin 'honza/vim-snippets'

" vim-scripts repos
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/SQLUtilities'
Plugin 'vim-scripts/matchit.zip'

"color schemes
"Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/Lucius'
Plugin 'nanotech/jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set showcmd
set showmatch
set splitbelow
set splitright
set smartcase
set tabstop=4
set virtualedit=block
set wildmenu
set wildmode=longest,full

" Vim 7.3 setting
if v:version >= 703
	set autochdir
	set undofile
	set undodir=~/.vim/undodir,.
	if !has('nvim')
		set cryptmethod=blowfish
	endif
endif

" relativenumber disable in insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" powerline fancy symblos setting
let g:Powerline_symbols = 'fancy'

" Java syntax setting
let java_highlight_all=1
let java_highlight_functions="style"

"colorscheme
colorscheme lucius
if g:colors_name == "lucius"
	if has("gui")
		LuciusDark
	else
		LuciusDarkLowContrast
	endif
endif

"=============== lightline =================
"let g:lightline = {
      "\ 'colorscheme': 'wombat',
      "\ 'component': {
      "\   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      "\   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      "\ },
      "\ 'component_visible_condition': {
      "\   'readonly': '(&filetype!="help"&& &readonly)',
      "\   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      "\ },
      "\ 'separator': { 'left': '⮀', 'right': '⮂' },
      "\ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      "\ }
"================================

"=============== supertab =================
let g:SuperTabDefaultCompletionType = "<C-n>"
"================================

"==================== NeoComplCache Start ====================
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1 
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" disable default snippets
let g:neosnippet#disable_runtime_snippets = { '_': 1 }
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" <CR>: close popup and save indent.
imap <expr><CR> '<Plug>delimitMateCR'
"imap <expr><CR> pumvisible() ? neocomplete#close_popup() : <Plug>delimitMateCR'
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
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"==================== NeoComplCache End ====================

" NERDTree
map <F7> :NERDTreeToggle<cr>

" Tagbar
nmap <F6> :TagbarToggle<CR>

" format xml
"nnoremap ,td :%!tidy -xml -raw -i -m -w 150 --escape-cdata y -q -<CR>
au FileType xml setlocal equalprg=tidy\ -xml\ -raw\ -i\ -m\ -w\ 150\ --escape-cdata\ y\ -q\ -
"au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" snipMate setting
let g:snips_author = 'livelazily'

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
if has("autocmd")
	" 自动检测文件类型并加载相应的设置
	filetype plugin indent on

	" Python 文件的一般设置，比如不要 tab 等
	autocmd FileType python setlocal et | setlocal sta | setlocal sw=4
	" save the python file and run it
	autocmd FileType python nnoremap <F2> <ESC>:w<CR>:!python %<CR>

	" Python Unittest 的一些设置
	" 可以让我们在编写 Python 代码及 unittest 测试时不需要离开 vim
	" 键入 :make 或者点击 gvim 工具条上的 make 按钮就自动执行测试用例
	autocmd FileType python compiler pyunit
"	autocmd FileType python setlocal makeprg=python\ ./alltests.py
"	autocmd BufNewFile,BufRead test*.py setlocal makeprg=python\ %

	" 自动使用新文件模板
"	autocmd BufNewFile test*.py 0r ~/.vim/skeleton/test.py
"	autocmd BufNewFile alltests.py 0r ~/.vim/skeleton/alltests.py
	autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton.py

endif
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
let python_highlight_all = 1
let python_print_as_function = 1


"SQLUtil setting
let g:sqlutil_align_where = 0

"gundo shout cut
nnoremap <F5> :GundoToggle<CR>

"jsbeautify
map <Leader>ff :call JsBeautify()<cr>

map <Space> <PageDown>

"ctrlP
"let g:ctrlp_map = '<M-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" gradle syntax highlighting
au BufNewFile,BufRead *.gradle set filetype=groovy

" delimitmate settings
let delimitMate_expand_cr = 1

" javascrip libraries syntax 
let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs'
autocmd FileType javascript setlocal expandtab 
autocmd FileType json setlocal expandtab

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
