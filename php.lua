local snippets = require 'plugins.snippets'

-- base
snippets.add {
    trigger  = 'snpt-base',
    files    = '%.php$',
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<!DOCTYPE html>
<html>
  
  <head>
    <title>$1</title>
  </head>
  
  <body>
    
    <?php
      $2
    ?>
    
  </body>
  
</html>
]]
}
