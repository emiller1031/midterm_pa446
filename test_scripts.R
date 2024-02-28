library(rvest)

url <- "https://www.nytimes.com/topic/subject/elections"
html <- read_html(url)


html |>
  html_elements(".css-1kv6qi e15t083i0") |> html_text2() # title

html |>
  html_element(".css-1pga48a e15t083i1") |> html_text2() # description

html |>
  html_element(".css-1wj8chu") |> html_text2() # date

html |>
  html_elements(".css-1n7hynb") |> html_text2() # author name

