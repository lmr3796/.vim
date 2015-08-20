filetype off

" Init vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" REQUIRED
Plugin 'gmarik/vundle'

" My own bundles
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'jcf/vim-latex'
Plugin 'itchyny/lightline.vim'

" Language support
" Plugin 'jnwhiteh/vim-golang'
Plugin 'vim-ruby/vim-ruby'

" Javascript
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'JavaScript-Indent'
Plugin 'marijnh/tern_for_vim'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'

" PHP
Plugin 'StanAngeloff/php.vim'
Plugin 'swekaj/php-foldexpr.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'm2mdas/phpcomplete-extended'
Plugin 'mustache/vim-mustache-handlebars'

" Groovy
Plugin 'groovy.vim'

filetype plugin indent on

