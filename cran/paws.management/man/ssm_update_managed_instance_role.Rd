% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_update_managed_instance_role}
\alias{ssm_update_managed_instance_role}
\title{Changes the Amazon Identity and Access Management (IAM) role that is
assigned to the on-premises instance or virtual machines (VM)}
\usage{
ssm_update_managed_instance_role(InstanceId, IamRole)
}
\arguments{
\item{InstanceId}{[required] The ID of the managed instance where you want to update the role.}

\item{IamRole}{[required] The IAM role you want to assign or change.}
}
\description{
Changes the Amazon Identity and Access Management (IAM) role that is
assigned to the on-premises instance or virtual machines (VM). IAM roles
are first assigned to these hybrid instances during the activation
process. For more information, see CreateActivation.
}
\section{Request syntax}{
\preformatted{svc$update_managed_instance_role(
  InstanceId = "string",
  IamRole = "string"
)
}
}

\keyword{internal}
