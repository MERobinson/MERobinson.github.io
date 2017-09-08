library(bookdown)
unlink('_bookdown_files', recursive = TRUE)

tryCatch(bookdown::render_book('.'), error = function(e) {
    print(e)
    quit(save = "no", status = 100, runLast = FALSE)
    })
