\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{seu}[2023/03/01 v1.0 The LaTeX template for Graduation Design(Thesis) Report of Southeast University]
\typeout{Document Class `seu' v1.0 by Xeus (2023/03/01)}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
\LoadClass[twoside,a4paper, UTF8]{ctexart}
\usepackage{fancyhdr}
\usepackage{amsmath,amsfonts,amssymb,graphicx}
% \usepackage{subfig}
% \usepackage{subfloat}
% \usepackage{subfigure}
% \usepackage{caption}
\usepackage{setspace}
\usepackage{subcaption}
\usepackage{indentfirst} 
\usepackage{bm}
\usepackage{indentfirst}
\usepackage{abstract} 
\usepackage{array}
\usepackage{amsthm}
\usepackage{booktabs}    
\usepackage{siunitx}
\usepackage{tikz}
\usepackage{titlesec}
\usepackage{titletoc}
\usepackage{times}
\usepackage{wasysym}
\usepackage{pifont}
\usepackage{ccaption}
\usepackage{float}
\usepackage{calc}
\usetikzlibrary{calc}
\usepackage{environ}
\usepackage{lmodern}
\usepackage{unicode-math}
\usepackage[sort&compress]{gbt7714}
\usepackage{anyfontsize}
\usepackage{hyperref}
\usepackage{tabu}
\usepackage{longtable}
\usepackage{makecell}
\usepackage[heading=true]{ctex}
\usepackage{multibib}

\setmainfont{Times New Roman}

\newcommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont} 
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont} 
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}       
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}   
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}     
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}    
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}   
\newcommand{\myxiaoliuhao}{\fontsize{6.5pt}{\baselineskip}\selectfont}   
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}     


\renewcommand{\tablename}{表}
\renewcommand{\figurename}{图}
\captiondelim{~~}
\setlength{\abovecaptionskip}{2pt}
\setlength{\belowcaptionskip}{2pt}
\DeclareRobustCommand{\ttfamily}{\fontencoding{T1}\fontfamily{lmtt}\selectfont}

\usepackage{lettrine}
\setlength{\parindent}{2em}
\setlength{\voffset}{-4mm}
\setlength{\parskip}{1pt}
\setlength{\baselineskip}{22pt}
\renewcommand{\baselinestretch}{1.15} %定义行间距1.15
\setcounter{page}{1} \makeatletter


\renewcommand\section{\@startsection {section}{1}{\z@}%
                     {1.5ex }%
                     {1.5ex}%
                     {\normalfont\bfseries\heiti\sanhao\centering}}
                                  
\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\heiti\sihao}}
\renewcommand\subsubsection{\@startsection {subsubsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\songti\sihao}}

\titlecontents{section}[0cm]{\fontsize{12pt}{\baselineskip}\selectfont}{\hspace*{3em}\contentslabel{3em}\ }%
{}{\titlerule*[0.5pc]{.}\contentspage\vspace*{0.3\baselineskip}}%
\titlecontents{subsection}[2em]{\xiaosihao\songti}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[0.5pc]{.}\contentspage\vspace*{0.3\baselineskip}}
\titlecontents{subsubsection}[4em]{\xiaosihao\songti}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[0.5pc]{.}\contentspage\vspace*{0.3\baselineskip}} % 这个命令并没有测试过
\ctexset{
    section={name={第,章},format={\songti\xiaosihao},number=\zhnum{section},aftername={\enspace},beforeskip={24bp},afterskip={18bp}}
}


\usepackage{geometry}
\newgeometry{
    top=20.0mm, bottom=20.0mm, left=25mm, right=20mm,
    headsep=5mm, headheight=15mm, footskip=17.5mm,
}
\savegeometry{seugeometry}
\loadgeometry{seugeometry}


\setlength{\columnsep}{10mm}


\newcommand\fixedUnderline[2][4cm]{\hskip 1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip 3pt}
\newcommand\seuTitle[1]{
    \erhao\heiti
    \begin{center}
      题目：\fixedUnderline[11cm]{#1}      
    \end{center}
}
\newcommand\seuAuthor[6]{
    \songti\xiaoerhao
    \begin{center}
      \renewcommand\arraystretch{2.5}
      \begin{tabular}{rl}
        & \makebox[5em][s]{学号：}\fixedUnderline[8cm]{#1}\\
        & \makebox[5em][s]{姓名：}\fixedUnderline[8cm]{#2}\\
        & \makebox[5em][s]{学院：}\fixedUnderline[8cm]{#3}\\
        & \makebox[5em][s]{专业：}\fixedUnderline[8cm]{#4}\\
        & \makebox[5em][s]{指导教师：}\fixedUnderline[8cm]{#5}\\
        & \makebox[5em][s]{起止日期：}\fixedUnderline[8cm]{#6}\\
    \end{tabular}  
    \renewcommand\arraystretch{1}
    \end{center}
}

\date{}

\usepackage{xunicode-addon}
\usepackage{xpatch}
\AtBeginUTFCommand[\textcircled]{\begingroup\EnclosedNumbers}
\AtEndUTFCommand[\textcircled]{\endgroup}
% set char class and font for circled numbers
% ref: https://stone-zeng.github.io/2019-02-09-circled-numbers
% cancel the superscript style of counter used in footnote text
\xpatchcmd\@makefntext
  {{\hss\@makefnmark}}
  {{\hss\@makefnmark@nosuperscript}\space}
  {}{\fail}

% old: superscript style
% \def\@makefnmark{\hbox{\@textsuperscript{\normalfont\@thefnmark}}}

% new: normal style, lower baseline
\def\@makefnmark@nosuperscript{\lower .3ex \hbox{\normalfont\@thefnmark}}
% shorten footnote rule
\xpatchcmd\footnoterule
  {.4\columnwidth}
  {1in}
  {}{\fail}

\xeCJKDeclareCharClass{Default}{"24EA, "2460->"2473, "3251->"32BF}
\newfontfamily\EnclosedNumbers{Source Han Serif SC}
\renewcommand\thefootnote{\textcircled{\@arabic\c@footnote}}
\pagestyle{fancy} 
\fancyhf{}
\fancyhead[C]{{\songti\xiaowuhao 东南大学本科毕业设计(论文)}}
% \fancyhead[LE,RO]{~~~\footnotesize\thepage ~~~}
\lfoot{}
\cfoot{~~~\footnotesize\thepage~~~}
\rfoot{}

\DeclareMathSizes{10.5}{10}{6.8}{4.2}
\setlength{\abovedisplayskip}{2.5mm}
\setlength{\belowdisplayskip}{2.5mm}

% \renewcommand\refname{\heiti\wuhao\centerline{~~}\global\def\refname{~~}}

\renewcommand{\contentsname}{\heiti\sanhao 目录}

