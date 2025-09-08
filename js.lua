local snippets = require 'plugins.snippets'

-- Open link
snippets.add {
    trigger  = 'snpt-open-link',
    files    = '%.js$',
    info     = '...',             -- optional, used by the autocomplete menu
    desc     = '...',     -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
// Go to website upon click
function openPage(url) {
  window.open(url, '_blank');
};
]]
}
