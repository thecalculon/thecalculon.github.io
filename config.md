<!--
Add here global page variables to use throughout your
website.
The website_* must be defined for the RSS to work
-->
<!--
Add here global page variables to use throughout your website.
-->
@def generate_rss = false

@def website_title = "simple"
@def website_descr = "Personal portfolio and blog site by abhishalya"
@def website_url   = "https://thecalculon.github.io/"

@def author = "Vp"


@def mintoclevel = 2

<!--
Add here files or directories that should be ignored by Franklin, otherwise
these files might be copied and, if markdown, processed by Franklin which
you might not want. Indicate directories by ending the name with a `/`.
-->

@def ignore = ["node_modules/" ]

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}

