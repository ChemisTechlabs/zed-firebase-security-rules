; Rules version
(rule_declaration
  "rules_version" @name
  (string) @context) @item

; Service declarations
(service_declaration
    "service" @name
    (service_name) @context) @item

; Match blocks
(match_block
    "match" @name
    (path) @context) @item

; Function declarations
(function_declaration
    "function" @name
    (identifier) @context) @item

; Allow rules
(allow_rule
  "allow" @name
  (operation_list) @context) @item
