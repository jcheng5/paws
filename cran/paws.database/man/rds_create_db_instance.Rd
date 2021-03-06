% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_create_db_instance}
\alias{rds_create_db_instance}
\title{Creates a new DB instance}
\usage{
rds_create_db_instance(DBName, DBInstanceIdentifier, AllocatedStorage,
  DBInstanceClass, Engine, MasterUsername, MasterUserPassword,
  DBSecurityGroups, VpcSecurityGroupIds, AvailabilityZone,
  DBSubnetGroupName, PreferredMaintenanceWindow, DBParameterGroupName,
  BackupRetentionPeriod, PreferredBackupWindow, Port, MultiAZ,
  EngineVersion, AutoMinorVersionUpgrade, LicenseModel, Iops,
  OptionGroupName, CharacterSetName, PubliclyAccessible, Tags,
  DBClusterIdentifier, StorageType, TdeCredentialArn,
  TdeCredentialPassword, StorageEncrypted, KmsKeyId, Domain,
  CopyTagsToSnapshot, MonitoringInterval, MonitoringRoleArn,
  DomainIAMRoleName, PromotionTier, Timezone,
  EnableIAMDatabaseAuthentication, EnablePerformanceInsights,
  PerformanceInsightsKMSKeyId, PerformanceInsightsRetentionPeriod,
  EnableCloudwatchLogsExports, ProcessorFeatures, DeletionProtection,
  MaxAllocatedStorage)
}
\arguments{
\item{DBName}{The meaning of this parameter differs according to the database engine
you use.

\strong{MySQL}

The name of the database to create when the DB instance is created. If
this parameter isn\'t specified, no database is created in the DB
instance.

Constraints:
\itemize{
\item Must contain 1 to 64 letters or numbers.
\item Can\'t be a word reserved by the specified database engine
}

\strong{MariaDB}

The name of the database to create when the DB instance is created. If
this parameter isn\'t specified, no database is created in the DB
instance.

Constraints:
\itemize{
\item Must contain 1 to 64 letters or numbers.
\item Can\'t be a word reserved by the specified database engine
}

\strong{PostgreSQL}

The name of the database to create when the DB instance is created. If
this parameter isn\'t specified, the default \"postgres\" database is
created in the DB instance.

Constraints:
\itemize{
\item Must contain 1 to 63 letters, numbers, or underscores.
\item Must begin with a letter or an underscore. Subsequent characters can
be letters, underscores, or digits (0-9).
\item Can\'t be a word reserved by the specified database engine
}

\strong{Oracle}

The Oracle System ID (SID) of the created DB instance. If you specify
\code{null}, the default value \code{ORCL} is used. You can\'t specify the string
NULL, or any other reserved word, for \code{DBName}.

Default: \code{ORCL}

Constraints:
\itemize{
\item Can\'t be longer than 8 characters
}

\strong{SQL Server}

Not applicable. Must be null.

\strong{Amazon Aurora}

The name of the database to create when the primary instance of the DB
cluster is created. If this parameter isn\'t specified, no database is
created in the DB instance.

Constraints:
\itemize{
\item Must contain 1 to 64 letters or numbers.
\item Can\'t be a word reserved by the specified database engine
}}

\item{DBInstanceIdentifier}{[required] The DB instance identifier. This parameter is stored as a lowercase
string.

Constraints:
\itemize{
\item Must contain from 1 to 63 letters, numbers, or hyphens.
\item First character must be a letter.
\item Can\'t end with a hyphen or contain two consecutive hyphens.
}

Example: \code{mydbinstance}}

\item{AllocatedStorage}{The amount of storage (in gibibytes) to allocate for the DB instance.

Type: Integer

\strong{Amazon Aurora}

Not applicable. Aurora cluster volumes automatically grow as the amount
of data in your database increases, though you are only charged for the
space that you use in an Aurora cluster volume.

\strong{MySQL}

Constraints to the amount of storage for each storage type are the
following:
\itemize{
\item General Purpose (SSD) storage (gp2): Must be an integer from 20
to 65536.
\item Provisioned IOPS storage (io1): Must be an integer from 100
to 65536.
\item Magnetic storage (standard): Must be an integer from 5 to 3072.
}

\strong{MariaDB}

Constraints to the amount of storage for each storage type are the
following:
\itemize{
\item General Purpose (SSD) storage (gp2): Must be an integer from 20
to 65536.
\item Provisioned IOPS storage (io1): Must be an integer from 100
to 65536.
\item Magnetic storage (standard): Must be an integer from 5 to 3072.
}

\strong{PostgreSQL}

Constraints to the amount of storage for each storage type are the
following:
\itemize{
\item General Purpose (SSD) storage (gp2): Must be an integer from 20
to 65536.
\item Provisioned IOPS storage (io1): Must be an integer from 100
to 65536.
\item Magnetic storage (standard): Must be an integer from 5 to 3072.
}

\strong{Oracle}

Constraints to the amount of storage for each storage type are the
following:
\itemize{
\item General Purpose (SSD) storage (gp2): Must be an integer from 20
to 65536.
\item Provisioned IOPS storage (io1): Must be an integer from 100
to 65536.
\item Magnetic storage (standard): Must be an integer from 10 to 3072.
}

\strong{SQL Server}

Constraints to the amount of storage for each storage type are the
following:
\itemize{
\item General Purpose (SSD) storage (gp2):
\itemize{
\item Enterprise and Standard editions: Must be an integer from 200
to 16384.
\item Web and Express editions: Must be an integer from 20 to 16384.
}
\item Provisioned IOPS storage (io1):
\itemize{
\item Enterprise and Standard editions: Must be an integer from 200
to 16384.
\item Web and Express editions: Must be an integer from 100 to 16384.
}
\item Magnetic storage (standard):
\itemize{
\item Enterprise and Standard editions: Must be an integer from 200
to 1024.
\item Web and Express editions: Must be an integer from 20 to 1024.
}
}}

\item{DBInstanceClass}{[required] The compute and memory capacity of the DB instance, for example,
\code{db.m4.large}. Not all DB instance classes are available in all AWS
Regions, or for all database engines. For the full list of DB instance
classes, and availability for your engine, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html}{DB Instance Class}
in the \emph{Amazon RDS User Guide.}}

\item{Engine}{[required] The name of the database engine to be used for this instance.

Not every database engine is available for every AWS Region.

Valid Values:
\itemize{
\item \code{aurora} (for MySQL 5.6-compatible Aurora)
\item \code{aurora-mysql} (for MySQL 5.7-compatible Aurora)
\item \code{aurora-postgresql}
\item \code{mariadb}
\item \code{mysql}
\item \code{oracle-ee}
\item \code{oracle-se2}
\item \code{oracle-se1}
\item \code{oracle-se}
\item \code{postgres}
\item \code{sqlserver-ee}
\item \code{sqlserver-se}
\item \code{sqlserver-ex}
\item \code{sqlserver-web}
}}

\item{MasterUsername}{The name for the master user.

\strong{Amazon Aurora}

Not applicable. The name for the master user is managed by the DB
cluster.

\strong{MariaDB}

Constraints:
\itemize{
\item Required for MariaDB.
\item Must be 1 to 16 letters or numbers.
\item Can\'t be a reserved word for the chosen database engine.
}

\strong{Microsoft SQL Server}

Constraints:
\itemize{
\item Required for SQL Server.
\item Must be 1 to 128 letters or numbers.
\item The first character must be a letter.
\item Can\'t be a reserved word for the chosen database engine.
}

\strong{MySQL}

Constraints:
\itemize{
\item Required for MySQL.
\item Must be 1 to 16 letters or numbers.
\item First character must be a letter.
\item Can\'t be a reserved word for the chosen database engine.
}

\strong{Oracle}

Constraints:
\itemize{
\item Required for Oracle.
\item Must be 1 to 30 letters or numbers.
\item First character must be a letter.
\item Can\'t be a reserved word for the chosen database engine.
}

\strong{PostgreSQL}

Constraints:
\itemize{
\item Required for PostgreSQL.
\item Must be 1 to 63 letters or numbers.
\item First character must be a letter.
\item Can\'t be a reserved word for the chosen database engine.
}}

\item{MasterUserPassword}{The password for the master user. The password can include any printable
ASCII character except \"/\", \"\"\", or \"@\".

\strong{Amazon Aurora}

Not applicable. The password for the master user is managed by the DB
cluster.

\strong{MariaDB}

Constraints: Must contain from 8 to 41 characters.

\strong{Microsoft SQL Server}

Constraints: Must contain from 8 to 128 characters.

\strong{MySQL}

Constraints: Must contain from 8 to 41 characters.

\strong{Oracle}

Constraints: Must contain from 8 to 30 characters.

\strong{PostgreSQL}

Constraints: Must contain from 8 to 128 characters.}

\item{DBSecurityGroups}{A list of DB security groups to associate with this DB instance.

Default: The default DB security group for the database engine.}

\item{VpcSecurityGroupIds}{A list of Amazon EC2 VPC security groups to associate with this DB
instance.

\strong{Amazon Aurora}

Not applicable. The associated list of EC2 VPC security groups is
managed by the DB cluster.

Default: The default EC2 VPC security group for the DB subnet group\'s
VPC.}

\item{AvailabilityZone}{The Availability Zone (AZ) where the database will be created. For
information on AWS Regions and Availability Zones, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html}{Regions and Availability Zones}.

Default: A random, system-chosen Availability Zone in the endpoint\'s
AWS Region.

Example: \verb{us-east-1d}

Constraint: The \code{AvailabilityZone} parameter can\'t be specified if the
DB instance is a Multi-AZ deployment. The specified Availability Zone
must be in the same AWS Region as the current endpoint.

If you\'re creating a DB instance in an RDS on VMware environment,
specify the identifier of the custom Availability Zone to create the DB
instance in.

For more information about RDS on VMware, see the \href{https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html}{\emph{RDS on VMware User Guide.}}}

\item{DBSubnetGroupName}{A DB subnet group to associate with this DB instance.

If there is no DB subnet group, then it is a non-VPC DB instance.}

\item{PreferredMaintenanceWindow}{The time range each week during which system maintenance can occur, in
Universal Coordinated Time (UTC). For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance}{Amazon RDS Maintenance Window}.

Format: \code{ddd:hh24:mi-ddd:hh24:mi}

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.}

\item{DBParameterGroupName}{The name of the DB parameter group to associate with this DB instance.
If you do not specify a value, then the default DB parameter group for
the specified DB engine and version is used.

Constraints:
\itemize{
\item Must be 1 to 255 letters, numbers, or hyphens.
\item First character must be a letter
\item Can\'t end with a hyphen or contain two consecutive hyphens
}}

\item{BackupRetentionPeriod}{The number of days for which automated backups are retained. Setting
this parameter to a positive number enables backups. Setting this
parameter to 0 disables automated backups.

\strong{Amazon Aurora}

Not applicable. The retention period for automated backups is managed by
the DB cluster.

Default: 1

Constraints:
\itemize{
\item Must be a value from 0 to 35
\item Can\'t be set to 0 if the DB instance is a source to read replicas
}}

\item{PreferredBackupWindow}{The daily time range during which automated backups are created if
automated backups are enabled, using the \code{BackupRetentionPeriod}
parameter. For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow}{The Backup Window}
in the \emph{Amazon RDS User Guide}.

\strong{Amazon Aurora}

Not applicable. The daily time range for creating automated backups is
managed by the DB cluster.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. To see the time blocks available, see
\href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow}{Adjusting the Preferred DB Instance Maintenance Window}
in the \emph{Amazon RDS User Guide}.

Constraints:
\itemize{
\item Must be in the format \code{hh24:mi-hh24:mi}.
\item Must be in Universal Coordinated Time (UTC).
\item Must not conflict with the preferred maintenance window.
\item Must be at least 30 minutes.
}}

\item{Port}{The port number on which the database accepts connections.

\strong{MySQL}

Default: \code{3306}

Valid values: \code{1150-65535}

Type: Integer

\strong{MariaDB}

Default: \code{3306}

Valid values: \code{1150-65535}

Type: Integer

\strong{PostgreSQL}

Default: \code{5432}

Valid values: \code{1150-65535}

Type: Integer

\strong{Oracle}

Default: \code{1521}

Valid values: \code{1150-65535}

\strong{SQL Server}

Default: \code{1433}

Valid values: \code{1150-65535} except \code{1234}, \code{1434}, \code{3260}, \code{3343},
\code{3389}, \code{47001}, and \code{49152-49156}.

\strong{Amazon Aurora}

Default: \code{3306}

Valid values: \code{1150-65535}

Type: Integer}

\item{MultiAZ}{A value that indicates whether the DB instance is a Multi-AZ deployment.
You can\'t set the \code{AvailabilityZone} parameter if the DB instance is a
Multi-AZ deployment.}

\item{EngineVersion}{The version number of the database engine to use.

For a list of valid engine versions, use the \code{DescribeDBEngineVersions}
action.

The following are the database engines and links to information about
the major and minor versions that are available with Amazon RDS. Not
every database engine is available for every AWS Region.

\strong{Amazon Aurora}

Not applicable. The version number of the database engine to be used by
the DB instance is managed by the DB cluster.

\strong{MariaDB}

See \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt}{MariaDB on Amazon RDS Versions}
in the \emph{Amazon RDS User Guide.}

\strong{Microsoft SQL Server}

See \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport}{Version and Feature Support on Amazon RDS}
in the \emph{Amazon RDS User Guide.}

\strong{MySQL}

See \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt}{MySQL on Amazon RDS Versions}
in the \emph{Amazon RDS User Guide.}

\strong{Oracle}

See \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html}{Oracle Database Engine Release Notes}
in the \emph{Amazon RDS User Guide.}

\strong{PostgreSQL}

See \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions}{Supported PostgreSQL Database Versions}
in the \emph{Amazon RDS User Guide.}}

\item{AutoMinorVersionUpgrade}{A value that indicates whether minor engine upgrades are applied
automatically to the DB instance during the maintenance window. By
default, minor engine upgrades are applied automatically.}

\item{LicenseModel}{License model information for this DB instance.

Valid values: \code{license-included} \\| \code{bring-your-own-license} \\|
\code{general-public-license}}

\item{Iops}{The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for the DB instance. For information about valid
Iops values, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS}{Amazon RDS Provisioned IOPS Storage to Improve Performance}
in the \emph{Amazon RDS User Guide}.

Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL DB instances,
must be a multiple between .5 and 50 of the storage amount for the DB
instance. For SQL Server DB instances, must be a multiple between 1 and
50 of the storage amount for the DB instance.}

\item{OptionGroupName}{Indicates that the DB instance should be associated with the specified
option group.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can\'t be removed from an option group. Also, that option group
can\'t be removed from a DB instance once it is associated with a DB
instance}

\item{CharacterSetName}{For supported engines, indicates that the DB instance should be
associated with the specified CharacterSet.

\strong{Amazon Aurora}

Not applicable. The character set is managed by the DB cluster. For more
information, see \code{CreateDBCluster}.}

\item{PubliclyAccessible}{A value that indicates whether the DB instance is publicly accessible.

When the DB instance is publicly accessible, its DNS endpoint resolves
to the private IP address from within the DB instance\'s VPC, and to the
public IP address from outside of the DB instance\'s VPC. Access to the
DB instance is ultimately controlled by the security group it uses, and
that public access is not permitted if the security group assigned to
the DB instance doesn\'t permit it.

When the DB instance isn\'t publicly accessible, it is an internal DB
instance with a DNS name that resolves to a private IP address.

Default: The default behavior varies depending on whether
\code{DBSubnetGroupName} is specified.

If \code{DBSubnetGroupName} isn\'t specified, and \code{PubliclyAccessible} isn\'t
specified, the following applies:
\itemize{
\item If the default VPC in the target region doesn't have an Internet
gateway attached to it, the DB instance is private.
\item If the default VPC in the target region has an Internet gateway
attached to it, the DB instance is public.
}

If \code{DBSubnetGroupName} is specified, and \code{PubliclyAccessible} isn\'t
specified, the following applies:
\itemize{
\item If the subnets are part of a VPC that doesn't have an Internet
gateway attached to it, the DB instance is private.
\item If the subnets are part of a VPC that has an Internet gateway
attached to it, the DB instance is public.
}}

\item{Tags}{Tags to assign to the DB instance.}

\item{DBClusterIdentifier}{The identifier of the DB cluster that the instance will belong to.}

\item{StorageType}{Specifies the storage type to be associated with the DB instance.

Valid values: \code{standard | gp2 | io1}

If you specify \code{io1}, you must also include a value for the \code{Iops}
parameter.

Default: \code{io1} if the \code{Iops} parameter is specified, otherwise \code{gp2}}

\item{TdeCredentialArn}{The ARN from the key store with which to associate the instance for TDE
encryption.}

\item{TdeCredentialPassword}{The password for the given ARN from the key store in order to access the
device.}

\item{StorageEncrypted}{A value that indicates whether the DB instance is encrypted. By default,
it isn\'t encrypted.

\strong{Amazon Aurora}

Not applicable. The encryption for DB instances is managed by the DB
cluster.}

\item{KmsKeyId}{The AWS KMS key identifier for an encrypted DB instance.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB instance with the same AWS
account that owns the KMS encryption key used to encrypt the new DB
instance, then you can use the KMS key alias instead of the ARN for the
KM encryption key.

\strong{Amazon Aurora}

Not applicable. The KMS key identifier is managed by the DB cluster. For
more information, see \code{CreateDBCluster}.

If \code{StorageEncrypted} is enabled, and you do not specify a value for the
\code{KmsKeyId} parameter, then Amazon RDS will use your default encryption
key. AWS KMS creates the default encryption key for your AWS account.
Your AWS account has a different default encryption key for each AWS
Region.}

\item{Domain}{The Active Directory directory ID to create the DB instance in.
Currently, only Microsoft SQL Server and Oracle DB instances can be
created in an Active Directory Domain.

For Microsoft SQL Server DB instances, Amazon RDS can use Windows
Authentication to authenticate users that connect to the DB instance.
For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_SQLServerWinAuth.html}{Using Windows Authentication with an Amazon RDS DB Instance Running Microsoft SQL Server}
in the \emph{Amazon RDS User Guide}.

For Oracle DB instances, Amazon RDS can use Kerberos Authentication to
authenticate users that connect to the DB instance. For more
information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html}{Using Kerberos Authentication with Amazon RDS for Oracle}
in the \emph{Amazon RDS User Guide}.}

\item{CopyTagsToSnapshot}{A value that indicates whether to copy tags from the DB instance to
snapshots of the DB instance. By default, tags are not copied.

\strong{Amazon Aurora}

Not applicable. Copying tags to snapshots is managed by the DB cluster.
Setting this value for an Aurora DB instance has no effect on the DB
cluster setting.}

\item{MonitoringInterval}{The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collecting
Enhanced Monitoring metrics, specify 0. The default is 0.

If \code{MonitoringRoleArn} is specified, then you must also set
\code{MonitoringInterval} to a value other than 0.

Valid Values: \verb{0, 1, 5, 10, 15, 30, 60}}

\item{MonitoringRoleArn}{The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
\code{arn:aws:iam:123456789012:role/emaccess}. For information on creating a
monitoring role, go to \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling}{Setting Up and Enabling Enhanced Monitoring}
in the \emph{Amazon RDS User Guide}.

If \code{MonitoringInterval} is set to a value other than 0, then you must
supply a \code{MonitoringRoleArn} value.}

\item{DomainIAMRoleName}{Specify the name of the IAM role to be used when making API calls to the
Directory Service.}

\item{PromotionTier}{A value that specifies the order in which an Aurora Replica is promoted
to the primary instance after a failure of the existing primary
instance. For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance}{Fault Tolerance for an Aurora DB Cluster}
in the \emph{Amazon Aurora User Guide}.

Default: 1

Valid Values: 0 - 15}

\item{Timezone}{The time zone of the DB instance. The time zone parameter is currently
supported only by \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone}{Microsoft SQL Server}.}

\item{EnableIAMDatabaseAuthentication}{A value that indicates whether to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping is disabled.

You can enable IAM database authentication for the following database
engines:

\strong{Amazon Aurora}

Not applicable. Mapping AWS IAM accounts to database accounts is managed
by the DB cluster.

\strong{MySQL}
\itemize{
\item For MySQL 5.6, minor version 5.6.34 or higher
\item For MySQL 5.7, minor version 5.7.16 or higher
\item For MySQL 8.0, minor version 8.0.16 or higher
}

\strong{PostgreSQL}
\itemize{
\item For PostgreSQL 9.5, minor version 9.5.15 or higher
\item For PostgreSQL 9.6, minor version 9.6.11 or higher
\item PostgreSQL 10.6, 10.7, and 10.9
}

For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html}{IAM Database Authentication for MySQL and PostgreSQL}
in the \emph{Amazon RDS User Guide.}}

\item{EnablePerformanceInsights}{A value that indicates whether to enable Performance Insights for the DB
instance.

For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html}{Using Amazon Performance Insights}
in the \emph{Amazon Relational Database Service User Guide}.}

\item{PerformanceInsightsKMSKeyId}{The AWS KMS key identifier for encryption of Performance Insights data.
The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or
the KMS key alias for the KMS encryption key.

If you do not specify a value for \code{PerformanceInsightsKMSKeyId}, then
Amazon RDS uses your default encryption key. AWS KMS creates the default
encryption key for your AWS account. Your AWS account has a different
default encryption key for each AWS Region.}

\item{PerformanceInsightsRetentionPeriod}{The amount of time, in days, to retain Performance Insights data. Valid
values are 7 or 731 (2 years).}

\item{EnableCloudwatchLogsExports}{The list of log types that need to be enabled for exporting to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch}{Publishing Database Logs to Amazon CloudWatch Logs}
in the \emph{Amazon Relational Database Service User Guide}.}

\item{ProcessorFeatures}{The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.}

\item{DeletionProtection}{A value that indicates whether the DB instance has deletion protection
enabled. The database can\'t be deleted when deletion protection is
enabled. By default, deletion protection is disabled. For more
information, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html}{Deleting a DB Instance}.

\strong{Amazon Aurora}

Not applicable. You can enable or disable deletion protection for the DB
cluster. For more information, see \code{CreateDBCluster}. DB instances in a
DB cluster can be deleted even when deletion protection is enabled for
the DB cluster.}

\item{MaxAllocatedStorage}{The upper limit to which Amazon RDS can automatically scale the storage
of the DB instance.}
}
\description{
Creates a new DB instance.
}
\section{Request syntax}{
\preformatted{svc$create_db_instance(
  DBName = "string",
  DBInstanceIdentifier = "string",
  AllocatedStorage = 123,
  DBInstanceClass = "string",
  Engine = "string",
  MasterUsername = "string",
  MasterUserPassword = "string",
  DBSecurityGroups = list(
    "string"
  ),
  VpcSecurityGroupIds = list(
    "string"
  ),
  AvailabilityZone = "string",
  DBSubnetGroupName = "string",
  PreferredMaintenanceWindow = "string",
  DBParameterGroupName = "string",
  BackupRetentionPeriod = 123,
  PreferredBackupWindow = "string",
  Port = 123,
  MultiAZ = TRUE|FALSE,
  EngineVersion = "string",
  AutoMinorVersionUpgrade = TRUE|FALSE,
  LicenseModel = "string",
  Iops = 123,
  OptionGroupName = "string",
  CharacterSetName = "string",
  PubliclyAccessible = TRUE|FALSE,
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  DBClusterIdentifier = "string",
  StorageType = "string",
  TdeCredentialArn = "string",
  TdeCredentialPassword = "string",
  StorageEncrypted = TRUE|FALSE,
  KmsKeyId = "string",
  Domain = "string",
  CopyTagsToSnapshot = TRUE|FALSE,
  MonitoringInterval = 123,
  MonitoringRoleArn = "string",
  DomainIAMRoleName = "string",
  PromotionTier = 123,
  Timezone = "string",
  EnableIAMDatabaseAuthentication = TRUE|FALSE,
  EnablePerformanceInsights = TRUE|FALSE,
  PerformanceInsightsKMSKeyId = "string",
  PerformanceInsightsRetentionPeriod = 123,
  EnableCloudwatchLogsExports = list(
    "string"
  ),
  ProcessorFeatures = list(
    list(
      Name = "string",
      Value = "string"
    )
  ),
  DeletionProtection = TRUE|FALSE,
  MaxAllocatedStorage = 123
)
}
}

\keyword{internal}
