// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/dynamodb/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +kubebuilder:skipversion
#ArchivalSummary: {
	archivalBackupARN?: null | string       @go(ArchivalBackupARN,*string)
	archivalDateTime?:  null | metav1.#Time @go(ArchivalDateTime,*metav1.Time)
	archivalReason?:    null | string       @go(ArchivalReason,*string)
}

// +kubebuilder:skipversion
#AttributeDefinition: {
	attributeName?: null | string @go(AttributeName,*string)
	attributeType?: null | string @go(AttributeType,*string)
}

// +kubebuilder:skipversion
#AutoScalingSettingsDescription: {
	autoScalingRoleARN?: null | string @go(AutoScalingRoleARN,*string)
	maximumUnits?:       null | int64  @go(MaximumUnits,*int64)
	minimumUnits?:       null | int64  @go(MinimumUnits,*int64)
}

// +kubebuilder:skipversion
#AutoScalingSettingsUpdate: {
	maximumUnits?: null | int64 @go(MaximumUnits,*int64)
	minimumUnits?: null | int64 @go(MinimumUnits,*int64)
}

// +kubebuilder:skipversion
#BackupDescription: {
	// Contains the details of the backup created for the table.
	backupDetails?: null | #BackupDetails @go(BackupDetails,*BackupDetails)

	// Contains the details of the table when the backup was created.
	sourceTableDetails?: null | #SourceTableDetails @go(SourceTableDetails,*SourceTableDetails)

	// Contains the details of the features enabled on the table when the backup
	// was created. For example, LSIs, GSIs, streams, TTL.
	sourceTableFeatureDetails?: null | #SourceTableFeatureDetails @go(SourceTableFeatureDetails,*SourceTableFeatureDetails)
}

// +kubebuilder:skipversion
#BackupDetails: {
	backupARN?:              null | string       @go(BackupARN,*string)
	backupCreationDateTime?: null | metav1.#Time @go(BackupCreationDateTime,*metav1.Time)
	backupExpiryDateTime?:   null | metav1.#Time @go(BackupExpiryDateTime,*metav1.Time)
	backupName?:             null | string       @go(BackupName,*string)
	backupSizeBytes?:        null | int64        @go(BackupSizeBytes,*int64)
	backupStatus?:           null | string       @go(BackupStatus,*string)
	backupType?:             null | string       @go(BackupType,*string)
}

// +kubebuilder:skipversion
#BackupSummary: {
	backupARN?:              null | string       @go(BackupARN,*string)
	backupCreationDateTime?: null | metav1.#Time @go(BackupCreationDateTime,*metav1.Time)
	backupExpiryDateTime?:   null | metav1.#Time @go(BackupExpiryDateTime,*metav1.Time)
	backupName?:             null | string       @go(BackupName,*string)
	backupSizeBytes?:        null | int64        @go(BackupSizeBytes,*int64)
	backupStatus?:           null | string       @go(BackupStatus,*string)
	backupType?:             null | string       @go(BackupType,*string)
	tableARN?:               null | string       @go(TableARN,*string)
	tableID?:                null | string       @go(TableID,*string)
	tableName?:              null | string       @go(TableName,*string)
}

// +kubebuilder:skipversion
#BatchStatementError: {
	message?: null | string @go(Message,*string)
}

// +kubebuilder:skipversion
#BatchStatementResponse: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#BillingModeSummary: {
	billingMode?:                       null | string       @go(BillingMode,*string)
	lastUpdateToPayPerRequestDateTime?: null | metav1.#Time @go(LastUpdateToPayPerRequestDateTime,*metav1.Time)
}

// +kubebuilder:skipversion
#ConditionCheck: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#ConsumedCapacity: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#ContributorInsightsSummary: {
	indexName?: null | string @go(IndexName,*string)
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#CreateGlobalSecondaryIndexAction: {
	indexName?: null | string @go(IndexName,*string)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents attributes that are copied (projected) from the table into an
	// index. These are in addition to the primary key attributes and index key
	// attributes, which are automatically projected.
	projection?: null | #Projection @go(Projection,*Projection)

	// Represents the provisioned throughput settings for a specified table or index.
	// The settings can be modified using the UpdateTable operation.
	//
	// For current minimum and maximum provisioned throughput values, see Service,
	// Account, and Table Quotas (https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
	// in the Amazon DynamoDB Developer Guide.
	provisionedThroughput?: null | #ProvisionedThroughput @go(ProvisionedThroughput,*ProvisionedThroughput)
}

// +kubebuilder:skipversion
#CreateReplicaAction: {
	regionName?: null | string @go(RegionName,*string)
}

// +kubebuilder:skipversion
#CreateReplicationGroupMemberAction: {
	globalSecondaryIndexes?: [...null | #ReplicaGlobalSecondaryIndex] @go(GlobalSecondaryIndexes,[]*ReplicaGlobalSecondaryIndex)
	kmsMasterKeyID?: null | string @go(KMSMasterKeyID,*string)

	// Replica-specific provisioned throughput settings. If not specified, uses
	// the source table's provisioned throughput settings.
	provisionedThroughputOverride?: null | #ProvisionedThroughputOverride @go(ProvisionedThroughputOverride,*ProvisionedThroughputOverride)
	regionName?:                    null | string                         @go(RegionName,*string)
	tableClassOverride?:            null | string                         @go(TableClassOverride,*string)
}

// +kubebuilder:skipversion
#Delete: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#DeleteGlobalSecondaryIndexAction: {
	indexName?: null | string @go(IndexName,*string)
}

// +kubebuilder:skipversion
#DeleteReplicaAction: {
	regionName?: null | string @go(RegionName,*string)
}

// +kubebuilder:skipversion
#DeleteReplicationGroupMemberAction: {
	regionName?: null | string @go(RegionName,*string)
}

// +kubebuilder:skipversion
#Endpoint: {
	address?:              null | string @go(Address,*string)
	cachePeriodInMinutes?: null | int64  @go(CachePeriodInMinutes,*int64)
}

// +kubebuilder:skipversion
#ExportDescription: {
	itemCount?: null | int64  @go(ItemCount,*int64)
	tableARN?:  null | string @go(TableARN,*string)
	tableID?:   null | string @go(TableID,*string)
}

// +kubebuilder:skipversion
#Get: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#GlobalSecondaryIndex: {
	indexName?: null | string @go(IndexName,*string)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents attributes that are copied (projected) from the table into an
	// index. These are in addition to the primary key attributes and index key
	// attributes, which are automatically projected.
	projection?: null | #Projection @go(Projection,*Projection)

	// Represents the provisioned throughput settings for a specified table or index.
	// The settings can be modified using the UpdateTable operation.
	//
	// For current minimum and maximum provisioned throughput values, see Service,
	// Account, and Table Quotas (https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
	// in the Amazon DynamoDB Developer Guide.
	provisionedThroughput?: null | #ProvisionedThroughput @go(ProvisionedThroughput,*ProvisionedThroughput)
}

// +kubebuilder:skipversion
#GlobalSecondaryIndexAutoScalingUpdate: {
	indexName?: null | string @go(IndexName,*string)
}

// +kubebuilder:skipversion
#GlobalSecondaryIndexDescription: {
	backfilling?:    null | bool   @go(Backfilling,*bool)
	indexARN?:       null | string @go(IndexARN,*string)
	indexName?:      null | string @go(IndexName,*string)
	indexSizeBytes?: null | int64  @go(IndexSizeBytes,*int64)
	indexStatus?:    null | string @go(IndexStatus,*string)
	itemCount?:      null | int64  @go(ItemCount,*int64)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents attributes that are copied (projected) from the table into an
	// index. These are in addition to the primary key attributes and index key
	// attributes, which are automatically projected.
	projection?: null | #Projection @go(Projection,*Projection)

	// Represents the provisioned throughput settings for the table, consisting
	// of read and write capacity units, along with data about increases and decreases.
	provisionedThroughput?: null | #ProvisionedThroughputDescription @go(ProvisionedThroughput,*ProvisionedThroughputDescription)
}

// +kubebuilder:skipversion
#GlobalSecondaryIndexInfo: {
	indexName?: null | string @go(IndexName,*string)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents attributes that are copied (projected) from the table into an
	// index. These are in addition to the primary key attributes and index key
	// attributes, which are automatically projected.
	projection?: null | #Projection @go(Projection,*Projection)

	// Represents the provisioned throughput settings for a specified table or index.
	// The settings can be modified using the UpdateTable operation.
	//
	// For current minimum and maximum provisioned throughput values, see Service,
	// Account, and Table Quotas (https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
	// in the Amazon DynamoDB Developer Guide.
	provisionedThroughput?: null | #ProvisionedThroughput @go(ProvisionedThroughput,*ProvisionedThroughput)
}

// +kubebuilder:skipversion
#GlobalSecondaryIndexUpdate: {
	// Represents a new global secondary index to be added to an existing table.
	create?: null | #CreateGlobalSecondaryIndexAction @go(Create,*CreateGlobalSecondaryIndexAction)

	// Represents a global secondary index to be deleted from an existing table.
	delete?: null | #DeleteGlobalSecondaryIndexAction @go(Delete,*DeleteGlobalSecondaryIndexAction)

	// Represents the new provisioned throughput settings to be applied to a global
	// secondary index.
	update?: null | #UpdateGlobalSecondaryIndexAction @go(Update,*UpdateGlobalSecondaryIndexAction)
}

// +kubebuilder:skipversion
#GlobalTableDescription: {
	creationDateTime?:  null | metav1.#Time @go(CreationDateTime,*metav1.Time)
	globalTableARN?:    null | string       @go(GlobalTableARN,*string)
	globalTableName?:   null | string       @go(GlobalTableName,*string)
	globalTableStatus?: null | string       @go(GlobalTableStatus,*string)
	replicationGroup?: [...null | #ReplicaDescription] @go(ReplicationGroup,[]*ReplicaDescription)
}

// +kubebuilder:skipversion
#GlobalTableGlobalSecondaryIndexSettingsUpdate: {
	indexName?:                     null | string @go(IndexName,*string)
	provisionedWriteCapacityUnits?: null | int64  @go(ProvisionedWriteCapacityUnits,*int64)
}

// +kubebuilder:skipversion
#GlobalTable_SDK: {
	globalTableName?: null | string @go(GlobalTableName,*string)
	replicationGroup?: [...null | #Replica] @go(ReplicationGroup,[]*Replica)
}

// +kubebuilder:skipversion
#KeySchemaElement: {
	attributeName?: null | string @go(AttributeName,*string)
	keyType?:       null | string @go(KeyType,*string)
}

// +kubebuilder:skipversion
#KinesisDataStreamDestination: {
	destinationStatusDescription?: null | string @go(DestinationStatusDescription,*string)
	streamARN?:                    null | string @go(StreamARN,*string)
}

// +kubebuilder:skipversion
#LocalSecondaryIndex: {
	indexName?: null | string @go(IndexName,*string)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents attributes that are copied (projected) from the table into an
	// index. These are in addition to the primary key attributes and index key
	// attributes, which are automatically projected.
	projection?: null | #Projection @go(Projection,*Projection)
}

// +kubebuilder:skipversion
#LocalSecondaryIndexDescription: {
	indexARN?:       null | string @go(IndexARN,*string)
	indexName?:      null | string @go(IndexName,*string)
	indexSizeBytes?: null | int64  @go(IndexSizeBytes,*int64)
	itemCount?:      null | int64  @go(ItemCount,*int64)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents attributes that are copied (projected) from the table into an
	// index. These are in addition to the primary key attributes and index key
	// attributes, which are automatically projected.
	projection?: null | #Projection @go(Projection,*Projection)
}

// +kubebuilder:skipversion
#LocalSecondaryIndexInfo: {
	indexName?: null | string @go(IndexName,*string)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents attributes that are copied (projected) from the table into an
	// index. These are in addition to the primary key attributes and index key
	// attributes, which are automatically projected.
	projection?: null | #Projection @go(Projection,*Projection)
}

// +kubebuilder:skipversion
#PointInTimeRecoveryDescription: {
	earliestRestorableDateTime?: null | metav1.#Time @go(EarliestRestorableDateTime,*metav1.Time)
	latestRestorableDateTime?:   null | metav1.#Time @go(LatestRestorableDateTime,*metav1.Time)
}

// +kubebuilder:skipversion
#Projection: {
	nonKeyAttributes?: [...null | string] @go(NonKeyAttributes,[]*string)
	projectionType?: null | string @go(ProjectionType,*string)
}

// +kubebuilder:skipversion
#ProvisionedThroughput: {
	readCapacityUnits?:  null | int64 @go(ReadCapacityUnits,*int64)
	writeCapacityUnits?: null | int64 @go(WriteCapacityUnits,*int64)
}

// +kubebuilder:skipversion
#ProvisionedThroughputDescription: {
	lastDecreaseDateTime?:   null | metav1.#Time @go(LastDecreaseDateTime,*metav1.Time)
	lastIncreaseDateTime?:   null | metav1.#Time @go(LastIncreaseDateTime,*metav1.Time)
	numberOfDecreasesToday?: null | int64        @go(NumberOfDecreasesToday,*int64)
	readCapacityUnits?:      null | int64        @go(ReadCapacityUnits,*int64)
	writeCapacityUnits?:     null | int64        @go(WriteCapacityUnits,*int64)
}

// +kubebuilder:skipversion
#ProvisionedThroughputOverride: {
	readCapacityUnits?: null | int64 @go(ReadCapacityUnits,*int64)
}

// +kubebuilder:skipversion
#Put: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#Replica: {
	regionName?: null | string @go(RegionName,*string)
}

// +kubebuilder:skipversion
#ReplicaAutoScalingDescription: {
	regionName?:    null | string @go(RegionName,*string)
	replicaStatus?: null | string @go(ReplicaStatus,*string)
}

// +kubebuilder:skipversion
#ReplicaAutoScalingUpdate: {
	regionName?: null | string @go(RegionName,*string)
}

// +kubebuilder:skipversion
#ReplicaDescription: {
	globalSecondaryIndexes?: [...null | #ReplicaGlobalSecondaryIndexDescription] @go(GlobalSecondaryIndexes,[]*ReplicaGlobalSecondaryIndexDescription)
	kmsMasterKeyID?: null | string @go(KMSMasterKeyID,*string)

	// Replica-specific provisioned throughput settings. If not specified, uses
	// the source table's provisioned throughput settings.
	provisionedThroughputOverride?: null | #ProvisionedThroughputOverride @go(ProvisionedThroughputOverride,*ProvisionedThroughputOverride)
	regionName?:                    null | string                         @go(RegionName,*string)
	replicaInaccessibleDateTime?:   null | metav1.#Time                   @go(ReplicaInaccessibleDateTime,*metav1.Time)
	replicaStatus?:                 null | string                         @go(ReplicaStatus,*string)
	replicaStatusDescription?:      null | string                         @go(ReplicaStatusDescription,*string)
	replicaStatusPercentProgress?:  null | string                         @go(ReplicaStatusPercentProgress,*string)

	// Contains details of the table class.
	replicaTableClassSummary?: null | #TableClassSummary @go(ReplicaTableClassSummary,*TableClassSummary)
}

// +kubebuilder:skipversion
#ReplicaGlobalSecondaryIndex: {
	indexName?: null | string @go(IndexName,*string)

	// Replica-specific provisioned throughput settings. If not specified, uses
	// the source table's provisioned throughput settings.
	provisionedThroughputOverride?: null | #ProvisionedThroughputOverride @go(ProvisionedThroughputOverride,*ProvisionedThroughputOverride)
}

// +kubebuilder:skipversion
#ReplicaGlobalSecondaryIndexAutoScalingDescription: {
	indexName?:   null | string @go(IndexName,*string)
	indexStatus?: null | string @go(IndexStatus,*string)
}

// +kubebuilder:skipversion
#ReplicaGlobalSecondaryIndexAutoScalingUpdate: {
	indexName?: null | string @go(IndexName,*string)
}

// +kubebuilder:skipversion
#ReplicaGlobalSecondaryIndexDescription: {
	indexName?: null | string @go(IndexName,*string)

	// Replica-specific provisioned throughput settings. If not specified, uses
	// the source table's provisioned throughput settings.
	provisionedThroughputOverride?: null | #ProvisionedThroughputOverride @go(ProvisionedThroughputOverride,*ProvisionedThroughputOverride)
}

// +kubebuilder:skipversion
#ReplicaGlobalSecondaryIndexSettingsDescription: {
	indexName?:                     null | string @go(IndexName,*string)
	indexStatus?:                   null | string @go(IndexStatus,*string)
	provisionedReadCapacityUnits?:  null | int64  @go(ProvisionedReadCapacityUnits,*int64)
	provisionedWriteCapacityUnits?: null | int64  @go(ProvisionedWriteCapacityUnits,*int64)
}

// +kubebuilder:skipversion
#ReplicaGlobalSecondaryIndexSettingsUpdate: {
	indexName?:                    null | string @go(IndexName,*string)
	provisionedReadCapacityUnits?: null | int64  @go(ProvisionedReadCapacityUnits,*int64)
}

// +kubebuilder:skipversion
#ReplicaSettingsDescription: {
	regionName?: null | string @go(RegionName,*string)

	// Contains the details for the read/write capacity mode.
	replicaBillingModeSummary?:            null | #BillingModeSummary @go(ReplicaBillingModeSummary,*BillingModeSummary)
	replicaProvisionedReadCapacityUnits?:  null | int64               @go(ReplicaProvisionedReadCapacityUnits,*int64)
	replicaProvisionedWriteCapacityUnits?: null | int64               @go(ReplicaProvisionedWriteCapacityUnits,*int64)
	replicaStatus?:                        null | string              @go(ReplicaStatus,*string)

	// Contains details of the table class.
	replicaTableClassSummary?: null | #TableClassSummary @go(ReplicaTableClassSummary,*TableClassSummary)
}

// +kubebuilder:skipversion
#ReplicaSettingsUpdate: {
	regionName?:                          null | string @go(RegionName,*string)
	replicaProvisionedReadCapacityUnits?: null | int64  @go(ReplicaProvisionedReadCapacityUnits,*int64)
	replicaTableClass?:                   null | string @go(ReplicaTableClass,*string)
}

// +kubebuilder:skipversion
#ReplicaUpdate: {
	// Represents a replica to be added.
	create?: null | #CreateReplicaAction @go(Create,*CreateReplicaAction)

	// Represents a replica to be removed.
	delete?: null | #DeleteReplicaAction @go(Delete,*DeleteReplicaAction)
}

// +kubebuilder:skipversion
#ReplicationGroupUpdate: {
	// Represents a replica to be created.
	create?: null | #CreateReplicationGroupMemberAction @go(Create,*CreateReplicationGroupMemberAction)

	// Represents a replica to be deleted.
	delete?: null | #DeleteReplicationGroupMemberAction @go(Delete,*DeleteReplicationGroupMemberAction)

	// Represents a replica to be modified.
	update?: null | #UpdateReplicationGroupMemberAction @go(Update,*UpdateReplicationGroupMemberAction)
}

// +kubebuilder:skipversion
#RestoreSummary: {
	restoreDateTime?:   null | metav1.#Time @go(RestoreDateTime,*metav1.Time)
	restoreInProgress?: null | bool         @go(RestoreInProgress,*bool)
	sourceBackupARN?:   null | string       @go(SourceBackupARN,*string)
	sourceTableARN?:    null | string       @go(SourceTableARN,*string)
}

// +kubebuilder:skipversion
#SSEDescription: {
	inaccessibleEncryptionDateTime?: null | metav1.#Time @go(InaccessibleEncryptionDateTime,*metav1.Time)
	kmsMasterKeyARN?:                null | string       @go(KMSMasterKeyARN,*string)
	sseType?:                        null | string       @go(SSEType,*string)
	status?:                         null | string       @go(Status,*string)
}

// +kubebuilder:skipversion
#SSESpecification: {
	enabled?:        null | bool   @go(Enabled,*bool)
	kmsMasterKeyID?: null | string @go(KMSMasterKeyID,*string)
	sseType?:        null | string @go(SSEType,*string)
}

// +kubebuilder:skipversion
#SourceTableDetails: {
	billingMode?: null | string @go(BillingMode,*string)
	itemCount?:   null | int64  @go(ItemCount,*int64)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)

	// Represents the provisioned throughput settings for a specified table or index.
	// The settings can be modified using the UpdateTable operation.
	//
	// For current minimum and maximum provisioned throughput values, see Service,
	// Account, and Table Quotas (https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
	// in the Amazon DynamoDB Developer Guide.
	provisionedThroughput?: null | #ProvisionedThroughput @go(ProvisionedThroughput,*ProvisionedThroughput)
	tableARN?:              null | string                 @go(TableARN,*string)
	tableCreationDateTime?: null | metav1.#Time           @go(TableCreationDateTime,*metav1.Time)
	tableID?:               null | string                 @go(TableID,*string)
	tableName?:             null | string                 @go(TableName,*string)
	tableSizeBytes?:        null | int64                  @go(TableSizeBytes,*int64)
}

// +kubebuilder:skipversion
#SourceTableFeatureDetails: {
	globalSecondaryIndexes?: [...null | #GlobalSecondaryIndexInfo] @go(GlobalSecondaryIndexes,[]*GlobalSecondaryIndexInfo)
	localSecondaryIndexes?: [...null | #LocalSecondaryIndexInfo] @go(LocalSecondaryIndexes,[]*LocalSecondaryIndexInfo)

	// The description of the server-side encryption status on the specified table.
	sseDescription?: null | #SSEDescription @go(SSEDescription,*SSEDescription)

	// Represents the DynamoDB Streams configuration for a table in DynamoDB.
	streamDescription?: null | #StreamSpecification @go(StreamDescription,*StreamSpecification)

	// The description of the Time to Live (TTL) status on the specified table.
	timeToLiveDescription?: null | #TimeToLiveDescription @go(TimeToLiveDescription,*TimeToLiveDescription)
}

// +kubebuilder:skipversion
#StreamSpecification: {
	streamEnabled?:  null | bool   @go(StreamEnabled,*bool)
	streamViewType?: null | string @go(StreamViewType,*string)
}

// +kubebuilder:skipversion
#TableAutoScalingDescription: {
	tableName?:   null | string @go(TableName,*string)
	tableStatus?: null | string @go(TableStatus,*string)
}

// +kubebuilder:skipversion
#TableClassSummary: {
	lastUpdateDateTime?: null | metav1.#Time @go(LastUpdateDateTime,*metav1.Time)
	tableClass?:         null | string       @go(TableClass,*string)
}

// +kubebuilder:skipversion
#TableDescription: {
	// Contains details of a table archival operation.
	archivalSummary?: null | #ArchivalSummary @go(ArchivalSummary,*ArchivalSummary)
	attributeDefinitions?: [...null | #AttributeDefinition] @go(AttributeDefinitions,[]*AttributeDefinition)

	// Contains the details for the read/write capacity mode.
	billingModeSummary?: null | #BillingModeSummary @go(BillingModeSummary,*BillingModeSummary)
	creationDateTime?:   null | metav1.#Time        @go(CreationDateTime,*metav1.Time)
	globalSecondaryIndexes?: [...null | #GlobalSecondaryIndexDescription] @go(GlobalSecondaryIndexes,[]*GlobalSecondaryIndexDescription)
	globalTableVersion?: null | string @go(GlobalTableVersion,*string)
	itemCount?:          null | int64  @go(ItemCount,*int64)
	keySchema?: [...null | #KeySchemaElement] @go(KeySchema,[]*KeySchemaElement)
	latestStreamARN?:   null | string @go(LatestStreamARN,*string)
	latestStreamLabel?: null | string @go(LatestStreamLabel,*string)
	localSecondaryIndexes?: [...null | #LocalSecondaryIndexDescription] @go(LocalSecondaryIndexes,[]*LocalSecondaryIndexDescription)

	// Represents the provisioned throughput settings for the table, consisting
	// of read and write capacity units, along with data about increases and decreases.
	provisionedThroughput?: null | #ProvisionedThroughputDescription @go(ProvisionedThroughput,*ProvisionedThroughputDescription)
	replicas?: [...null | #ReplicaDescription] @go(Replicas,[]*ReplicaDescription)

	// Contains details for the restore.
	restoreSummary?: null | #RestoreSummary @go(RestoreSummary,*RestoreSummary)

	// The description of the server-side encryption status on the specified table.
	sseDescription?: null | #SSEDescription @go(SSEDescription,*SSEDescription)

	// Represents the DynamoDB Streams configuration for a table in DynamoDB.
	streamSpecification?: null | #StreamSpecification @go(StreamSpecification,*StreamSpecification)
	tableARN?:            null | string               @go(TableARN,*string)

	// Contains details of the table class.
	tableClassSummary?: null | #TableClassSummary @go(TableClassSummary,*TableClassSummary)
	tableID?:           null | string             @go(TableID,*string)
	tableName?:         null | string             @go(TableName,*string)
	tableSizeBytes?:    null | int64              @go(TableSizeBytes,*int64)
	tableStatus?:       null | string             @go(TableStatus,*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#TimeToLiveDescription: {
	attributeName?:    null | string @go(AttributeName,*string)
	timeToLiveStatus?: null | string @go(TimeToLiveStatus,*string)
}

// +kubebuilder:skipversion
#TimeToLiveSpecification: {
	attributeName?: null | string @go(AttributeName,*string)
}

// +kubebuilder:skipversion
#Update: {
	tableName?: null | string @go(TableName,*string)
}

// +kubebuilder:skipversion
#UpdateGlobalSecondaryIndexAction: {
	indexName?: null | string @go(IndexName,*string)

	// Represents the provisioned throughput settings for a specified table or index.
	// The settings can be modified using the UpdateTable operation.
	//
	// For current minimum and maximum provisioned throughput values, see Service,
	// Account, and Table Quotas (https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
	// in the Amazon DynamoDB Developer Guide.
	provisionedThroughput?: null | #ProvisionedThroughput @go(ProvisionedThroughput,*ProvisionedThroughput)
}

// +kubebuilder:skipversion
#UpdateReplicationGroupMemberAction: {
	globalSecondaryIndexes?: [...null | #ReplicaGlobalSecondaryIndex] @go(GlobalSecondaryIndexes,[]*ReplicaGlobalSecondaryIndex)
	kmsMasterKeyID?: null | string @go(KMSMasterKeyID,*string)

	// Replica-specific provisioned throughput settings. If not specified, uses
	// the source table's provisioned throughput settings.
	provisionedThroughputOverride?: null | #ProvisionedThroughputOverride @go(ProvisionedThroughputOverride,*ProvisionedThroughputOverride)
	regionName?:                    null | string                         @go(RegionName,*string)
	tableClassOverride?:            null | string                         @go(TableClassOverride,*string)
}