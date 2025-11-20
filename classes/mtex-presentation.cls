\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mtex-presentation}[2025/11/20 Custom beamer presentation]

% \LoadClass[compress, 11pt]{beamer}
\LoadClass[11pt]{beamer}

% Load required packages
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{pgfpages}
\RequirePackage{makecell}
\RequirePackage[authoryear]{natbib}
\RequirePackage[most]{tcolorbox}
\tcbuselibrary{skins, breakable}
\RequirePackage{tikz}
\usetikzlibrary{fadings}

% Presentation colors
\newcommand{\setprimarycolor}[3]{\definecolor{primaryColor}{RGB}{#1,#2,#3}}
\newcommand{\setsecondarycolor}[3]{\definecolor{secondaryColor}{RGB}{#1,#2,#3}}
\newcommand{\settertiarycolor}[3]{\definecolor{tertiaryColor}{RGB}{#1,#2,#3}}

% Michelin colors
% \setprimarycolor{0}{96}{174}
% \setsecondarycolor{255}{230}{0}
% \settertiarycolor{0}{0}{0}

% CS colors
% \setprimarycolor{204}{0}{0}
% \setsecondarycolor{51}{51}{51}
% \settertiarycolor{153}{0}{153}


% Set beamer colors
\setbeamercolor{palette primary}{bg=primaryColor, fg=white}
\setbeamercolor{palette secondary}{bg=secondaryColor, fg=white}
\setbeamercolor{palette tertiary}{bg=primaryColor!70, fg=white}
\setbeamercolor{palette quaternary}{bg=secondaryColor!70, fg=white}
\setbeamercolor{footline}{bg=white, fg=black}
\setbeamercolor{frame number in head/foot}{bg=white, fg=black}
\setbeamercolor{author in head/foot}{bg=white, fg=black}
\setbeamercolor{date in head/foot}{bg=white, fg=black}
\setbeamercolor{structure}{fg=primaryColor} % itemize, enumerate
\setbeamercolor{item}{fg=primaryColor}
% \setbeamertemplate{itemize item}[circle]



% \renewcommand{\familydefault}{\sfdefault}

% navigation symbols
\setbeamertemplate{headline}[default]
\setbeamertemplate{navigation symbols}{}
\mode<beamer>{\setbeamertemplate{blocks}[rounded][shadow=true]}
\useoutertheme[subsection=false]{miniframes}

% subsection frame - shows full pla with current subsection highlighted
\AtBeginSubsection[]{
    \begin{frame}[noframenumbering]{Plan}
        \tableofcontents[currentsection,currentsubsection,hideothersubsections,
        sectionstyle=show/shaded,
            subsectionstyle=show/shaded/hide]
    \end{frame}
}
% current section in primarcolor
\setbeamercolor{section in toc}{fg=primaryColor}
% current subsection in black
\setbeamercolor{subsection in toc}{fg=black}
% shaded (non-current) sections in gray/transparent
\setbeamercolor{section in toc shaded}{fg=primaryColor!90}
\setbeamercolor{subsection in toc shaded}{fg=gray!80}

% Custom commands for classification and conservation
\newcommand{\classificationID}{}
\newcommand{\conservationInfo}{}
\newcommand{\setclassification}[1]{\renewcommand{\classificationID}{#1}}
\newcommand{\setconservation}[1]{\renewcommand{\conservationInfo}{#1}}
\newcommand{\instituteLogo}{}
\newcommand{\companyLogo}{}
\newcommand{\leftSideLogo}{}
\newcommand{\rightSideLogo}{}
\newcommand{\setinstitutelogo}[1]{\renewcommand{\instituteLogo}{#1}}
\newcommand{\setcompanylogo}[1]{\renewcommand{\companyLogo}{#1}}
\newcommand{\setleftsidelogo}[1]{\renewcommand{\leftSideLogo}{#1}}
\newcommand{\setrightsidelogo}[1]{\renewcommand{\rightSideLogo}{#1}}
% Custom footline
\setbeamertemplate{footline}{
  \leavevmode
  \hbox{
    % left-side logo
    \begin{beamercolorbox}[wd=0.13\paperwidth,ht=2.5ex,dp=2.5ex,left]{date in head/foot}
      \includegraphics[width=15ex]{\leftSideLogo}
    \end{beamercolorbox}

    \begin{beamercolorbox}[wd=0.05\paperwidth,ht=2.5ex,dp=2.5ex,left]{frame number in head/foot}
        {\color{primaryColor}\fontsize{6pt}{6pt}\textbf{\selectfont\insertframenumber{} / \inserttotalframenumber}}
    \end{beamercolorbox}
    \begin{beamercolorbox}[wd=0.35\paperwidth,ht=2.5ex,dp=2.5ex,left]{author in head/foot}
        {\color{gray}\fontsize{4pt}{6pt}\selectfont \insertshortauthor{} / \insertshortinstitute}
    \end{beamercolorbox}
    \begin{beamercolorbox}[wd=0.1\paperwidth,ht=2.5ex,dp=2.5ex,left]{date in head/foot}
        {\color{gray}\fontsize{4pt}{6pt}\selectfont \insertshortdate{}}
    \end{beamercolorbox}
    \begin{beamercolorbox}[wd=0.1\paperwidth,ht=2.5ex,dp=2.5ex,left]{date in head/foot}
        {\color{gray}\fontsize{4pt}{6pt}\selectfont Classification: \classificationID}
    \end{beamercolorbox}
    \begin{beamercolorbox}[wd=0.1\paperwidth,ht=2.5ex,dp=2.5ex,left]{date in head/foot}
        {\color{gray}\fontsize{4pt}{6pt}\selectfont Conservation: \conservationInfo}
    \end{beamercolorbox}

    % left-side logo
    \begin{beamercolorbox}[wd=0.13\paperwidth,ht=2.5ex,dp=2.5ex,right]{date in head/foot}
      \includegraphics[width=15ex]{\rightSideLogo}\hspace{1.5ex}
    \end{beamercolorbox}
  }
  \vskip0pt
}

\newcommand{\finalpreztitlepage}{
  \begin{center}
    % Top logos row
    % \hfill
    \begin{minipage}{0.15\linewidth}
      \includegraphics[width=\linewidth]{\instituteLogo}
    \end{minipage}
    \hfill
    \begin{minipage}{0.15\linewidth}
      \includegraphics[width=\linewidth]{\companyLogo}
    \end{minipage}
    % \hfill
    % \begin{minipage}{0.15\linewidth}
    %   \includegraphics[width=\linewidth]{logo-cs}
    % \end{minipage}
    % \hfill
    % \begin{minipage}{0.15\linewidth}
    %   \includegraphics[width=\linewidth]{logo-cs}
    % \end{minipage}

    \vspace{1cm}

    % Title and subtitle
    {\color{primaryColor}\bfseries\LARGE \inserttitle\par}
    \vspace{0.2cm}
    {\color{primaryColor}\Large \insertsubtitle\par}
    \vspace{0.5cm}

    % Author and Institute
    {\color{gray}\Large \insertauthor{}\par}
    \vspace{0.5cm}

    % Date
    {\color{gray}\small \insertdate\par}

  \end{center}
}


\newcommand{\sotatitlepage}{
  \begin{center}
    % Top logos row
    \hfill
    \begin{minipage}{0.15\linewidth}
      \includegraphics[width=\linewidth]{\companyLogo}
    \end{minipage}

    \vspace{1cm}

    % Title
    {\color{primaryColor}\bfseries\LARGE \inserttitle\par}
    \vspace{0.5cm}

    % Date
    {\color{gray}\small \insertdate\par}
    \vspace{0.5cm}

  \end{center}
}

