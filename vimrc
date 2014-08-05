syntax on
set hlsearch

"  vundle settings
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/Vundle.vim'

" original repos on github
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'fs111/pydoc.vim'
Bundle 'kana/vim-smartinput'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'sickill/vim-pasta'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'nanotech/jellybeans.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'itchyny/lightline.vim'
Bundle 'kana/vim-fakeclip'
Bundle 'lepture/vim-jinja'
Bundle 'Shougo/neocomplete'
Bundle 'majutsushi/tagbar'
Bundle 'airblade/vim-gitgutter'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'tomasr/molokai'
Bundle 'groenewege/vim-less'
Bundle 'sukima/xmledit'

"snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" vim-scripts repos
Bundle 'vim-scripts/vimwiki'
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/Lucius'
Bundle 'vim-scripts/SQLUtilities'

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

set scrolloff=5
set modeline
set number
set hlsearch
set incsearch
set cursorline
set tabstop=4
set shiftwidth=4
set showmatch
set nobackup
set nowritebackup
set autoindent
set cindent
set helplang=cn
set guioptions-=T
set listchars=eol:¶,tab:»-
set autoread
set linebreak
set laststatus=2
set selection=inclusive
set virtualedit=block
set display+=lastline
set wildmenu
set wildmode=longest,full
set directory=$HOME/.vimswp,.,$TEMP

" Vim 7.3 setting
if v:version >= 703
	set cryptmethod=blowfish
	set autochdir
	set undofile
	set undodir=~/.vim/undodir,.
endif

" powerline fancy symblos setting
let g:Powerline_symbols = 'fancy'

" Java syntax setting
let java_highlight_all=1
let java_highlight_functions="style"

"colorscheme
colorscheme molokai
"if has("gui")
	"LuciusDark
"else
	"LuciusDarkLowContrast
"endif

"=============== lightline =================
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
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
" <CR>: close popup and save indent.
inoremap <expr><CR> pumvisible() ? neocomplete#close_popup() : "\<CR>" 
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcete#close_popup()
"inoremap <expr><C-e>  neocomplcete#close_popup()

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"==================== NeoComplCache End ====================

" vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/',
			\ 'path_html': '~/Dropbox/vimwiki/html/',
			\ 'html_header': '~/Dropbox/vimwiki/template/header.tpl',
			\ 'nested_syntaxes':  {'python': 'python', 'c++': 'cpp', 'javascript': 'javascript', 'java': 'java', 'HTML': 'html'}}]
map <S-F4> :VimwikiAll2HTML<cr>
map <F4> :Vimwiki2HTML<cr>

" calendar
map <F8> :Calendar<cr>

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

"transparency for win32
if executable("vimtweak.dll")
	autocmd guienter * call libcallnr("vimtweak","SetAlpha",250)
endif

"Jinja template file
au BufNewFile,BufRead *.jinja,*.jinja2 set filetype=jinja

"Json setting
au BufRead,BufNewFile *.json set filetype=json

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

"PulseCursorLine
nnoremap n nzzzv:call PulseCursorLine()<cr>
nnoremap N Nzzzv:call PulseCursorLine()<cr>
function! PulseCursorLine()
    let current_window = winnr()

    windo set nocursorline
    execute current_window . 'wincmd w'

    setlocal cursorline

    redir => old_hi
        silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    hi CursorLine guibg=#2a2a2a
    redraw
    sleep 20m
    hi CursorLine guibg=#333333
    redraw
    sleep 20m
    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 20m
    hi CursorLine guibg=#444444
    redraw
    sleep 20m
    hi CursorLine guibg=#4a4a4a
    redraw
    sleep 20m
    hi CursorLine guibg=#444444
    redraw
    sleep 20m
    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 20m
    hi CursorLine guibg=#333333
    redraw
    sleep 20m
    hi CursorLine guibg=#2a2a2a
    redraw
    sleep 20m
    execute 'hi ' . old_hi
    windo set cursorline
    execute current_window . 'wincmd w'
endfunction

map <Space> <PageDown>
