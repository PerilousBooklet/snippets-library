local snippets = require 'plugins.snippets'

-- Base: generic
snippets.add {
    trigger  = 'snpt-base',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<!DOCTYPE html>
<html>
  
  <head>
    <title>${1}</title>
    <!-- CSS -->
    <link rel="stylesheet" href="./style.css"></link>
    <!-- JS -->
    <script src="lib.js"></script>
  </head>
  
  <body>
    ${2}
  </body>
  
</html>
]]
}

-- Base: exercise
snippets.add {
    trigger  = 'snpt-base-exercise',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<!DOCTYPE html>
<html>
  
  <head>
    <title>${1}</title>
  </head>

  <style>
    * {
      box-sizing: border-box;
    }
    body {
      font-family: Cantarell;
      margin: 0;
      background: #282c34;
    }
  </style>
  
  <body>
    ${2}
  </body>
  
</html>
]]
}

-- Base: blog article
snippets.add {
    trigger  = 'snpt-blog-base-article',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<!DOCTYPE html>
<html>
  
  __HEAD3__
  
  <body>
    
    __TABLE_OF_CONTENTS_STYLE__
    
    __NAVBAR_POST__
    
    <!-- CONTENT -->
    <div class="centered text-white">
      <div class="blog_post">
        
        <!-- TITLE -->
        <br>
        <h1 style="color: #9acc76; text-align: center;">$1</h1>
        <p style="font-style: italic; text-align: center;">$2</p>
        <br>
        
        __TABLE_OF_CONTENTS__
        
        <!-- CONTENT -->
        <h2 style="color: #5cb3fa;">Introduction</h2>
        
        <p>
          ...
        </p>
        
        <br>
        
      </div>
    </div>
    
  </body>
  
</html>
]]
}

-- Element: blog post section
snippets.add {
    trigger  = 'snpt-blog-section',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<h2 style="color: #5cb3fa;">${1}</h2>

<p>
  ${2}
</p>
<br>
]]
}

-- Element: tag
snippets.add {
    trigger  = 'snpt-blog-tag',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<a href="../posts/$1/$2.html">$3</a>
<div class="container_tags">
  <div class="container_tag"><p>$4</p></div>
  <div class="container_tag"><p>$5</p></div>
</div>
<br>
]]
}

-- Element: audio player
snippets.add {
    trigger  = 'snpt-blog-audio',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<audio src="${1}" style="border-radius: 10px; width: 700px;" controls>audio</audio>
]]
}

-- Element: video player
snippets.add {
    trigger  = 'snpt-blog-video',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<video src="${1}" style="border-radius: 10px;" width="700" controls>video</video>
]]
}

-- Element: image
snippets.add {
    trigger  = 'snpt-blog-image',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<img src="../../assets/$1" alt="pm" style="width: 700px; border-radius: 10px;">
]]
}

-- Element: code
snippets.add {
    trigger  = 'snpt-blog-codeblock',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[
<!-- NOTE: each single-line of code is 40px high -->
<!-- NOTE: if the codeblock is too high to count by hand, use ./tools/calculate_codeblock_height.lua -->
<div style="position: relative;">
  <p id="codeblock" class="code" style="height: 200px;">
    $1
  </p>
  <button id="copyButton" onclick="copyToClipboard()" class="copy_button">copy</button>
</div>
]]
}

-- Element: skill
snippets.add {
    trigger  = 'snpt-blog-skill',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[

]]
}

-- Element: project
snippets.add {
    trigger  = 'snpt-blog-project',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[

]]
}

-- Element: project page
snippets.add {
    trigger  = 'snpt-blog-base-projectpage',
    files    = { '%.html$', '%.jsp$' },
    info     = '...',
    desc     = '...',
    format   = 'lsp',
    template = [[

]]
}
