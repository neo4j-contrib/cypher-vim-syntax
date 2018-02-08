" Vim syntax file
" Language:         cypher
" Maintainer:       Julian Simpson
" Last Change:      $Date: Mon 26 Nov 2012 14:04:59 GMT$
" Filenames:        *.cypher
" Version:          $Id: cypher.vim,v 1.0 $

" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore
syn match     cypherComment       "\s*\/\/.*$"
syn keyword   cypherKeyword       cypher start create match optional merge delete where return with unique union all set foreach
syn keyword   cypherKeyword       node limit order by desc distinct
syn keyword   cypherKeyword       or and not is null in as
syn keyword   cypherKeyword       all any none single length type id nodes relationships rels labels
syn keyword   cypherKeyword       coalesce head last extract filter tail range reduce collect count timestamp
syn keyword   cypherKeyword       startnode endnode

syn keyword   cypherKeyword       abs acos asin atan atan2 cos cot degrees e exp floor haversin log log10 pi radians rand round
syn keyword   cypherKeyword       sign sin sqrt tan reduce percentileDisc stdev
syn keyword   cypherKeyword       str replace substring left right ltrim rtrim trim lower upper
syn keyword   cypherKeyword       case when then else end
syn keyword   cypherKeyword       schema constraint drop assert using

syn region    cypherProperty      start=+'+ skip=+\\\\\|\\'+ end=+'+
syn region    cypherProperty      start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match     cypherRelationship  ":\w*_\w*"
syn match     cypherSymbol        "->"
syn match     cypherSymbol        "<=>"
syn match     cypherSymbol        "<-"
syn match     cypherPropertyName  "\w\+:"
syn match     cypherVariable      "\w\+"

hi link cypherComment              Comment
hi link cypherKeyword              Define
hi link cypherProperty             String
hi link cypherPropertyName         Identifier
hi link cypherRelationship         Identifier
hi link cypherSymbol               Operator
hi link cypherVariable             Identifier

let b:current_syntax = "cypher"
