% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_export_tasks}
\alias{ec2_describe_export_tasks}
\title{Describes the specified export instance tasks or all of your export
instance tasks}
\usage{
ec2_describe_export_tasks(ExportTaskIds, Filters)
}
\arguments{
\item{ExportTaskIds}{The export task IDs.}

\item{Filters}{the filters for the export tasks.}
}
\description{
Describes the specified export instance tasks or all of your export
instance tasks.
}
\section{Request syntax}{
\preformatted{svc$describe_export_tasks(
  ExportTaskIds = list(
    "string"
  ),
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}
