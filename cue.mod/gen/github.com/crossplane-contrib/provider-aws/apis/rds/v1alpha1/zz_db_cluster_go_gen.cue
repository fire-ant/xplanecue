// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/rds/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// DBClusterParameters defines the desired state of DBCluster
#DBClusterParameters: {
	// Region is which region the DBCluster will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The amount of storage in gibibytes (GiB) to allocate to each DB instance
	// in the Multi-AZ DB cluster.
	//
	// This setting is required to create a Multi-AZ DB cluster.
	//
	// Valid for: Multi-AZ DB clusters only
	allocatedStorage?: null | int64 @go(AllocatedStorage,*int64)

	// A value that indicates whether minor engine upgrades are applied automatically
	// to the DB cluster during the maintenance window. By default, minor engine
	// upgrades are applied automatically.
	//
	// Valid for: Multi-AZ DB clusters only
	autoMinorVersionUpgrade?: null | bool @go(AutoMinorVersionUpgrade,*bool)

	// A list of Availability Zones (AZs) where DB instances in the DB cluster can
	// be created.
	//
	// For information on Amazon Web Services Regions and Availability Zones, see
	// Choosing the Regions and Availability Zones (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html)
	// in the Amazon Aurora User Guide.
	//
	// Valid for: Aurora DB clusters only
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// The target backtrack window, in seconds. To disable backtracking, set this
	// value to 0.
	//
	// Default: 0
	//
	// Constraints:
	//
	//    * If specified, this value must be set to a number from 0 to 259,200 (72
	//    hours).
	//
	// Valid for: Aurora MySQL DB clusters only
	backtrackWindow?: null | int64 @go(BacktrackWindow,*int64)

	// The number of days for which automated backups are retained.
	//
	// Default: 1
	//
	// Constraints:
	//
	//    * Must be a value from 1 to 35
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	backupRetentionPeriod?: null | int64 @go(BackupRetentionPeriod,*int64)

	// A value that indicates that the DB cluster should be associated with the
	// specified CharacterSet.
	//
	// Valid for: Aurora DB clusters only
	characterSetName?: null | string @go(CharacterSetName,*string)

	// A value that indicates whether to copy all tags from the DB cluster to snapshots
	// of the DB cluster. The default is not to copy them.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	copyTagsToSnapshot?: null | bool @go(CopyTagsToSnapshot,*bool)

	// The compute and memory capacity of each DB instance in the Multi-AZ DB cluster,
	// for example db.m6g.xlarge. Not all DB instance classes are available in all
	// Amazon Web Services Regions, or for all database engines.
	//
	// For the full list of DB instance classes and availability for your engine,
	// see DB instance class (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
	// in the Amazon RDS User Guide.
	//
	// This setting is required to create a Multi-AZ DB cluster.
	//
	// Valid for: Multi-AZ DB clusters only
	dbClusterInstanceClass?: null | string @go(DBClusterInstanceClass,*string)

	// The name of the DB cluster parameter group to associate with this DB cluster.
	// If you do not specify a value, then the default DB cluster parameter group
	// for the specified DB engine and version is used.
	//
	// Constraints:
	//
	//    * If supplied, must match the name of an existing DB cluster parameter
	//    group.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	dbClusterParameterGroupName?: null | string @go(DBClusterParameterGroupName,*string)

	// A DB subnet group to associate with this DB cluster.
	//
	// This setting is required to create a Multi-AZ DB cluster.
	//
	// Constraints: Must match the name of an existing DBSubnetGroup. Must not be
	// default.
	//
	// Example: mydbsubnetgroup
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	dbSubnetGroupName?: null | string @go(DBSubnetGroupName,*string)

	// The name for your database of up to 64 alphanumeric characters. If you do
	// not provide a name, Amazon RDS doesn't create a database in the DB cluster
	// you are creating.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	databaseName?: null | string @go(DatabaseName,*string)

	// A value that indicates whether the DB cluster has deletion protection enabled.
	// The database can't be deleted when deletion protection is enabled. By default,
	// deletion protection isn't enabled.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	deletionProtection?: null | bool @go(DeletionProtection,*bool)

	// DestinationRegion is used for presigning the request to a given region.
	destinationRegion?: null | string @go(DestinationRegion,*string)

	// The Active Directory directory ID to create the DB cluster in.
	//
	// For Amazon Aurora DB clusters, Amazon RDS can use Kerberos authentication
	// to authenticate users that connect to the DB cluster.
	//
	// For more information, see Kerberos authentication (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html)
	// in the Amazon Aurora User Guide.
	//
	// Valid for: Aurora DB clusters only
	domain?: null | string @go(Domain,*string)

	// Specify the name of the IAM role to be used when making API calls to the
	// Directory Service.
	//
	// Valid for: Aurora DB clusters only
	domainIAMRoleName?: null | string @go(DomainIAMRoleName,*string)

	// The list of log types that need to be enabled for exporting to CloudWatch
	// Logs. The values in the list depend on the DB engine being used.
	//
	// RDS for MySQL
	//
	// Possible values are error, general, and slowquery.
	//
	// RDS for PostgreSQL
	//
	// Possible values are postgresql and upgrade.
	//
	// Aurora MySQL
	//
	// Possible values are audit, error, general, and slowquery.
	//
	// Aurora PostgreSQL
	//
	// Possible value is postgresql.
	//
	// For more information about exporting CloudWatch Logs for Amazon RDS, see
	// Publishing Database Logs to Amazon CloudWatch Logs (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
	// in the Amazon RDS User Guide.
	//
	// For more information about exporting CloudWatch Logs for Amazon Aurora, see
	// Publishing Database Logs to Amazon CloudWatch Logs (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
	// in the Amazon Aurora User Guide.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	enableCloudwatchLogsExports?: [...null | string] @go(EnableCloudwatchLogsExports,[]*string)

	// A value that indicates whether to enable this DB cluster to forward write
	// operations to the primary cluster of an Aurora global database (GlobalCluster).
	// By default, write operations are not allowed on Aurora DB clusters that are
	// secondary clusters in an Aurora global database.
	//
	// You can set this value only on Aurora DB clusters that are members of an
	// Aurora global database. With this parameter enabled, a secondary cluster
	// can forward writes to the current primary cluster and the resulting changes
	// are replicated back to this cluster. For the primary DB cluster of an Aurora
	// global database, this value is used immediately if the primary is demoted
	// by the FailoverGlobalCluster API operation, but it does nothing until then.
	//
	// Valid for: Aurora DB clusters only
	enableGlobalWriteForwarding?: null | bool @go(EnableGlobalWriteForwarding,*bool)

	// A value that indicates whether to enable the HTTP endpoint for an Aurora
	// Serverless v1 DB cluster. By default, the HTTP endpoint is disabled.
	//
	// When enabled, the HTTP endpoint provides a connectionless web service API
	// for running SQL queries on the Aurora Serverless v1 DB cluster. You can also
	// query your database from inside the RDS console with the query editor.
	//
	// For more information, see Using the Data API for Aurora Serverless v1 (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
	// in the Amazon Aurora User Guide.
	//
	// Valid for: Aurora DB clusters only
	enableHTTPEndpoint?: null | bool @go(EnableHTTPEndpoint,*bool)

	// A value that indicates whether to enable mapping of Amazon Web Services Identity
	// and Access Management (IAM) accounts to database accounts. By default, mapping
	// isn't enabled.
	//
	// For more information, see IAM Database Authentication (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html)
	// in the Amazon Aurora User Guide..
	//
	// Valid for: Aurora DB clusters only
	enableIAMDatabaseAuthentication?: null | bool @go(EnableIAMDatabaseAuthentication,*bool)

	// A value that indicates whether to turn on Performance Insights for the DB
	// cluster.
	//
	// For more information, see Using Amazon Performance Insights (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
	// in the Amazon RDS User Guide.
	//
	// Valid for: Multi-AZ DB clusters only
	enablePerformanceInsights?: null | bool @go(EnablePerformanceInsights,*bool)

	// The name of the database engine to be used for this DB cluster.
	//
	// Valid Values:
	//
	//    * aurora (for MySQL 5.6-compatible Aurora)
	//
	//    * aurora-mysql (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora)
	//
	//    * aurora-postgresql
	//
	//    * mysql
	//
	//    * postgres
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	// +kubebuilder:validation:Required
	engine?: null | string @go(Engine,*string)

	// The DB engine mode of the DB cluster, either provisioned, serverless, parallelquery,
	// global, or multimaster.
	//
	// The parallelquery engine mode isn't required for Aurora MySQL version 1.23
	// and higher 1.x versions, and version 2.09 and higher 2.x versions.
	//
	// The global engine mode isn't required for Aurora MySQL version 1.22 and higher
	// 1.x versions, and global engine mode isn't required for any 2.x versions.
	//
	// The multimaster engine mode only applies for DB clusters created with Aurora
	// MySQL version 5.6.10a.
	//
	// For Aurora PostgreSQL, the global engine mode isn't required, and both the
	// parallelquery and the multimaster engine modes currently aren't supported.
	//
	// Limitations and requirements apply to some DB engine modes. For more information,
	// see the following sections in the Amazon Aurora User Guide:
	//
	//    * Limitations of Aurora Serverless v1 (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations)
	//
	//    * Limitations of Parallel Query (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-parallel-query.html#aurora-mysql-parallel-query-limitations)
	//
	//    * Limitations of Aurora Global Databases (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database.limitations)
	//
	//    * Limitations of Multi-Master Clusters (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-multi-master.html#aurora-multi-master-limitations)
	//
	// Valid for: Aurora DB clusters only
	engineMode?: null | string @go(EngineMode,*string)

	// The version number of the database engine to use.
	//
	// To list all of the available engine versions for MySQL 5.6-compatible Aurora,
	// use the following command:
	//
	// aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"
	//
	// To list all of the available engine versions for MySQL 5.7-compatible and
	// MySQL 8.0-compatible Aurora, use the following command:
	//
	// aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"
	//
	// To list all of the available engine versions for Aurora PostgreSQL, use the
	// following command:
	//
	// aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"
	//
	// To list all of the available engine versions for RDS for MySQL, use the following
	// command:
	//
	// aws rds describe-db-engine-versions --engine mysql --query "DBEngineVersions[].EngineVersion"
	//
	// To list all of the available engine versions for RDS for PostgreSQL, use
	// the following command:
	//
	// aws rds describe-db-engine-versions --engine postgres --query "DBEngineVersions[].EngineVersion"
	//
	// Aurora MySQL
	//
	// For information, see MySQL on Amazon RDS Versions (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html)
	// in the Amazon Aurora User Guide.
	//
	// Aurora PostgreSQL
	//
	// For information, see Amazon Aurora PostgreSQL releases and engine versions
	// (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html)
	// in the Amazon Aurora User Guide.
	//
	// MySQL
	//
	// For information, see MySQL on Amazon RDS Versions (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt)
	// in the Amazon RDS User Guide.
	//
	// PostgreSQL
	//
	// For information, see Amazon RDS for PostgreSQL versions and extensions (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts)
	// in the Amazon RDS User Guide.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	engineVersion?: null | string @go(EngineVersion,*string)

	// The global cluster ID of an Aurora cluster that becomes the primary cluster
	// in the new global database cluster.
	//
	// Valid for: Aurora DB clusters only
	globalClusterIdentifier?: null | string @go(GlobalClusterIdentifier,*string)

	// The amount of Provisioned IOPS (input/output operations per second) to be
	// initially allocated for each DB instance in the Multi-AZ DB cluster.
	//
	// For information about valid Iops values, see Amazon RDS Provisioned IOPS
	// storage to improve performance (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS)
	// in the Amazon RDS User Guide.
	//
	// This setting is required to create a Multi-AZ DB cluster.
	//
	// Constraints: Must be a multiple between .5 and 50 of the storage amount for
	// the DB cluster.
	//
	// Valid for: Multi-AZ DB clusters only
	iops?: null | int64 @go(IOPS,*int64)

	// The Amazon Web Services KMS key identifier for an encrypted DB cluster.
	//
	// The Amazon Web Services KMS key identifier is the key ARN, key ID, alias
	// ARN, or alias name for the KMS key. To use a KMS key in a different Amazon
	// Web Services account, specify the key ARN or alias ARN.
	//
	// When a KMS key isn't specified in KmsKeyId:
	//
	//    * If ReplicationSourceIdentifier identifies an encrypted source, then
	//    Amazon RDS will use the KMS key used to encrypt the source. Otherwise,
	//    Amazon RDS will use your default KMS key.
	//
	//    * If the StorageEncrypted parameter is enabled and ReplicationSourceIdentifier
	//    isn't specified, then Amazon RDS will use your default KMS key.
	//
	// There is a default KMS key for your Amazon Web Services account. Your Amazon
	// Web Services account has a different default KMS key for each Amazon Web
	// Services Region.
	//
	// If you create a read replica of an encrypted DB cluster in another Amazon
	// Web Services Region, you must set KmsKeyId to a KMS key identifier that is
	// valid in the destination Amazon Web Services Region. This KMS key is used
	// to encrypt the read replica in that Amazon Web Services Region.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	kmsKeyID?: null | string @go(KMSKeyID,*string)

	// The name of the master user for the DB cluster.
	//
	// Constraints:
	//
	//    * Must be 1 to 16 letters or numbers.
	//
	//    * First character must be a letter.
	//
	//    * Can't be a reserved word for the chosen database engine.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	masterUsername?: null | string @go(MasterUsername,*string)

	// The interval, in seconds, between points when Enhanced Monitoring metrics
	// are collected for the DB cluster. To turn off collecting Enhanced Monitoring
	// metrics, specify 0. The default is 0.
	//
	// If MonitoringRoleArn is specified, also set MonitoringInterval to a value
	// other than 0.
	//
	// Valid Values: 0, 1, 5, 10, 15, 30, 60
	//
	// Valid for: Multi-AZ DB clusters only
	monitoringInterval?: null | int64 @go(MonitoringInterval,*int64)

	// The Amazon Resource Name (ARN) for the IAM role that permits RDS to send
	// Enhanced Monitoring metrics to Amazon CloudWatch Logs. An example is arn:aws:iam:123456789012:role/emaccess.
	// For information on creating a monitoring role, see Setting up and enabling
	// Enhanced Monitoring (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling)
	// in the Amazon RDS User Guide.
	//
	// If MonitoringInterval is set to a value other than 0, supply a MonitoringRoleArn
	// value.
	//
	// Valid for: Multi-AZ DB clusters only
	monitoringRoleARN?: null | string @go(MonitoringRoleARN,*string)

	// A value that indicates that the DB cluster should be associated with the
	// specified option group.
	//
	// DB clusters are associated with a default option group that can't be modified.
	optionGroupName?: null | string @go(OptionGroupName,*string)

	// The Amazon Web Services KMS key identifier for encryption of Performance
	// Insights data.
	//
	// The Amazon Web Services KMS key identifier is the key ARN, key ID, alias
	// ARN, or alias name for the KMS key.
	//
	// If you don't specify a value for PerformanceInsightsKMSKeyId, then Amazon
	// RDS uses your default KMS key. There is a default KMS key for your Amazon
	// Web Services account. Your Amazon Web Services account has a different default
	// KMS key for each Amazon Web Services Region.
	//
	// Valid for: Multi-AZ DB clusters only
	performanceInsightsKMSKeyID?: null | string @go(PerformanceInsightsKMSKeyID,*string)

	// The amount of time, in days, to retain Performance Insights data. Valid values
	// are 7 or 731 (2 years).
	//
	// Valid for: Multi-AZ DB clusters only
	performanceInsightsRetentionPeriod?: null | int64 @go(PerformanceInsightsRetentionPeriod,*int64)

	// The port number on which the instances in the DB cluster accept connections.
	//
	// RDS for MySQL and Aurora MySQL
	//
	// Default: 3306
	//
	// Valid values: 1150-65535
	//
	// RDS for PostgreSQL and Aurora PostgreSQL
	//
	// Default: 5432
	//
	// Valid values: 1150-65535
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	port?: null | int64 @go(Port,*int64)

	// A URL that contains a Signature Version 4 signed request for the CreateDBCluster
	// action to be called in the source Amazon Web Services Region where the DB
	// cluster is replicated from. Specify PreSignedUrl only when you are performing
	// cross-Region replication from an encrypted DB cluster.
	//
	// The pre-signed URL must be a valid request for the CreateDBCluster API action
	// that can be executed in the source Amazon Web Services Region that contains
	// the encrypted DB cluster to be copied.
	//
	// The pre-signed URL request must contain the following parameter values:
	//
	//    * KmsKeyId - The Amazon Web Services KMS key identifier for the KMS key
	//    to use to encrypt the copy of the DB cluster in the destination Amazon
	//    Web Services Region. This should refer to the same KMS key for both the
	//    CreateDBCluster action that is called in the destination Amazon Web Services
	//    Region, and the action contained in the pre-signed URL.
	//
	//    * DestinationRegion - The name of the Amazon Web Services Region that
	//    Aurora read replica will be created in.
	//
	//    * ReplicationSourceIdentifier - The DB cluster identifier for the encrypted
	//    DB cluster to be copied. This identifier must be in the Amazon Resource
	//    Name (ARN) format for the source Amazon Web Services Region. For example,
	//    if you are copying an encrypted DB cluster from the us-west-2 Amazon Web
	//    Services Region, then your ReplicationSourceIdentifier would look like
	//    Example: arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1.
	//
	// To learn how to generate a Signature Version 4 signed request, see Authenticating
	// Requests: Using Query Parameters (Amazon Web Services Signature Version 4)
	// (https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
	// and Signature Version 4 Signing Process (https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
	//
	// If you are using an Amazon Web Services SDK tool or the CLI, you can specify
	// SourceRegion (or --source-region for the CLI) instead of specifying PreSignedUrl
	// manually. Specifying SourceRegion autogenerates a pre-signed URL that is
	// a valid request for the operation that can be executed in the source Amazon
	// Web Services Region.
	//
	// Valid for: Aurora DB clusters only
	preSignedURL?: null | string @go(PreSignedURL,*string)

	// The daily time range during which automated backups are created if automated
	// backups are enabled using the BackupRetentionPeriod parameter.
	//
	// The default is a 30-minute window selected at random from an 8-hour block
	// of time for each Amazon Web Services Region. To view the time blocks available,
	// see Backup window (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow)
	// in the Amazon Aurora User Guide.
	//
	// Constraints:
	//
	//    * Must be in the format hh24:mi-hh24:mi.
	//
	//    * Must be in Universal Coordinated Time (UTC).
	//
	//    * Must not conflict with the preferred maintenance window.
	//
	//    * Must be at least 30 minutes.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	preferredBackupWindow?: null | string @go(PreferredBackupWindow,*string)

	// The weekly time range during which system maintenance can occur, in Universal
	// Coordinated Time (UTC).
	//
	// Format: ddd:hh24:mi-ddd:hh24:mi
	//
	// The default is a 30-minute window selected at random from an 8-hour block
	// of time for each Amazon Web Services Region, occurring on a random day of
	// the week. To see the time blocks available, see Adjusting the Preferred DB
	// Cluster Maintenance Window (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
	// in the Amazon Aurora User Guide.
	//
	// Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
	//
	// Constraints: Minimum 30-minute window.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	preferredMaintenanceWindow?: null | string @go(PreferredMaintenanceWindow,*string)

	// A value that indicates whether the DB cluster is publicly accessible.
	//
	// When the DB cluster is publicly accessible, its Domain Name System (DNS)
	// endpoint resolves to the private IP address from within the DB cluster's
	// virtual private cloud (VPC). It resolves to the public IP address from outside
	// of the DB cluster's VPC. Access to the DB cluster is ultimately controlled
	// by the security group it uses. That public access isn't permitted if the
	// security group assigned to the DB cluster doesn't permit it.
	//
	// When the DB cluster isn't publicly accessible, it is an internal DB cluster
	// with a DNS name that resolves to a private IP address.
	//
	// Default: The default behavior varies depending on whether DBSubnetGroupName
	// is specified.
	//
	// If DBSubnetGroupName isn't specified, and PubliclyAccessible isn't specified,
	// the following applies:
	//
	//    * If the default VPC in the target Region doesn’t have an internet gateway
	//    attached to it, the DB cluster is private.
	//
	//    * If the default VPC in the target Region has an internet gateway attached
	//    to it, the DB cluster is public.
	//
	// If DBSubnetGroupName is specified, and PubliclyAccessible isn't specified,
	// the following applies:
	//
	//    * If the subnets are part of a VPC that doesn’t have an internet gateway
	//    attached to it, the DB cluster is private.
	//
	//    * If the subnets are part of a VPC that has an internet gateway attached
	//    to it, the DB cluster is public.
	//
	// Valid for: Multi-AZ DB clusters only
	publiclyAccessible?: null | bool @go(PubliclyAccessible,*bool)

	// The Amazon Resource Name (ARN) of the source DB instance or DB cluster if
	// this DB cluster is created as a read replica.
	//
	// Valid for: Aurora DB clusters only
	replicationSourceIdentifier?: null | string @go(ReplicationSourceIdentifier,*string)

	// For DB clusters in serverless DB engine mode, the scaling properties of the
	// DB cluster.
	//
	// Valid for: Aurora DB clusters only
	scalingConfiguration?:             null | #ScalingConfiguration             @go(ScalingConfiguration,*ScalingConfiguration)
	serverlessV2ScalingConfiguration?: null | #ServerlessV2ScalingConfiguration @go(ServerlessV2ScalingConfiguration,*ServerlessV2ScalingConfiguration)

	// SourceRegion is the source region where the resource exists. This is not
	// sent over the wire and is only used for presigning. This value should always
	// have the same region as the source ARN.
	sourceRegion?: null | string @go(SourceRegion,*string)

	// A value that indicates whether the DB cluster is encrypted.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	storageEncrypted?: null | bool @go(StorageEncrypted,*bool)

	// Specifies the storage type to be associated with the DB cluster.
	//
	// This setting is required to create a Multi-AZ DB cluster.
	//
	// Valid values: io1
	//
	// When specified, a value for the Iops parameter is required.
	//
	// Default: io1
	//
	// Valid for: Multi-AZ DB clusters only
	storageType?: null | string @go(StorageType,*string)

	// Tags to assign to the DB cluster.
	//
	// Valid for: Aurora DB clusters and Multi-AZ DB clusters
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomDBClusterParameters
}

// DBClusterSpec defines the desired state of DBCluster
#DBClusterSpec: {
	xpv1.#ResourceSpec
	forProvider: #DBClusterParameters @go(ForProvider)
}

// DBClusterObservation defines the observed state of DBCluster
#DBClusterObservation: {
	// The name of the Amazon Kinesis data stream used for the database activity
	// stream.
	activityStreamKinesisStreamName?: null | string @go(ActivityStreamKinesisStreamName,*string)

	// The Amazon Web Services KMS key identifier used for encrypting messages in
	// the database activity stream.
	//
	// The Amazon Web Services KMS key identifier is the key ARN, key ID, alias
	// ARN, or alias name for the KMS key.
	activityStreamKMSKeyID?: null | string @go(ActivityStreamKMSKeyID,*string)

	// The mode of the database activity stream. Database events such as a change
	// or access generate an activity stream event. The database session can handle
	// these events either synchronously or asynchronously.
	activityStreamMode?: null | string @go(ActivityStreamMode,*string)

	// The status of the database activity stream.
	activityStreamStatus?: null | string @go(ActivityStreamStatus,*string)

	// Provides a list of the Amazon Web Services Identity and Access Management
	// (IAM) roles that are associated with the DB cluster. IAM roles that are associated
	// with a DB cluster grant permission for the DB cluster to access other Amazon
	// Web Services on your behalf.
	associatedRoles?: [...null | #DBClusterRole] @go(AssociatedRoles,[]*DBClusterRole)

	// The time when a stopped DB cluster is restarted automatically.
	automaticRestartTime?: null | metav1.#Time @go(AutomaticRestartTime,*metav1.Time)

	// The number of change records stored for Backtrack.
	backtrackConsumedChangeRecords?: null | int64 @go(BacktrackConsumedChangeRecords,*int64)

	// The current capacity of an Aurora Serverless v1 DB cluster. The capacity
	// is 0 (zero) when the cluster is paused.
	//
	// For more information about Aurora Serverless v1, see Using Amazon Aurora
	// Serverless v1 (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
	// in the Amazon Aurora User Guide.
	capacity?: null | int64 @go(Capacity,*int64)

	// Identifies the clone group to which the DB cluster is associated.
	cloneGroupID?: null | string @go(CloneGroupID,*string)

	// Specifies the time when the DB cluster was created, in Universal Coordinated
	// Time (UTC).
	clusterCreateTime?: null | metav1.#Time @go(ClusterCreateTime,*metav1.Time)

	// Specifies whether the DB cluster is a clone of a DB cluster owned by a different
	// Amazon Web Services account.
	crossAccountClone?: null | bool @go(CrossAccountClone,*bool)

	// Identifies all custom endpoints associated with the cluster.
	customEndpoints?: [...null | string] @go(CustomEndpoints,[]*string)

	// The Amazon Resource Name (ARN) for the DB cluster.
	dbClusterARN?: null | string @go(DBClusterARN,*string)

	// Contains a user-supplied DB cluster identifier. This identifier is the unique
	// key that identifies a DB cluster.
	dbClusterIdentifier?: null | string @go(DBClusterIdentifier,*string)

	// Provides the list of instances that make up the DB cluster.
	dbClusterMembers?: [...null | #DBClusterMember] @go(DBClusterMembers,[]*DBClusterMember)

	// Provides the list of option group memberships for this DB cluster.
	dbClusterOptionGroupMemberships?: [...null | #DBClusterOptionGroupStatus] @go(DBClusterOptionGroupMemberships,[]*DBClusterOptionGroupStatus)

	// Specifies the name of the DB cluster parameter group for the DB cluster.
	dbClusterParameterGroup?: null | string @go(DBClusterParameterGroup,*string)

	// Specifies information on the subnet group associated with the DB cluster,
	// including the name, description, and subnets in the subnet group.
	dbSubnetGroup?: null | string @go(DBSubnetGroup,*string)

	// The Amazon Web Services Region-unique, immutable identifier for the DB cluster.
	// This identifier is found in Amazon Web Services CloudTrail log entries whenever
	// the KMS key for the DB cluster is accessed.
	dbClusterResourceID?: null | string @go(DBClusterResourceID,*string)

	// The Active Directory Domain membership records associated with the DB cluster.
	domainMemberships?: [...null | #DomainMembership] @go(DomainMemberships,[]*DomainMembership)

	// The earliest time to which a DB cluster can be backtracked.
	earliestBacktrackTime?: null | metav1.#Time @go(EarliestBacktrackTime,*metav1.Time)

	// The earliest time to which a database can be restored with point-in-time
	// restore.
	earliestRestorableTime?: null | metav1.#Time @go(EarliestRestorableTime,*metav1.Time)

	// A list of log types that this DB cluster is configured to export to CloudWatch
	// Logs.
	//
	// Log types vary by DB engine. For information about the log types for each
	// DB engine, see Amazon RDS Database Log Files (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html)
	// in the Amazon Aurora User Guide.
	enabledCloudwatchLogsExports?: [...null | string] @go(EnabledCloudwatchLogsExports,[]*string)

	// Specifies the connection endpoint for the primary instance of the DB cluster.
	endpoint?: null | string @go(Endpoint,*string)

	// Specifies whether you have requested to enable write forwarding for a secondary
	// cluster in an Aurora global database. Because write forwarding takes time
	// to enable, check the value of GlobalWriteForwardingStatus to confirm that
	// the request has completed before using the write forwarding feature for this
	// cluster.
	globalWriteForwardingRequested?: null | bool @go(GlobalWriteForwardingRequested,*bool)

	// Specifies whether a secondary cluster in an Aurora global database has write
	// forwarding enabled, not enabled, or is in the process of enabling it.
	globalWriteForwardingStatus?: null | string @go(GlobalWriteForwardingStatus,*string)

	// Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
	hostedZoneID?: null | string @go(HostedZoneID,*string)

	// A value that indicates whether the HTTP endpoint for an Aurora Serverless
	// v1 DB cluster is enabled.
	//
	// When enabled, the HTTP endpoint provides a connectionless web service API
	// for running SQL queries on the Aurora Serverless v1 DB cluster. You can also
	// query your database from inside the RDS console with the query editor.
	//
	// For more information, see Using the Data API for Aurora Serverless v1 (https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
	// in the Amazon Aurora User Guide.
	httpEndpointEnabled?: null | bool @go(HTTPEndpointEnabled,*bool)

	// A value that indicates whether the mapping of Amazon Web Services Identity
	// and Access Management (IAM) accounts to database accounts is enabled.
	iamDatabaseAuthenticationEnabled?: null | bool @go(IAMDatabaseAuthenticationEnabled,*bool)

	// Specifies the latest time to which a database can be restored with point-in-time
	// restore.
	latestRestorableTime?: null | metav1.#Time @go(LatestRestorableTime,*metav1.Time)

	// Specifies whether the DB cluster has instances in multiple Availability Zones.
	multiAZ?: null | bool @go(MultiAZ,*bool)

	// Specifies the progress of the operation as a percentage.
	percentProgress?: null | string @go(PercentProgress,*string)

	// True if Performance Insights is enabled for the DB cluster, and otherwise
	// false.
	//
	// This setting is only for non-Aurora Multi-AZ DB clusters.
	performanceInsightsEnabled?: null | bool @go(PerformanceInsightsEnabled,*bool)

	// Contains one or more identifiers of the read replicas associated with this
	// DB cluster.
	readReplicaIdentifiers?: [...null | string] @go(ReadReplicaIdentifiers,[]*string)

	// The reader endpoint for the DB cluster. The reader endpoint for a DB cluster
	// load-balances connections across the Aurora Replicas that are available in
	// a DB cluster. As clients request new connections to the reader endpoint,
	// Aurora distributes the connection requests among the Aurora Replicas in the
	// DB cluster. This functionality can help balance your read workload across
	// multiple Aurora Replicas in your DB cluster.
	//
	// If a failover occurs, and the Aurora Replica that you are connected to is
	// promoted to be the primary instance, your connection is dropped. To continue
	// sending your read workload to other Aurora Replicas in the cluster, you can
	// then reconnect to the reader endpoint.
	readerEndpoint?:           null | string                    @go(ReaderEndpoint,*string)
	scalingConfigurationInfo?: null | #ScalingConfigurationInfo @go(ScalingConfigurationInfo,*ScalingConfigurationInfo)

	// Specifies the current state of this DB cluster.
	status?: null | string @go(Status,*string)
	tagList?: [...null | #Tag] @go(TagList,[]*Tag)

	// Provides a list of VPC security groups that the DB cluster belongs to.
	vpcSecurityGroups?: [...null | #VPCSecurityGroupMembership] @go(VPCSecurityGroups,[]*VPCSecurityGroupMembership)
}

// DBClusterStatus defines the observed state of DBCluster.
#DBClusterStatus: {
	xpv1.#ResourceStatus
	atProvider?: #DBClusterObservation @go(AtProvider)
}

// DBCluster is the Schema for the DBClusters API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DBCluster: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #DBClusterSpec     @go(Spec)
	status?:   #DBClusterStatus   @go(Status)
}

// DBClusterList contains a list of DBClusters
#DBClusterList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#DBCluster] @go(Items,[]DBCluster)
}