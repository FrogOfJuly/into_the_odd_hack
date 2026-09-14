\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zine}[A class to produce OSR RPG Zines]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{extarticle} 
}

\ProcessOptions\relax

\LoadClass[a4paper,12pt,twoside]{extarticle}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{multicol}
\usepackage{geometry}
\usepackage{tabularx}
\usepackage{titlesec}
\usepackage{enumitem}
\usepackage{float}
\usepackage{hyperref}
\usepackage[table]{xcolor}

\usepackage{pifont}
\usepackage[nf]{coelacanth}
\usepackage[T1]{fontenc}
%% The font package uses mweights.sty which has som issues with the
%% \normalfont command. The following two lines fixes this issue.
\let\oldnormalfont\normalfont
\def\normalfont{\oldnormalfont\mdseries}


% Adjust the margins to fit each page on half of an A4 page
\geometry{
    paper=a4paper, % Change to letterpaper for US letter
    inner=2.5cm, % Inner margin
    outer=1.6cm, % Outer margin
    top=2cm, % Top margin
    bottom=2.2cm, % Bottom margin
    footskip=1.1cm, % Space for the page number
    headheight=12pt,
}


\setlist[itemize]{  % list spacings
            topsep=0pt,
            itemsep=0.1cm,
            partopsep=1ex,
            parsep=1ex
        }
\setlist[itemize]{leftmargin=0.78cm} % this adjusts the left margin on lists, 
                                     % you might have to adjust this based on 
                                     % the chosen symbol.
\setlist[itemize,1]{label=\ding{228}} % sets the default list symbol

% you can adjust the properties of an individual itemize like this:
% \begin{itemize}[leftmargin=5.5mm]

% spacings around sections and (sub-)subsections
\titlespacing*{\section}
{0pt}{0.2cm}{0.05cm}
\titlespacing*{\subsection}
{0pt}{0.05cm}{0.05cm}
\titlespacing*{\subsubsection}
{0pt}{4pt}{1pt}


% section command
\newcommand{\pagetopsection}[1]{
  \section*{\centering \fontsize{35}{45}\selectfont #1}
  \vspace*{0.4 cm}
}


% paragraph settings
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                     {1.25ex \@plus 1ex \@minus .2ex}% this is paragraph top margin
                                     {-0.5 em}%
                                     {\bfseries}}

% Prevent breaking mid-word
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

% Give tables more padding
\renewcommand{\arraystretch}{1.3}

% Middle split size
\setlength{\columnsep}{0.8cm}

% Boxes with darkened background
\newcommand{\colbox}[1]{ \noindent\colorbox{gray!25}{\parbox{0.93\linewidth}{#1}}\vspace{0.2cm}} 
\setlength\fboxsep{0.3cm} % Padding

\def\hrulefillprime{\leavevmode\leaders\hrule height 1.9pt\hfill\kern\z@}

\def\hrulefillnotprime{\leavevmode\leaders\hrule height 1.7pt\hfill\kern\z@}

% FOOT & HEAD
\renewcommand{\headrulewidth}{0pt}

\def\zinetitle{Your Zine Title}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\hrulefillprime \quad \zinetitle \quad \hrulefillprime}
\fancyfoot[CE]{\quad \quad \quad \quad \hrulefillnotprime \quad \textbf{\thepage} \quad \hrulefillnotprime}
\fancyfoot[CO]{\hrulefillnotprime \quad \textbf{\thepage} \quad \hrulefillnotprime \quad \quad \quad }

% Metadata Formatting
\title{\vspace{-3cm} \hrule \vspace{2mm} \textbf{\textit{\zinetitle}} \vspace{2mm} \hrule}
% \date{Last edit: \today}
\date{}

% \title{\vspace{-3.0926cm} \hrulefillnotprime \vspace{2mm} \textbf{\textit{\zinetitle}} \vspace{2mm} \hrulefillnotprime}
