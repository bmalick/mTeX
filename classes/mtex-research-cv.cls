\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mtex-research-cv}[2026/03/18 custom resume class]

\LoadClass[11pt, letterpaper]{article}

\RequirePackage[margin=1in]{geometry}
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

\hypersetup{
    colorlinks=true,
    urlcolor=cyan,
}

\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{}
\fancyfoot{}
\fancyhead[L]{Baye Malick Gning}
\fancyhead[R]{\thepage}

\fancypagestyle{firstpage}
{
    \fancyhead[L]{}    
    \fancyhead[R]{}
}

\thispagestyle{firstpage}

\newcommand{\makehref}[1]{
    \href{#1}{#1}}

\newenvironment{cventry}
  {\begin{list}{}{\setlength{\leftmargin}{1.5em}}\item[]}
  {\end{list}}

