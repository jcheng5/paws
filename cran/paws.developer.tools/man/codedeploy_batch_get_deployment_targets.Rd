% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codedeploy_operations.R
\name{codedeploy_batch_get_deployment_targets}
\alias{codedeploy_batch_get_deployment_targets}
\title{Returns an array of one or more targets associated with a deployment}
\usage{
codedeploy_batch_get_deployment_targets(deploymentId, targetIds)
}
\arguments{
\item{deploymentId}{The unique ID of a deployment.}

\item{targetIds}{The unique IDs of the deployment targets. The compute platform of the
deployment determines the type of the targets and their formats. The
maximum number of deployment target IDs you can specify is 25.
\itemize{
\item For deployments that use the EC2/On-premises compute platform, the
target IDs are EC2 or on-premises instances IDs, and their target
type is \code{instanceTarget}.
\item For deployments that use the AWS Lambda compute platform, the target
IDs are the names of Lambda functions, and their target type is
\code{instanceTarget}.
\item For deployments that use the Amazon ECS compute platform, the target
IDs are pairs of Amazon ECS clusters and services specified using
the format \verb{&lt;clustername&gt;:&lt;servicename&gt;}. Their target
type is \code{ecsTarget}.
\item For deployments that are deployed with AWS CloudFormation, the
target IDs are CloudFormation stack IDs. Their target type is
\code{cloudFormationTarget}.
}}
}
\description{
Returns an array of one or more targets associated with a deployment.
This method works with all compute types and should be used instead of
the deprecated \code{BatchGetDeploymentInstances}. The maximum number of
targets that can be returned is 25.
}
\details{
The type of targets returned depends on the deployment\'s compute
platform or deployment method:
\itemize{
\item \strong{EC2/On-premises}: Information about EC2 instance targets.
\item \strong{AWS Lambda}: Information about Lambda functions targets.
\item \strong{Amazon ECS}: Information about Amazon ECS service targets.
\item \strong{CloudFormation}: Information about targets of blue/green
deployments initiated by a CloudFormation stack update.
}
}
\section{Request syntax}{
\preformatted{svc$batch_get_deployment_targets(
  deploymentId = "string",
  targetIds = list(
    "string"
  )
)
}
}

\keyword{internal}
