% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_detach_disk}
\alias{lightsail_detach_disk}
\title{Detaches a stopped block storage disk from a Lightsail instance}
\usage{
lightsail_detach_disk(diskName)
}
\arguments{
\item{diskName}{[required] The unique name of the disk you want to detach from your instance (e.g.,
\code{my-disk}).}
}
\description{
Detaches a stopped block storage disk from a Lightsail instance. Make
sure to unmount any file systems on the device within your operating
system before stopping the instance and detaching the disk.
}
\details{
The \verb{detach disk} operation supports tag-based access control via
resource tags applied to the resource identified by \verb{disk name}. For
more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Request syntax}{
\preformatted{svc$detach_disk(
  diskName = "string"
)
}
}

\keyword{internal}
