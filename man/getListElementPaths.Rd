% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getListElementPaths.R
\name{getListElementPaths}
\alias{getListElementPaths}
\title{Get paths to all terminal list elements as a character vector}
\usage{
getListElementPaths(lst, top = ".", level = "", verbose = TRUE)
}
\arguments{
\item{lst}{- list of interest}

\item{top}{- dummy for recursion}

\item{level}{- dummy for recursion}

\item{verbose}{- flag (T/F) to print diagnostic output}
}
\value{
character vector with paths to each non-NULL terminal element of the list, in unix format
}
\description{
Function to get paths to all terminal list elements as a character vector.
}
\details{
None
}
