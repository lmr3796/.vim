set nocompatible " We are vim!

" Load vimrc for each plugin.
runtime! sub_vimrc/*.vimrc

set exrc
set secure

" Show trailing white space.
set listchars=trail:~
set list

" Tab key binding
map <C-t>c :tabnew<CR>
map <C-t>q :tabclose<CR>
map <C-t>h :tabprev<CR>
map <C-t>l :tabnext<CR>
map <C-t>p :tabprev<CR>
map <C-t>n :tabnext<CR>

set nu
set showmode
set ruler
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

syntax on

set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
set backup		" keep a backup file
set textwidth=72
" set shiftwidth=4
set bs=2 " allow backspacing over everything in insert mode
set ai   " always set autoindenting on
set viminfo='20,\"50 " read/write a .viminfo file, don't store more
set showmatch

set background=dark " another is 'light'

" VIM 6.0,
if version >= 600
    set nohlsearch
    " set foldcolumn=2
    " set foldmethod=syntax
    set foldmethod=marker
    set foldlevel=1
"   set foldtext=/^/=>
    set encoding=utf-8
    " set fileencoding=big5
    " set termencoding=big5
    " set encoding=big5
    " set fileencodings=latin,big5,ucs-bom,utf-8,sjis,big5
    set fileencodings=ucs-bom,utf-8,sjis,big5,latin1
else
    set fileencoding=taiwan
endif

if version >= 700
  map <F4> :set invcursorline<CR>
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

  highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
  highlight TabLine    term=bold cterm=bold
  highlight clear TabLineFill
end

