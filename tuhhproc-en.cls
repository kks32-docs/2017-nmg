\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tuhhproc-en}[2007/09/21 Hans Mathäus Hügel]
\LoadClassWithOptions{article}

\typeout{tuhh2007.sty created by Hans Mathäus Hügel}

\RequirePackage[english,ngerman]{babel}        % Spracheinstellungen
\RequirePackage[T1]{fontenc}                   % 8-Bit Fontkodierung
\RequirePackage[latin1]{inputenc}              % Eingabezeichensatz
\RequirePackage{textcomp}                      % Text-Symbole
\RequirePackage{graphicx}                      % Einbindung Grafikdateien
\RequirePackage{url}                           % Satz von URL-Adressen
\RequirePackage{microtype}                     % Mikrotypografische Korrekturen
\RequirePackage{icomma}                        % Korrektur Dezimalpunkt

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Layout Titelseite 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\Header}[3]{%                      % #1 = Titel
  %\setcounter{page}{#3}                        % #2 = Autor
  %\unitlength 1cm                              % #3 = Anfangsseitenzahl
 % \begin{picture}(0,0)
  %  \put(8,-24.2){\makebox(0,0){#3}}
 % \end{picture}
  \vspace*{0.75cm}
  \begin{center}
  \large\bfseries #1\\[.5cm]

  \normalsize\bfseries #2
  \end{center}

  \vspace*{24pt}}

\newcommand{\Kurzfassung}[1]{%
  \begin{quotation}
    \noindent\small{\bfseries Kurzfassung}: #1
  \end{quotation}}

\newcommand{\Abstract}[1]{%
  \begin{quotation}
    \noindent\small{\bfseries Abstract}: #1
  \end{quotation}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Seitenlayout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{myheadings}

\voffset -2.7cm                         % Versatz vertikal
\topmargin 1.25cm                       % Abstand Rand/Kopfzeile
\headheight 12pt                        % Höhe Kopfzeile
\headsep 1.326667cm                     % Abstand Kopfzeile/Text
\textheight 23.0cm                      % Texthöhe
\footskip 1.75cm                        % Abstand Text/Fußzeile

\oddsidemargin 0cm
\evensidemargin 0cm
\hoffset -0.2cm                         % Versatz horizontal
\textwidth 16cm                         % Textbreite

\renewcommand{\baselinestretch}{1.0}    % Zeilenabstand einfach
\setlength{\parskip}{12pt}              % Paragraphabstand 
\setlength{\parindent}{0pt}             % Paragrapheinzug

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Beschriftung von Gleitobjekten: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\FigureCaption}[1]{%
  \selectlanguage{english}
  \caption{#1}}

\newcommand{\TableCaption}[1]{%
  \selectlanguage{english}
  \caption{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Allgemeine Makros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\leaderfill}{\leaders\hbox to .5em{\hss.\hss}\hfill}
\newcommand{\Datum}{\number\day.\space\ifcase\month\or Januar\or Februar
  \or M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
  Oktober\or November\or Dezember\fi\space\number\year}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Listen Makros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\deflabel}[1]{\tt #1\hfill}%
\newenvironment{deflist}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\bfseries #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\deflabel}}}%
    {\end{list}}%

%% Roman Liste

\newcommand{\defrmlabel}[1]{\rm #1\hfill}%
\newenvironment{rmlist}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\rm #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defrmlabel}}}%
    {\end{list}}%
\newcommand{\defromanlabel}[1]{\rm #1\hfill}%
\newenvironment{ListeRoman}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\rm #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defromanlabel}}}%
    {\end{list}}%

%% SansSerif Liste

\newcommand{\defsflabel}[1]{\sffamily #1\hfill}%
\newenvironment{sflist}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\sffamily #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defsflabel}}}%
    {\end{list}}%
\newcommand{\defsansseriflabel}[1]{\sffamily #1\hfill}%
\newenvironment{ListeSansserif}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\sffamily #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defsansseriflabel}}}%
    {\end{list}}%

%% Boldface Liste

\newcommand{\defbflabel}[1]{\bfseries #1\hfill}%
\newenvironment{bflist}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\bfseries #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defbflabel}}}%
    {\end{list}}%
\newcommand{\defboldfacelabel}[1]{\bfseries #1\hfill}%
\newenvironment{ListeBoldface}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\bfseries #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defboldfacelabel}}}%
    {\end{list}}%

%% Emphasized Liste
\newcommand{\defemlabel}[1]{\emph{#1}\hfill}%
\newenvironment{emlist}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\emph{#1}}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defemlabel}}}%
    {\end{list}}%
\newcommand{\defemphasizelabel}[1]{\emph{#1}\hfill}%
\newenvironment{ListeEmphasize}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\emph{#1}}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defemphasizelabel}}}%
    {\end{list}}%

%% Emphesize-Liste

\newcommand{\defttlabel}[1]{\tt #1\hfill}%
\newenvironment{ttlist}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\tt #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\defttlabel}}}%
    {\end{list}}%
\newcommand{\deftypewriterlabel}[1]{\tt #1\hfill}%
\newenvironment{ListeTypewriter}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\tt #1}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\deftypewriterlabel}}}%
    {\end{list}}%

\newcommand{\deffragelabel}[1]{\raisebox{-2pt}{\includegraphics{bilder/frage.eps}}\hfill}%
\newenvironment{fragelist}[1]%
    {\begin{list}{}%
    {\settowidth{\labelwidth}{\raisebox{-2pt}{\includegraphics{bilder/frage.eps}}}%
    \setlength{\leftmargin}{\labelwidth}%
    \addtolength{\leftmargin}{\labelsep}%
    \renewcommand{\makelabel}{\deffragelabel}}}%
    {\end{list}}%

%% Gleitobjekte 

\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.85}
\renewcommand{\floatpagefraction}{0.80}
\renewcommand{\dbltopfraction}{0.85}
\renewcommand{\dblfloatpagefraction}{0.80}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mathematik
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\D}{\displaystyle}
\newcommand{\T}{\textstyle}
\newcommand{\eps}{\varepsilon}
\newcommand{\kring}{\mathaccent"7017 }
\newcommand{\const}{\mbox{const}}
\newcommand{\Frac}{\D\frac}

\newcommand{\bold}[1]{\mathbf{#1}}
\newcommand{\ab}{\bold{a}}
\newcommand{\bb}{\bold{b}}
\newcommand{\cb}{\bold{c}}
\newcommand{\db}{\bold{d}}
\newcommand{\eb}{\bold{e}}
\newcommand{\fb}{\bold{f}}
\newcommand{\gb}{\bold{g}}
\newcommand{\hb}{\bold{h}}
\newcommand{\ib}{\bold{i}}
\newcommand{\jb}{\bold{j}}
\newcommand{\kb}{\bold{k}}
\newcommand{\lb}{\bold{l}}
\newcommand{\mb}{\bold{m}}
\newcommand{\nb}{\bold{n}}
\newcommand{\ob}{\bold{o}}
\newcommand{\pbb}{\bold{p}}   % '\pb' von LaTeX2e belegt!
\newcommand{\qb}{\bold{q}}
\newcommand{\rb}{\bold{r}}
\newcommand{\sbb}{\bold{s}}   % '\sb' von LaTeX2e belegt!
\newcommand{\tb}{\bold{t}}
\newcommand{\ub}{\bold{u}}
\newcommand{\vbb}{\bold{v}}   % '\vb' von LaTeX2e belegt!
\newcommand{\wb}{\bold{w}}
\newcommand{\xb}{\bold{x}}
\newcommand{\yb}{\bold{y}}
\newcommand{\zb}{\bold{z}}

%% Mathematische Operatoren

\newcommand{\grad}{\mathop{\rm grad}}
\newcommand{\divv}{\mathop{\rm div}}       % '\div' in LaTeX2e belegt !
\newcommand{\rot}{\mathop{\rm rot}}
\newcommand{\Grad}{\mathop{\rm Grad}}
\newcommand{\Div}{\mathop{\rm Div}}
\newcommand{\Rot}{\mathop{\rm Rot}}
\newcommand{\kal}{\mathop{\rm cal}}
\newcommand{\zul}{\mathop{\rm zul}}
\newcommand{\vorh}{\mathop{\rm vorh}}
\newcommand{\rechn}{\mathop{\rm rechn}}
\newcommand{\moegl}{\mathop{\mathrm{mgl}}}
\newcommand{\arccot}{\mathop{\rm arccot}}

%% Physikalische Einheiten

\newcommand{\Pa}{\mbox{ Pa}}
\newcommand{\kPa}{\mbox{ kPa}}
\newcommand{\MPa}{\mbox{ MPa}}
\newcommand{\MNqm}{\mbox{ MN/m$^2$}}

\newcommand{\kN}{\mbox{ kN}}
\newcommand{\MN}{\mbox{ MN}}
\newcommand{\kNm}{\mbox{ kNm}}
\newcommand{\kNqm}{\mbox{ kN/m}^2}
\newcommand{\kNkm}{\mbox{ kN/m}^3}
\newcommand{\kNpm}{\mbox{ kN/m}}

\newcommand{\mm}{\mbox{ mm}}
\newcommand{\cm}{\mbox{ cm}}
\newcommand{\m}{\mbox{ m}}
