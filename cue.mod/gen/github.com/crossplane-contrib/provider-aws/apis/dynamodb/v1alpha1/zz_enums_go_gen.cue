// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/dynamodb/v1alpha1

package v1alpha1

#AttributeAction: string // #enumAttributeAction

#enumAttributeAction:
	#AttributeAction_ADD |
	#AttributeAction_PUT |
	#AttributeAction_DELETE

#AttributeAction_ADD:    #AttributeAction & "ADD"
#AttributeAction_PUT:    #AttributeAction & "PUT"
#AttributeAction_DELETE: #AttributeAction & "DELETE"

#BackupStatus_SDK: string // #enumBackupStatus_SDK

#enumBackupStatus_SDK:
	#BackupStatus_SDK_CREATING |
	#BackupStatus_SDK_DELETED |
	#BackupStatus_SDK_AVAILABLE

#BackupStatus_SDK_CREATING:  #BackupStatus_SDK & "CREATING"
#BackupStatus_SDK_DELETED:   #BackupStatus_SDK & "DELETED"
#BackupStatus_SDK_AVAILABLE: #BackupStatus_SDK & "AVAILABLE"

#BackupType: string // #enumBackupType

#enumBackupType:
	#BackupType_USER |
	#BackupType_SYSTEM |
	#BackupType_AWS_BACKUP

#BackupType_USER:       #BackupType & "USER"
#BackupType_SYSTEM:     #BackupType & "SYSTEM"
#BackupType_AWS_BACKUP: #BackupType & "AWS_BACKUP"

#BackupTypeFilter: string // #enumBackupTypeFilter

#enumBackupTypeFilter:
	#BackupTypeFilter_USER |
	#BackupTypeFilter_SYSTEM |
	#BackupTypeFilter_AWS_BACKUP |
	#BackupTypeFilter_ALL

#BackupTypeFilter_USER:       #BackupTypeFilter & "USER"
#BackupTypeFilter_SYSTEM:     #BackupTypeFilter & "SYSTEM"
#BackupTypeFilter_AWS_BACKUP: #BackupTypeFilter & "AWS_BACKUP"
#BackupTypeFilter_ALL:        #BackupTypeFilter & "ALL"

#BatchStatementErrorCodeEnum: string // #enumBatchStatementErrorCodeEnum

#enumBatchStatementErrorCodeEnum:
	#BatchStatementErrorCodeEnum_ConditionalCheckFailed |
	#BatchStatementErrorCodeEnum_ItemCollectionSizeLimitExceeded |
	#BatchStatementErrorCodeEnum_RequestLimitExceeded |
	#BatchStatementErrorCodeEnum_ValidationError |
	#BatchStatementErrorCodeEnum_ProvisionedThroughputExceeded |
	#BatchStatementErrorCodeEnum_TransactionConflict |
	#BatchStatementErrorCodeEnum_ThrottlingError |
	#BatchStatementErrorCodeEnum_InternalServerError |
	#BatchStatementErrorCodeEnum_ResourceNotFound |
	#BatchStatementErrorCodeEnum_AccessDenied |
	#BatchStatementErrorCodeEnum_DuplicateItem

#BatchStatementErrorCodeEnum_ConditionalCheckFailed:          #BatchStatementErrorCodeEnum & "ConditionalCheckFailed"
#BatchStatementErrorCodeEnum_ItemCollectionSizeLimitExceeded: #BatchStatementErrorCodeEnum & "ItemCollectionSizeLimitExceeded"
#BatchStatementErrorCodeEnum_RequestLimitExceeded:            #BatchStatementErrorCodeEnum & "RequestLimitExceeded"
#BatchStatementErrorCodeEnum_ValidationError:                 #BatchStatementErrorCodeEnum & "ValidationError"
#BatchStatementErrorCodeEnum_ProvisionedThroughputExceeded:   #BatchStatementErrorCodeEnum & "ProvisionedThroughputExceeded"
#BatchStatementErrorCodeEnum_TransactionConflict:             #BatchStatementErrorCodeEnum & "TransactionConflict"
#BatchStatementErrorCodeEnum_ThrottlingError:                 #BatchStatementErrorCodeEnum & "ThrottlingError"
#BatchStatementErrorCodeEnum_InternalServerError:             #BatchStatementErrorCodeEnum & "InternalServerError"
#BatchStatementErrorCodeEnum_ResourceNotFound:                #BatchStatementErrorCodeEnum & "ResourceNotFound"
#BatchStatementErrorCodeEnum_AccessDenied:                    #BatchStatementErrorCodeEnum & "AccessDenied"
#BatchStatementErrorCodeEnum_DuplicateItem:                   #BatchStatementErrorCodeEnum & "DuplicateItem"

#BillingMode: string // #enumBillingMode

#enumBillingMode:
	#BillingMode_PROVISIONED |
	#BillingMode_PAY_PER_REQUEST

#BillingMode_PROVISIONED:     #BillingMode & "PROVISIONED"
#BillingMode_PAY_PER_REQUEST: #BillingMode & "PAY_PER_REQUEST"

#ComparisonOperator: string // #enumComparisonOperator

#enumComparisonOperator:
	#ComparisonOperator_EQ |
	#ComparisonOperator_NE |
	#ComparisonOperator_IN |
	#ComparisonOperator_LE |
	#ComparisonOperator_LT |
	#ComparisonOperator_GE |
	#ComparisonOperator_GT |
	#ComparisonOperator_BETWEEN |
	#ComparisonOperator_NOT_NULL |
	#ComparisonOperator_NULL |
	#ComparisonOperator_CONTAINS |
	#ComparisonOperator_NOT_CONTAINS |
	#ComparisonOperator_BEGINS_WITH

#ComparisonOperator_EQ:           #ComparisonOperator & "EQ"
#ComparisonOperator_NE:           #ComparisonOperator & "NE"
#ComparisonOperator_IN:           #ComparisonOperator & "IN"
#ComparisonOperator_LE:           #ComparisonOperator & "LE"
#ComparisonOperator_LT:           #ComparisonOperator & "LT"
#ComparisonOperator_GE:           #ComparisonOperator & "GE"
#ComparisonOperator_GT:           #ComparisonOperator & "GT"
#ComparisonOperator_BETWEEN:      #ComparisonOperator & "BETWEEN"
#ComparisonOperator_NOT_NULL:     #ComparisonOperator & "NOT_NULL"
#ComparisonOperator_NULL:         #ComparisonOperator & "NULL"
#ComparisonOperator_CONTAINS:     #ComparisonOperator & "CONTAINS"
#ComparisonOperator_NOT_CONTAINS: #ComparisonOperator & "NOT_CONTAINS"
#ComparisonOperator_BEGINS_WITH:  #ComparisonOperator & "BEGINS_WITH"

#ConditionalOperator: string // #enumConditionalOperator

#enumConditionalOperator:
	#ConditionalOperator_AND |
	#ConditionalOperator_OR

#ConditionalOperator_AND: #ConditionalOperator & "AND"
#ConditionalOperator_OR:  #ConditionalOperator & "OR"

#ContinuousBackupsStatus: string // #enumContinuousBackupsStatus

#enumContinuousBackupsStatus:
	#ContinuousBackupsStatus_ENABLED |
	#ContinuousBackupsStatus_DISABLED

#ContinuousBackupsStatus_ENABLED:  #ContinuousBackupsStatus & "ENABLED"
#ContinuousBackupsStatus_DISABLED: #ContinuousBackupsStatus & "DISABLED"

#ContributorInsightsAction: string // #enumContributorInsightsAction

#enumContributorInsightsAction:
	#ContributorInsightsAction_ENABLE |
	#ContributorInsightsAction_DISABLE

#ContributorInsightsAction_ENABLE:  #ContributorInsightsAction & "ENABLE"
#ContributorInsightsAction_DISABLE: #ContributorInsightsAction & "DISABLE"

#ContributorInsightsStatus: string // #enumContributorInsightsStatus

#enumContributorInsightsStatus:
	#ContributorInsightsStatus_ENABLING |
	#ContributorInsightsStatus_ENABLED |
	#ContributorInsightsStatus_DISABLING |
	#ContributorInsightsStatus_DISABLED |
	#ContributorInsightsStatus_FAILED

#ContributorInsightsStatus_ENABLING:  #ContributorInsightsStatus & "ENABLING"
#ContributorInsightsStatus_ENABLED:   #ContributorInsightsStatus & "ENABLED"
#ContributorInsightsStatus_DISABLING: #ContributorInsightsStatus & "DISABLING"
#ContributorInsightsStatus_DISABLED:  #ContributorInsightsStatus & "DISABLED"
#ContributorInsightsStatus_FAILED:    #ContributorInsightsStatus & "FAILED"

#DestinationStatus: string // #enumDestinationStatus

#enumDestinationStatus:
	#DestinationStatus_ENABLING |
	#DestinationStatus_ACTIVE |
	#DestinationStatus_DISABLING |
	#DestinationStatus_DISABLED |
	#DestinationStatus_ENABLE_FAILED

#DestinationStatus_ENABLING:      #DestinationStatus & "ENABLING"
#DestinationStatus_ACTIVE:        #DestinationStatus & "ACTIVE"
#DestinationStatus_DISABLING:     #DestinationStatus & "DISABLING"
#DestinationStatus_DISABLED:      #DestinationStatus & "DISABLED"
#DestinationStatus_ENABLE_FAILED: #DestinationStatus & "ENABLE_FAILED"

#ExportFormat: string // #enumExportFormat

#enumExportFormat:
	#ExportFormat_DYNAMODB_JSON |
	#ExportFormat_ION

#ExportFormat_DYNAMODB_JSON: #ExportFormat & "DYNAMODB_JSON"
#ExportFormat_ION:           #ExportFormat & "ION"

#ExportStatus: string // #enumExportStatus

#enumExportStatus:
	#ExportStatus_IN_PROGRESS |
	#ExportStatus_COMPLETED |
	#ExportStatus_FAILED

#ExportStatus_IN_PROGRESS: #ExportStatus & "IN_PROGRESS"
#ExportStatus_COMPLETED:   #ExportStatus & "COMPLETED"
#ExportStatus_FAILED:      #ExportStatus & "FAILED"

#GlobalTableStatus_SDK: string // #enumGlobalTableStatus_SDK

#enumGlobalTableStatus_SDK:
	#GlobalTableStatus_SDK_CREATING |
	#GlobalTableStatus_SDK_ACTIVE |
	#GlobalTableStatus_SDK_DELETING |
	#GlobalTableStatus_SDK_UPDATING

#GlobalTableStatus_SDK_CREATING: #GlobalTableStatus_SDK & "CREATING"
#GlobalTableStatus_SDK_ACTIVE:   #GlobalTableStatus_SDK & "ACTIVE"
#GlobalTableStatus_SDK_DELETING: #GlobalTableStatus_SDK & "DELETING"
#GlobalTableStatus_SDK_UPDATING: #GlobalTableStatus_SDK & "UPDATING"

#IndexStatus: string // #enumIndexStatus

#enumIndexStatus:
	#IndexStatus_CREATING |
	#IndexStatus_UPDATING |
	#IndexStatus_DELETING |
	#IndexStatus_ACTIVE

#IndexStatus_CREATING: #IndexStatus & "CREATING"
#IndexStatus_UPDATING: #IndexStatus & "UPDATING"
#IndexStatus_DELETING: #IndexStatus & "DELETING"
#IndexStatus_ACTIVE:   #IndexStatus & "ACTIVE"

#KeyType: string // #enumKeyType

#enumKeyType:
	#KeyType_HASH |
	#KeyType_RANGE

#KeyType_HASH:  #KeyType & "HASH"
#KeyType_RANGE: #KeyType & "RANGE"

#PointInTimeRecoveryStatus: string // #enumPointInTimeRecoveryStatus

#enumPointInTimeRecoveryStatus:
	#PointInTimeRecoveryStatus_ENABLED |
	#PointInTimeRecoveryStatus_DISABLED

#PointInTimeRecoveryStatus_ENABLED:  #PointInTimeRecoveryStatus & "ENABLED"
#PointInTimeRecoveryStatus_DISABLED: #PointInTimeRecoveryStatus & "DISABLED"

#ProjectionType: string // #enumProjectionType

#enumProjectionType:
	#ProjectionType_ALL |
	#ProjectionType_KEYS_ONLY |
	#ProjectionType_INCLUDE

#ProjectionType_ALL:       #ProjectionType & "ALL"
#ProjectionType_KEYS_ONLY: #ProjectionType & "KEYS_ONLY"
#ProjectionType_INCLUDE:   #ProjectionType & "INCLUDE"

#ReplicaStatus: string // #enumReplicaStatus

#enumReplicaStatus:
	#ReplicaStatus_CREATING |
	#ReplicaStatus_CREATION_FAILED |
	#ReplicaStatus_UPDATING |
	#ReplicaStatus_DELETING |
	#ReplicaStatus_ACTIVE |
	#ReplicaStatus_REGION_DISABLED |
	#ReplicaStatus_INACCESSIBLE_ENCRYPTION_CREDENTIALS

#ReplicaStatus_CREATING:                            #ReplicaStatus & "CREATING"
#ReplicaStatus_CREATION_FAILED:                     #ReplicaStatus & "CREATION_FAILED"
#ReplicaStatus_UPDATING:                            #ReplicaStatus & "UPDATING"
#ReplicaStatus_DELETING:                            #ReplicaStatus & "DELETING"
#ReplicaStatus_ACTIVE:                              #ReplicaStatus & "ACTIVE"
#ReplicaStatus_REGION_DISABLED:                     #ReplicaStatus & "REGION_DISABLED"
#ReplicaStatus_INACCESSIBLE_ENCRYPTION_CREDENTIALS: #ReplicaStatus & "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

#ReturnConsumedCapacity: string // #enumReturnConsumedCapacity

#enumReturnConsumedCapacity:
	#ReturnConsumedCapacity_INDEXES |
	#ReturnConsumedCapacity_TOTAL |
	#ReturnConsumedCapacity_NONE

#ReturnConsumedCapacity_INDEXES: #ReturnConsumedCapacity & "INDEXES"
#ReturnConsumedCapacity_TOTAL:   #ReturnConsumedCapacity & "TOTAL"
#ReturnConsumedCapacity_NONE:    #ReturnConsumedCapacity & "NONE"

#ReturnItemCollectionMetrics: string // #enumReturnItemCollectionMetrics

#enumReturnItemCollectionMetrics:
	#ReturnItemCollectionMetrics_SIZE |
	#ReturnItemCollectionMetrics_NONE

#ReturnItemCollectionMetrics_SIZE: #ReturnItemCollectionMetrics & "SIZE"
#ReturnItemCollectionMetrics_NONE: #ReturnItemCollectionMetrics & "NONE"

#ReturnValue: string // #enumReturnValue

#enumReturnValue:
	#ReturnValue_NONE |
	#ReturnValue_ALL_OLD |
	#ReturnValue_UPDATED_OLD |
	#ReturnValue_ALL_NEW |
	#ReturnValue_UPDATED_NEW

#ReturnValue_NONE:        #ReturnValue & "NONE"
#ReturnValue_ALL_OLD:     #ReturnValue & "ALL_OLD"
#ReturnValue_UPDATED_OLD: #ReturnValue & "UPDATED_OLD"
#ReturnValue_ALL_NEW:     #ReturnValue & "ALL_NEW"
#ReturnValue_UPDATED_NEW: #ReturnValue & "UPDATED_NEW"

#ReturnValuesOnConditionCheckFailure: string // #enumReturnValuesOnConditionCheckFailure

#enumReturnValuesOnConditionCheckFailure:
	#ReturnValuesOnConditionCheckFailure_ALL_OLD |
	#ReturnValuesOnConditionCheckFailure_NONE

#ReturnValuesOnConditionCheckFailure_ALL_OLD: #ReturnValuesOnConditionCheckFailure & "ALL_OLD"
#ReturnValuesOnConditionCheckFailure_NONE:    #ReturnValuesOnConditionCheckFailure & "NONE"

#S3SSEAlgorithm: string // #enumS3SSEAlgorithm

#enumS3SSEAlgorithm:
	#S3SSEAlgorithm_AES256 |
	#S3SSEAlgorithm_KMS

#S3SSEAlgorithm_AES256: #S3SSEAlgorithm & "AES256"
#S3SSEAlgorithm_KMS:    #S3SSEAlgorithm & "KMS"

#SSEStatus: string // #enumSSEStatus

#enumSSEStatus:
	#SSEStatus_ENABLING |
	#SSEStatus_ENABLED |
	#SSEStatus_DISABLING |
	#SSEStatus_DISABLED |
	#SSEStatus_UPDATING

#SSEStatus_ENABLING:  #SSEStatus & "ENABLING"
#SSEStatus_ENABLED:   #SSEStatus & "ENABLED"
#SSEStatus_DISABLING: #SSEStatus & "DISABLING"
#SSEStatus_DISABLED:  #SSEStatus & "DISABLED"
#SSEStatus_UPDATING:  #SSEStatus & "UPDATING"

#SSEType: string // #enumSSEType

#enumSSEType:
	#SSEType_AES256 |
	#SSEType_KMS

#SSEType_AES256: #SSEType & "AES256"
#SSEType_KMS:    #SSEType & "KMS"

#ScalarAttributeType: string // #enumScalarAttributeType

#enumScalarAttributeType:
	#ScalarAttributeType_S |
	#ScalarAttributeType_N |
	#ScalarAttributeType_B

#ScalarAttributeType_S: #ScalarAttributeType & "S"
#ScalarAttributeType_N: #ScalarAttributeType & "N"
#ScalarAttributeType_B: #ScalarAttributeType & "B"

#Select: string // #enumSelect

#enumSelect:
	#Select_ALL_ATTRIBUTES |
	#Select_ALL_PROJECTED_ATTRIBUTES |
	#Select_SPECIFIC_ATTRIBUTES |
	#Select_COUNT

#Select_ALL_ATTRIBUTES:           #Select & "ALL_ATTRIBUTES"
#Select_ALL_PROJECTED_ATTRIBUTES: #Select & "ALL_PROJECTED_ATTRIBUTES"
#Select_SPECIFIC_ATTRIBUTES:      #Select & "SPECIFIC_ATTRIBUTES"
#Select_COUNT:                    #Select & "COUNT"

#StreamViewType: string // #enumStreamViewType

#enumStreamViewType:
	#StreamViewType_NEW_IMAGE |
	#StreamViewType_OLD_IMAGE |
	#StreamViewType_NEW_AND_OLD_IMAGES |
	#StreamViewType_KEYS_ONLY

#StreamViewType_NEW_IMAGE:          #StreamViewType & "NEW_IMAGE"
#StreamViewType_OLD_IMAGE:          #StreamViewType & "OLD_IMAGE"
#StreamViewType_NEW_AND_OLD_IMAGES: #StreamViewType & "NEW_AND_OLD_IMAGES"
#StreamViewType_KEYS_ONLY:          #StreamViewType & "KEYS_ONLY"

#TableClass: string // #enumTableClass

#enumTableClass:
	#TableClass_STANDARD |
	#TableClass_STANDARD_INFREQUENT_ACCESS

#TableClass_STANDARD:                   #TableClass & "STANDARD"
#TableClass_STANDARD_INFREQUENT_ACCESS: #TableClass & "STANDARD_INFREQUENT_ACCESS"

#TableStatus_SDK: string // #enumTableStatus_SDK

#enumTableStatus_SDK:
	#TableStatus_SDK_CREATING |
	#TableStatus_SDK_UPDATING |
	#TableStatus_SDK_DELETING |
	#TableStatus_SDK_ACTIVE |
	#TableStatus_SDK_INACCESSIBLE_ENCRYPTION_CREDENTIALS |
	#TableStatus_SDK_ARCHIVING |
	#TableStatus_SDK_ARCHIVED

#TableStatus_SDK_CREATING:                            #TableStatus_SDK & "CREATING"
#TableStatus_SDK_UPDATING:                            #TableStatus_SDK & "UPDATING"
#TableStatus_SDK_DELETING:                            #TableStatus_SDK & "DELETING"
#TableStatus_SDK_ACTIVE:                              #TableStatus_SDK & "ACTIVE"
#TableStatus_SDK_INACCESSIBLE_ENCRYPTION_CREDENTIALS: #TableStatus_SDK & "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
#TableStatus_SDK_ARCHIVING:                           #TableStatus_SDK & "ARCHIVING"
#TableStatus_SDK_ARCHIVED:                            #TableStatus_SDK & "ARCHIVED"

#TimeToLiveStatus: string // #enumTimeToLiveStatus

#enumTimeToLiveStatus:
	#TimeToLiveStatus_ENABLING |
	#TimeToLiveStatus_DISABLING |
	#TimeToLiveStatus_ENABLED |
	#TimeToLiveStatus_DISABLED

#TimeToLiveStatus_ENABLING:  #TimeToLiveStatus & "ENABLING"
#TimeToLiveStatus_DISABLING: #TimeToLiveStatus & "DISABLING"
#TimeToLiveStatus_ENABLED:   #TimeToLiveStatus & "ENABLED"
#TimeToLiveStatus_DISABLED:  #TimeToLiveStatus & "DISABLED"
