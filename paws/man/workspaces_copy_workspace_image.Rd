% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspaces_operations.R
\name{workspaces_copy_workspace_image}
\alias{workspaces_copy_workspace_image}
\title{Copies the specified image from the specified Region to the current
Region}
\usage{
workspaces_copy_workspace_image(Name, Description, SourceImageId,
  SourceRegion, Tags)
}
\arguments{
\item{Name}{[required] The name of the image.}

\item{Description}{A description of the image.}

\item{SourceImageId}{[required] The identifier of the source image.}

\item{SourceRegion}{[required] The identifier of the source Region.}

\item{Tags}{The tags for the image.}
}
\description{
Copies the specified image from the specified Region to the current
Region.
}
\section{Request syntax}{
\preformatted{svc$copy_workspace_image(
  Name = "string",
  Description = "string",
  SourceImageId = "string",
  SourceRegion = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
