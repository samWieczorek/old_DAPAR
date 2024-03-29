% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioAnalysis.R
\name{group_GO}
\alias{group_GO}
\title{Calculates the GO profile of a vector of genes/proteins at a given 
level of the Gene Ontology}
\usage{
group_GO(data, idFrom, orgdb, ont, level, readable = FALSE)
}
\arguments{
\item{data}{A vector of ID (among ENSEMBL, ENTREZID, GENENAME, REFSEQ, 
UNIGENE, UNIPROT -can be different according to organisms)}

\item{idFrom}{character indicating the input ID format (among ENSEMBL, 
ENTREZID, GENENAME, REFSEQ, UNIGENE, UNIPROT)}

\item{orgdb}{annotation Bioconductor package to use (character format)}

\item{ont}{on which ontology to perform the analysis (MF, BP or CC)}

\item{level}{level of the ontolofy to perform the analysis}

\item{readable}{TRUE or FALSE (default FALSE)}
}
\value{
GO profile at a specific level
}
\description{
This function is a wrappper to the function groupGO from the
package `clusterProfiler`. Given a vector of genes/proteins, 
it returns the GO profile at a specific level. It returns a groupGOResult 
instance.
}
\examples{
\donttest{
utils::data(Exp1_R25_prot, package='DAPARdata')
obj <- Exp1_R25_prot
ggo<-group_GO(data=Biobase::fData(obj)$Protein.IDs, idFrom="UNIPROT", 
orgdb="org.Sc.sgd.db", ont="MF", level=2)
}

}
\author{
Florence Combes
}
