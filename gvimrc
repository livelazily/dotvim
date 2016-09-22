" solarized color scheme
"set background=light
"colorscheme solarized
"let g:solarized_contrast="high"    "default value is normal
"let g:solarized_visibility="high"    "default value is normal
"let g:solarized_menu=1
"colorscheme lucius

" GUI setting with multi-platform
if has("gui_gtk2")
    set lines=34
    set columns=100
    "set guifont=YaHei\ Consolas\ Hybrid\ 11
    set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 11
    "set guifont=Ubunto\ Mono\ 11
    winpos 80 80
elseif has("gui_win32")
    set lines=34
    set columns=100
    set guifont=YaHei\ Consolas\ Hybrid:h11
    winpos 80 80
    "transparency for win32
    if executable("vimtweak.dll")
        autocmd guienter * call libcallnr("vimtweak","SetAlpha",250)
    endif
elseif has("gui_macvim")
    set transp=1
    set lines=45
    set columns=130
    "set guifont=Ubuntu\ Mono:h16
    set guifontwide=Source\ Han\ Sans\ CN:h16
	"set guifont=CosmicSansNeueMono:h16
	"set guifont=Fantasque\ Sans\ Mono:h16
    "set linespace=2
	"set guifont=Monoid\ HalfTight\ Retina:h13
	"set guifont=Hasklig:h14
    "set guifont=InconsolataGo:h16
	"set guifont=Hack:h14
    set guifont=Fira\ Code:h14
    set macligatures
endif

map <S-Space> <PageUp>
