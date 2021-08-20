@def title = " Useful latex hacks"

@def published = "20 August 2021"

@def tags = ["Latex", "Knuth"]


# The preamble

The following snippets will allow to create a text block.

```python
\usepackage{mdframed}   % for framing
\newmdenv[%
linecolor=black,leftmargin=00,%
outerlinewidth=3,
rightmargin=00,
backgroundcolor=gray!30,%
innertopmargin=2pt,%
innerbottommargin=2pt,%
]{shaded}{}

\newmdenv[%
linecolor=black,leftmargin=00,%
outerlinewidth=3,
rightmargin=00,
backgroundcolor=bclr,%
innertopmargin=2pt,%
innerbottommargin=2pt,%
]{notshaded}{}

```

The text blocks needs to be inserted between

```python
  \begin{shaded}
   blocks of text shaded in gray
  \end {shaded}

\begin{notshaded}
 blocks of text inside a text block.
\end {notshaded}

```


# Document

[Gilies](https://castel.dev/) has written an interesting article on how to use inkscape for diagram and have consitent font in the text as well.

```python
\usepackage{import}
\usepackage{xifthen}
\usepackage{pdfpages}
\usepackage{transparent}

\newcommand{\incfig}[1]{%
    \def\svgwidth{\columnwidth}
    \import{}{#1.pdf_tex}
}

```

The figure must be included using the following snippet.

```python

\begin{figure}[ht]
    \centering
    \incfig{drawing-1}
\end{figure}

```

It is assumed that 'drawing-1.pdf<sub>tex</sub>' exist in the current directory. Only catch is that the figure is scaled to fit the width of the page. One can always use import inside the figure preamble itself.

```python

\begin{figure}
    \centering
    \def\svgwidth{0.8\columnwidth}
    \import{}{drawing-1.pdf_tex}
\end{figure}


```

**This is cool**
