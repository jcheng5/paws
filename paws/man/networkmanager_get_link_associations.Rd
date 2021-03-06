% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkmanager_operations.R
\name{networkmanager_get_link_associations}
\alias{networkmanager_get_link_associations}
\title{Gets the link associations for a device or a link}
\usage{
networkmanager_get_link_associations(GlobalNetworkId, DeviceId, LinkId,
  MaxResults, NextToken)
}
\arguments{
\item{GlobalNetworkId}{[required] The ID of the global network.}

\item{DeviceId}{The ID of the device.}

\item{LinkId}{The ID of the link.}

\item{MaxResults}{The maximum number of results to return.}

\item{NextToken}{The token for the next page of results.}
}
\description{
Gets the link associations for a device or a link. Either the device ID
or the link ID must be specified.
}
\section{Request syntax}{
\preformatted{svc$get_link_associations(
  GlobalNetworkId = "string",
  DeviceId = "string",
  LinkId = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
