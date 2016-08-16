if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1



setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal comments=s0:/*,e0:*/
setlocal cinoptions=f1s,:0,l1,g0,N-s,t0,c0,)70

let b:match_words = &matchpairs
let b:match_skip = 's:comment\|string\|character'
