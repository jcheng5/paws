% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_create_core_definition_version}
\alias{greengrass_create_core_definition_version}
\title{Creates a version of a core definition that has already been defined}
\usage{
greengrass_create_core_definition_version(AmznClientToken,
  CoreDefinitionId, Cores)
}
\arguments{
\item{AmznClientToken}{A client token used to correlate requests and responses.}

\item{CoreDefinitionId}{[required] The ID of the core definition.}

\item{Cores}{A list of cores in the core definition version.}
}
\description{
Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
}
\section{Request syntax}{
\preformatted{svc$create_core_definition_version(
  AmznClientToken = "string",
  CoreDefinitionId = "string",
  Cores = list(
    list(
      CertificateArn = "string",
      Id = "string",
      SyncShadow = TRUE|FALSE,
      ThingArn = "string"
    )
  )
)
}
}

\keyword{internal}
