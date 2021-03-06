% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_fpga_image}
\alias{ec2_create_fpga_image}
\title{Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
(DCP)}
\usage{
ec2_create_fpga_image(DryRun, InputStorageLocation, LogsStorageLocation,
  Description, Name, ClientToken, TagSpecifications)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{InputStorageLocation}{[required] The location of the encrypted design checkpoint in Amazon S3. The input
must be a tarball.}

\item{LogsStorageLocation}{The location in Amazon S3 for the output logs.}

\item{Description}{A description for the AFI.}

\item{Name}{A name for the AFI.}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html}{Ensuring Idempotency}.}

\item{TagSpecifications}{The tags to apply to the FPGA image during creation.}
}
\description{
Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
(DCP).
}
\details{
The create operation is asynchronous. To verify that the AFI is ready
for use, check the output logs.

An AFI contains the FPGA bitstream that is ready to download to an FPGA.
You can securely deploy an AFI on multiple FPGA-accelerated instances.
For more information, see the \href{https://github.com/aws/aws-fpga/}{AWS FPGA Hardware Development Kit}.
}
\section{Request syntax}{
\preformatted{svc$create_fpga_image(
  DryRun = TRUE|FALSE,
  InputStorageLocation = list(
    Bucket = "string",
    Key = "string"
  ),
  LogsStorageLocation = list(
    Bucket = "string",
    Key = "string"
  ),
  Description = "string",
  Name = "string",
  ClientToken = "string",
  TagSpecifications = list(
    list(
      ResourceType = "client-vpn-endpoint"|"customer-gateway"|"dedicated-host"|"dhcp-options"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"internet-gateway"|"key-pair"|"launch-template"|"local-gateway-route-table-vpc-association"|"natgateway"|"network-acl"|"network-interface"|"placement-group"|"reserved-instances"|"route-table"|"security-group"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-multicast-domain"|"transit-gateway-route-table"|"volume"|"vpc"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  )
)
}
}

\keyword{internal}
