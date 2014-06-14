function ToggleFugitiveStatusWindow()
	if &filetype != 'gitcommit'
		Gstatus
		execute "normal! \<c-w>r"
	elseif winnr() > 1
		:q
	endif
	return
endfunction

nmap <c-g> :call ToggleFugitiveStatusWindow()<CR><esc>
imap <c-g> <esc>:call ToggleFugitiveStatusWindow()<CR><esc>
