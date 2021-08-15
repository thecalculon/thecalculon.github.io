@def title = " Franklin to build website"

@def published = "19 August 2021"

@def tags = ["first", "try"]

[Franklin](https://franklinjl.org/) is a static website generator written in [Julia](https://julialang.org/). There exists many other alternatives, like [ jekyll](https://jekyllrb.com/) written in [Ruby](https://www.ruby-lang.org/en/ ), [Pelican](https://docs.getpelican.com/en/3.6.3/) written in Python etc. I have not invested time in these alternatives to comment. [Franklin](https://franklinjl.org/) has an extensive documentation and if all the instructions are followed correctly one should be able to set a nice looking website. I basically chose the [minimal-mistakes](https://tlienart.github.io/FranklinTemplates.jl/templates/minimal-mistakes/index.html) temple. The snapshot shows the basic web-page which I was able to make.

![img](/journal/snap_minimal.png)

The idea is simple. Inside the folder there will be several markdown files, and the contents of each file is compiled as a html files and appear as a webpage. All the hard work is handled by the [Franklin](https://franklin.org) and the user are only supposed to edit the markdown files.


# Emacs as an editor

I use [emacs](https://www.gnu.org/software/emacs/) for almost all my daily work, form reading [mail](https://www.emacswiki.org/emacs/mu4e) to browsing through different [rss feeds](https://github.com/skeeto/elfeed). Sometimes I also edit my texts files using emacs. It is most convinient for me to edit the markdown files directly using emacs (easy approach) or use the org markdown to write the blog and convert them into markdown (.md) (hard approach). Clearly being a stupid guy who always like the tedious path, I chose the latter.


## Caveats

If you are an avid emacs user, then mapping the caps lock to control often helps the little finger. The best way is to use the `Xmodmap` or `setxkbmap`. I do so using the `setxkbmap` with the command

```shell
setxkbmap -option ctrl:nocaps
```

To revert one can always run `setxkbmap -option`.

Another caveats to note is that the embedded links are hidden in the org-mode. For instance `[[https://google.com][google site]]` appear as [google site](https://google.com), without the brackets. This can be annoying sometimes while editin. To change, use the command `M-x visible-mode ret`


# Why org?

The answer to the question is because org-markdown has many extra features compared to github-markdown. The most notable being the fact that the code blocks can be executed with `C-c C-c` (org-babel). Since I claimed something big, I believe a demonstration is in order. Following python code block results in an inline figure

```python

import numpy as np
import matplotlib.pyplot as plt
x = np.arange(0,2*np.pi, 0.2)
fig, ax = plt.subplots()
ax.plot(x, np.sin(x), '-b')
fig.savefig('sine.png', bbox_inches='tight', dpi=200)
return "/journal/sine.png"

```

![img](/journal/sine.png)

Just remember to begin the source block as `#+begin_src python :exports both :results file`


## Issue with org-md-export-to-markdown

The org-document created by you can be converted to the github flavoured markdown with the command `M-x org-md-export-to-markdown`. However the issue one faces is that the title of the source blocks `#+begin_src python` gets exported to `{.python}` instead of `python`. One way to resolve is install the package [ox-pandoc](https://github.com/kawabata/ox-pandoc) and use the command `org-pandoc-export-to-markdown_mmd`. The alternative command `org-gfm-convert-to-markdown` from [ox-gfm](https://github.com/larstvei/ox-gfm) works as well.

Since I don'want the table of contents in my page, and also I want to put some math in some of the pages, I put the following headers in the header file.

```emacs-lisp

#+OPTIONS: toc:nil        (no default TOC at all)
#+OPTIONS: tex:t

```


# Work Flow

The my work-flow of writing the blog goes

-   Open a blank document `blog_crazy_head_stuff.org` in emacs.
-   Write all the crazy stuff that goes in my head.
-   Convert the org-document into git flavoured markdown using `M-x org-gfm-export-to-markdown`.
-   Git push the crazy stuff from my head, doucmented in `blog_crazy_head_stuff.md` and reap the inexistential benefits.
