// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/redshift/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// The cluster is healthy and available
#StateAvailable: "available"

// The cluster is being created. The cluster is inaccessible while it is being created.
#StateCreating: "creating"

// The cluster is being deleted.
#StateDeleting: "deleting"

// The cluster is being modified.
#StateModifying: "modifying"

// The cluster has failed and Amazon Redshift can't recover it. Perform a point-in-time restore to the latest restorable time of the Cluster to recover the data.
#StateFailed: "failed"

// ClusterParameters define the parameters available for an AWS Redshift cluster
#ClusterParameters: {
	// Region is the region you'd like the Cluster to be created in.
	region: string @go(Region)

	// NodeType is the node type defining its size and compute capacity to be
	// provisioned for the cluster. For information about node types,
	// go to Working with Clusters (https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes)
	// in the Amazon Redshift Cluster Management Guide.
	nodeType: string @go(NodeType)

	// MasterUsername is the user name associated with the master user account for the cluster that
	// is being created.
	// Constraints:
	//    * Must be 1 - 128 alphanumeric characters. The user name can't be PUBLIC.
	//    * First character must be a letter.
	//    * Cannot be a reserved word. A list of reserved words can be found in
	//    Reserved Words (https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html)
	//    in the Amazon Redshift Database Developer Guide.
	// +immutable
	masterUsername: string @go(MasterUsername)

	// AllowVersionUpgrade indicates that major engine upgrades are applied automatically to the
	// cluster during the maintenance window.
	// default=true
	// +optional
	allowVersionUpgrade?: null | bool @go(AllowVersionUpgrade,*bool)

	// AutomatedSnapshotRetentionPeriod is the number of days for which
	// automated backups are retained. Setting this parameter to a positive
	// number enables backups. Setting this parameter to  0 disables automated backups.
	// default=1
	// +kubebuilder:validation:Maximum=35
	// +kubebuilder:validation:Minimum=0
	// +optional
	automatedSnapshotRetentionPeriod?: null | int32 @go(AutomatedSnapshotRetentionPeriod,*int32)

	// AvailabilityZone is the EC2 Availability Zone in which you want
	// Amazon Redshift to provision the cluster.
	// Default: A random, system-chosen Availability Zone in the region that is
	// specified by the endpoint.
	// Example: us-east-2d
	// Constraint: The specified Availability Zone must be in the same region as
	// the current endpoint. The Availability Zone parameter can't be specified
	// if the MultiAZ parameter is set to true.
	// The specified Availability Zone must be in the same AWS Region as the current endpoint.
	// +optional
	availabilityZone?: null | string @go(AvailabilityZone,*string)

	// ClusterParameterGroupName is the name of the cluster parameter group to use for the cluster.
	// Default: The default Amazon Redshift cluster parameter group. For information
	// about the default parameter group, go to Working with Amazon Redshift Parameter
	// Groups (https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
	// +optional
	clusterParameterGroupName?: null | string @go(ClusterParameterGroupName,*string)

	// SecurityGroups is a list of security groups to associate with this cluster.
	// Default: The default cluster security group for Amazon Redshift.
	// +optional
	clusterSecurityGroups?: [...string] @go(ClusterSecurityGroups,[]string)

	// ClusterSecurityGroupRefs are references to ClusterSecurityGroups used to set
	// the ClusterSecurityGroups.
	// +immutable
	// +optional
	clusterSecurityGroupRefs?: [...xpv1.#Reference] @go(ClusterSecurityGroupRefs,[]xpv1.Reference)

	// ClusterSecurityGroupSelector selects references to ClusterSecurityGroups used
	// to set the ClusterSecurityGroups.
	// +immutable
	// +optional
	clusterSecurityGroupSelector?: null | xpv1.#Selector @go(ClusterSecurityGroupSelector,*xpv1.Selector)

	// ClusterSubnetGroupName is the name of a cluster subnet group to be associated with this cluster.
	// If this parameter is not provided the resulting cluster will be deployed
	// outside virtual private cloud (VPC).
	// +optional
	clusterSubnetGroupName?: null | string @go(ClusterSubnetGroupName,*string)

	// ClusterType is the type of the cluster you want.
	// When cluster type is specified as
	//    * single-node, the NumberOfNodes parameter is not required.
	//    * multi-node, the NumberOfNodes parameter is required.
	// default=multi-node
	// +kubebuilder:validation:Enum=multi-node;single-node
	// +optional
	clusterType?: null | string @go(ClusterType,*string)

	// ClusterVersion is the version of the Amazon Redshift engine software
	// that you want to deploy on the cluster. The version selected runs on all the nodes in the cluster.
	// Constraints: Only version 1.0 is currently available.
	// +optional
	clusterVersion?: null | string @go(ClusterVersion,*string)

	// DBName is the name of the first database to be created when the cluster is created.
	// To create additional databases after the cluster is created, connect to the
	// cluster with a SQL client and use SQL commands to create a database. For
	// more information, go to Create a Database (https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html)
	// in the Amazon Redshift Database Developer Guide.
	// Constraints:
	//    * Must contain 1 to 64 alphanumeric characters.
	//    * Must contain only lowercase letters.
	//    * Cannot be a word that is reserved by the service. A list of reserved
	//    words can be found in Reserved Words (https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html)
	//    in the Amazon Redshift Database Developer Guide.
	// default=dev
	// +optional
	dbName?: null | string @go(DBName,*string)

	// The Elastic IP (EIP) address for the cluster.
	// Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
	// through an Internet gateway. For more information about provisioning clusters
	// in EC2-VPC, go to Supported Platforms to Launch Your Cluster (https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms)
	// in the Amazon Redshift Cluster Management Guide.
	// +optional
	elasticIP?: null | string @go(ElasticIP,*string)

	// Encrypted defines whether your data in the cluster will be encrypted at rest or not.
	// default=false
	// +optional
	encrypted?: null | bool @go(Encrypted,*bool)

	// EnhancedVPCRouting specifies whether to create the cluster with enhanced VPC
	// routing enabled. To create a cluster that uses enhanced VPC routing, the
	// cluster must be in a VPC. For more information, see Enhanced VPC Routing
	// (https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html)
	// in the Amazon Redshift Cluster Management Guide.
	// If this option is true, enhanced VPC routing is enabled.
	// default=false
	// +optional
	enhancedVPCRouting?: null | bool @go(EnhancedVPCRouting,*bool)

	// FinalClusterSnapshotIdentifier is the identifier of the final snapshot
	// that is to be created immediately before deleting the cluster.
	// If this parameter is provided, SkipFinalClusterSnapshot must be false.
	// Constraints:
	//    * Must be 1 to 255 alphanumeric characters.
	//    * First character must be a letter.
	//    * Cannot end with a hyphen or contain two consecutive hyphens.
	// +optional
	finalClusterSnapshotIdentifier?: null | string @go(FinalClusterSnapshotIdentifier,*string)

	// FinalClusterSnapshotRetentionPeriod is the number of days that
	// a manual snapshot is retained.
	// If the value is -1, the manual snapshot is retained indefinitely.
	// The value must be either -1 or an integer between 1 and 3,653.
	// default -1
	// +optional
	finalClusterSnapshotRetentionPeriod?: null | int32 @go(FinalClusterSnapshotRetentionPeriod,*int32)

	// HSMClientCertificateIdentifier specifies the name of the HSM client certificate
	// the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.
	// +optional
	hsmClientCertificateIdentifier?: null | string @go(HSMClientCertificateIdentifier,*string)

	// HSMConfigurationIdentifier specifies the name of the HSM configuration that
	// contains the information the Amazon Redshift cluster can use to retrieve
	// and store keys in an HSM.
	// +optional
	hsmConfigurationIdentifier?: null | string @go(HSMConfigurationIdentifier,*string)

	// IAMRoles is a list of AWS Identity and Access Management (IAM) roles that can be used
	// by the cluster to access other AWS services. You must supply the IAM roles
	// in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles
	// in a single request.
	// A cluster can have up to 10 IAM roles associated with it at any time.
	// kubebuilder:validation:MaxItems=10
	// +optional
	iamRoles?: [...string] @go(IAMRoles,[]string)

	// IAMRoleRefs are references to IAMRoles used to set
	// the IAMRoles.
	// +immutable
	// +optional
	iamRoleRefs?: [...xpv1.#Reference] @go(IAMRoleRefs,[]xpv1.Reference)

	// IAMRoleSelector selects references to IAMRoles used
	// to set the IAMRoles.
	// +immutable
	// +optional
	iamRoleSelector?: null | xpv1.#Selector @go(IAMRoleSelector,*xpv1.Selector)

	// KMSKeyID is the Amazon Resource Name (ARN) for the KMS encryption
	// key. If you are creating a cluster with the same AWS account that owns
	// the KMS encryption key used to encrypt the new cluster, then you can
	// use the KMS key alias instead of the ARN for the KM encryption key.
	// +optional
	kmsKeyID?: null | string @go(KMSKeyID,*string)

	// MaintenanceTrackName an optional parameter for the name of the maintenance track for the cluster.
	// +optional
	maintenanceTrackName?: null | string @go(MaintenanceTrackName,*string)

	// ManualSnapshotRetentionPeriod is the default number of days to retain a manual snapshot.
	// If the value is -1, the snapshot is retained indefinitely.
	// This setting doesn't change the retention period of existing snapshots.
	// default=1
	// +kubebuilder:validation:Maximum=3653
	// +optional
	manualSnapshotRetentionPeriod?: null | int32 @go(ManualSnapshotRetentionPeriod,*int32)

	// NewMasterUserPassword is the new password to be associated with the master user account
	// for the cluster that has being created.
	// Set this value if you want to change the existing password of the cluster.
	// Constraints:
	//    * Must be between 8 and 64 characters in length.
	//    * Must contain at least one uppercase letter.
	//    * Must contain at least one lowercase letter.
	//    * Must contain one number.
	//    * Can be any printable ASCII character (ASCII code 33 to 126) except '
	//    (single quote), " (double quote), \, /, @, or space.
	// +optional
	newMasterUserPassword?: null | string @go(NewMasterUserPassword,*string)

	// NewClusterIdentifier is the new identifier you want to use for the cluster.
	// +optional
	newClusterIdentifier?: null | string @go(NewClusterIdentifier,*string)

	// NumberOfNodes defines the number of compute nodes in the cluster.
	// This parameter is required when the ClusterType parameter is specified as multi-node.
	// For information about determining how many nodes you need, go to Working
	// with Clusters (https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes)
	// in the Amazon Redshift Cluster Management Guide.
	// If you don't specify this parameter, you get a single-node cluster. When
	// requesting a multi-node cluster, you must specify the number of nodes that
	// you want in the cluster.
	// default=1
	// +kubebuilder:validation:Maximum=100
	// +kubebuilder:validation:Minimum=1
	// +optional
	numberOfNodes?: null | int32 @go(NumberOfNodes,*int32)

	// Port specifies the port number on which the cluster accepts incoming connections.
	// The cluster is accessible only via the JDBC and ODBC connection strings.
	// Part of the connection string requires the port on which the cluster will
	// listen for incoming connections.
	// default=5439
	// +kubebuilder:validation:Maximum=65535
	// +kubebuilder:validation:Minimum=1150
	// +optional
	port?: null | int32 @go(Port,*int32)

	// PreferredMaintenanceWindow is the weekly time range (in UTC) during which
	// automated cluster maintenance can occur.
	// Default: A 30-minute window selected at random from an 8-hour block of time
	// per region, occurring on a random day of the week. For more information about
	// the time blocks for each region, see Maintenance Windows (https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows)
	// in Amazon Redshift Cluster Management Guide.
	// Constraints: Minimum 30-minute window.
	// +optional
	preferredMaintenanceWindow?: null | string @go(PreferredMaintenanceWindow,*string)

	// PubliclyAccessible is to specify if the cluster can be accessed from a public network.
	// +optional
	publiclyAccessible?: null | bool @go(PubliclyAccessible,*bool)

	// SkipFinalClusterSnapshot determines whether a final snapshot of the cluster
	// is created before Amazon Redshift deletes the cluster.
	// If true, a final cluster snapshot is not created.
	// If false, a final cluster snapshot is created before the cluster is deleted.
	// The FinalClusterSnapshotIdentifier parameter must be specified if SkipFinalClusterSnapshot
	// is false.
	// Default: false
	// +optional
	skipFinalClusterSnapshot?: null | bool @go(SkipFinalClusterSnapshot,*bool)

	// SnapshotScheduleIdentifier is a unique identifier for the snapshot schedule.
	// +optional
	snapshotScheduleIdentifier?: null | string @go(SnapshotScheduleIdentifier,*string)

	// Tags indicates a list of tags for the clusters.
	// +optional
	tags?: [...#Tag] @go(Tags,[]Tag)

	// VPCSecurityGroupIDs a list of Virtual Private Cloud (VPC) security groups to be associated with
	// the cluster.
	// +optional
	vpcSecurityGroupIds?: [...string] @go(VPCSecurityGroupIDs,[]string)

	// VPCSecurityGroupIDRefs are references to VPCSecurityGroups used to set
	// the VPCSecurityGroupIDs.
	// +immutable
	// +optional
	vpcSecurityGroupIDRefs?: [...xpv1.#Reference] @go(VPCSecurityGroupIDRefs,[]xpv1.Reference)

	// VPCSecurityGroupIDSelector selects references to VPCSecurityGroups used
	// to set the VPCSecurityGroupIDs.
	// +immutable
	// +optional
	vpcSecurityGroupIDSelector?: null | xpv1.#Selector @go(VPCSecurityGroupIDSelector,*xpv1.Selector)
}

// ClusterObservation is the representation of the current state that is observed.
#ClusterObservation: {
	// ClusterAvailabilityStatus is the availability status of the cluster.
	clusterAvailabilityStatus?: string @go(ClusterAvailabilityStatus)

	// ClusterCreateTime is the date and time that the cluster was created.
	clusterCreateTime?: null | metav1.#Time @go(ClusterCreateTime,*metav1.Time)

	// The nodes in the cluster.
	clusterNodes?: [...#ClusterNode] @go(ClusterNodes,[]ClusterNode)

	// The list of cluster parameter groups that are associated with this cluster.
	// Each parameter group in the list is returned with its status.
	clusterParameterGroups?: [...#ClusterParameterGroupStatus] @go(ClusterParameterGroups,[]ClusterParameterGroupStatus)

	// The public key for the cluster.
	clusterPublicKey?: string @go(ClusterPublicKey)

	// The specific revision number of the database in the cluster.
	clusterRevisionNumber?: string @go(ClusterRevisionNumber)

	// A value that returns the destination region and retention period that are
	// configured for cross-region snapshot copy.
	clusterSnapshotCopyStatus?: #ClusterSnapshotCopyStatus @go(ClusterSnapshotCopyStatus)

	// ClusterStatus is the current state of the cluster.
	clusterStatus?: string @go(ClusterStatus)

	// Describes the status of a cluster while it is in the process of resizing
	// with an incremental resize.
	dataTransferProgress?: #DataTransferProgress @go(DataTransferProgress)

	// Describes a group of DeferredMaintenanceWindow objects.
	deferredMaintenanceWindows?: [...#DeferredMaintenanceWindow] @go(DeferredMaintenanceWindows,[]DeferredMaintenanceWindow)

	// The status of the elastic IP (EIP) address.
	elasticIPStatus?: #ElasticIPStatus @go(ElasticIPStatus)

	// The number of nodes that you can resize the cluster to with the elastic resize
	// method.
	elasticResizeNumberOfNodeOptions?: string @go(ElasticResizeNumberOfNodeOptions)

	// Endpoint specifies the connection endpoint.
	endpoint?: #Endpoint @go(Endpoint)

	// The date and time when the next snapshot is expected to be taken for clusters
	// with a valid snapshot schedule and backups enabled.
	expectedNextSnapshotScheduleTime?: null | metav1.#Time @go(ExpectedNextSnapshotScheduleTime,*metav1.Time)

	// The status of next expected snapshot for clusters having a valid snapshot
	// schedule and backups enabled. Possible values are the following:
	//
	//    * OnTrack - The next snapshot is expected to be taken on time.
	//
	//    * Pending - The next snapshot is pending to be taken.
	expectedNextSnapshotScheduleTimeStatus?: string @go(ExpectedNextSnapshotScheduleTimeStatus)

	// A value that reports whether the Amazon Redshift cluster has finished applying
	// any hardware security module (HSM) settings changes specified in a modify
	// cluster command.
	//
	// Values: active, applying
	hsmStatus?: #HSMStatus @go(HSMStatus)

	// The status of a modify operation, if any, initiated for the cluster.
	modifyStatus?: string @go(ModifyStatus)

	// The date and time in UTC when system maintenance can begin.
	nextMaintenanceWindowStartTime?: null | metav1.#Time @go(NextMaintenanceWindowStartTime,*metav1.Time)

	// Cluster operations that are waiting to be started.
	pendingActions?: [...string] @go(PendingActions,[]string)

	// The current state of the cluster snapshot schedule.
	snapshotScheduleState?: string @go(SnapshotScheduleState)

	// The identifier of the VPC the cluster is in, if the cluster is in a VPC.
	vpcId?: string @go(VPCID)
}

// ClusterParameterGroupStatus is the status of the Cluster parameter group.
#ClusterParameterGroupStatus: {
	// The list of parameter statuses.
	//
	// For more information about parameters and parameter groups, go to Amazon
	// Redshift Parameter Groups (https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
	// in the Amazon Redshift Cluster Management Guide.
	clusterParameterStatusList?: [...#ClusterParameterStatus] @go(ClusterParameterStatusList,[]ClusterParameterStatus)

	// The status of parameter updates.
	parameterApplyStatus?: string @go(ParameterApplyStatus)

	// The name of the cluster parameter group.
	parameterGroupName?: string @go(ParameterGroupName)
}

// ClusterParameterStatus describes the status of a Cluster parameter.
#ClusterParameterStatus: {
	// The error that prevented the parameter from being applied to the database.
	parameterApplyErrorDescription?: string @go(ParameterApplyErrorDescription)

	// The status of the parameter that indicates whether the parameter is in sync
	// with the database, waiting for a cluster reboot, or encountered an error
	// when being applied.
	//
	// The following are possible statuses and descriptions.
	//
	//    * in-sync: The parameter value is in sync with the database.
	//
	//    * pending-reboot: The parameter value will be applied after the cluster
	//    reboots.
	//
	//    * applying: The parameter value is being applied to the database.
	//
	//    * invalid-parameter: Cannot apply the parameter value because it has an
	//    invalid value or syntax.
	//
	//    * apply-deferred: The parameter contains static property changes. The
	//    changes are deferred until the cluster reboots.
	//
	//    * apply-error: Cannot connect to the cluster. The parameter change will
	//    be applied after the cluster reboots.
	//
	//    * unknown-error: Cannot apply the parameter change right now. The change
	//    will be applied after the cluster reboots.
	parameterApplyStatus?: string @go(ParameterApplyStatus)

	// The name of the parameter.
	parameterName?: string @go(ParameterName)
}

// ClusterSecurityGroupMembership is used as a response element for queries on Cluster security.
#ClusterSecurityGroupMembership: {
	// The name of the cluster security group.
	clusterSecurityGroupName?: string @go(ClusterSecurityGroupName)

	// The status of the cluster security group.
	status?: string @go(Status)
}

// ClusterNode is the identifier of a node in a cluster.
#ClusterNode: {
	// Whether the node is a leader node or a compute node.
	nodeRole?: string @go(NodeRole)

	// The private IP address of a node within a cluster.
	privateIPAddress?: string @go(PrivateIPAddress)

	// The public IP address of a node within a cluster.
	publicIPAddress?: string @go(PublicIPAddress)
}

// ClusterSnapshotCopyStatus returns the destination region and retention period
// that are configured for cross-region snapshot copy.
#ClusterSnapshotCopyStatus: {
	// The destination region that snapshots are automatically copied to when cross-region
	// snapshot copy is enabled.
	destinationRegion?: string @go(DestinationRegion)

	// The number of days that automated snapshots are retained in the destination
	// region after they are copied from a source region. If the value is -1, the
	// manual snapshot is retained indefinitely.
	//
	// The value must be either -1 or an integer between 1 and 3,653.
	manualSnapshotRetentionPeriod?: int32 @go(ManualSnapshotRetentionPeriod)

	// The number of days that automated snapshots are retained in the destination
	// region after they are copied from a source region.
	retentionPeriod?: int64 @go(RetentionPeriod)

	// The name of the snapshot copy grant.
	snapshotCopyGrantName?: string @go(SnapshotCopyGrantName)
}

// DataTransferProgress describes the status of a cluster while it is in the process of resizing
// with an incremental resize.
#DataTransferProgress: {
	// Describes the data transfer rate in MB's per second.
	currentRateInMegaBytesPerSecond?: int @go(CurrentRateInMegaBytesPerSecond)

	// Describes the total amount of data that has been transferred in MB's.
	dataTransferredInMegaBytes?: int64 @go(DataTransferredInMegaBytes)

	// Describes the number of seconds that have elapsed during the data transfer.
	elapsedTimeInSeconds?: int64 @go(ElapsedTimeInSeconds)

	// Describes the estimated number of seconds remaining to complete the transfer.
	estimatedTimeToCompletionInSeconds?: int64 @go(EstimatedTimeToCompletionInSeconds)

	// Describes the status of the cluster. While the transfer is in progress the
	// status is transferringdata.
	status?: string @go(Status)

	// Describes the total amount of data to be transferred in megabytes.
	totalDataInMegaBytes?: int64 @go(TotalDataInMegaBytes)
}

// DeferredMaintenanceWindow describes a deferred maintenance window
#DeferredMaintenanceWindow: {
	// A timestamp for the end of the time period when we defer maintenance.
	deferMaintenanceEndTime?: null | metav1.#Time @go(DeferMaintenanceEndTime,*metav1.Time)

	// A unique identifier for the maintenance window.
	deferMaintenanceIdentifier?: string @go(DeferMaintenanceIdentifier)

	// A timestamp for the beginning of the time period when we defer maintenance.
	deferMaintenanceStartTime?: null | metav1.#Time @go(DeferMaintenanceStartTime,*metav1.Time)
}

// ElasticIPStatus describes the status of the elastic IP (EIP) address.
#ElasticIPStatus: {
	// The elastic IP (EIP) address for the cluster.
	elasticIP?: string @go(ElasticIP)

	// The status of the elastic IP (EIP) address.
	status?: string @go(Status)
}

// Endpoint is used as a response element in the following actions:
//   - CreateCluster
//   - DescribeClusters
//   - DeleteCluster
//
// Please also see https://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Endpoint
#Endpoint: {
	// Address specifies the DNS address of the cluster.
	address?: string @go(Address)

	// Port specifies the port that the database engine is listening on.
	port?: int32 @go(Port)
}

// HSMStatus describes the status of changes to HSM settings.
#HSMStatus: {
	// Specifies the name of the HSM client certificate the Amazon Redshift cluster
	// uses to retrieve the data encryption keys stored in an HSM.
	hsmClientCertificateIdentifier?: string @go(HSMClientCertificateIdentifier)

	// Specifies the name of the HSM configuration that contains the information
	// the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
	hsmConfigurationIdentifier?: string @go(HSMConfigurationIdentifier)

	// Reports whether the Amazon Redshift cluster has finished applying any HSM
	// settings changes specified in a modify cluster command.
	//
	// Values: active, applying
	status?: string @go(Status)
}

// RestoreStatus describes the status of a cluster restore action. Returns null if the cluster
// was not created by restoring a snapshot.
#RestoreStatus: {
	// The number of megabytes per second being transferred from the backup storage.
	// Returns the average rate for a completed backup. This field is only updated
	// when you restore to DC2 and DS2 node types.
	currentRestoreRateInMegaBytesPerSecond?: float64 @go(CurrentRestoreRateInMegaBytesPerSecond)

	// The amount of time an in-progress restore has been running, or the amount
	// of time it took a completed restore to finish. This field is only updated
	// when you restore to DC2 and DS2 node types.
	elapsedTimeInSeconds?: int64 @go(ElapsedTimeInSeconds)

	// The estimate of the time remaining before the restore will complete. Returns
	// 0 for a completed restore. This field is only updated when you restore to
	// DC2 and DS2 node types.
	estimatedTimeToCompletionInSeconds?: int64 @go(EstimatedTimeToCompletionInSeconds)

	// The number of megabytes that have been transferred from snapshot storage.
	// This field is only updated when you restore to DC2 and DS2 node types.
	progressInMegaBytes?: int64 @go(ProgressInMegaBytes)

	// The size of the set of snapshot data used to restore the cluster. This field
	// is only updated when you restore to DC2 and DS2 node types.
	snapshotSizeInMegaBytes?: int64 @go(SnapshotSizeInMegaBytes)

	// The status of the restore action. Returns starting, restoring, completed,
	// or failed.
	status?: string @go(Status)
}

// VPCSecurityGroupMembership is used as a response element for queries on VPC security
// Can be removed after moving to v1beta1
#VPCSecurityGroupMembership: {
	// The status of the VPC security group.
	status: string @go(Status)

	// The identifier of the VPC security group.
	vpcSecurityGroupID: string @go(VPCSecurityGroupID)
}

// Tag represetnt a key-pair metadata assigned to a Redshift Cluster
#Tag: {
	// The key of the tag.
	tag: string @go(Key)

	// The value of the tag.
	value: string @go(Value)
}

// ClusterSpec defines the desired state of an AWS Redshift Cluster.
#ClusterSpec: {
	xpv1.#ResourceSpec
	forProvider: #ClusterParameters @go(ForProvider)
}

// ClusterStatus represents the observed state of an AWS Redshift Cluster.
#ClusterStatus: {
	xpv1.#ResourceStatus
	atProvider?: #ClusterObservation @go(AtProvider)
}

// A Cluster is a managed resource that represents an AWS Redshift cluster.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.atProvider.clusterStatus"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Cluster: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #ClusterSpec       @go(Spec)
	status?:   #ClusterStatus     @go(Status)
}

// ClusterList contains a list of Cluster
#ClusterList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Cluster] @go(Items,[]Cluster)
}