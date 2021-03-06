Remove any old syntax stuff hanging around
syn clear

syn keyword pythonStatement       break continue del
syn keyword pythonStatement       except exec finally
syn keyword pythonStatement       pass print raise
syn keyword pythonStatement       return try
syn keyword pythonStatement       global assert
syn keyword pythonRepeat      for while
syn keyword pythonConditional     if elif else then
syn keyword pythonOperator        and in is not or
syn keyword pythonConstant        None
syn region  pythonString      start=+'+  end=+'+ skip=+\\\\\|\\'+
syn region  pythonString      start=+"+  end=+"+ skip=+\\\\\|\\"+
syn region  pythonString      start=+"""+  end=+"""+
syn region  pythonString      start=+'''+  end=+'''+
syn keyword pythonFunction        def class lambda
syn keyword pythonPreCondit       import from
syn match   pythonComment     "#.*$" contains=pythonTodo
syn keyword pythonTodo            contained TODO FIXME XXX
syn match   pythonList                  "[\[\]]"
syn match   pythonDict                  "[{}]"
syn match   pythonNumber
"\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   pythonNumber
"\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   pythonNumber                "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"

" triple quoted strings make syncronizing difficult
"syn sync match pythonSync1 grouphere NONE +\("""$\)\|\('''$\)+
syn sync match pythonSync grouphere NONE "):$"
syn sync maxlines=100

if !exists("did_python_syntax_inits")
    let did_python_syntax_inits = 1
     " The default methods for highlighting.  Can be overridden later
    hi link pythonDict              pythonSpecial
    hi link pythonList                pythonSpecial
    hi link pythonNumber                Number
    hi link pythonStatement       Statement
    hi link pythonConditional       Conditional
    hi link pythonConstant        Constant
    hi link pythonRepeat            Repeat
    hi link pythonString          String
    hi link pythonOperator      Operator
    hi link pythonFunction        Function
    hi link pythonPreCondit     PreCondit
    hi link pythonComment         Comment
    hi link pythonTodo          Todo
    endif

let b:current_syntax = "python"

                           " vim: ts=8
