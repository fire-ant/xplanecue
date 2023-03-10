// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/s3/v1beta1

package v1beta1

import xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"

// ReplicationConfiguration contains replication rules. You can add up to 1,000 rules. The maximum
// size of a replication configuration is 2 MB.
#ReplicationConfiguration: {
	// The Amazon Resource Name (ARN) of the AWS Identity and Access Management
	// (IAM) role that Amazon S3 assumes when replicating objects. For more information,
	// see How to Set Up Replication (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html)
	// in the Amazon Simple Storage Service Developer Guide.
	//
	// At least one of role, roleRef or roleSelector fields is required.
	// +optional
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.RoleARN()
	role?: null | string @go(Role,*string)

	// RoleRef references an IAMRole to retrieve its Name
	// +optional
	roleRef?: null | xpv1.#Reference @go(RoleRef,*xpv1.Reference)

	// RoleSelector selects a reference to an IAMRole to retrieve its Name
	// +optional
	roleSelector?: null | xpv1.#Selector @go(RoleSelector,*xpv1.Selector)

	// A container for one or more replication rules. A replication configuration
	// must have at least one rule and can contain a maximum of 1,000 rules.
	//
	// Rules is a required field
	rules: [...#ReplicationRule] @go(Rules,[]ReplicationRule)
}

// ReplicationRule specifies which Amazon S3 objects to replicate and where to store the replicas.
#ReplicationRule: {
	// Specifies whether Amazon S3 replicates the delete markers. If you specify
	// a Filter, you must specify this element. However, in the latest version of
	// replication configuration (when Filter is specified), Amazon S3 doesn't replicate
	// delete markers. Therefore, the DeleteMarkerReplication element can contain
	// only <Status>Disabled</Status>. For an example configuration, see Basic Rule
	// Configuration (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config).
	//
	// If you don't specify the Filter element, Amazon S3 assumes that the replication
	// configuration is the earlier version, V1. In the earlier version, Amazon
	// S3 handled replication of delete markers differently. For more information,
	// see Backward Compatibility (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations).
	deleteMarkerReplication?: null | #DeleteMarkerReplication @go(DeleteMarkerReplication,*DeleteMarkerReplication)

	// A container for information about the replication destination and its configurations
	// including enabling the S3 Replication Time Control (S3 RTC).
	//
	// Destination is a required field
	destination: #Destination @go(Destination)

	// Optional configuration to replicate existing source bucket objects. For more
	// information, see Replicating Existing Objects (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication)
	// in the Amazon S3 Developer Guide.
	existingObjectReplication?: null | #ExistingObjectReplication @go(ExistingObjectReplication,*ExistingObjectReplication)

	// A filter that identifies the subset of objects to which the replication rule
	// applies. A Filter must specify exactly one Prefix, Tag, or an And child element.
	filter?: null | #ReplicationRuleFilter @go(Filter,*ReplicationRuleFilter)

	// A unique identifier for the rule. The maximum value is 255 characters.
	id?: null | string @go(ID,*string)

	// The priority associated with the rule. If you specify multiple rules in a
	// replication configuration, Amazon S3 prioritizes the rules to prevent conflicts
	// when filtering. If two or more rules identify the same object based on a
	// specified filter, the rule with higher priority takes precedence. For example:
	//
	//    * Same object quality prefix-based filter criteria if prefixes you specified
	//    in multiple rules overlap
	//
	//    * Same object qualify tag-based filter criteria specified in multiple
	//    rules
	//
	// For more information, see Replication (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html)
	// in the Amazon Simple Storage Service Developer Guide.
	priority?: int32 @go(Priority)

	// A container that describes additional filters for identifying the source
	// objects that you want to replicate. You can choose to enable or disable the
	// replication of these objects. Currently, Amazon S3 supports only the filter
	// that you can specify for objects created with server-side encryption using
	// a customer master key (CMK) stored in AWS Key Management Service (SSE-KMS).
	sourceSelectionCriteria?: null | #SourceSelectionCriteria @go(SourceSelectionCriteria,*SourceSelectionCriteria)

	// Specifies whether the rule is enabled.
	//
	// Status is a required field
	// Valid values are "Enabled" or "Disabled"
	// +kubebuilder:validation:Enum=Enabled;Disabled
	status: string @go(Status)
}

// DeleteMarkerReplication specifies whether Amazon S3 replicates the delete markers.
// If you specify a Filter, you must specify this element. However, in the latest version of
// replication configuration (when Filter is specified), Amazon S3 doesn't replicate
// delete markers. Therefore, the DeleteMarkerReplication element can contain
// only <Status>Disabled</Status>. For an example configuration, see Basic Rule
// Configuration (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config).
//
// If you don't specify the Filter element, Amazon S3 assumes that the replication
// configuration is the earlier version, V1. In the earlier version, Amazon
// S3 handled replication of delete markers differently. For more information,
// see Backward Compatibility (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations).
#DeleteMarkerReplication: {
	// Indicates whether to replicate delete markers.
	// Valid values are "Enabled" or "Disabled"
	// +kubebuilder:validation:Enum=Enabled;Disabled
	status: string @go(Status)
}

// Destination specifies information about where to publish analysis or configuration results
// for an Amazon S3 bucket and S3 Replication Time Control (S3 RTC).
#Destination: {
	// Specify this only in a cross-account scenario (where source and destination
	// bucket owners are not the same), and you want to change replica ownership
	// to the AWS account that owns the destination bucket. If this is not specified
	// in the replication configuration, the replicas are owned by same AWS account
	// that owns the source object.
	// +optional
	accessControlTranslation?: null | #AccessControlTranslation @go(AccessControlTranslation,*AccessControlTranslation)

	// Destination bucket owner account ID. In a cross-account scenario, if you
	// direct Amazon S3 to change replica ownership to the AWS account that owns
	// the destination bucket by specifying the AccessControlTranslation property,
	// this is the account ID of the destination bucket owner. For more information,
	// see Replication Additional Configuration: Changing the Replica Owner (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html)
	// in the Amazon Simple Storage Service Developer Guide.
	account?: null | string @go(Account,*string)

	// The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to
	// store the results.
	// At least one of bucket, bucketRef or bucketSelector is required.
	// +optional
	// +crossplane:generate:reference:type=Bucket
	// +crossplane:generate:reference:extractor=BucketARN()
	bucket?: null | string @go(Bucket,*string)

	// BucketRef references a Bucket to retrieve its Name
	// +optional
	bucketRef?: null | xpv1.#Reference @go(BucketRef,*xpv1.Reference)

	// BucketSelector selects a reference to a Bucket to retrieve its Name
	// +optional
	bucketSelector?: null | xpv1.#Selector @go(BucketSelector,*xpv1.Selector)

	// A container that provides information about encryption. If SourceSelectionCriteria
	// is specified, you must specify this element.
	// +optional
	encryptionConfiguration?: null | #EncryptionConfiguration @go(EncryptionConfiguration,*EncryptionConfiguration)

	// A container specifying replication metrics-related settings enabling metrics
	// and Amazon S3 events for S3 Replication Time Control (S3 RTC). Must be specified
	// together with a ReplicationTime block.
	metrics?: null | #Metrics @go(Metrics,*Metrics)

	// A container specifying S3 Replication Time Control (S3 RTC), including whether
	// S3 RTC is enabled and the time when all objects and operations on objects
	// must be replicated. Must be specified together with a Metrics block.
	replicationTime?: null | #ReplicationTime @go(ReplicationTime,*ReplicationTime)

	// The storage class to use when replicating objects, such as S3 Standard or
	// reduced redundancy. By default, Amazon S3 uses the storage class of the source
	// object to create the object replica.
	// For valid values, see the StorageClass element of the PUT Bucket replication
	// (https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html)
	// action in the Amazon Simple Storage Service API Reference.
	// +kubebuilder:validation:Enum=STANDARD;GLACIER;STANDARD_IA;ONEZONE_IA;INTELLIGENT_TIERING;DEEP_ARCHIVE
	// +optional
	storageClass?: null | string @go(StorageClass,*string)
}

// AccessControlTranslation contains information about access control for replicas.
#AccessControlTranslation: {
	// Specifies the replica ownership. For default and valid values, see PUT bucket
	// replication (https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html)
	// in the Amazon Simple Storage Service API Reference.
	// Owner is a required field
	ownerOverride: string @go(Owner)
}

// EncryptionConfiguration specifies encryption-related information for
// an Amazon S3 bucket that is a destination for replicated objects.
#EncryptionConfiguration: {
	// Specifies the ID (Key ARN or Alias ARN) of the customer managed customer
	// master key (CMK) stored in AWS Key Management Service (KMS) for the destination
	// bucket. Amazon S3 uses this key to encrypt replica objects. Amazon S3 only
	// supports symmetric customer managed CMKs. For more information, see Using
	// Symmetric and Asymmetric Keys (https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
	// in the AWS Key Management Service Developer Guide.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/kms/v1alpha1.Key
	replicaKmsKeyId?: null | string @go(ReplicaKmsKeyID,*string)

	// ReplicaKmsKeyIDRef references an KMSKey to retrieve its ID
	// +optional
	replicaKmsKeyIdRef?: null | xpv1.#Reference @go(ReplicaKmsKeyIDRef,*xpv1.Reference)

	// ReplicaKmsKeyIDSelector selects a reference to an KMSKey to retrieve its ID
	// +optional
	replicaKmsKeyIdSelector?: null | xpv1.#Selector @go(ReplicaKmsKeyIDSelector,*xpv1.Selector)
}

// Metrics specifies replication metrics-related settings enabling metrics
// and Amazon S3 events for S3 Replication Time Control (S3 RTC). Must be specified
// together with a ReplicationTime block.
#Metrics: {
	// A container specifying the time threshold for emitting the s3:Replication:OperationMissedThreshold
	// event.
	// +optional
	eventThreshold?: null | #ReplicationTimeValue @go(EventThreshold,*ReplicationTimeValue)

	// Specifies whether the replication metrics are enabled.
	//
	// Status is a required field, valid values are "Enabled" and "Disabled"
	// +kubebuilder:validation:Enum=Enabled;Disabled
	status: string @go(Status)
}

// ReplicationTimeValue specifies the time value for S3 Replication Time Control (S3
// RTC) and replication metrics EventThreshold.
#ReplicationTimeValue: {
	// Contains an integer specifying time in minutes.
	//
	// Valid values: 15 minutes.
	minutes: int32 @go(Minutes)
}

// ReplicationTime specifies S3 Replication Time Control (S3 RTC) related information,
// including whether S3 RTC is enabled and the time when all objects and operations
// on objects must be replicated. Must be specified together with a Metrics
// block.
#ReplicationTime: {
	// Specifies whether the replication time is enabled
	// Status is a required field
	// Valid values are "Enabled" and "Disabled"
	// +kubebuilder:validation:Enum=Enabled;Disabled
	status: string @go(Status)

	// A container specifying the time by which replication should be complete for
	// all objects and operations on objects.
	// Time is a required field
	time: #ReplicationTimeValue @go(Time)
}

// ExistingObjectReplication optional configuration to replicate existing source bucket objects. For more
// information, see Replicating Existing Objects
// (https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication)
// in the Amazon S3 Developer Guide.
#ExistingObjectReplication: {
	// Status is a required field
	// Valid values are "Enabled" and "Disabled"
	// +kubebuilder:validation:Enum=Enabled;Disabled
	status: string @go(Status)
}

// ReplicationRuleFilter identifies the subset of objects to which the replication rule
// applies. A Filter must specify exactly one Prefix, Tag, or an And child element.
#ReplicationRuleFilter: {
	// A container for specifying rule filters. The filters determine the subset
	// of objects to which the rule applies. This element is required only if you
	// specify more than one filter. For example:
	//
	//    * If you specify both a Prefix and a Tag filter, wrap these filters in
	//    an And tag.
	//
	//    * If you specify a filter based on multiple tags, wrap the Tag elements
	//    in an And tag.
	and?: null | #ReplicationRuleAndOperator @go(And,*ReplicationRuleAndOperator)

	// An object key name prefix that identifies the subset of objects to which
	// the rule applies.
	prefix?: null | string @go(Prefix,*string)

	// A container for specifying a tag key and value.
	// The rule applies only to objects that have the tag in their tag set.
	tag?: null | #Tag @go(Tag,*Tag)
}

// ReplicationRuleAndOperator specifies rule filters. The filters determine the subset
// of objects to which the rule applies. This element is required only if you
// specify more than one filter.
//
// For example:
//
//   - If you specify both a Prefix and a Tag filter, wrap these filters in
//     an And tag.
//
//   - If you specify a filter based on multiple tags, wrap the Tag elements
//     in an And tag
#ReplicationRuleAndOperator: {
	// An object key name prefix that identifies the subset of objects to which
	// the rule applies.
	prefix?: null | string @go(Prefix,*string)

	// An array of tags containing key and value pairs.
	tag?: [...#Tag] @go(Tags,[]Tag)
}

// SourceSelectionCriteria describes additional filters for identifying the source
// objects that you want to replicate. You can choose to enable or disable the
// replication of these objects. Currently, Amazon S3 supports only the filter
// that you can specify for objects created with server-side encryption using
// a customer master key (CMK) stored in AWS Key Management Service (SSE-KMS).
#SourceSelectionCriteria: {
	// A container for filter information for the selection of Amazon S3 objects
	// encrypted with AWS KMS. If you include SourceSelectionCriteria in the replication
	// configuration, this element is required.
	sseKmsEncryptedObjects: #SseKmsEncryptedObjects @go(SseKmsEncryptedObjects)
}

// SseKmsEncryptedObjects is the container for filter information
// for the selection of S3 objects encrypted with AWS KMS.
#SseKmsEncryptedObjects: {
	// Specifies whether Amazon S3 replicates objects created with server-side encryption
	// using a customer master key (CMK) stored in AWS Key Management Service.
	//
	// Status is a required field
	// Valid values are "Enabled" or "Disabled"
	// +kubebuilder:validation:Enum=Enabled;Disabled
	status: string @go(Status)
}
