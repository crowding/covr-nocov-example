#' @export
switch_fn <- function(...) {
  branches <- alist(...) # nocov start
  eval(bquote(splice=TRUE, function(x) {
    switch(x,
           secret="huge",
           ..(branches), # nocov
           stop("no defaults allowed"))
  })) # nocov end
}

#' @export
another_fn <- function() {
  function(x) {
    switch(x,
           one="small",
           two="medium",
           three="large",
           secret="huge",
           stop("no defaults!"))
  }
}
