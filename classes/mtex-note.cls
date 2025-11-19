\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mtex-note}[2025/11/14 custom note class]

\LoadClass[a4paper,10pt]{article}

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




% \RequirePackage{microtype} % avoid hypenation

% [theorem styles]
\theoremstyle{definition}  % make text upright instead of italic

% [theorem-like environements]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corrolary}{Corrolary}[theorem]
\newtheorem{lemma}{Lemma}[theorem]
\newtheorem{definition}{Definition}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{example}{Example}[section]
\newtheorem*{remark}{Remark}


% [section-numbered figure, equation and table]
\numberwithin{figure}{section}
\numberwithin{equation}{section}
\numberwithin{table}{section}
