% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eventbridge_operations.R
\name{eventbridge_delete_rule}
\alias{eventbridge_delete_rule}
\title{Deletes the specified rule}
\usage{
eventbridge_delete_rule(Name, EventBusName, Force)
}
\arguments{
\item{Name}{[required] The name of the rule.}

\item{EventBusName}{The event bus associated with the rule. If you omit this, the default
event bus is used.}

\item{Force}{If this is a managed rule, created by an AWS service on your behalf, you
must specify \code{Force} as \code{True} to delete the rule. This parameter is
ignored for rules that are not managed rules. You can check whether a
rule is a managed rule by using \code{DescribeRule} or \code{ListRules} and
checking the \code{ManagedBy} field of the response.}
}
\description{
Deletes the specified rule.
}
\details{
Before you can delete the rule, you must remove all targets, using
RemoveTargets.

When you delete a rule, incoming events might continue to match to the
deleted rule. Allow a short period of time for changes to take effect.

Managed rules are rules created and managed by another AWS service on
your behalf. These rules are created by those other AWS services to
support functionality in those services. You can delete these rules
using the \code{Force} option, but you should do so only if you are sure the
other service is not still using that rule.
}
\section{Request syntax}{
\preformatted{svc$delete_rule(
  Name = "string",
  EventBusName = "string",
  Force = TRUE|FALSE
)
}
}

\keyword{internal}
