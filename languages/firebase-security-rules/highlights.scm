; Keywords
[
  "let"
  "function"
  "return"
] @keyword

(version_definition "rules_version" @keyword)
(service_definition "service" @keyword)
(match_definition "match" @keyword)
(rule_definition ["if" "allow"] @keyword)
(function_definition (identifier) @function)
(rule_definition (action) @constant)
(path_segment "/" @punctuation.delimiter)
(member_expression
    [
        ((identifier) @function.member)*
        (call_expression (identifier) @function.member)*
    ]
    .
)

; Operators
[
  "="
  ":"
  "+"
  "-"
  "*"
  "/"
  "%"
  "<"
  ">"
  "<="
  ">="
  "=="
  "!="
  "&&"
  "||"
  "?"
  "in"
  "is"
] @operator

; Punctuation
[
  "$("
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  "."
  ","
  ";"
] @punctuation.delimiter

; primitives
(string) @string
(number) @number
(boolean) @boolean
(null) @constant

; types
(type) @type

; Service names
(service_name) @type

; Comments
(comment) @comment
