// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/docdb/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#AvailabilityZone: {
	name?: null | string @go(Name,*string)
}

// +kubebuilder:skipversion
#Certificate: {
	certificateARN?:        null | string       @go(CertificateARN,*string)
	certificateIdentifier?: null | string       @go(CertificateIdentifier,*string)
	certificateType?:       null | string       @go(CertificateType,*string)
	thumbprint?:            null | string       @go(Thumbprint,*string)
	validFrom?:             null | metav1.#Time @go(ValidFrom,*metav1.Time)
	validTill?:             null | metav1.#Time @go(ValidTill,*metav1.Time)
}

// +kubebuilder:skipversion
#CloudwatchLogsExportConfiguration: {
	disableLogTypes?: [...null | string] @go(DisableLogTypes,[]*string)
	enableLogTypes?: [...null | string] @go(EnableLogTypes,[]*string)
}

// +kubebuilder:skipversion
#DBClusterMember: {
	dbClusterParameterGroupStatus?: null | string @go(DBClusterParameterGroupStatus,*string)
	dbInstanceIdentifier?:          null | string @go(DBInstanceIdentifier,*string)
	isClusterWriter?:               null | bool   @go(IsClusterWriter,*bool)
	promotionTier?:                 null | int64  @go(PromotionTier,*int64)
}

// +kubebuilder:skipversion
#DBClusterParameterGroup_SDK: {
	dbClusterParameterGroupARN?:  null | string @go(DBClusterParameterGroupARN,*string)
	dbClusterParameterGroupName?: null | string @go(DBClusterParameterGroupName,*string)
	dbParameterGroupFamily?:      null | string @go(DBParameterGroupFamily,*string)
	description?:                 null | string @go(Description,*string)
}

// +kubebuilder:skipversion
#DBClusterRole: {
	roleARN?: null | string @go(RoleARN,*string)
	status?:  null | string @go(Status,*string)
}

// +kubebuilder:skipversion
#DBClusterSnapshot: {
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)
	clusterCreateTime?:           null | metav1.#Time @go(ClusterCreateTime,*metav1.Time)
	dbClusterIdentifier?:         null | string       @go(DBClusterIdentifier,*string)
	dbClusterSnapshotARN?:        null | string       @go(DBClusterSnapshotARN,*string)
	dbClusterSnapshotIdentifier?: null | string       @go(DBClusterSnapshotIdentifier,*string)
	engine?:                      null | string       @go(Engine,*string)
	engineVersion?:               null | string       @go(EngineVersion,*string)
	kmsKeyID?:                    null | string       @go(KMSKeyID,*string)
	masterUsername?:              null | string       @go(MasterUsername,*string)
	percentProgress?:             null | int64        @go(PercentProgress,*int64)
	port?:                        null | int64        @go(Port,*int64)
	snapshotCreateTime?:          null | metav1.#Time @go(SnapshotCreateTime,*metav1.Time)
	snapshotType?:                null | string       @go(SnapshotType,*string)
	sourceDBClusterSnapshotARN?:  null | string       @go(SourceDBClusterSnapshotARN,*string)
	status?:                      null | string       @go(Status,*string)
	storageEncrypted?:            null | bool         @go(StorageEncrypted,*bool)
	vpcID?:                       null | string       @go(VPCID,*string)
}

// +kubebuilder:skipversion
#DBClusterSnapshotAttribute: {
	attributeName?: null | string @go(AttributeName,*string)
}

// +kubebuilder:skipversion
#DBClusterSnapshotAttributesResult: {
	dbClusterSnapshotIdentifier?: null | string @go(DBClusterSnapshotIdentifier,*string)
}

// +kubebuilder:skipversion
#DBCluster_SDK: {
	associatedRoles?: [...null | #DBClusterRole] @go(AssociatedRoles,[]*DBClusterRole)
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)
	backupRetentionPeriod?: null | int64        @go(BackupRetentionPeriod,*int64)
	clusterCreateTime?:     null | metav1.#Time @go(ClusterCreateTime,*metav1.Time)
	dbClusterARN?:          null | string       @go(DBClusterARN,*string)
	dbClusterIdentifier?:   null | string       @go(DBClusterIdentifier,*string)
	dbClusterMembers?: [...null | #DBClusterMember] @go(DBClusterMembers,[]*DBClusterMember)
	dbClusterParameterGroup?: null | string       @go(DBClusterParameterGroup,*string)
	dbSubnetGroup?:           null | string       @go(DBSubnetGroup,*string)
	dbClusterResourceID?:     null | string       @go(DBClusterResourceID,*string)
	deletionProtection?:      null | bool         @go(DeletionProtection,*bool)
	earliestRestorableTime?:  null | metav1.#Time @go(EarliestRestorableTime,*metav1.Time)
	enabledCloudwatchLogsExports?: [...null | string] @go(EnabledCloudwatchLogsExports,[]*string)
	endpoint?:                   null | string       @go(Endpoint,*string)
	engine?:                     null | string       @go(Engine,*string)
	engineVersion?:              null | string       @go(EngineVersion,*string)
	hostedZoneID?:               null | string       @go(HostedZoneID,*string)
	kmsKeyID?:                   null | string       @go(KMSKeyID,*string)
	latestRestorableTime?:       null | metav1.#Time @go(LatestRestorableTime,*metav1.Time)
	masterUsername?:             null | string       @go(MasterUsername,*string)
	multiAZ?:                    null | bool         @go(MultiAZ,*bool)
	percentProgress?:            null | string       @go(PercentProgress,*string)
	port?:                       null | int64        @go(Port,*int64)
	preferredBackupWindow?:      null | string       @go(PreferredBackupWindow,*string)
	preferredMaintenanceWindow?: null | string       @go(PreferredMaintenanceWindow,*string)
	readReplicaIdentifiers?: [...null | string] @go(ReadReplicaIdentifiers,[]*string)
	readerEndpoint?:              null | string @go(ReaderEndpoint,*string)
	replicationSourceIdentifier?: null | string @go(ReplicationSourceIdentifier,*string)
	status?:                      null | string @go(Status,*string)
	storageEncrypted?:            null | bool   @go(StorageEncrypted,*bool)
	vpcSecurityGroups?: [...null | #VPCSecurityGroupMembership] @go(VPCSecurityGroups,[]*VPCSecurityGroupMembership)
}

// +kubebuilder:skipversion
#DBEngineVersion: {
	dbEngineDescription?:        null | string @go(DBEngineDescription,*string)
	dbEngineVersionDescription?: null | string @go(DBEngineVersionDescription,*string)
	dbParameterGroupFamily?:     null | string @go(DBParameterGroupFamily,*string)
	engine?:                     null | string @go(Engine,*string)
	engineVersion?:              null | string @go(EngineVersion,*string)
	exportableLogTypes?: [...null | string] @go(ExportableLogTypes,[]*string)
	supportsLogExportsToCloudwatchLogs?: null | bool @go(SupportsLogExportsToCloudwatchLogs,*bool)
}

// +kubebuilder:skipversion
#DBInstanceStatusInfo: {
	message?:    null | string @go(Message,*string)
	normal?:     null | bool   @go(Normal,*bool)
	status?:     null | string @go(Status,*string)
	statusType?: null | string @go(StatusType,*string)
}

// +kubebuilder:skipversion
#DBInstance_SDK: {
	autoMinorVersionUpgrade?: null | bool   @go(AutoMinorVersionUpgrade,*bool)
	availabilityZone?:        null | string @go(AvailabilityZone,*string)
	backupRetentionPeriod?:   null | int64  @go(BackupRetentionPeriod,*int64)
	caCertificateIdentifier?: null | string @go(CACertificateIdentifier,*string)
	dbClusterIdentifier?:     null | string @go(DBClusterIdentifier,*string)
	dbInstanceARN?:           null | string @go(DBInstanceARN,*string)
	dbInstanceClass?:         null | string @go(DBInstanceClass,*string)
	dbInstanceIdentifier?:    null | string @go(DBInstanceIdentifier,*string)
	dbInstanceStatus?:        null | string @go(DBInstanceStatus,*string)

	// Detailed information about a subnet group.
	dbSubnetGroup?: null | #DBSubnetGroup_SDK @go(DBSubnetGroup,*DBSubnetGroup_SDK)
	dbiResourceID?: null | string             @go(DBIResourceID,*string)
	enabledCloudwatchLogsExports?: [...null | string] @go(EnabledCloudwatchLogsExports,[]*string)

	// Network information for accessing a cluster or instance. Client programs
	// must specify a valid endpoint to access these Amazon DocumentDB resources.
	endpoint?:             null | #Endpoint    @go(Endpoint,*Endpoint)
	engine?:               null | string       @go(Engine,*string)
	engineVersion?:        null | string       @go(EngineVersion,*string)
	instanceCreateTime?:   null | metav1.#Time @go(InstanceCreateTime,*metav1.Time)
	kmsKeyID?:             null | string       @go(KMSKeyID,*string)
	latestRestorableTime?: null | metav1.#Time @go(LatestRestorableTime,*metav1.Time)

	// One or more modified settings for an instance. These modified settings have
	// been requested, but haven't been applied yet.
	pendingModifiedValues?:      null | #PendingModifiedValues @go(PendingModifiedValues,*PendingModifiedValues)
	preferredBackupWindow?:      null | string                 @go(PreferredBackupWindow,*string)
	preferredMaintenanceWindow?: null | string                 @go(PreferredMaintenanceWindow,*string)
	promotionTier?:              null | int64                  @go(PromotionTier,*int64)
	publiclyAccessible?:         null | bool                   @go(PubliclyAccessible,*bool)
	statusInfos?: [...null | #DBInstanceStatusInfo] @go(StatusInfos,[]*DBInstanceStatusInfo)
	storageEncrypted?: null | bool @go(StorageEncrypted,*bool)
	vpcSecurityGroups?: [...null | #VPCSecurityGroupMembership] @go(VPCSecurityGroups,[]*VPCSecurityGroupMembership)
}

// +kubebuilder:skipversion
#DBSubnetGroup_SDK: {
	dbSubnetGroupARN?:         null | string @go(DBSubnetGroupARN,*string)
	dbSubnetGroupDescription?: null | string @go(DBSubnetGroupDescription,*string)
	dbSubnetGroupName?:        null | string @go(DBSubnetGroupName,*string)
	subnetGroupStatus?:        null | string @go(SubnetGroupStatus,*string)
	subnets?: [...null | #Subnet] @go(Subnets,[]*Subnet)
	vpcID?: null | string @go(VPCID,*string)
}

// +kubebuilder:skipversion
#Endpoint: {
	address?:      null | string @go(Address,*string)
	hostedZoneID?: null | string @go(HostedZoneID,*string)
	port?:         null | int64  @go(Port,*int64)
}

// +kubebuilder:skipversion
#EngineDefaults: {
	dbParameterGroupFamily?: null | string @go(DBParameterGroupFamily,*string)
	marker?:                 null | string @go(Marker,*string)
	parameters?: [...null | #Parameter] @go(Parameters,[]*Parameter)
}

// +kubebuilder:skipversion
#Event: {
	date?:             null | metav1.#Time @go(Date,*metav1.Time)
	message?:          null | string       @go(Message,*string)
	sourceARN?:        null | string       @go(SourceARN,*string)
	sourceIdentifier?: null | string       @go(SourceIdentifier,*string)
}

// +kubebuilder:skipversion
#EventCategoriesMap: {
	sourceType?: null | string @go(SourceType,*string)
}

// +kubebuilder:skipversion
#EventSubscription: {
	custSubscriptionID?:       null | string @go(CustSubscriptionID,*string)
	customerAWSID?:            null | string @go(CustomerAWSID,*string)
	enabled?:                  null | bool   @go(Enabled,*bool)
	eventSubscriptionARN?:     null | string @go(EventSubscriptionARN,*string)
	snsTopicARN?:              null | string @go(SNSTopicARN,*string)
	sourceType?:               null | string @go(SourceType,*string)
	status?:                   null | string @go(Status,*string)
	subscriptionCreationTime?: null | string @go(SubscriptionCreationTime,*string)
}

// +kubebuilder:skipversion
#Filter: {
	name?: null | string @go(Name,*string)
	values?: [...null | string] @go(Values,[]*string)
}

// +kubebuilder:skipversion
#GlobalCluster: {
	databaseName?:            null | string @go(DatabaseName,*string)
	deletionProtection?:      null | bool   @go(DeletionProtection,*bool)
	engine?:                  null | string @go(Engine,*string)
	engineVersion?:           null | string @go(EngineVersion,*string)
	globalClusterARN?:        null | string @go(GlobalClusterARN,*string)
	globalClusterIdentifier?: null | string @go(GlobalClusterIdentifier,*string)
	globalClusterResourceID?: null | string @go(GlobalClusterResourceID,*string)
	status?:                  null | string @go(Status,*string)
	storageEncrypted?:        null | bool   @go(StorageEncrypted,*bool)
}

// +kubebuilder:skipversion
#GlobalClusterMember: {
	dbClusterARN?: null | string @go(DBClusterARN,*string)
	isWriter?:     null | bool   @go(IsWriter,*bool)
}

// +kubebuilder:skipversion
#OrderableDBInstanceOption: {
	dbInstanceClass?: null | string @go(DBInstanceClass,*string)
	engine?:          null | string @go(Engine,*string)
	engineVersion?:   null | string @go(EngineVersion,*string)
	licenseModel?:    null | string @go(LicenseModel,*string)
	vpc?:             null | bool   @go(VPC,*bool)
}

// +kubebuilder:skipversion
#Parameter: {
	allowedValues?:        null | string @go(AllowedValues,*string)
	applyMethod?:          null | string @go(ApplyMethod,*string)
	applyType?:            null | string @go(ApplyType,*string)
	dataType?:             null | string @go(DataType,*string)
	description?:          null | string @go(Description,*string)
	isModifiable?:         null | bool   @go(IsModifiable,*bool)
	minimumEngineVersion?: null | string @go(MinimumEngineVersion,*string)
	parameterName?:        null | string @go(ParameterName,*string)
	parameterValue?:       null | string @go(ParameterValue,*string)
	source?:               null | string @go(Source,*string)
}

// +kubebuilder:skipversion
#PendingCloudwatchLogsExports: {
	logTypesToDisable?: [...null | string] @go(LogTypesToDisable,[]*string)
	logTypesToEnable?: [...null | string] @go(LogTypesToEnable,[]*string)
}

// +kubebuilder:skipversion
#PendingMaintenanceAction: {
	action?:               null | string       @go(Action,*string)
	autoAppliedAfterDate?: null | metav1.#Time @go(AutoAppliedAfterDate,*metav1.Time)
	currentApplyDate?:     null | metav1.#Time @go(CurrentApplyDate,*metav1.Time)
	description?:          null | string       @go(Description,*string)
	forcedApplyDate?:      null | metav1.#Time @go(ForcedApplyDate,*metav1.Time)
	optInStatus?:          null | string       @go(OptInStatus,*string)
}

// +kubebuilder:skipversion
#PendingModifiedValues: {
	allocatedStorage?:        null | int64  @go(AllocatedStorage,*int64)
	backupRetentionPeriod?:   null | int64  @go(BackupRetentionPeriod,*int64)
	caCertificateIdentifier?: null | string @go(CACertificateIdentifier,*string)
	dbInstanceClass?:         null | string @go(DBInstanceClass,*string)
	dbInstanceIdentifier?:    null | string @go(DBInstanceIdentifier,*string)
	dbSubnetGroupName?:       null | string @go(DBSubnetGroupName,*string)
	engineVersion?:           null | string @go(EngineVersion,*string)
	iops?:                    null | int64  @go(IOPS,*int64)
	licenseModel?:            null | string @go(LicenseModel,*string)
	masterUserPassword?:      null | string @go(MasterUserPassword,*string)
	multiAZ?:                 null | bool   @go(MultiAZ,*bool)

	// A list of the log types whose configuration is still pending. These log types
	// are in the process of being activated or deactivated.
	pendingCloudwatchLogsExports?: null | #PendingCloudwatchLogsExports @go(PendingCloudwatchLogsExports,*PendingCloudwatchLogsExports)
	port?:                         null | int64                         @go(Port,*int64)
	storageType?:                  null | string                        @go(StorageType,*string)
}

// +kubebuilder:skipversion
#ResourcePendingMaintenanceActions: {
	resourceIdentifier?: null | string @go(ResourceIdentifier,*string)
}

// +kubebuilder:skipversion
#Subnet: {
	// Information about an Availability Zone.
	subnetAvailabilityZone?: null | #AvailabilityZone @go(SubnetAvailabilityZone,*AvailabilityZone)
	subnetIdentifier?:       null | string            @go(SubnetIdentifier,*string)
	subnetStatus?:           null | string            @go(SubnetStatus,*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#UpgradeTarget: {
	autoUpgrade?:           null | bool   @go(AutoUpgrade,*bool)
	description?:           null | string @go(Description,*string)
	engine?:                null | string @go(Engine,*string)
	engineVersion?:         null | string @go(EngineVersion,*string)
	isMajorVersionUpgrade?: null | bool   @go(IsMajorVersionUpgrade,*bool)
}

// +kubebuilder:skipversion
#VPCSecurityGroupMembership: {
	status?:             null | string @go(Status,*string)
	vpcSecurityGroupID?: null | string @go(VPCSecurityGroupID,*string)
}