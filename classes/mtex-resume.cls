\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mtex-resume}[2025/07/09 custom resume class]

\LoadClass[a4paper,10pt]{article}

\RequirePackage[margin=0.7cm]{geometry}
\RequirePackage{hyperref}
\RequirePackage[osf]{newpxtext}
\RequirePackage[T1]{fontenc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage[none]{hyphenat}

% No section numbering
\setcounter{secnumdepth}{0}

% Section style — small caps, left aligned
\titleformat{\section}{\normalsize\Large}{}{0em}{}
\titleformat{\subsection}{\normalsize\large\itshape}{}{0em}{}
\titlespacing{\section}{0pt}{12pt}{6pt}

% Reduce parskip
\setlength{\parskip}{0pt}

% Remove page numbers
\pagestyle{empty}

\hypersetup{
    colorlinks=true,
    % urlcolor=cyan,
    urlcolor=[RGB]{180,83,9},
}

\newcommand{\makehref}[1]{
    \href{#1}{#1}}

\newenvironment{cventry}
  {\begin{list}{}{\setlength{\leftmargin}{1.5em}}\item[]}
  {\end{list}}

