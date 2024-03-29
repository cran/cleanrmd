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
