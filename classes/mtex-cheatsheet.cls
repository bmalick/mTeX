\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mtex-cheatsheet}[2026/07/18 Custom cheatsheet]

\LoadClass[10pt,a4paper]{extarticle}

\RequirePackage[margin=1cm]{geometry}
\RequirePackage{multicol}
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{xcolor}

\geometry{a4paper,landscape}

\pagestyle{empty}
\setlength{\columnsep}{5em}
\setlength{\parindent}{0pt}

% color definitions
\definecolor{bodycolor}{HTML}{111111}
\definecolor{sectioncolor}{HTML}{745FB5}
\definecolor{functioncolor}{HTML}{2e90ae}
\definecolor{commentcolor}{HTML}{556699}

% section styling
\titleformat{\section}[display]
{\bfseries\color{sectioncolor}} % format
{} % label
{0.5ex} % sep
{
    \rule{\columnwidth}{0.8pt}
} % before-code


\newcommand{\makeline}[2]{\texttt{#1} & \textcolor{commentcolor}{\# #2}}

