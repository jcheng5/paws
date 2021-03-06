% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/waf_operations.R
\name{waf_delete_sql_injection_match_set}
\alias{waf_delete_sql_injection_match_set}
\title{This is AWS WAF CLASSIC documentation}
\usage{
waf_delete_sql_injection_match_set(SqlInjectionMatchSetId, ChangeToken)
}
\arguments{
\item{SqlInjectionMatchSetId}{[required] The \code{SqlInjectionMatchSetId} of the SqlInjectionMatchSet that you want
to delete. \code{SqlInjectionMatchSetId} is returned by
CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.}

\item{ChangeToken}{[required] The value returned by the most recent call to GetChangeToken.}
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

Permanently deletes a SqlInjectionMatchSet. You can\'t delete a
\code{SqlInjectionMatchSet} if it\'s still used in any \code{Rules} or if it still
contains any SqlInjectionMatchTuple objects.

If you just want to remove a \code{SqlInjectionMatchSet} from a \code{Rule}, use
UpdateRule.

To permanently delete a \code{SqlInjectionMatchSet} from AWS WAF, perform the
following steps:
\enumerate{
\item Update the \code{SqlInjectionMatchSet} to remove filters, if any. For
more information, see UpdateSqlInjectionMatchSet.
\item Use GetChangeToken to get the change token that you provide in the
\code{ChangeToken} parameter of a \code{DeleteSqlInjectionMatchSet} request.
\item Submit a \code{DeleteSqlInjectionMatchSet} request.
}
}
\section{Request syntax}{
\preformatted{svc$delete_sql_injection_match_set(
  SqlInjectionMatchSetId = "string",
  ChangeToken = "string"
)
}
}

\examples{
\dontrun{
# The following example deletes a SQL injection match set  with the ID
# example1ds3t-46da-4fdb-b8d5-abc321j569j5.
svc$delete_sql_injection_match_set(
  ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
  SqlInjectionMatchSetId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
)
}

}
\keyword{internal}
