local snippets = require 'plugins.snippets'

-- javadocs, base
snippets.add {
    trigger  = 'snpt-jdoc',
    files    = '%.java$',
    info     = 'JDoc base comment',
    desc     = 'A basic JDoc comment.',
    format   = 'lsp',
    template = [[
/**
 * ${1}
 */
]]
}

-- javadocs, class
snippets.add {
    trigger  = 'snpt-jdoc-class',
    files    = '%.java$',
    info     = 'JDoc class comment',
    desc     = 'A basic JDoc comment for classes.',
    format   = 'lsp',
    template = [[
/**
 * ${1}
 * @author ${2}
 * @throws ${3}
 */
]]
}

-- javadocs, attribute
snippets.add {
    trigger  = 'snpt-jdoc-attribute',
    files    = '%.java$',
    info     = 'JDoc basic comment',
    desc     = 'A basic JDoc comment for attributes.',
    format   = 'lsp',
    template = [[
/**
 * ${1}
 */
]]
}

-- javadocs, method
snippets.add {
    trigger  = 'snpt-jdoc-method',
    files    = '%.java$',
    info     = 'JDoc basic comment',
    desc     = 'A basic JDoc comment for methods.',
    format   = 'lsp',
    template = [[
/**
 * ${1}
 * @param ${2}
 * @return ${3}
 * @see <a href="${4}">${5}</a>
 * @since ${6}
 * @version ${7}
 * @throws ${8}
 */
]]
}

-- java swing, scaled image
snippets.add {
    trigger  = 'snpt-swing-scaledimage',
    files    = '%.java$',
    info     = 'Scaled Image',
    desc     = 'Scaled Image object from SVG image.',
    format   = 'lsp',
    template = [[
public Image image = Toolkit.getDefaultToolkit().getImage(new File("${2:image-path}").getAbsolutePath());
public Image scaledImage = image.getScaledInstance(${2:size-x}, ${3:size-y}, Image.SCALE_SMOOTH);
]]
}

-- java swing, yes/no confirmation menu
snippets.add {
    trigger  = 'snpt-',
    files    = '%.java$',
    info     = '',
    desc     = '',
    format   = 'lsp',
    template = [[
Object[] options = { "Yes", "No" };
int n = JOptionPane.showOptionDialog(column, "${1:message}", "Warning", JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE, null, options, options[0]);
// Confirm deletion
if (n == 0) {
  ${2:code-to-run}
}
]]
}

-- ?
-- snippets.add {
--     trigger  = 'snpt-',
--     files    = '%.java$',
--     info     = '',
--     desc     = '',
--     format   = 'lsp',
--     template = [[

-- ]]
-- }
