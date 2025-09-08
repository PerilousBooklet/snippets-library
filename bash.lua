local snippets = require 'plugins.snippets'

-- Tmux session
snippets.add {
    trigger  = 'snpt-tmux',
    files    = '%.sh$',
    info     = '...',
    desc     = 'Basic tmux wrapper.',
    format   = 'lsp',
    template = [[
#!/bin/bash
tmux new -s ${1} -d
tmux send-keys -t  '${2} && tmux kill-session -t ${1}' C-m
tmux attach -t ${1}
]]
}

-- Switch case
snippets.add {
    trigger  = 'snpt-case',
    files    = '%.sh$',
    info     = 'Switch case',
    desc     = 'Switch case',
    format   = 'lsp',
    template = [[
case ${1} in
  ${2}) ${3} ;;
  ${4}) ${5} ;;
  *) ${6} ;;
esac
]]
}

-- Insert text block into file
snippets.add {
    trigger  = 'snpt-eot',
    files    = '%.sh$',
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
cat << EOT > ${1:file_name}
${2:code_block}
EOT
]]
}

-- Linux Desktop File Template
snippets.add {
    trigger  = 'snpt-desktop',
    files    = '%.desktop$',
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
[Desktop Entry]
# The type as listed above
Type=Application
# The version of the desktop entry specification to which this file complies
Version=1.0
# The name of the application
Name=jMemorize
# A comment which can/will be used as a tooltip
Comment=Flash card based learning tool
# The path to the folder in which the executable is run
Path=/opt/jmemorise
# The executable of the application, possibly with arguments.
Exec=jmemorize
# The name of the icon that will be used to display this entry
Icon=jmemorize
# Describes whether this application needs to be run in a terminal or not
Terminal=false
# Describes the categories in which this entry should be shown
Categories=Education;Languages;Java;
]]
}
