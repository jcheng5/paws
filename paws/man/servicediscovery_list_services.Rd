% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicediscovery_operations.R
\name{servicediscovery_list_services}
\alias{servicediscovery_list_services}
\title{Lists summary information for all the services that are associated with
one or more specified namespaces}
\usage{
servicediscovery_list_services(NextToken, MaxResults, Filters)
}
\arguments{
\item{NextToken}{For the first \code{ListServices} request, omit this value.

If the response contains \code{NextToken}, submit another \code{ListServices}
request to get the next group of results. Specify the value of
\code{NextToken} from the previous response in the next request.

AWS Cloud Map gets \code{MaxResults} services and then filters them based on
the specified criteria. It\'s possible that no services in the first
\code{MaxResults} services matched the specified criteria but that subsequent
groups of \code{MaxResults} services do contain services that match the
criteria.}

\item{MaxResults}{The maximum number of services that you want AWS Cloud Map to return in
the response to a \code{ListServices} request. If you don\'t specify a value
for \code{MaxResults}, AWS Cloud Map returns up to 100 services.}

\item{Filters}{A complex type that contains specifications for the namespaces that you
want to list services for.

If you specify more than one filter, an operation must match all filters
to be returned by \code{ListServices}.}
}
\description{
Lists summary information for all the services that are associated with
one or more specified namespaces.
}
\section{Request syntax}{
\preformatted{svc$list_services(
  NextToken = "string",
  MaxResults = 123,
  Filters = list(
    list(
      Name = "NAMESPACE_ID",
      Values = list(
        "string"
      ),
      Condition = "EQ"|"IN"|"BETWEEN"
    )
  )
)
}
}

\examples{
\dontrun{
# Example: List services
svc$list_services()
}

}
\keyword{internal}
