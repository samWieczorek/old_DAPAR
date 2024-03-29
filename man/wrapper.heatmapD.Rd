% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots_heatmaps.R
\name{wrapper.heatmapD}
\alias{wrapper.heatmapD}
\title{This function is a wrapper to \code{\link{heatmap.2}} that displays 
quantitative data in the \code{Biobase::exprs()} table of an object of
class \code{MSnSet}}
\usage{
wrapper.heatmapD(
  obj,
  distance = "euclidean",
  cluster = "complete",
  dendro = FALSE
)
}
\arguments{
\item{obj}{An object of class \code{MSnSet}.}

\item{distance}{The distance used by the clustering algorithm to compute 
the dendrogram. See \code{help(heatmap.2)}.}

\item{cluster}{the clustering algorithm used to build the dendrogram.
See \code{help(heatmap.2)}}

\item{dendro}{A boolean to indicate fi the dendrogram has to be displayed}
}
\value{
A heatmap
}
\description{
Builds a heatmap of the quantitative proteomic data of a 
\code{MSnSet} object.
}
\examples{
\dontrun{
utils::data(Exp1_R25_pept, package='DAPARdata')
obj <- Exp1_R25_pept[1:10]
level <- obj@experimentData@other$typeOfData
metacell.mask <- match.metacell(GetMetacell(obj), 'missing', level)
indices <- GetIndices_WholeLine(metacell.mask)
wrapper.heatmapD(obj)
}


}
\author{
Alexia Dorffer
}
