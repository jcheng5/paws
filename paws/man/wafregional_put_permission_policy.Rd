% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafregional_operations.R
\name{wafregional_put_permission_policy}
\alias{wafregional_put_permission_policy}
\title{This is AWS WAF CLASSIC documentation}
\usage{
wafregional_put_permission_policy(ResourceArn, Policy)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the RuleGroup to which you want to
attach the policy.}

\item{Policy}{[required] The policy to attach to the specified RuleGroup.}
}
\description{
This is \strong{AWS WAF Classic} documentation. For more information, see
\href{https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html}{AWS WAF Classic}
in the developer guide.
}
\details{
\strong{For the latest version of AWS WAF}, use the AWS WAFV2 API and see the
\href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Attaches an IAM policy to the specified resource. The only supported use
for this action is to share a RuleGroup across accounts.

The \code{PutPermissionPolicy} is subject to the following restrictions:
\itemize{
\item You can attach only one policy with each \code{PutPermissionPolicy}
request.
\item The policy must include an \code{Effect}, \code{Action} and \code{Principal}.
\item \code{Effect} must specify \code{Allow}.
\item The \code{Action} in the policy must be \code{waf:UpdateWebACL},
\code{waf-regional:UpdateWebACL}, \code{waf:GetRuleGroup} and
\code{waf-regional:GetRuleGroup} . Any extra or wildcard actions in the
policy will be rejected.
\item The policy cannot include a \code{Resource} parameter.
\item The ARN in the request must be a valid WAF RuleGroup ARN and the
RuleGroup must exist in the same region.
\item The user making the request must be the owner of the RuleGroup.
\item Your policy must be composed using IAM Policy version 2012-10-17.
}

For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html}{IAM Policies}.

An example of a valid policy parameter is shown in the Examples section
below.
}
\section{Request syntax}{
\preformatted{svc$put_permission_policy(
  ResourceArn = "string",
  Policy = "string"
)
}
}

\keyword{internal}
