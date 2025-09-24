local snippets = require 'plugins.snippets'

-- Base expression tag
snippets.add {
    trigger  = 'snpt-jsp',
    files    = { '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
]]
}
