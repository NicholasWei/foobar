" artigen highlight
" by Zhang, Chen (chen.zhang@emc.com)
" Version 0.1
" 2016 Jan 12

syntax region  artigenPlain   start="^\s*[^%\-\s]" end="$"
syntax region  artigenString  contained containedin=artigenCommand start=+"+  skip=+\\"+  end=+"+
syntax region  artigenComment start="^\s*--" end="$"
syntax region  artigenCommand start="^\s*%" end="$" contains=artigenKeyword

syntax keyword artigenKeyword contained define error warning info foreach end emit endemit import endimport include indent output outputif endoutput set setg if else endif select case endselect procedure endprocedure call using endusing shell undefine when break return

syntax region  artigenReplace contained containedin=@artigenGroupPlain,artigenString,artigenCommand start="\[[%a-zA-Z]" end="\]"
syntax keyword artigenTodo    contained containedin=artigenComment TODO

syntax match   artigenSetCommand contained containedin=artigenCommand transparent "%\(set\|setg\)\s\+\w\+\s\+" nextgroup=artigenSetPlain
syntax match   artigenSetPlain   contained ".\+$"

syntax cluster artigenGroupPlain contains=artigenPlain,artigenSetPlain

hi link artigenKeyword   Keyword

" hi link artigenIdentifier Identifier
hi link artigenReplace    Identifier
hi link artigenString     String
hi link artigenComment    Comment
hi link artigenCommand    PreProc
hi link artigenTodo       Todo

hi link artigenPlain      NONE
hi link artigenSetPlain   NONE

