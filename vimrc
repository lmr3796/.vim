" lazyscript vimrc ====================================
" author: c9s
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on


" Load vimrc for each plugin.
runtime! sub_vimrc/*.vimrc

" Latex tikz
au BufNewFile,BufRead *.tikz set filetype=tex | set textwidth=0
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"
let g:tex_flavor='latex'

" If no screen, use color term
if ($TERM == "vt100")
  " xterm-color / screen
  set t_Co=8
  set t_AF=[1;3%p1%dm
  set t_AB=[4%p1%dm
endif

" show line numbers
set nu
set bs=2

"bind ! to :! 
nmap ! :! 

" Persistent undo
set undofile
set undodir=~/.vim/undodir

" scroll jump
set sj=1
" scroll off
set so=6
set cursorline
"set  wildmode=longest,list
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
" set wildoptions
set wildmenu
set winaltkeys=no
set mouse=a

" Set indents
set ts=4 sw=4

" Set foldings
set foldmethod=syntax
set foldlevel=1 
set foldlevelstart=99


set modeline
set mat=15
"set ignorecase
"set smartcase
set ruler is ai si sm bs=indent,eol,start 
set ff=unix
set nohls
set noeol

" encoding solutions
set fencs=utf-8,big5,euc-jp,utf-bom,iso8859-1
set enc=utf-8 tenc=utf-8
set nobackup
set wrap linebreak showbreak=\ \ \ \ \ \ \ \ \ \ \\
" save view
"autocmd  BufWinLeave *.*			silent mkview
"autocmd  BufWinEnter *.*			silent loadview

" easytab
nm			<tab> v>
nm			<s-tab> v<
xmap		<tab> >gv
xmap		<s-tab> <gv

" Fast escape
"set timeoutlen=25
"map df <Esc>
"map fd <Esc>
"map fj <Esc>
"map jk <Esc>
"map kj <Esc>
"map! df <Esc>
"map! fd <Esc>
"map! fj <Esc>
"map! jk <Esc>
"map! kj <Esc>

" command mode mapping:
" command line jump to head , end
cm      <c-a>   <home>
cm      <c-e>   <end>

" back one character:
cno  <c-b>      <left>
cno  <c-d>      <del>
cno  <c-f>      <right>
cno  <c-n>      <down>
cno  <c-p>      <up>

com! -bang -nargs=? QFix cal QFixToggle(<bang>0)
fu! QFixToggle(forced)
	if exists("g:qfix_win") && a:forced == 0
		cclose
		unlet g:qfix_win
	else
		copen 10
		let g:qfix_win = bufnr("$")
	en
endf   
nn      <leader>q :QFix<cr>




" Smart Home End
nmap <Home> :call SmartHome("n")<CR>
"nmap <silent><Home> :call SmartHome("n")<CR>
"nmap <silent><End> :call SmartEnd("n")<CR>
imap <Home> <C-r>=SmartHome("i")<CR>
"imap <silent><Home> <C-r>=SmartHome("i")<CR>
"imap <silent><End> <C-r>=SmartEnd("i")<CR>
vmap <Home> <Esc>:call SmartHome("v")<CR>
"vmap <silent><Home> <Esc>:call SmartHome("v")<CR>
"vmap <silent><End> <Esc>:call SmartEnd("v")<CR>

function SmartHome(mode)
	let curcol = col(".")
	"gravitate towards beginning for wrapped lines
	if curcol > indent(".") + 2
		call cursor(0, curcol - 1)
	endif
	if curcol == 1 || curcol > indent(".") + 1
		if &wrap
			normal g^
		else
			normal ^
		endif
	else
		if &wrap
			normal g0
		else
			normal 0
		endif
	endif
	if a:mode == "v"
		normal msgv`s
	endif
	return ""
endfunction

function SmartEnd(mode)
	let curcol = col(".")
	let lastcol = a:mode == "i" ? col("$") : col("$") - 1
	"gravitate towards ending for wrapped lines
	if curcol < lastcol - 1
		call cursor(0, curcol + 1)
	endif
	if curcol < lastcol
		if &wrap
			normal g$
		else
			normal $
		endif
	else
		normal g_
	endif
	"correct edit mode cursor position, put after current character
	if a:mode == "i"
		call cursor(0, col(".") + 1)
	endif
	if a:mode == "v"
		normal msgv`s
	endif
	return ""
endfunction


" Original status line, deprecated since I use lightline.vim
" set statusline=%4*%<\ %1*[%F]
" set statusline+=%4*\ %5*[%{&fileencoding} " encoding
" set statusline+=,%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
" set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ <\ %2*%P%4*\ >

" lightline.vim
if !has('gui_running')
  set t_Co=256
endif
colorscheme desert
set showtabline=2
set laststatus=2
set noshowmode " Since lightline has emulated one

" Optimized highlight color :P
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white 
highlight Comment ctermfg=blue

if version >= 700
	map <C-c> :tabnew<CR>
	imap <C-c> <ESC>:tabnew<CR>
	map  <F4> :set invcursorline<CR>

	
	" Fast tab switching
	map  <C-h>  :tabp<CR>
	imap <C-h>  <ESC>:tabp<CR>i
	map  <C-l>  :tabn<CR>
	imap <C-l>  <ESC>:tabn<CR>i

	map g1 :tabn 1<CR>
	map g2 :tabn 2<CR>
	map g3 :tabn 3<CR>
	map g4 :tabn 4<CR>
	map g5 :tabn 5<CR>
	map g6 :tabn 6<CR>
	map g7 :tabn 7<CR>
	map g8 :tabn 8<CR>
	map g9 :tabn 9<CR>
	map g0 :tabn 10<CR>
	map gc :tabnew<CR>
	map gn :tabn<CR>
	map gp :tabp<CR>
	map gk :tabclose<CR>
end
