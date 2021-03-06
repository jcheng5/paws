% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_delete_v2_logging_level}
\alias{iot_delete_v2_logging_level}
\title{Deletes a logging level}
\usage{
iot_delete_v2_logging_level(targetType, targetName)
}
\arguments{
\item{targetType}{[required] The type of resource for which you are configuring logging. Must be
\code{THING_Group}.}

\item{targetName}{[required] The name of the resource for which you are configuring logging.}
}
\description{
Deletes a logging level.
}
\section{Request syntax}{
\preformatted{svc$delete_v2_logging_level(
  targetType = "DEFAULT"|"THING_GROUP",
  targetName = "string"
)
}
}

\keyword{internal}
