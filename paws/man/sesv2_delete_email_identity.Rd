% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_delete_email_identity}
\alias{sesv2_delete_email_identity}
\title{Deletes an email identity}
\usage{
sesv2_delete_email_identity(EmailIdentity)
}
\arguments{
\item{EmailIdentity}{[required] The identity (that is, the email address or domain) that you want to
delete.}
}
\description{
Deletes an email identity. An identity can be either an email address or
a domain name.
}
\section{Request syntax}{
\preformatted{svc$delete_email_identity(
  EmailIdentity = "string"
)
}
}

\keyword{internal}
