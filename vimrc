

filetype plugin on
"===VUNDLE========================================================={{
syntax on
set number
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here
" ===}}


"===HIGHLIGHT EXCESS LINE LENGTH========================================================{{
augroup vimrc_autocmds
	autocmd!
	"highlight characters past column 120
	autocmd FileType python highlight Excessctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
	augroup END
"===}}

"===POWERLINE======================================================={{
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 12
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Inconsolata\ for\ Powerline:h15
     	endif
endif
"===}}

"===FUGITIVE======================================================{{
Bundle 'tpope/vim-fugitive'
"===}}

"===NerdTree====================================================={{
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
"===}}


"===AIRLINE===================================================={{
Bundle 'vim-airline/vim-airline'
set laststatus=2
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"===}}
