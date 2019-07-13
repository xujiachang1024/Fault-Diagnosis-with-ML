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
\RequirePackage[paper=a4paper,margin=2.54cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{framed}


% Macros
\newcommand*{\modulecode}[1]{\gdef\@modulecode{#1}}
\newcommand*{\@modulecode}{\red{Missing Module Code}}
\newcommand*{\modulename}[1]{\gdef\@modulename{#1}}
\newcommand*{\@modulename}{\red{Missing Module Name}}
\newcommand*{\submissiontitle}[1]{\gdef\@submissiontitle{#1}}
\newcommand*{\@submissiontitle}{\red{Missing Submission title}}
\newcommand*{\submissionyear}[1]{\gdef\@submissionyear{#1}}
\newcommand*{\@submissionyear}{\red{Missing Submission year}}
\newcommand*{\submissiondate}[1]{\gdef\@submissiondate{#1}}
\newcommand*{\@submissiondate}{\red{Missing Submission date}}
\newcommand*{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@studentnumber}{\red{Missing Studentnumber}}
\newcommand*{\programme}[1]{\gdef\@programme{#1}}
\newcommand*{\@programme}{\red{Missing Programme}}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@supervisor}{\red{Missing supervisor}}
\newcommand*{\wordcount}[1]{\gdef\@wordcount{#1}}
\newcommand*{\@wordcount}{\red{Missing wordcount}}
\newcommand*{\signdate}[1]{\gdef\@signdate{#1}}
\newcommand*{\@signdate}{\today}

% New Comment for todonotes
\newcommand{\insertref}[1]{\todo[color=green!40]{#1}}
\newcommand{\explainindetail}[1]{\todo[color=red!40]{#1}}
\newcommand{\askfeedback}[1]{\todo[color=blue!40]{#1}}


\renewcommand*{\maketitle}{
\begin{titlepage}
%
\begin{minipage}{0.3\textwidth}
\singlespacing{
	\begin{flushleft}
	 \textbf{Faculty of Natural and\\
		Mathematical Sciences}\\
	\small{Department of Informatics}\\
	\phantom{AAA}
	\end{flushleft}
}
\end{minipage}%
%
\begin{minipage}{0.45\textwidth}
\singlespacing{
	\begin{flushleft}
	\scriptsize{Bush House, 30 Aldwych\\
		Strand Campus\\
		London WC2B 4BG\\
		United Kingdom\\
		\url{https://www.kcl.ac.uk/nms/depts/informatics}}
	\end{flushleft}
}
\end{minipage}%
\begin{minipage}{0.25\textwidth}
	\begin{flushright}
		\includegraphics[width=3.25cm]{img/kcl}
	\end{flushright}
\end{minipage}

\vspace{1cm}

\doublespacing{

\begin{flushright}
	\textbf{\@modulecode \\ \@submissiontitle \\ \@submissionyear}
\end{flushright}

\vspace{0.5cm}

\begin{minipage}{0.3\textwidth}
	\begin{flushleft}
	\textbf{Student Name:\\Student Number:\\Degree Programme:\\Date of Submission:\\Project Title:\\ Supervisor Name(s):\\ Word Count:\\}
	\end{flushleft}
\end{minipage}%
\begin{minipage}{0.7\textwidth}
	\begin{flushleft}
	\@author \\ \@studentnumber \\ \@programme \\ \@submissiondate \\ \@title \\ \@supervisor \\ \@wordcount
	\end{flushleft}
\end{minipage}
}
\vspace{1cm}
	
\begin{minipage}{\textwidth}
	\begin{framed}
		\begin{center}
			\textbf{RELEASE OF PRODUCT}
		\end{center}
		Following the submission of your project, the Department would like to make it publicly available via the library electronic resources. You will retain copyright of the project.
	\end{framed}

	\begin{flushleft}
		\ifkclthesis@releaseproject
			$\CheckedBox$ I \textbf{agree} to the release of my project\\
			$\square$ I \textbf{do not} agree to the release of my project	
		\fi
		\ifkclthesis@notreleaseproject
			$\square$ I \textbf{agree} to the release of my project\\
			$\CheckedBox$ I \textbf{do not} agree to the release of my project
		\fi
		\ifkclthesis@undreleaseproject
			\red{
				\fbox{?} I \textbf{agree} to the release of my project\\
				\fbox{?} I \textbf{do not} agree to the release of my project
			}
		\fi
	\end{flushleft}
\end{minipage}

\vspace{1.5cm}

\begin{minipage}{0.5\textwidth}
\begin{flushleft}
	\textbf{Signature:}
\end{flushleft}
\end{minipage}%
\begin{minipage}{0.5\textwidth}
	\begin{flushright}
		\textbf{Date:} \@signdate
	\end{flushright}
\end{minipage}
\end{titlepage}
}

%\newcommand*{\maketitleTwo}{
%% Second Cover Page
%
%\begin{titlepage}
%\thispagestyle{empty}
%\null\vskip0.2in%
%
%\begin{center}
%Department of Informatics \\ 
%King's College London \\
%WC2R 2LS London \\ 
%United Kingdom
%\end{center}
%
%
%\vspace{1.5cm}
%
%\begin{center}
%\LARGE{{\bf 
%\@title
%}}\\
%\vspace{0.2cm}
%\vskip\bigskipamount % or other desired dimension
%\leaders\vrule width \textwidth\vskip0.4pt % or other desired thickness
%\vskip\bigskipamount % ditto
%\nointerlineskip
%\end{center}
%
%\vspace{0.2cm}
%
%\begin{center}
%{\bf \@author}\\
%Student Number: \@studentnumber\\
%Course: \@programme
%\end{center}
%
%\vspace{1.2cm}
%\begin{center}
%\bf{Supervisor:} \@supervisor
%\end{center}
%
%\vspace{1cm}
%
%\begin{figure}[!h]
%\centering
%\includegraphics[width=3.5cm]{img/kcl}
%\end{figure}
%
%\vspace{1.2cm}
%
%\begin{center}
%Thesis submitted as part of the requirements for the award of the \@programme.\\
%\@modulecode - \@modulename - \@submissionyear
%\end{center}
%\end{titlepage}
%}

%\onehalfspacing
%\singlespacing

\endinput
