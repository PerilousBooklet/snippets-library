local snippets = require 'plugins.snippets'

-- Dependency
snippets.add {
    trigger  = 'snpt-dep',
    files    = '%.xml$',
    info     = 'Dependency',             -- optional, used by the autocomplete menu
    desc     = 'Dependency code block for Maven\'s pom.xml',     -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
<dependency>
  <groupId>${1}</groupId>
  <artifactId>${2}</artifactId>
  <version>${3}</version>
  <scope>${4}</scope>
</dependency>
]]
}

-- TODO: Plugin
