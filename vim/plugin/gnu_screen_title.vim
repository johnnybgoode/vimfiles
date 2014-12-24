if expand('%:t') != "" && (expand('$TERM') == 'screen' || expand('$TERM') == 'xterm-256color')
	autocmd VimEnter,BufWinEnter,CmdwinLeave,WinEnter *
		\ exec "silent! !echo -ne '\\ek" . expand( '%:t' ) . "\\e\\\\'"
	autocmd VimLeave * exec "silent! !echo -ne '\\ekbash\\e\\\\'"
endif
