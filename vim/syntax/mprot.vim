if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword mprotPackage    package
syn keyword mprotImport     import
syn keyword mprotDeclType   const enum struct union
syn keyword mprotNativeType bool int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 float32 float64 string bytes map time raw

" strings
syn match  mprotEscapeOctal display contained "\\[0-7]\{3}"
syn match  mprotEscapeC     display contained +\\[abfnrtv\\'"]+
syn match  mprotEscapeX     display contained "\\x\x\{2}"
syn match  mprotEscapeU     display contained "\\u\x\{4}"
syn match  mprotEscapeBigU  display contained "\\U\x\{8}"
syn match  mprotEscapeError display contained +\\[^0-7xuUabfnrtv\\'"]+

syn region mprotString      start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=mprotEscapeOctal,mprotEscapeC,mprotEscapeX,mprotEscapeU,mprotEscapeBigU,mprotEscapeError
syn region mprotRawString   start=+`+ end=+`+

" comments
syn keyword mprotTodo         contained TODO FIXME
syn cluster mprotCommentGroup contains=mprotTodo	
syn region  mprotComment      start="//" end="$" contains=@mprotCommentGroup
syn region  mprotComment      start="/\*" end="\*/" contains=@mprotCommentGroup

" links
hi def link mprotPackage    Statement
hi def link mprotImport     Statement
hi def link mprotDeclType   Keyword
hi def link mprotNativeType Type
hi def link mprotString     String
hi def link mprotRawString  String
hi def link mprotTodo       Todo
hi def link mprotComment    Comment
