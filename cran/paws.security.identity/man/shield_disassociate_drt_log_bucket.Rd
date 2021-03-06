% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shield_operations.R
\name{shield_disassociate_drt_log_bucket}
\alias{shield_disassociate_drt_log_bucket}
\title{Removes the DDoS Response Team's (DRT) access to the specified Amazon S3
bucket containing your AWS WAF logs}
\usage{
shield_disassociate_drt_log_bucket(LogBucket)
}
\arguments{
\item{LogBucket}{[required] The Amazon S3 bucket that contains your AWS WAF logs.}
}
\description{
Removes the DDoS Response Team\'s (DRT) access to the specified Amazon
S3 bucket containing your AWS WAF logs.
}
\details{
To make a \code{DisassociateDRTLogBucket} request, you must be subscribed to
the \href{https://aws.amazon.com/premiumsupport/business-support/}{Business Support plan} or the
\href{https://aws.amazon.com/premiumsupport/enterprise-support/}{Enterprise Support plan}.
However, if you are not subscribed to one of these support plans, but
had been previously and had granted the DRT access to your account, you
can submit a \code{DisassociateDRTLogBucket} request to remove this access.
}
\section{Request syntax}{
\preformatted{svc$disassociate_drt_log_bucket(
  LogBucket = "string"
)
}
}

\keyword{internal}
