\ProvidesClass{kclthesis}[2016/02/13 KCL MSc Thesis Class by Sebastian Zillessen and Andre Mueller]
\NeedsTeXFormat{LaTeX2e}

\newif\ifkclthesis@releaseproject
\newif\ifkclthesis@notreleaseproject
\newif\ifkclthesis@undreleaseproject

\DeclareOption{releaseproject}{\kclthesis@releaseprojecttrue\kclthesis@notreleaseprojectfalse\kclthesis@undreleaseprojectfalse}
\DeclareOption{notreleaseproject}{\kclthesis@releaseprojectfalse\kclthesis@notreleaseprojecttrue\kclthesis@undreleaseprojectfalse}
\DeclareOption{undreleaseproject}{\kclthesis@releaseprojectfalse\kclthesis@notreleaseprojectfalse\kclthesis@undreleaseprojecttrue}
\ExecuteOptions{undreleaseproject}

\ProcessOptions*% process options it the order the user provides them

\LoadClass[11pt,a4paper]{article}

% Mathfonts
\RequirePackage{amsmath, amsfonts, amsthm, amssymb}
\RequirePackage{wasysym}

%Additional Packages
\RequirePackage{color}
\RequirePackage[nottoc,notlot,notlof]{tocbibind}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{subfigure}
\RequirePackage[textsize=tiny,figwidth=8cm]{todonotes}

% Cover Page
\RequirePackage{graphicx}
\RequirePackage[paper=a4paper]{geometry}
\RequirePackage{setspace}
\RequirePackage{framed}


% Macros
\newcommand*{\modulecode}[1]{\gdef\@modulecode{#1}}
%\newcommand*{\@modulecode}{7CCSMPRJ}
\newcommand*{\submissiontitle}[1]{\gdef\@submissiontitle{#1}}
%\newcommand*{\@submissiontitle}{Individual Project Submission 201X/1X}
\newcommand*{\studentnumber}[1]{\gdef\@studentnumber{#1}}
%\newcommand*{\@studentnumber}{\red{Student number goes here}}
\newcommand*{\programme}[1]{\gdef\@programme{#1}}
%\newcommand*{\@programme}{\red{Programme title goes here}}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
%\newcommand*{\@supervisor}{\red{Supervisor's name goes here}}
\newcommand*{\wordcount}[1]{\gdef\@wordcount{#1}}
%\newcommand*{\@wordcount}{\red{Word count goes here}}
\newcommand*{\signdate}[1]{\gdef\@signdate{#1}}
\newcommand*{\@signdate}{\today}
\newcommand*{\ReleaseProject}[1]{\gdef\@ReleaseProject{#1}}

% New Comment for todonotes
\newcommand{\insertref}[1]{\todo[color=green!40]{#1}}
\newcommand{\explainindetail}[1]{\todo[color=red!40]{#1}}
\newcommand{\askfeedback}[1]{\todo[color=blue!40]{#1}}


\renewcommand*{\maketitle}{
\begin{titlepage}

\begin{minipage}{0.4\textwidth}
\begin{flushleft}
\textbf{Faculty of Natural and\\
	Mathematical Sciences\\}
\small{Department of Informatics}
\end{flushleft}
\end{minipage}%
\begin{minipage}{0.4\textwidth}
	\begin{flushleft}
	\scriptsize{Bush House, King's College London\\
		Strand Campus,30 Aldwych\\
		London WC2B 4BG\\
		Telephone 20 7848 2145\\
		Fax 020 7848 2851}
	\end{flushleft}
\end{minipage}%
\begin{minipage}{0.25\textwidth}
	\begin{flushright}
		\includegraphics[width=3.25cm]{kcl}
	\end{flushright}
\end{minipage}
\vspace{1cm}

\doublespacing{
%\begin{minipage}{0.2\textwidth}
%	~
%\end{minipage}
\begin{minipage}{1\textwidth}
	%\begin{flushright}
		\begin{center}
			\textbf{\@modulecode \\ \@submissiontitle}
		\end{center}
	%\end{flushright}
\end{minipage}%


\vspace{0.5cm}

\begin{minipage}{0.3\textwidth}
	\begin{flushleft}
	\textbf{Name:\\Student Number:\\Degree Programme:\\Project Title:\\ Supervisor:\\ Word Count:\\}
	\end{flushleft}
\end{minipage}%
\begin{minipage}{0.7\textwidth}
	\begin{flushleft}
	\@author \\ \@studentnumber \\ \@programme \\ \@title \\ \@supervisor \\ \@wordcount
	\end{flushleft}
\end{minipage}
}
\vspace{1cm}
	
\begin{minipage}{\textwidth}
	\begin{framed}
		\begin{center}
			\textbf{RELEASE OF PROJECT}
		\end{center}
		Following the submission of your project, the Department would like to make it publicly available via the library electronic resources. You will retain copyright of the project.
	\end{framed}

	\begin{flushleft}
%		\ifkclthesis@releaseproject
%			$\LARGE \CheckedBox$ I \textbf{agree} to the release of my project\\
%			$\square$ I \textbf{do not} agree to the release of my project	
%		\fi
%		\ifkclthesis@notreleaseproject
%			$\square$ I \textbf{agree} to the release of my project\\
%			$\LARGE \CheckedBox$ I \textbf{do not} agree to the release of my project
%		\fi
%		\ifkclthesis@undreleaseproject
%			\red{
%				Check the appropriate box below\\
%				$\square$ I \textbf{agree} to the release of my project\\
%				$\square$ I \textbf{do not} agree to the release of my project\\
%			}
%		\fi


%		\if \@ReleaseProject 0%
%			{\red{
%				Check the appropriate box below\\
%				$\square$ I \textbf{agree} to the release of my project\\
%				$\square$ I \textbf{do not} agree to the release of my project\\
%			}}
%		\fi
		%
		\if \@ReleaseProject 1%
			$\LARGE \CheckedBox$ I \textbf{agree} to the release of my project\\	
			$\square$ I \textbf{do not} agree to the release of my project	
		\else
		%
		{\if \@ReleaseProject 2%
			$\square$ I \textbf{agree} to the release of my project\\	
			$\LARGE \CheckedBox$ I \textbf{do not} agree to the release of my project
		\else
			\red{
				Check the appropriate box below\\
				$\square$ I \textbf{agree} to the release of my project\\
				$\square$ I \textbf{do not} agree to the release of my project\\
			}
			\fi}
		\fi
%
	\end{flushleft}
\end{minipage}

\vspace{1.5cm}

\begin{minipage}{0.5\textwidth}
\begin{flushleft}
	\textbf{Signature:}
\end{flushleft}
\end{minipage}%
\begin{minipage}{0.5\textwidth}
	\begin{flushleft}
		\textbf{Date:} \@signdate
	\end{flushleft}
\end{minipage}
}
\newcommand*{\maketitleTwo}{
\end{titlepage}

% Second Cover Page

\begin{titlepage}
\thispagestyle{empty}
\null\vskip0.2in%

\begin{figure}[H]
\centering
\includegraphics[width=3.5cm]{kcl}
\end{figure}

\begin{center}
\Large Department of Informatics \\ 
King's College London\\ 
United Kingdom
\\~\\
7CCSMPRJ Individual Project
\end{center}

\vspace{1cm}

\begin{center}
\LARGE{{\bf 
\@title
}}\\
\vspace{0.2cm}
\vskip\bigskipamount % or other desired dimension
\leaders\vrule width \textwidth\vskip0.4pt % or other desired thickness
\vskip\bigskipamount % ditto
\nointerlineskip
\end{center}

\vspace{0.2cm}

\begin{center}
{Name: \bf \@author}\\
Student Number: \@studentnumber\\
Course: \@programme
\end{center}

\vspace{1.2cm}
\begin{center}
\bf{Supervisor:} \@supervisor
\end{center}

\vspace{1.2cm}

\begin{center}
This dissertation is submitted for the degree of MSc in \@programme.\\
%7CCSMPRJ - MSc Individual Project - 2016
\end{center}
\end{titlepage}
}

\onehalfspacing
\endinput
