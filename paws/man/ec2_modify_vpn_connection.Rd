% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_modify_vpn_connection}
\alias{ec2_modify_vpn_connection}
\title{Modifies the customer gateway or the target gateway of an AWS
Site-to-Site VPN connection}
\usage{
ec2_modify_vpn_connection(VpnConnectionId, TransitGatewayId,
  CustomerGatewayId, VpnGatewayId, DryRun)
}
\arguments{
\item{VpnConnectionId}{[required] The ID of the VPN connection.}

\item{TransitGatewayId}{The ID of the transit gateway.}

\item{CustomerGatewayId}{The ID of the customer gateway at your end of the VPN connection.}

\item{VpnGatewayId}{The ID of the virtual private gateway at the AWS side of the VPN
connection.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Modifies the customer gateway or the target gateway of an AWS
Site-to-Site VPN connection. To modify the target gateway, the following
migration options are available:
}
\details{
\itemize{
\item An existing virtual private gateway to a new virtual private gateway
\item An existing virtual private gateway to a transit gateway
\item An existing transit gateway to a new transit gateway
\item An existing transit gateway to a virtual private gateway
}

Before you perform the migration to the new gateway, you must configure
the new gateway. Use CreateVpnGateway to create a virtual private
gateway, or CreateTransitGateway to create a transit gateway.

This step is required when you migrate from a virtual private gateway
with static routes to a transit gateway.

You must delete the static routes before you migrate to the new gateway.

Keep a copy of the static route before you delete it. You will need to
add back these routes to the transit gateway after the VPN connection
migration is complete.

After you migrate to the new gateway, you might need to modify your VPC
route table. Use CreateRoute and DeleteRoute to make the changes
described in \href{https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing}{VPN Gateway Target Modification Required VPC Route Table Updates}
in the \emph{AWS Site-to-Site VPN User Guide}.

When the new gateway is a transit gateway, modify the transit gateway
route table to allow traffic between the VPC and the AWS Site-to-Site
VPN connection. Use CreateTransitGatewayRoute to add the routes.

If you deleted VPN static routes, you must add the static routes to the
transit gateway route table.

After you perform this operation, the AWS VPN endpoint\'s IP addresses
on the AWS side and the tunnel options remain intact. Your AWS
Site-to-Site VPN connection will be temporarily unavailable for a brief
period while we provision the new endpoints.
}
\section{Request syntax}{
\preformatted{svc$modify_vpn_connection(
  VpnConnectionId = "string",
  TransitGatewayId = "string",
  CustomerGatewayId = "string",
  VpnGatewayId = "string",
  DryRun = TRUE|FALSE
)
}
}

\keyword{internal}
