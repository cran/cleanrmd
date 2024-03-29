% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/themes.R
\name{use_cleanrmd}
\alias{use_cleanrmd}
\alias{cleanrmd_theme_dependency}
\title{Use a clean CSS theme from cleanrmd}
\usage{
use_cleanrmd(name = NULL)

cleanrmd_theme_dependency(name = NULL)
}
\arguments{
\item{name}{The name of the theme, see \code{\link[=cleanrmd_themes]{cleanrmd_themes()}} for a list of
available themes. If \code{NULL}, all themes will be loaded with a simple
drop down theme picker.}
}
\value{
\code{use_cleanrmd()} returns an \code{\link[htmltools:tagList]{htmltools::tagList()}} with an
\code{\link[htmltools:htmlDependency]{htmltools::htmlDependency()}}. \code{cleanrmd_theme_dependency()} returns only
the \code{\link[htmltools:htmlDependency]{htmltools::htmlDependency()}}.
}
\description{
Provides a \pkg{cleanrmd} CSS theme using \pkg{htmltools}. You can use this
CSS theme anywhere that HTML dependencies are handled via
\code{\link[htmltools:htmlDependency]{htmltools::htmlDependency()}}, for example in R Markdown or Quarto documents
or in Shiny apps.
}
\section{Functions}{
\itemize{
\item \code{use_cleanrmd()}: Use a clean CSS theme in the current document or app
(general usage)

\item \code{cleanrmd_theme_dependency()}: Use a clean CSS theme dependency (advanced usage)

}}
\section{R Markdown documents}{


In \href{https://rmarkdown.rstudio.com/}{R Markdown} (static or Shiny
prerendered), you should use the \code{\link[=html_document_clean]{html_document_clean()}} output format to
use a cleanrmd theme.

\if{html}{\out{<div class="sourceCode markdown">}}\preformatted{---
output:
  cleanrmd::html_document_clean:
    theme: NULL # or pick a specific theme
    self_contained: false
---
}\if{html}{\out{</div>}}
}

\section{Quarto documents}{


You can also use \pkg{cleanrmd} in \href{https://quarto.org/}{Quarto} documents
or apps (using \code{server: shiny}). You'll need to turn off the themes
provided by Quarto with \code{theme: none} and then call
\code{cleanrmd::use_cleanrmd()} in a code chunk in your document.

\if{html}{\out{<div class="sourceCode markdown">}}\preformatted{---
title: "Untitled"
format:
  html:
    theme: none
#server: shiny
---

```\{r cleanrmd, echo=FALSE\}
cleanrmd::use_cleanrmd("bamboo")
```
}\if{html}{\out{</div>}}
}

\section{Shiny apps}{


In Shiny apps, you'll need to use \code{\link[shiny:bootstrapPage]{shiny::basicPage()}} rather than
\code{\link[shiny:fluidPage]{shiny::fluidPage()}}. Then call \code{use_cleanrmd()} in your app to use a
cleanrmd theme.

\if{html}{\out{<div class="sourceCode r">}}\preformatted{library(shiny)

ui <- shiny::basicPage(
  cleanrmd::use_cleanrmd(),

  h2("Old Faithful Geyser Data"),

  sliderInput(
    "bins",
    "Number of bins:",
    min = 1,
    max = 50,
    value = 30
  ),
  plotOutput("distPlot")
)
}\if{html}{\out{</div>}}
}

\examples{
page <- htmltools::withTags(
  main(
    h2("Small Demo"),
    p("Clean, simple, classy but class-less:"),
    ul(
      li("Works almost anywhere"),
      li("Small and simple"),
      li("Easy to extend"),
      li("Good enough but not perfect")
    )
  )
)

# no styles
if (interactive()) {
  htmltools::browsable(page)
}

# all clean styles
page_clean <- htmltools::tagList(page, use_cleanrmd())
if (interactive()) {
  htmltools::browsable(page_clean)
}

# one clean style
page_water <- htmltools::tagList(page, use_cleanrmd("water"))
if (interactive()) {
  htmltools::browsable(page_water)
}

cleanrmd_theme_dependency("bamboo")
}
