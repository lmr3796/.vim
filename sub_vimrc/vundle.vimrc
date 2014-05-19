filetype off

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" REQUIRED
Bundle 'gmarik/vundle'

" My own bundles
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

" Language support
Bundle 'jnwhiteh/vim-golang'

" Latex build
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'


filetype plugin indent on

