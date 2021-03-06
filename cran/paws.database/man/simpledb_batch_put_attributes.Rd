% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simpledb_operations.R
\name{simpledb_batch_put_attributes}
\alias{simpledb_batch_put_attributes}
\title{The BatchPutAttributes operation creates or replaces attributes within
one or more items}
\usage{
simpledb_batch_put_attributes(DomainName, Items)
}
\arguments{
\item{DomainName}{[required] The name of the domain in which the attributes are being stored.}

\item{Items}{[required] A list of items on which to perform the operation.}
}
\description{
The \code{BatchPutAttributes} operation creates or replaces attributes within
one or more items. By using this operation, the client can perform
multiple PutAttribute operation with a single call. This helps yield
savings in round trips and latencies, enabling Amazon SimpleDB to
optimize requests and generally produce better throughput.
}
\details{
The client may specify the item name with the \code{Item.X.ItemName}
parameter. The client may specify new attributes using a combination of
the \code{Item.X.Attribute.Y.Name} and \code{Item.X.Attribute.Y.Value} parameters.
The client may specify the first attribute for the first item using the
parameters \code{Item.0.Attribute.0.Name} and \code{Item.0.Attribute.0.Value}, and
for the second attribute for the first item by the parameters
\code{Item.0.Attribute.1.Name} and \code{Item.0.Attribute.1.Value}, and so on.

Attributes are uniquely identified within an item by their name/value
combination. For example, a single item can have the attributes
\verb{\\\{ "first_name", "first_value" \\\}} and
\verb{\\\{ "first_name", "second_value" \\\}}. However, it cannot have two
attribute instances where both the \code{Item.X.Attribute.Y.Name} and
\code{Item.X.Attribute.Y.Value} are the same.

Optionally, the requester can supply the \code{Replace} parameter for each
individual value. Setting this value to \code{true} will cause the new
attribute values to replace the existing attribute values. For example,
if an item \code{I} has the attributes \verb{\\\{ 'a', '1' \\\}, \\\{ 'b', '2'\\\}} and
\verb{\\\{ 'b', '3' \\\}} and the requester does a BatchPutAttributes of
\verb{\\\{'I', 'b', '4' \\\}} with the Replace parameter set to true, the final
attributes of the item will be \verb{\\\{ 'a', '1' \\\}} and \verb{\\\{ 'b', '4' \\\}},
replacing the previous values of the \'b\' attribute with the new value.

You cannot specify an empty string as an item or as an attribute name.
The \code{BatchPutAttributes} operation succeeds or fails in its entirety.
There are no partial puts.

This operation is vulnerable to exceeding the maximum URL size when
making a REST request using the HTTP GET method. This operation does not
support conditions using \code{Expected.X.Name}, \code{Expected.X.Value}, or
\code{Expected.X.Exists}.

You can execute multiple \code{BatchPutAttributes} operations and other
operations in parallel. However, large numbers of concurrent
\code{BatchPutAttributes} calls can result in Service Unavailable (503)
responses.

The following limitations are enforced for this operation:
\itemize{
\item 256 attribute name-value pairs per item
\item 1 MB request size
\item 1 billion attributes per domain
\item 10 GB of total user data storage per domain
\item 25 item limit per \code{BatchPutAttributes} operation
}
}
\section{Request syntax}{
\preformatted{svc$batch_put_attributes(
  DomainName = "string",
  Items = list(
    list(
      Name = "string",
      Attributes = list(
        list(
          Name = "string",
          Value = "string",
          Replace = TRUE|FALSE
        )
      )
    )
  )
)
}
}

\keyword{internal}
