; Keywords
"rules_version" @keyword
"service" @keyword
"match" @keyword
"allow" @keyword
"if" @keyword
"function" @keyword
"let" @keyword
"const" @keyword
"return" @keyword

; Operations
(operation) @function.builtin

; Identifiers
(identifier) @variable

; Functions
(function_declaration
  (identifier) @function)

(function_call
  (identifier) @function)

; Strings
(string) @string

; Numbers
(number) @number

; Booleans
(boolean) @boolean

; Operators
"=" @operator
"&&" @operator
"||" @operator
"==" @operator
"!=" @operator
"<" @operator
">" @operator
"<=" @operator
">=" @operator

; Punctuation
"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"," @punctuation.delimiter
";" @punctuation.delimiter

; Paths
(path) @string.special

; Comments
(comment) @comment
