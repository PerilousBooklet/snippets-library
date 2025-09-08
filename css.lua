local snippets = require 'plugins.snippets'

-- Navbar
snippets.add {
    trigger  = 'snpt-navbar',
    files    = '%.css$',
    info     = '...',             -- optional, used by the autocomplete menu
    desc     = '...',     -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
.navbar {
  top: 0;
  position: sticky;
  position: -webkit-sticky;
  overflow: hidden;
  display: flex;
  text-align: center;
  justify-content: center;
  background-color: #21252B;
}
.navbar a {
  display: inline-block;
  color: #FFFFFF;
  padding: 14px 20px;
}
.navbar a:hover {
  background-color: #282c34;
  color: #FFFFFF;
}
.navbar a.active {
  background-color: #282c34;
  color: #FFFFFF;
}
]]
}
