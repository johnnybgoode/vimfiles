" Vim Compiler File
" Compiler:	lessc
" Maintainer:	John Entwistle <jentwistle@contextllc.com>
" Last Change:	Wed, 13 Sept 1010 21:44:47 EST

if exists("current_compiler")
    finish
endif
let current_compiler = "lessc"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=lessc\ %

"
CompilerSet errorformat=%m

" ,%-C%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
