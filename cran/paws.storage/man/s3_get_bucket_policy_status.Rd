% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_policy_status}
\alias{s3_get_bucket_policy_status}
\title{Retrieves the policy status for an Amazon S3 bucket, indicating whether
the bucket is public}
\usage{
s3_get_bucket_policy_status(Bucket)
}
\arguments{
\item{Bucket}{[required] The name of the Amazon S3 bucket whose policy status you want to
retrieve.}
}
\description{
Retrieves the policy status for an Amazon S3 bucket, indicating whether
the bucket is public. In order to use this operation, you must have the
\code{s3:GetBucketPolicyStatus} permission. For more information about Amazon
S3 permissions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html}{Specifying Permissions in a Policy}.
}
\details{
For more information about when Amazon S3 considers a bucket public, see
\href{https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status}{The Meaning of \"Public\"}.

The following operations are related to \code{GetBucketPolicyStatus}:
\itemize{
\item \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html}{Using Amazon S3 Block Public Access}
\item GetPublicAccessBlock
\item PutPublicAccessBlock
\item DeletePublicAccessBlock
}
}
\section{Request syntax}{
\preformatted{svc$get_bucket_policy_status(
  Bucket = "string"
)
}
}

\keyword{internal}
