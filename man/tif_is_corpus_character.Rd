% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validators.R
\name{tif_is_corpus_character}
\alias{tif_is_corpus_character}
\title{Validate Corpus Character Vector Object}
\usage{
tif_is_corpus_character(corpus, warn = FALSE)
}
\arguments{
\item{corpus}{a corpus object to test for validity}

\item{warn}{logical. Should the function produce a
verbose warning for the condition for which
the validation fails. Useful for testing.}
}
\value{
a logical vector of length one indicating
               whether the input is a valid corpus
}
\description{
A valid character vector corpus object is an character
vector with UTF-8 encoding. If it has names, this should
be a unique character also in UTF-8 encoding. No other
attributes should be present.
}
\details{
The tests are run sequentially and the function returns,
with a warning if the warn flag is set, on the first test
that fails. We use this implementation because some tests
may fail entirely or be meaningless if the prior ones are
note passed.
}
\examples{
corpus <- c("Aujourd'hui, maman est morte.",
            "It was a pleasure to burn.",
            "All this happened, more or less.")

tif_is_corpus_character(corpus)

names(corpus) <- c("Camus", "Bradbury", "Vonnegut")
tif_is_corpus_character(corpus)
}
