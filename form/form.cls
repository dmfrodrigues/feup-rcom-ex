\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{form}[2020/06/20 Document class for exam forms]
\LoadClass[a4paper]{article}
% Margins
\RequirePackage[top=17mm,bottom=0mm,left=5mm,right=5mm]{geometry}
% Units
\RequirePackage[binary-units=true]{siunitx} %SI units
% CGS units
\DeclareSIUnit\gal{gal} % gal/galileo unit of acceleration
\DeclareSIUnit\dyne{dyn} % dyn/dyne unit of force
\DeclareSIUnit\erg{erg} % erg unit of energy
\DeclareSIUnit\gauss{G} % G/gauss unit of magnetic field
% Math stuff
\RequirePackage{mathtools}
\RequirePackage{esint}
\newcommand{\matr}[1]{\mathbf{#1}} % undergraduate algebra version
\DeclareMathOperator{\tr}{tr}
\DeclareMathOperator{\expected}{E}
\DeclareMathOperator{\variance}{Var}
\RequirePackage{physics}
\newcommand\unitvec[1]{\hat{#1}}
\renewcommand\div{\vec{\nabla} \cdot }
\RequirePackage{xfrac} % \sfrac
% Tables
\RequirePackage{multirow}
\RequirePackage{multicol}
\usepackage{tabularx}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}
% Some work
\def\author#1{\gdef\@author{#1}\gdef\@@author{#1}}
\def\title#1{\gdef\@title{#1}\gdef\@@title{#1}}
\let\@@author\@empty
\let\@@title\@empty
% Headers and footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\headsep=10pt
\newcommand{\vcenteredinclude}[1]{\begingroup
\setbox0=\hbox{\includegraphics[scale=0.1]{#1}}%
\parbox{\wd0}{\box0}\endgroup}
\fancyhead[R]{\rightmark}
\fancyhead[C]{\textbf{\ifx\@@title\@empty\else\@@title\fi}}
\fancyhead[L]{\ifx\@@author\@empty\else\@@author\fi}
