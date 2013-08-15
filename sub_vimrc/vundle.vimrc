filetype off

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" REQUIRED
Bundle 'gmarik/vundle'

" My own bundles
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'

" Language support
Bundle 'jnwhiteh/vim-golang'

filetype indent plugin on

