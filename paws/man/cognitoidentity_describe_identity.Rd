% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentity_operations.R
\name{cognitoidentity_describe_identity}
\alias{cognitoidentity_describe_identity}
\title{Returns metadata related to the given identity, including when the
identity was created and any associated linked logins}
\usage{
cognitoidentity_describe_identity(IdentityId)
}
\arguments{
\item{IdentityId}{[required] A unique identifier in the format REGION:GUID.}
}
\description{
Returns metadata related to the given identity, including when the
identity was created and any associated linked logins.
}
\details{
You must use AWS Developer credentials to call this API.
}
\section{Request syntax}{
\preformatted{svc$describe_identity(
  IdentityId = "string"
)
}
}

\keyword{internal}
