% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioAnalysis.R
\name{barplotEnrichGO_HC}
\alias{barplotEnrichGO_HC}
\title{A barplot that shows the result of a GO enrichment, using the 
package \code{highcharter}}
\usage{
barplotEnrichGO_HC(ego, maxRes = 5, title = NULL)
}
\arguments{
\item{ego}{The result of the GO enrichment, provides either by the function
\code{enrichGO} in the package \code{DAPAR} or the function \code{enrichGO} 
of the package `clusterProfiler`}

\item{maxRes}{The maximum number of categories to display in the plot}

\item{title}{The title of the plot}
}
\value{
A barplot
}
\description{
A barplot of GO enrichment analysis
}
\author{
Samuel Wieczorek
}
