% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_script}
\alias{gamelift_describe_script}
\title{Retrieves properties for a Realtime script}
\usage{
gamelift_describe_script(ScriptId)
}
\arguments{
\item{ScriptId}{[required] A unique identifier for a Realtime script to retrieve properties for.
You can use either the script ID or ARN value.}
}
\description{
Retrieves properties for a Realtime script.
}
\details{
To request a script record, specify the script ID. If successful, an
object containing the script properties is returned.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html}{Amazon GameLift Realtime Servers}

\strong{Related operations}
\itemize{
\item CreateScript
\item ListScripts
\item DescribeScript
\item UpdateScript
\item DeleteScript
}
}
\section{Request syntax}{
\preformatted{svc$describe_script(
  ScriptId = "string"
)
}
}

\keyword{internal}
