(version_definition
  "rules_version" @context
  (string) @name) @item

(service_definition
    "service" @context
    (service_name) @name) @item

(match_definition
    "match" @context
    (path) @name) @item

(function_definition
    "function" @context
    (identifier) @name) @item

(rule_definition
   "allow" @context
   (action) @name
   ("," @name (action) @name)+) @item
