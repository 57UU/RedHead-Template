% redhead.cls
\ProvidesClass{redhead}[2023/09/10 Red Head Document Class]

% 载入基础类
\LoadClass[12pt]{ctexart}

% 载入需要的宏包
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{ragged2e}
\RequirePackage{geometry}
\RequirePackage{graphicx} % 用于\scalebox
\RequirePackage{fontspec} % 用于设置字体
\RequirePackage{microtype} % 引入微调文本排版的宏包
\RequirePackage[UTF8]{CJKutf8}


% 设置页面尺寸和边距
\geometry{a4paper, left=3cm, right=2.5cm, top=3cm, bottom=2cm}
%设置仿宋
\setCJKmainfont{FangSong} % 设置仿宋字体

% 定义红色
\definecolor{redhead}{RGB}{196, 8, 8}

% 定义红头
% 定义一个命令来设置特定样式的文本，使其在一行上均匀分布
% 定义一个命令来设置特定样式的文本，使其在一行上均匀分布
\newcommand{\redstretchedtext}[1]{%
  \noindent % 确保没有缩进
  \color{red} % 设置颜色为红色
  \noindent
  \scalebox{1}[2]{
    \noindent\begin{minipage}{\linewidth} % 创建一个与行宽相同宽度的minipage
      \fontsize{30pt}{30pt}\songti{ #1}
  \end{minipage}
  }
}



\pagestyle{plain}
% 部门名称
\newcommand{\department}[1]{\gdef\@department{#1}}
% 通知名称
\newcommand{\tongzhi}[1]{\gdef\@tongzhi{#1}}
% 开场白
\newcommand{\opening}[1]{\gdef\@opening{#1}}

\fontsize{14pt}{14pt}

% 自定义标题命令
\renewcommand{\maketitle}{
  %红头
  \noindent\redstretchedtext{\@department}
  \newline
  % 画一根固定长度的红色横线
  % 画两根红色的横线
\noindent\color{red}\rule{\linewidth}{3pt}\\[-2.2ex] % 第一根横线
\noindent\color{red}\rule{\linewidth}{1pt}       % 第二根横线
  \color{black}
  \begin{minipage}{\linewidth} % 创建一个与行宽相同宽度的minipage
    \flushright{
    \fontsize{14pt}{14pt}
    \fangsong{\@tongzhi}
    }
  \end{minipage}
  
  \begin{center}
    \vspace*{1cm}
    \Huge\bfseries\songti\@title \\
  \end{center}

  % 开场白
  \noindent
  \begin{minipage}{\linewidth} % 创建一个与行宽相同宽度的minipage
    \noindent \begin{flushleft}
      \fontsize{14pt}{14pt}
      \noindent\fangsong{\@opening}
    \end{flushleft}{
    }
  \end{minipage}
  \fontsize{14pt}{14pt}
}

\newcommand{\makeend}{
  \begin{flushright}
    \vspace*{1cm}
    \fontsize{14pt}{14pt}
    \@author\\
    \@date
  \end{flushright}
}

% 结束类定义
\endinput
