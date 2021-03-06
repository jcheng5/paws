% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_put_resource_policy}
\alias{glue_put_resource_policy}
\title{Sets the Data Catalog resource policy for access control}
\usage{
glue_put_resource_policy(PolicyInJson, ResourceArn, PolicyHashCondition,
  PolicyExistsCondition, EnableHybrid)
}
\arguments{
\item{PolicyInJson}{[required] Contains the policy document to set, in JSON format.}

\item{ResourceArn}{The ARN of the AWS Glue resource for the resource policy to be set. For
more information about AWS Glue resource ARNs, see the \href{https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id}{AWS Glue ARN string pattern}}

\item{PolicyHashCondition}{The hash value returned when the previous policy was set using
\code{PutResourcePolicy}. Its purpose is to prevent concurrent modifications
of a policy. Do not use this parameter if no previous policy has been
set.}

\item{PolicyExistsCondition}{A value of \code{MUST_EXIST} is used to update a policy. A value of
\code{NOT_EXIST} is used to create a new policy. If a value of \code{NONE} or a
null value is used, the call will not depend on the existence of a
policy.}

\item{EnableHybrid}{Allows you to specify if you want to use both resource-level and
account/catalog-level resource policies. A resource-level policy is a
policy attached to an individual resource such as a database or a table.

The default value of \code{NO} indicates that resource-level policies cannot
co-exist with an account-level policy. A value of \code{YES} means the use of
both resource-level and account/catalog-level resource policies is
allowed.}
}
\description{
Sets the Data Catalog resource policy for access control.
}
\section{Request syntax}{
\preformatted{svc$put_resource_policy(
  PolicyInJson = "string",
  ResourceArn = "string",
  PolicyHashCondition = "string",
  PolicyExistsCondition = "MUST_EXIST"|"NOT_EXIST"|"NONE",
  EnableHybrid = "TRUE"|"FALSE"
)
}
}

\keyword{internal}
