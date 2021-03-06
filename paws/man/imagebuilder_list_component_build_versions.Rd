% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imagebuilder_operations.R
\name{imagebuilder_list_component_build_versions}
\alias{imagebuilder_list_component_build_versions}
\title{Returns the list of component build versions for the specified semantic
version}
\usage{
imagebuilder_list_component_build_versions(componentVersionArn,
  maxResults, nextToken)
}
\arguments{
\item{componentVersionArn}{[required] The component version Amazon Resource Name (ARN) whose versions you want
to list.}

\item{maxResults}{The maximum items to return in a request.}

\item{nextToken}{A token to specify where to start paginating. This is the NextToken from
a previously truncated response.}
}
\description{
Returns the list of component build versions for the specified semantic
version.
}
\section{Request syntax}{
\preformatted{svc$list_component_build_versions(
  componentVersionArn = "string",
  maxResults = 123,
  nextToken = "string"
)
}
}

\keyword{internal}
