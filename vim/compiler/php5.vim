" Vim Compiler File
" Compiler:	php5
" Maintainer:	John Entwistle <jentwistle@contextllc.com>
" Last Change:	Wed, 13 Sept 1010 21:44:47 EST

if exists("current_compiler")
    finish
endif
let current_compiler = "php5"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=php5\ %

"
CompilerSet errorformat=%m

" ,%-C%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
