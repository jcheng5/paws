% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_catalog_import_status}
\alias{glue_get_catalog_import_status}
\title{Retrieves the status of a migration operation}
\usage{
glue_get_catalog_import_status(CatalogId)
}
\arguments{
\item{CatalogId}{The ID of the catalog to migrate. Currently, this should be the AWS
account ID.}
}
\description{
Retrieves the status of a migration operation.
}
\section{Request syntax}{
\preformatted{svc$get_catalog_import_status(
  CatalogId = "string"
)
}
}

\keyword{internal}
