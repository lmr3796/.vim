map <C-n> <plug>NERDTreeTabsToggle<CR><plug>NERDTreeSteppedClose<CR>
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=2

" This doesn't work; seems because NERDTreeTabs uses VimEnter???
"autocmd VimEnter * if &filetype ==# 'gitcommit'| NERDTreeTabsClose
autocmd VimEnter *.git/COMMIT_EDITMSG let g:nerdtree_tabs_open_on_console_startup=0
