; Keywords
(rule_declaration "rules_version" @keyword)
(service_declaration "service" @keyword)
(match_block "match" @keyword)
(allow_rule "allow" @keyword)
(allow_rule "if" @keyword)
(function_declaration "function" @keyword)
(variable_declaration "let" @keyword)
(variable_declaration "const" @keyword)
(return_statement "return" @keyword)
; Operators
[
  "=" ":" "+" "-" "*" "/" "%" "<" ">" "<=" ">=" "==" "!=" "&&" "||" "?" "in" "is"
] @operator

; Punctuation
["(" ")" "{" "}" "[" "]" "," "." ";"] @punctuation.delimiter
(path "/" @ponctuation.special) @none
(segment
    "{" @ponctuation.special
    "}" @ponctuation.special) @none

; Strings
(string) @string

; Numbers
(number) @number

; Booleans
(boolean) @boolean


; Functions
(function_declaration (identifier) @function)
(function_call (identifier) @function)

; Variables
(identifier) @variable

; Parameters
(parameter_list (identifier) @parameter)

; Fields
(field_access (identifier) @property)

; Operations
(operation) @constant

; Service names
(service_name) @type

; Paths
(path) @string.special

; Database paths
(database_path
    "/databases/" @string.special) @none

; Comments
(comment) @comment
