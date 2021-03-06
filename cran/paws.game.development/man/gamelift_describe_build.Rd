% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_build}
\alias{gamelift_describe_build}
\title{Retrieves properties for a custom game build}
\usage{
gamelift_describe_build(BuildId)
}
\arguments{
\item{BuildId}{[required] A unique identifier for a build to retrieve properties for. You can use
either the build ID or ARN value.}
}
\description{
Retrieves properties for a custom game build. To request a build
resource, specify a build ID. If successful, an object containing the
build properties is returned.
}
\details{
\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html}{Upload a Custom Server Build}

\strong{Related operations}
\itemize{
\item CreateBuild
\item ListBuilds
\item DescribeBuild
\item UpdateBuild
\item DeleteBuild
}
}
\section{Request syntax}{
\preformatted{svc$describe_build(
  BuildId = "string"
)
}
}

\keyword{internal}
