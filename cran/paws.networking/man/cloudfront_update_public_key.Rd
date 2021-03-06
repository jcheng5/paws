% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_update_public_key}
\alias{cloudfront_update_public_key}
\title{Update public key information}
\usage{
cloudfront_update_public_key(PublicKeyConfig, Id, IfMatch)
}
\arguments{
\item{PublicKeyConfig}{[required] Request to update public key information.}

\item{Id}{[required] ID of the public key to be updated.}

\item{IfMatch}{The value of the \code{ETag} header that you received when retrieving the
public key to update. For example: \code{E2QWRUHAPOMQZL}.}
}
\description{
Update public key information. Note that the only value you can change
is the comment.
}
\section{Request syntax}{
\preformatted{svc$update_public_key(
  PublicKeyConfig = list(
    CallerReference = "string",
    Name = "string",
    EncodedKey = "string",
    Comment = "string"
  ),
  Id = "string",
  IfMatch = "string"
)
}
}

\keyword{internal}
