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
elseif has("gui_macvim")
	set transp=3
	set lines=45
	set columns=130
	set guifont=Ubuntu\ Mono:h16
endif

map <S-Space> <PageUp>
