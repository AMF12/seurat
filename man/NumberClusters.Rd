% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cluster_determination.R
\name{NumberClusters}
\alias{NumberClusters}
\title{Convert the cluster labels to a numeric representation}
\usage{
NumberClusters(object)
}
\arguments{
\item{object}{Seurat object}
}
\value{
Returns a Seurat object with the identities relabeled numerically
starting from 1.
}
\description{
Convert the cluster labels to a numeric representation
}
\examples{
# Append "Cluster_" to cluster IDs to demonstrate numerical conversion
new.cluster.labels <- paste0("Cluster_", pbmc_small@ident)
pbmc_small <- SetIdent(
  object = pbmc_small,
  cells.use = pbmc_small@cell.names,
  ident.use = new.cluster.labels
)
unique(pbmc_small@ident)
# Now relabel the IDs numerically starting from 1
pbmc_small <- NumberClusters(pbmc_small)
unique(pbmc_small@ident)

}
