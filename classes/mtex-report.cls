\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mtex-report}[2025/19/14 custom report class]

% \LoadClass[a4paper,10pt]{article}
\LoadClass[a4paper,10pt]{report}

% \RequirePackage[french]{babel}
\RequirePackage{graphicx} % import external graphics files
\RequirePackage{float} % for figures/tables positions
\RequirePackage{hyperref} % for links, urls
\RequirePackage{amsthm} % for unnumbered theorem-like env
% \RequirePackage{parskip} % change the space inserted between paragraphs in your document
\RequirePackage{amsmath} % handful of options for displaying equations - for section-numbered figure, equation and table
\RequirePackage{amssymb} % 
\RequirePackage{bbm} % for symbols
\RequirePackage{tikz} % create graphic elements
\usetikzlibrary{positioning}
\usetikzlibrary{calc}
\RequirePackage{blkarray} % blockarrays
\RequirePackage{cancel}
\RequirePackage{algorithm} % for algorithms
\RequirePackage{algpseudocode}
\RequirePackage[a4paper,width=150mm,top=25mm,bottom=25mm]{geometry} % configure the page layout
\RequirePackage[authoryear]{natbib} % bibliography
\RequirePackage{subcaption} % subfigures
\RequirePackage{longtable} % insert a very long table, which takes up two or more pages
\RequirePackage{makecell} % for cells in table
\RequirePackage{multirow} % merge several columns
\RequirePackage[table]{xcolor}
\RequirePackage{booktabs} % for nice tables
\RequirePackage{stmaryrd} % for integers brackets
\RequirePackage[none]{hyphenat} % disables all hyphenation
\RequirePackage[osf]{newpxtext}
\RequirePackage[T1]{fontenc}
\RequirePackage{listings} % highlight code

% [theorem styles]
\theoremstyle{definition}  % make text upright instead of italic

% [theorem-like environements]
\newtheoremstyle{nodot}
  {}{}{}{}{\bfseries}{}{.5em}{}
\theoremstyle{nodot}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corrolary}[theorem]{Corrolary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{definition}{Definition}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{example}{Example}[section]
\newtheorem*{remark}{Remark}


% [section-numbered figure, equation and table]
\numberwithin{figure}{section}
\numberwithin{equation}{section}
\numberwithin{table}{section}

% code style
\definecolor{codebg}{HTML}{F7F7F7}
\definecolor{codeborder}{HTML}{E2E2E2}
\definecolor{keyword}{HTML}{A626A4}
\definecolor{string}{HTML}{50A14F}
\definecolor{comment}{HTML}{A0A1A7}

\lstset{
    basicstyle      = \ttfamily\small,
    keywordstyle    = \color{keyword},
    stringstyle     = \color{string},
    commentstyle    = \color{comment}\itshape,
    backgroundcolor = \color{codebg},
    frame           = single,
    rulecolor       = \color{codeborder},
    framesep        = 6pt,
    breaklines      = true,
    showstringspaces= false,
    numbers         = none,
    tabsize         = 4,
}
