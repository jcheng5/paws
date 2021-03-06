% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mediastore_operations.R
\name{mediastore_get_metric_policy}
\alias{mediastore_get_metric_policy}
\title{Returns the metric policy for the specified container}
\usage{
mediastore_get_metric_policy(ContainerName)
}
\arguments{
\item{ContainerName}{[required] The name of the container that is associated with the metric policy.}
}
\description{
Returns the metric policy for the specified container.
}
\section{Request syntax}{
\preformatted{svc$get_metric_policy(
  ContainerName = "string"
)
}
}

\keyword{internal}
