% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_create_tags}
\alias{redshift_create_tags}
\title{Adds tags to a cluster}
\usage{
redshift_create_tags(ResourceName, Tags)
}
\arguments{
\item{ResourceName}{[required] The Amazon Resource Name (ARN) to which you want to add the tag or tags.
For example, \code{arn:aws:redshift:us-east-2:123456789:cluster:t1}.}

\item{Tags}{[required] One or more name/value pairs to add as tags to the specified resource.
Each tag name is passed in with the parameter \code{Key} and the
corresponding value is passed in with the parameter \code{Value}. The \code{Key}
and \code{Value} parameters are separated by a comma (,). Separate multiple
tags with a space. For example,
\verb{--tags "Key"="owner","Value"="admin" "Key"="environment","Value"="test" "Key"="version","Value"="1.0"}.}
}
\description{
Adds tags to a cluster.
}
\details{
A resource can have up to 50 tags. If you try to create more than 50
tags for a resource, you will receive an error and the attempt will
fail.

If you specify a key that already exists for the resource, the value for
that key will be updated with the new value.
}
\section{Request syntax}{
\preformatted{svc$create_tags(
  ResourceName = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
