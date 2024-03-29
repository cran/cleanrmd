% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html_document_clean.R
\name{html_document_clean}
\alias{html_document_clean}
\title{Clean Rmarkdown HTML Document}
\usage{
html_document_clean(
  ...,
  theme = "no-class",
  css = NULL,
  toc = FALSE,
  toc_depth = 3,
  title_in_header = TRUE,
  mathjax = NULL,
  use_fontawesome = FALSE,
  fig_width = 10,
  fig_height = 7,
  fig_retina = 2,
  keep_md = FALSE,
  dev = "png",
  highlight = "default",
  pandoc_args = NULL,
  extra_dependencies = NULL,
  md_extensions = NULL,
  self_contained = !is.null(theme)
)
}
\arguments{
\item{...}{Additional function arguments to pass to the base R Markdown HTML
output formatter \code{\link[rmarkdown]{html_document_base}}}

\item{theme}{The class-less CSS theme to use, one of \code{\link[=cleanrmd_themes]{cleanrmd_themes()}}.}

\item{css}{CSS and/or Sass files to include. Files with an extension of .sass
or .scss are compiled to CSS via \code{sass::sass()}. Also, if \code{theme} is a
\code{\link[bslib:bs_theme]{bslib::bs_theme()}} object, Sass code may reference the relevant Bootstrap
Sass variables, functions, mixins, etc.}

\item{toc}{\code{TRUE} to include a table of contents in the output}

\item{toc_depth}{Depth of headers to include in table of contents}

\item{title_in_header}{If \code{TRUE} (default), the title, subtitle, author, and
date are placed in a \verb{<header>} tag. This is semantically correct HTML but
some CSS frameworks work better with this structure than others.}

\item{mathjax}{Include mathjax. The "default" option uses an https URL from a
MathJax CDN. The "local" option uses a local version of MathJax (which is
copied into the output directory). You can pass an alternate URL or pass
\code{NULL} to exclude MathJax entirely.}

\item{use_fontawesome}{Should links to FontAwesome be included in the HTML
document's \verb{<head>}? Only enable if you are including FontAwesome icons in
your HTML document.}

\item{fig_width}{Default width (in inches) for figures}

\item{fig_height}{Default height (in inches) for figures}

\item{fig_retina}{Scaling to perform for retina displays (defaults to 2, which
currently works for all widely used retina displays). Set to \code{NULL} to
prevent retina scaling. Note that this will always be \code{NULL} when
\code{keep_md} is specified (this is because \code{fig_retina} relies on
outputting HTML directly into the markdown document).}

\item{keep_md}{Keep the markdown file generated by knitting.}

\item{dev}{Graphics device to use for figure output (defaults to png)}

\item{highlight}{Syntax highlight engine and style, either a built-in Pandoc
highlighting theme, a theme provided by \pkg{rmarkdown}, or a
\href{https://prismjs.com/index.html}{prismjs} theme (see below). Pass
\code{NULL} to prevent syntax highlighting.

\strong{Pandoc themes.} By default, uses Pandoc's highlighting style. Pandoc's
built-in styles include "tango", "pygments", "kate", "monochrome",
"espresso", "zenburn", "haddock" and "breezedark".

Two custom styles are also included, "arrow", an accessible color scheme,
and "rstudio", which mimics the default IDE theme. Alternatively, supply a
path to a \code{.theme} to use
\href{https://pandoc.org/MANUAL.html#syntax-highlighting}{a custom Pandoc style}.
Note that custom themes require Pandoc 2.0+.

\strong{Prism themes.} To use the \href{https://prismjs.com/index.html}{prismjs}
syntax highlighter, pass one of "prism", "prism-coy", "prism-dark",
"prism-funky", "prism-okaidia", "prism-solarizedlight", "prism-tomorrow",
or "prism-twilight". To use an alternate Prism theme file, pass the URL or
path to the theme's CSS file prefixed with "prism:", e.g.
\code{prism:my-theme.css}. Note that the Prism dependencies are not embedded
into self-contained documents so they will require an active internet
connection to work.}

\item{pandoc_args}{Additional command line options to pass to pandoc}

\item{extra_dependencies}{Extra dependencies as a list of the
\code{html_dependency} class objects typically generated by
\code{\link[htmltools:htmlDependency]{htmltools:htmlDependency()}}.}

\item{md_extensions}{Markdown extensions to be added or removed from the
default definition of R Markdown. See the \code{\link[rmarkdown]{rmarkdown_format}} for
additional details.}

\item{self_contained}{Produce a standalone HTML file with no external
dependencies, using data: URIs to incorporate the contents of linked
scripts, stylesheets, images, and videos. Note that even for self contained
documents MathJax is still loaded externally (this is necessary because of
its size).}
}
\value{
An R Markdown output format that can be used with \verb{output:} in an
\code{.Rmd} or for use with \code{\link[rmarkdown:render]{rmarkdown::render()}}.
}
\description{
Clean HTML documents with R Markdown.
}
\section{MathJax}{
 Note that MathJax is disabled by default to reduce the
overall size of the final document. You can enable MathJax by setting
\code{mathjax = "default"}, see \code{\link[rmarkdown:html_document]{rmarkdown::html_document()}} for more options.
}

\examples{
if (interactive()) {
  html_document_clean()
}

\dontrun{
rmarkdown::render("input.Rmd", html_document_clean())
}

}
\seealso{
\code{\link[=use_cleanrmd]{use_cleanrmd()}} for using cleanrmd themes in places other than in
R Markdown documents
}
