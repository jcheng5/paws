% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_human_task_ui}
\alias{sagemaker_describe_human_task_ui}
\title{Returns information about the requested human task user interface
(worker task template)}
\usage{
sagemaker_describe_human_task_ui(HumanTaskUiName)
}
\arguments{
\item{HumanTaskUiName}{[required] The name of the human task user interface (worker task template) you
want information about.}
}
\description{
Returns information about the requested human task user interface
(worker task template).
}
\section{Request syntax}{
\preformatted{svc$describe_human_task_ui(
  HumanTaskUiName = "string"
)
}
}

\keyword{internal}
