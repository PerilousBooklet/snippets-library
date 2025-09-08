local snippets = require 'plugins.snippets'

-- Article
snippets.add {
    trigger  = 'snpt-article',
    files    = '%.tex$',
    info     = '...',             -- optional, used by the autocomplete menu
    desc     = '...',     -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
\documentclass[12pt]{article}

\usepackage[english]{babel} % multilingual support
\usepackage[utf8]{inputenc} % encoding
\usepackage{blindtext} % to insert blind text

% page layout
\usepackage{geometry}
\geometry{a4paper, portrait, scale=1.0, margin=2cm}

% page style
\pagestyle{empty}

% fonts
\usepackage[T1]{fontenc}
\usepackage[default]{cantarell}

% opening
\title{Article}
\author{R.O.}
\date{April 2022}

\begin{document}

\maketitle
\tableofcontents

\begin{abstract}
	Abstract.
\end{abstract}

\section{Prima Sezione}
Prima sezione.

\subsection{Prima Sottosezione}
Prima sottosezione

\end{document}
]]
}
