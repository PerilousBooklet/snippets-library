local snippets = require 'plugins.snippets'

-- UML Diagrams Syntax
snippets.add {
    trigger  = 'snpt-uml-start',
    files    = '%.puml$',
    info     = '...',             -- optional, used by the autocomplete menu
    desc     = '...',     -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
@startuml
!theme plain
skinparam dpi 200
${1}
@enduml
]]
}

-- Chen's ER Diagram Syntax
snippets.add {
    trigger  = 'snpt-er-start',
    files    = '%.puml$',
    info     = '...',             -- optional, used by the autocomplete menu
    desc     = '...',     -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
@startchen
!theme plain
skinparam dpi 200
${1}
@endchen
]]
}

-- TODO: C4
