% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_batch_detect_entities}
\alias{comprehend_batch_detect_entities}
\title{Inspects the text of a batch of documents for named entities and returns
information about them}
\usage{
comprehend_batch_detect_entities(TextList, LanguageCode)
}
\arguments{
\item{TextList}{[required] A list containing the text of the input documents. The list can contain
a maximum of 25 documents. Each document must contain fewer than 5,000
bytes of UTF-8 encoded characters.}

\item{LanguageCode}{[required] The language of the input documents. You can specify any of the primary
languages supported by Amazon Comprehend. All documents must be in the
same language.}
}
\description{
Inspects the text of a batch of documents for named entities and returns
information about them. For more information about named entities, see
how-entities
}
\section{Request syntax}{
\preformatted{svc$batch_detect_entities(
  TextList = list(
    "string"
  ),
  LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW"
)
}
}

\keyword{internal}
