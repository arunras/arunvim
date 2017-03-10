"===MY SETTING===|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|={{
syntax on
set number
set nocompatible
set cursorline
filetype plugin on

"==>set indentation to 4 spaces==>
set tabstop     =4 " Width of tab character
set softtabstop =4 " Fine tunes the amount of white space to be added
set shiftwidth  =4 " Determines the amount of whitespace to add in normal mode
set expandtab      " When on uses space instead of tabs


"===endMY SETTING===|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=}}


"===VUNDLE========================================================={{
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

"===LANGUAGES COLOR SCHEME============================================={{
"==JavaSript scheme==========={
"https://draculatheme.com/vim/
"Bundle 'dracula/vim'
"color dracula 
"https://github.com/crusoexia/vim-monokai
Bundle 'crusoexia/vim-monokai'
colorscheme monokai 
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

"highlight Normal guibg=black "guifg=white
"set background=dark

"https://github.com/pangloss/vim-javascript
Bundle 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"set foldmethod=syntax
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=0

"https://github.com/crusoexia/vim-javascript-lib
Bundle 'crusoexia/vim-javascript-lib' 


"==endJavaSript scheme===}

"===}}

