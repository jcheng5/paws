% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_delete_event}
\alias{frauddetector_delete_event}
\title{Deletes the specified event}
\usage{
frauddetector_delete_event(eventId)
}
\arguments{
\item{eventId}{[required] The ID of the event to delete.}
}
\description{
Deletes the specified event.
}
\section{Request syntax}{
\preformatted{svc$delete_event(
  eventId = "string"
)
}
}

\keyword{internal}
