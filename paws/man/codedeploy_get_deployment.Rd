% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codedeploy_operations.R
\name{codedeploy_get_deployment}
\alias{codedeploy_get_deployment}
\title{Gets information about a deployment}
\usage{
codedeploy_get_deployment(deploymentId)
}
\arguments{
\item{deploymentId}{[required] The unique ID of a deployment associated with the IAM user or AWS
account.}
}
\description{
Gets information about a deployment.
}
\details{
The \code{content} property of the \code{appSpecContent} object in the returned
revision is always null. Use \code{GetApplicationRevision} and the \code{sha256}
property of the returned \code{appSpecContent} object to get the content of
the deployment's AppSpec file.
}
\section{Request syntax}{
\preformatted{svc$get_deployment(
  deploymentId = "string"
)
}
}

\keyword{internal}
