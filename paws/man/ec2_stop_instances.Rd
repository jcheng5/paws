% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_stop_instances}
\alias{ec2_stop_instances}
\title{Stops an Amazon EBS-backed instance}
\usage{
ec2_stop_instances(InstanceIds, Hibernate, DryRun, Force)
}
\arguments{
\item{InstanceIds}{[required] The IDs of the instances.}

\item{Hibernate}{Hibernates the instance if the instance was enabled for hibernation at
launch. If the instance cannot hibernate successfully, a normal shutdown
occurs. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html}{Hibernate your instance}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

Default: \code{false}}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Force}{Forces the instances to stop. The instances do not have an opportunity
to flush file system caches or file system metadata. If you use this
option, you must perform file system check and repair procedures. This
option is not recommended for Windows instances.

Default: \code{false}}
}
\description{
Stops an Amazon EBS-backed instance.
}
\details{
You can use the Stop action to hibernate an instance if the instance is
\href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#enabling-hibernation}{enabled for hibernation}
and it meets the \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites}{hibernation prerequisites}.
For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html}{Hibernate your instance}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

We don\'t charge usage for a stopped instance, or data transfer fees;
however, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage.
Every time you start your Windows instance, Amazon EC2 charges you for a
full instance hour. If you stop and restart your Windows instance, a new
instance hour begins and Amazon EC2 charges you for another full
instance hour even if you are still within the same 60-minute period
when it was stopped. Every time you start your Linux instance, Amazon
EC2 charges a one-minute minimum for instance usage, and thereafter
charges per second for instance usage.

You can\'t stop or hibernate instance store-backed instances. You can\'t
use the Stop action to hibernate Spot Instances, but you can specify
that Amazon EC2 should hibernate Spot Instances when they are
interrupted. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#hibernate-spot-instances}{Hibernating interrupted Spot Instances}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

When you stop or hibernate an instance, we shut it down. You can restart
your instance at any time. Before stopping or hibernating an instance,
make sure it is in a state from which it can be restarted. Stopping an
instance does not preserve data stored in RAM, but hibernating an
instance does preserve data stored in RAM. If an instance cannot
hibernate successfully, a normal shutdown occurs.

Stopping and hibernating an instance is different to rebooting or
terminating it. For example, when you stop or hibernate an instance, the
root device and any other devices attached to the instance persist. When
you terminate an instance, the root device and any other devices
attached during the instance launch are automatically deleted. For more
information about the differences between rebooting, stopping,
hibernating, and terminating instances, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html}{Instance lifecycle}
in the \emph{Amazon Elastic Compute Cloud User Guide}.

When you stop an instance, we attempt to shut it down forcibly after a
short while. If your instance appears stuck in the stopping state after
a period of time, there may be an issue with the underlying host
computer. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html}{Troubleshooting stopping your instance}
in the \emph{Amazon Elastic Compute Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$stop_instances(
  InstanceIds = list(
    "string"
  ),
  Hibernate = TRUE|FALSE,
  DryRun = TRUE|FALSE,
  Force = TRUE|FALSE
)
}
}

\examples{
\dontrun{
# This example stops the specified EC2 instance.
svc$stop_instances(
  InstanceIds = list(
    "i-1234567890abcdef0"
  )
)
}

}
\keyword{internal}
