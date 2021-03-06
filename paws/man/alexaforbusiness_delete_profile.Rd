% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_delete_profile}
\alias{alexaforbusiness_delete_profile}
\title{Deletes a room profile by the profile ARN}
\usage{
alexaforbusiness_delete_profile(ProfileArn)
}
\arguments{
\item{ProfileArn}{The ARN of the room profile to delete. Required.}
}
\description{
Deletes a room profile by the profile ARN.
}
\section{Request syntax}{
\preformatted{svc$delete_profile(
  ProfileArn = "string"
)
}
}

\keyword{internal}
