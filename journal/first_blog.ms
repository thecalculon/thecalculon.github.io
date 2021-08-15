.\" **** Custom macro definitions *********************************
.\" * Super/subscript
.\" (https://lists.gnu.org/archive/html/groff/2012-07/msg00046.html)
.ds { \v'-0.3m'\\s[\\n[.s]*9u/12u]
.ds } \s0\v'0.3m'
.ds < \v'0.3m'\s[\\n[.s]*9u/12u]
.ds > \s0\v'-0.3m'
.\" * Horizontal line
.de HLINE
.LP
.ce
\l'20'
..
.\" * Syntax highlighting macros
.defcolor aaaaaa rgb #aaaaaa
.defcolor 007020 rgb #007020
.defcolor 902000 rgb #902000
.defcolor 40a070 rgb #40a070
.defcolor 880000 rgb #880000
.defcolor 4070a0 rgb #4070a0
.defcolor bb6688 rgb #bb6688
.defcolor 60a0b0 rgb #60a0b0
.defcolor ba2121 rgb #ba2121
.defcolor 06287e rgb #06287e
.defcolor 19177c rgb #19177c
.defcolor 666666 rgb #666666
.defcolor bc7a00 rgb #bc7a00
.defcolor 7d9029 rgb #7d9029
.defcolor ff0000 rgb #ff0000
.ds KeywordTok \\m[007020]\\f[CB]\\$1\\f[C]\\m[]
.ds DataTypeTok \\m[902000]\\$1\\m[]
.ds DecValTok \\m[40a070]\\$1\\m[]
.ds BaseNTok \\m[40a070]\\$1\\m[]
.ds FloatTok \\m[40a070]\\$1\\m[]
.ds ConstantTok \\m[880000]\\$1\\m[]
.ds CharTok \\m[4070a0]\\$1\\m[]
.ds SpecialCharTok \\m[4070a0]\\$1\\m[]
.ds StringTok \\m[4070a0]\\$1\\m[]
.ds VerbatimStringTok \\m[4070a0]\\$1\\m[]
.ds SpecialStringTok \\m[bb6688]\\$1\\m[]
.ds ImportTok \\$1
.ds CommentTok \\m[60a0b0]\\f[CI]\\$1\\f[C]\\m[]
.ds DocumentationTok \\m[ba2121]\\f[CI]\\$1\\f[C]\\m[]
.ds AnnotationTok \\m[60a0b0]\\f[CBI]\\$1\\f[C]\\m[]
.ds CommentVarTok \\m[60a0b0]\\f[CBI]\\$1\\f[C]\\m[]
.ds OtherTok \\m[007020]\\$1\\m[]
.ds FunctionTok \\m[06287e]\\$1\\m[]
.ds VariableTok \\m[19177c]\\$1\\m[]
.ds ControlFlowTok \\m[007020]\\f[CB]\\$1\\f[C]\\m[]
.ds OperatorTok \\m[666666]\\$1\\m[]
.ds BuiltInTok \\$1
.ds ExtensionTok \\$1
.ds PreprocessorTok \\m[bc7a00]\\$1\\m[]
.ds AttributeTok \\m[7d9029]\\$1\\m[]
.ds RegionMarkerTok \\$1
.ds InformationTok \\m[60a0b0]\\f[CBI]\\$1\\f[C]\\m[]
.ds WarningTok \\m[60a0b0]\\f[CBI]\\$1\\f[C]\\m[]
.ds AlertTok \\m[ff0000]\\f[CB]\\$1\\f[C]\\m[]
.ds ErrorTok \\m[ff0000]\\f[CB]\\$1\\f[C]\\m[]
.ds NormalTok \\$1
.\" **** Settings *************************************************
.\" text width
.nr LL 5.5i
.\" left margin
.nr PO 1.25i
.\" top margin
.nr HM 1.25i
.\" bottom margin
.nr FM 1.25i
.\" header/footer width
.nr LT \n[LL]
.\" point size
.nr PS 10p
.\" line height
.nr VS 12p
.\" font family: A, BM, H, HN, N, P, T, ZCM
.fam P
.\" paragraph indent
.nr PI 0m
.\" interparagraph space
.nr PD 0.4v
.\" footnote width
.nr FL \n[LL]
.\" footnote point size
.nr FPS (\n[PS] - 2000)
.\" color used for strikeout
.defcolor strikecolor rgb 0.7 0.7 0.7
.\" color for links (rgb)
.ds PDFHREF.COLOUR   0.35 0.00 0.60
.\" border for links (default none)
.ds PDFHREF.BORDER   0 0 0
.\" point size difference between heading levels
.nr PSINCR 1p
.\" heading level above which point size no longer changes
.nr GROWPS 2
.\" comment these out if you want a dot after section numbers:
.als SN SN-NO-DOT
.als SN-STYLE SN-NO-DOT
.\" page numbers in footer, centered
.rm CH
.ds CF %
.\" pdf outline fold level
.nr PDFOUTLINE.FOLDLEVEL 3
.\" start out in outline view
.pdfview /PageMode /UseOutlines
.\" ***************************************************************
.\" PDF metadata
.pdfinfo /Title ""
.pdfinfo /Author "Vikash"
.hy
.AU
Vikash
.\" 1 column (use .2C for two column)
.1C
.LP
\[at]def title = \[dq] Franklin to build website\[dq]
.PP
\[at]def published = \[dq]19 August 2021\[dq]
.PP
\[at]def tags = [\[dq]first\[dq], \[dq]try\[dq]]
.PP
\c
.pdfhref W -D "https://franklinjl.org/" -A "\c" \
 -- "Franklin"
\& is a static website generator written in \c
.pdfhref W -D "https://julialang.org/" -A "\c" \
 -- "Julia"
\&.
There exists many other alternatives, like \c
.pdfhref W -D "https://jekyllrb.com/" -A "\c" \
 -- " jekyll"
\& written in \c
.pdfhref W -D "https://www.ruby-lang.org/en/%20" -A "\c" \
 -- "Ruby"
\&, \c
.pdfhref W -D "https://docs.getpelican.com/en/3.6.3/" -A "\c" \
 -- "Pelican"
\& written in Python etc.
I have not invested time in these alternatives to comment.
\c
.pdfhref W -D "https://franklinjl.org/" -A "\c" \
 -- "Franklin"
\& has an extensive documentation and if all the instructions are
followed correctly one should be able to set a nice looking website.
I basically chose the \c
.pdfhref W -D "https://tlienart.github.io/FranklinTemplates.jl/templates/minimal-mistakes/index.html" -A "\c" \
 -- "minimal-mistakes"
\& temple.
The snapshot shows the basic web-page which I was able to make.
.PP
[IMAGE: ]
.PP
The idea is simple.
Inside the folder there will be several markdown files, and the contents
of each file is compiled as a html files and appear as a webpage.
All the hard work is handled by the \c
.pdfhref W -D "https://franklin.org" -A "\c" \
 -- "Franklin"
\& and the user are only supposed to edit the markdown files.
.SH 1
Emacs as an editor
.pdfhref O 1 "Emacs as an editor"
.pdfhref M "emacs-as-an-editor"
.LP
I use \c
.pdfhref W -D "https://www.gnu.org/software/emacs/" -A "\c" \
 -- "emacs"
\& for almost all my daily work, form reading \c
.pdfhref W -D "https://www.emacswiki.org/emacs/mu4e" -A "\c" \
 -- "mail"
\& to browsing through different \c
.pdfhref W -D "https://github.com/skeeto/elfeed" -A "\c" \
 -- "rss feeds"
\&.
Sometimes I also edit my texts files using emacs.
It is most convinient for me to edit the markdown files directly using
emacs (easy approach) or use the org markdown to write the blog and
convert them into markdown (.md) (hard approach).
Clearly being a stupid guy who always like the tedious path, I chose the
latter.
.SH 2
Caveats
.pdfhref O 2 "Caveats"
.pdfhref M "caveats"
.LP
If you are an avid emacs user, then mapping the caps lock to control
often helps the little finger.
The best way is to use the \f[C]Xmodmap\f[R] or \f[C]setxkbmap\f[R].
I do so using the \f[C]setxkbmap\f[R] with the command
.IP
.nf
\f[C]
setxkbmap -option ctrl:nocaps
\f[]
.fi
.LP
To revert one can always run \f[C]setxkbmap  -option\f[R].
.PP
Another caveats to note is that the embedded links are hidden in the
org-mode.
For instance \f[C][[https://google.com][google site]]\f[R] appear as \c
.pdfhref W -D "https://google.com" -A "\c" \
 -- "google site"
\&, without the brackets.
This can be annoying sometimes while editin.
To change, use the command \f[C]M-x
visible-mode ret\f[R]
.SH 1
Why org?
.pdfhref O 1 "Why org?"
.pdfhref M "why-org"
.LP
The answer to the question is because org-markdown has many extra
features compared to github-markdown.
The most notable being the fact that the code blocks can be executed
with \f[C]C-c C-c\f[R] (org-babel).
Since I claimed something big, I believe a demonstration is in order.
Following python code block results in an inline figure
.IP
.nf
\f[C]
\*[ImportTok "import"]\*[NormalTok " numpy "]\*[ImportTok "as"]\*[NormalTok " np"]
\*[ImportTok "import"]\*[NormalTok " matplotlib.pyplot "]\*[ImportTok "as"]\*[NormalTok " plt"]
\*[NormalTok "x "]\*[OperatorTok "="]\*[NormalTok " np.arange("]\*[DecValTok "0"]\*[NormalTok ","]\*[DecValTok "2"]\*[OperatorTok "*"]\*[NormalTok "np.pi, "]\*[FloatTok "0.2"]\*[NormalTok ")"]
\*[NormalTok "fig, ax "]\*[OperatorTok "="]\*[NormalTok " plt.subplots()"]
\*[NormalTok "ax.plot[](x, np.sin(x), "]\*[StringTok "\[aq]-b\[aq]"]\*[NormalTok ")"]
\*[NormalTok "fig.savefig("]\*[StringTok "\[aq]sine.png\[aq]"]\*[NormalTok ", bbox_inches"]\*[OperatorTok "="]\*[StringTok "\[aq]tight\[aq]"]\*[NormalTok ", dpi"]\*[OperatorTok "="]\*[DecValTok "200"]\*[NormalTok ")"]
\*[ControlFlowTok "return"]\*[NormalTok " "]\*[StringTok "\[dq]/journal/sine.png\[dq]"]
\f[]
.fi
.LP
Just remember to begin the source block as \f[C]#+begin_src python
:exports both :results file\f[R]
.SH 2
Issue with org-md-export-to-markdown
.pdfhref O 2 "Issue with org-md-export-to-markdown"
.pdfhref M "issue-with-org-md-export-to-markdown"
.LP
The org-document created by you can be converted with the command
\f[C]M-x org-md-export-to-markdown\f[R].
However the issue one faces is that the title of the source blocks
\f[C]#+begin_src python\f[R] gets exported to \f[C]{.python}\f[R]
instead of \f[C]python\f[R].
One way to resolve is install the package org-pandoc
.SH 1
Writing org-markdown
.pdfhref O 1 "Writing org-markdown"
.pdfhref M "writing-org-markdown"
.IP
.nf
\f[C]
\*[NormalTok "#+OPTIONS: toc:nil        (no default TOC at all)"]
\*[NormalTok "#+OPTIONS: tex:t"]
\*[NormalTok "#+MACRO: nl    src_emacs-lisp[:results raw]{"]\*[StringTok "\[dq]"]\*[SpecialCharTok "\[rs]n\[rs]n"]\*[StringTok "\[dq]"]\*[NormalTok "}"]
\*[NormalTok "(visible-mode "]\*[DecValTok "1"]\*[NormalTok ")"]
\f[]
.fi
.pdfsync
