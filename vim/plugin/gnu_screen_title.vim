if (expand('$TERM') == 'screen' || expand('$TERM') == 'xterm-256color') && expand( '%:t' ) != ''
	autocmd VimEnter,BufWinEnter,CmdwinLeave,WinEnter *
		\ exec "silent! !echo -ne '\\ek" . expand( '%:t' ) . "\\e\\\\'"
	autocmd VimLeave * exec "silent! !echo -ne '\\ekbash\\e\\\\'"
endif
