% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_create_deployment}
\alias{greengrass_create_deployment}
\title{Creates a deployment}
\usage{
greengrass_create_deployment(AmznClientToken, DeploymentId,
  DeploymentType, GroupId, GroupVersionId)
}
\arguments{
\item{AmznClientToken}{A client token used to correlate requests and responses.}

\item{DeploymentId}{The ID of the deployment if you wish to redeploy a previous deployment.}

\item{DeploymentType}{[required] The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.}

\item{GroupId}{[required] The ID of the Greengrass group.}

\item{GroupVersionId}{The ID of the group version to be deployed.}
}
\description{
Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
}
\section{Request syntax}{
\preformatted{svc$create_deployment(
  AmznClientToken = "string",
  DeploymentId = "string",
  DeploymentType = "NewDeployment"|"Redeployment"|"ResetDeployment"|"ForceResetDeployment",
  GroupId = "string",
  GroupVersionId = "string"
)
}
}

\keyword{internal}
