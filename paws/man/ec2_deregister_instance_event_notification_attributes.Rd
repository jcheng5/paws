% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_deregister_instance_event_notification_attributes}
\alias{ec2_deregister_instance_event_notification_attributes}
\title{Deregisters tag keys to prevent tags that have the specified tag keys
from being included in scheduled event notifications for resources in
the Region}
\usage{
ec2_deregister_instance_event_notification_attributes(DryRun,
  InstanceTagAttribute)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{InstanceTagAttribute}{Information about the tag keys to deregister.}
}
\description{
Deregisters tag keys to prevent tags that have the specified tag keys
from being included in scheduled event notifications for resources in
the Region.
}
\section{Request syntax}{
\preformatted{svc$deregister_instance_event_notification_attributes(
  DryRun = TRUE|FALSE,
  InstanceTagAttribute = list(
    IncludeAllTagsOfInstance = TRUE|FALSE,
    InstanceTagKeys = list(
      "string"
    )
  )
)
}
}

\keyword{internal}
