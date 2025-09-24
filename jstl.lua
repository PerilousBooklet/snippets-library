local snippets = require 'plugins.snippets'

-- Base expression tag
snippets.add {
    trigger  = 'snpt-jstl',
    files    = { '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
]]
}
