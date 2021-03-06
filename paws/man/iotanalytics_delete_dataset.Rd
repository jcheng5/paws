% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_delete_dataset}
\alias{iotanalytics_delete_dataset}
\title{Deletes the specified data set}
\usage{
iotanalytics_delete_dataset(datasetName)
}
\arguments{
\item{datasetName}{[required] The name of the data set to delete.}
}
\description{
Deletes the specified data set.
}
\details{
You do not have to delete the content of the data set before you perform
this operation.
}
\section{Request syntax}{
\preformatted{svc$delete_dataset(
  datasetName = "string"
)
}
}

\keyword{internal}
