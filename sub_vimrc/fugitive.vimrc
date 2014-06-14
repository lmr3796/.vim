function OpenFugitiveStatusWindow()
	if &filetype != 'gitcommit'
		Gstatus
		execute "normal! \<c-w>r"
	endif
	return
endfunction

nmap <c-g> :call OpenFugitiveStatusWindow()<CR><esc>
imap <c-g> <esc>:call OpenFugitiveStatusWindow()<CR><esc>
