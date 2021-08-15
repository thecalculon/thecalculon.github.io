<!--
Add here global page variables to use throughout your
website.
The website_* must be defined for the RSS to work
-->
<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Vikash Pandey"
mintoclevel = 2

<!--
Add here files or directories that should be ignored by Franklin, otherwise
these files might be copied and, if markdown, processed by Franklin which
you might not want. Indicate directories by ending the name with a `/`.
-->

ignore = ["node_modules/" ]

<!--
# RSS (the website_{title, descr, url} must be defined to get RSS)
-->
generate_rss = true
website_title = "Personal website"
website_descr = "Example website using Franklin"
website_url   = "https://thecalculon.github.io/"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}

