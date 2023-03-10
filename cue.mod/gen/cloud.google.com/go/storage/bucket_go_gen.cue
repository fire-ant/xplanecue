// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go cloud.google.com/go/storage

package storage

import (
	"time"
	"cloud.google.com/go/internal/optional"
)

// BucketAttrs represents the metadata for a Google Cloud Storage bucket.
// Read-only fields are ignored by BucketHandle.Create.
#BucketAttrs: {
	// Name is the name of the bucket.
	// This field is read-only.
	Name: string

	// ACL is the list of access control rules on the bucket.
	ACL: [...#ACLRule] @go(,[]ACLRule)

	// BucketPolicyOnly is an alias for UniformBucketLevelAccess. Use of
	// UniformBucketLevelAccess is recommended above the use of this field.
	// Setting BucketPolicyOnly.Enabled OR UniformBucketLevelAccess.Enabled to
	// true, will enable UniformBucketLevelAccess.
	BucketPolicyOnly: #BucketPolicyOnly

	// UniformBucketLevelAccess configures access checks to use only bucket-level IAM
	// policies and ignore any ACL rules for the bucket.
	// See https://cloud.google.com/storage/docs/uniform-bucket-level-access
	// for more information.
	UniformBucketLevelAccess: #UniformBucketLevelAccess

	// PublicAccessPrevention is the setting for the bucket's
	// PublicAccessPrevention policy, which can be used to prevent public access
	// of data in the bucket. See
	// https://cloud.google.com/storage/docs/public-access-prevention for more
	// information.
	PublicAccessPrevention: #PublicAccessPrevention

	// DefaultObjectACL is the list of access controls to
	// apply to new objects when no object ACL is provided.
	DefaultObjectACL: [...#ACLRule] @go(,[]ACLRule)

	// DefaultEventBasedHold is the default value for event-based hold on
	// newly created objects in this bucket. It defaults to false.
	DefaultEventBasedHold: bool

	// If not empty, applies a predefined set of access controls. It should be set
	// only when creating a bucket.
	// It is always empty for BucketAttrs returned from the service.
	// See https://cloud.google.com/storage/docs/json_api/v1/buckets/insert
	// for valid values.
	PredefinedACL: string

	// If not empty, applies a predefined set of default object access controls.
	// It should be set only when creating a bucket.
	// It is always empty for BucketAttrs returned from the service.
	// See https://cloud.google.com/storage/docs/json_api/v1/buckets/insert
	// for valid values.
	PredefinedDefaultObjectACL: string

	// Location is the location of the bucket. It defaults to "US".
	Location: string

	// MetaGeneration is the metadata generation of the bucket.
	// This field is read-only.
	MetaGeneration: int64

	// StorageClass is the default storage class of the bucket. This defines
	// how objects in the bucket are stored and determines the SLA
	// and the cost of storage. Typical values are "STANDARD", "NEARLINE",
	// "COLDLINE" and "ARCHIVE". Defaults to "STANDARD".
	// See https://cloud.google.com/storage/docs/storage-classes for all
	// valid values.
	StorageClass: string

	// Created is the creation time of the bucket.
	// This field is read-only.
	Created: time.Time

	// VersioningEnabled reports whether this bucket has versioning enabled.
	VersioningEnabled: bool

	// Labels are the bucket's labels.
	Labels: {[string]: string} @go(,map[string]string)

	// RequesterPays reports whether the bucket is a Requester Pays bucket.
	// Clients performing operations on Requester Pays buckets must provide
	// a user project (see BucketHandle.UserProject), which will be billed
	// for the operations.
	RequesterPays: bool

	// Lifecycle is the lifecycle configuration for objects in the bucket.
	Lifecycle: #Lifecycle

	// Retention policy enforces a minimum retention time for all objects
	// contained in the bucket. A RetentionPolicy of nil implies the bucket
	// has no minimum data retention.
	//
	// This feature is in private alpha release. It is not currently available to
	// most customers. It might be changed in backwards-incompatible ways and is not
	// subject to any SLA or deprecation policy.
	RetentionPolicy?: null | #RetentionPolicy @go(,*RetentionPolicy)

	// The bucket's Cross-Origin Resource Sharing (CORS) configuration.
	CORS: [...#CORS] @go(,[]CORS)

	// The encryption configuration used by default for newly inserted objects.
	Encryption?: null | #BucketEncryption @go(,*BucketEncryption)

	// The logging configuration.
	Logging?: null | #BucketLogging @go(,*BucketLogging)

	// The website configuration.
	Website?: null | #BucketWebsite @go(,*BucketWebsite)

	// Etag is the HTTP/1.1 Entity tag for the bucket.
	// This field is read-only.
	Etag: string

	// LocationType describes how data is stored and replicated.
	// Typical values are "multi-region", "region" and "dual-region".
	// This field is read-only.
	LocationType: string

	// The project number of the project the bucket belongs to.
	// This field is read-only.
	ProjectNumber: uint64

	// RPO configures the Recovery Point Objective (RPO) policy of the bucket.
	// Set to RPOAsyncTurbo to turn on Turbo Replication for a bucket.
	// See https://cloud.google.com/storage/docs/managing-turbo-replication for
	// more information.
	RPO: #RPO
}

// BucketPolicyOnly is an alias for UniformBucketLevelAccess.
// Use of UniformBucketLevelAccess is preferred above BucketPolicyOnly.
#BucketPolicyOnly: {
	// Enabled specifies whether access checks use only bucket-level IAM
	// policies. Enabled may be disabled until the locked time.
	Enabled: bool

	// LockedTime specifies the deadline for changing Enabled from true to
	// false.
	LockedTime: time.Time
}

// UniformBucketLevelAccess configures access checks to use only bucket-level IAM
// policies.
#UniformBucketLevelAccess: {
	// Enabled specifies whether access checks use only bucket-level IAM
	// policies. Enabled may be disabled until the locked time.
	Enabled: bool

	// LockedTime specifies the deadline for changing Enabled from true to
	// false.
	LockedTime: time.Time
}

// PublicAccessPrevention configures the Public Access Prevention feature, which
// can be used to disallow public access to any data in a bucket. See
// https://cloud.google.com/storage/docs/public-access-prevention for more
// information.
#PublicAccessPrevention: int // #enumPublicAccessPrevention

#enumPublicAccessPrevention:
	#PublicAccessPreventionUnknown |
	#PublicAccessPreventionUnspecified |
	#PublicAccessPreventionEnforced |
	#PublicAccessPreventionInherited

#values_PublicAccessPrevention: {
	PublicAccessPreventionUnknown:     #PublicAccessPreventionUnknown
	PublicAccessPreventionUnspecified: #PublicAccessPreventionUnspecified
	PublicAccessPreventionEnforced:    #PublicAccessPreventionEnforced
	PublicAccessPreventionInherited:   #PublicAccessPreventionInherited
}

// PublicAccessPreventionUnknown is a zero value, used only if this field is
// not set in a call to GCS.
#PublicAccessPreventionUnknown: #PublicAccessPrevention & 0

// PublicAccessPreventionUnspecified corresponds to a value of "unspecified".
// Deprecated: use PublicAccessPreventionInherited
#PublicAccessPreventionUnspecified: #PublicAccessPrevention & 1

// PublicAccessPreventionEnforced corresponds to a value of "enforced". This
// enforces Public Access Prevention on the bucket.
#PublicAccessPreventionEnforced: #PublicAccessPrevention & 2

// PublicAccessPreventionInherited corresponds to a value of "inherited"
// and is the default for buckets.
#PublicAccessPreventionInherited: #PublicAccessPrevention & 3
_#publicAccessPreventionUnknown:  ""

// TODO: remove unspecified when change is fully completed
_#publicAccessPreventionUnspecified: "unspecified"
_#publicAccessPreventionEnforced:    "enforced"
_#publicAccessPreventionInherited:   "inherited"

// Lifecycle is the lifecycle configuration for objects in the bucket.
#Lifecycle: {
	Rules: [...#LifecycleRule] @go(,[]LifecycleRule)
}

// RetentionPolicy enforces a minimum retention time for all objects
// contained in the bucket.
//
// Any attempt to overwrite or delete objects younger than the retention
// period will result in an error. An unlocked retention policy can be
// modified or removed from the bucket via the Update method. A
// locked retention policy cannot be removed or shortened in duration
// for the lifetime of the bucket.
//
// This feature is in private alpha release. It is not currently available to
// most customers. It might be changed in backwards-incompatible ways and is not
// subject to any SLA or deprecation policy.
#RetentionPolicy: {
	// RetentionPeriod specifies the duration that objects need to be
	// retained. Retention duration must be greater than zero and less than
	// 100 years. Note that enforcement of retention periods less than a day
	// is not guaranteed. Such periods should only be used for testing
	// purposes.
	RetentionPeriod: time.#Duration

	// EffectiveTime is the time from which the policy was enforced and
	// effective. This field is read-only.
	EffectiveTime: time.Time

	// IsLocked describes whether the bucket is locked. Once locked, an
	// object retention policy cannot be modified.
	// This field is read-only.
	IsLocked: bool
}

// RFC3339 timestamp with only the date segment, used for CreatedBefore,
// CustomTimeBefore, and NoncurrentTimeBefore in LifecycleRule.
_#rfc3339Date: "2006-01-02"

// DeleteAction is a lifecycle action that deletes a live and/or archived
// objects. Takes precedence over SetStorageClass actions.
#DeleteAction: "Delete"

// SetStorageClassAction changes the storage class of live and/or archived
// objects.
#SetStorageClassAction: "SetStorageClass"

// AbortIncompleteMPUAction is a lifecycle action that aborts an incomplete
// multipart upload when the multipart upload meets the conditions specified
// in the lifecycle rule. The AgeInDays condition is the only allowed
// condition for this action. AgeInDays is measured from the time the
// multipart upload was created.
#AbortIncompleteMPUAction: "AbortIncompleteMultipartUpload"

// LifecycleRule is a lifecycle configuration rule.
//
// When all the configured conditions are met by an object in the bucket, the
// configured action will automatically be taken on that object.
#LifecycleRule: {
	// Action is the action to take when all of the associated conditions are
	// met.
	Action: #LifecycleAction

	// Condition is the set of conditions that must be met for the associated
	// action to be taken.
	Condition: #LifecycleCondition
}

// LifecycleAction is a lifecycle configuration action.
#LifecycleAction: {
	// Type is the type of action to take on matching objects.
	//
	// Acceptable values are storage.DeleteAction, storage.SetStorageClassAction,
	// and storage.AbortIncompleteMPUAction.
	Type: string

	// StorageClass is the storage class to set on matching objects if the Action
	// is "SetStorageClass".
	StorageClass: string
}

// Liveness specifies whether the object is live or not.
#Liveness: int // #enumLiveness

#enumLiveness:
	#LiveAndArchived |
	#Live |
	#Archived

#values_Liveness: {
	LiveAndArchived: #LiveAndArchived
	Live:            #Live
	Archived:        #Archived
}

// LiveAndArchived includes both live and archived objects.
#LiveAndArchived: #Liveness & 0

// Live specifies that the object is still live.
#Live: #Liveness & 1

// Archived specifies that the object is archived.
#Archived: #Liveness & 2

// LifecycleCondition is a set of conditions used to match objects and take an
// action automatically.
//
// All configured conditions must be met for the associated action to be taken.
#LifecycleCondition: {
	// AgeInDays is the age of the object in days.
	AgeInDays: int64

	// CreatedBefore is the time the object was created.
	//
	// This condition is satisfied when an object is created before midnight of
	// the specified date in UTC.
	CreatedBefore: time.Time

	// CustomTimeBefore is the CustomTime metadata field of the object. This
	// condition is satisfied when an object's CustomTime timestamp is before
	// midnight of the specified date in UTC.
	//
	// This condition can only be satisfied if CustomTime has been set.
	CustomTimeBefore: time.Time

	// DaysSinceCustomTime is the days elapsed since the CustomTime date of the
	// object. This condition can only be satisfied if CustomTime has been set.
	DaysSinceCustomTime: int64

	// DaysSinceNoncurrentTime is the days elapsed since the noncurrent timestamp
	// of the object. This condition is relevant only for versioned objects.
	DaysSinceNoncurrentTime: int64

	// Liveness specifies the object's liveness. Relevant only for versioned objects
	Liveness: #Liveness

	// MatchesPrefix is the condition matching an object if any of the
	// matches_prefix strings are an exact prefix of the object's name.
	MatchesPrefix: [...string] @go(,[]string)

	// MatchesStorageClasses is the condition matching the object's storage
	// class.
	//
	// Values include "STANDARD", "NEARLINE", "COLDLINE" and "ARCHIVE".
	MatchesStorageClasses: [...string] @go(,[]string)

	// MatchesSuffix is the condition matching an object if any of the
	// matches_suffix strings are an exact suffix of the object's name.
	MatchesSuffix: [...string] @go(,[]string)

	// NoncurrentTimeBefore is the noncurrent timestamp of the object. This
	// condition is satisfied when an object's noncurrent timestamp is before
	// midnight of the specified date in UTC.
	//
	// This condition is relevant only for versioned objects.
	NoncurrentTimeBefore: time.Time

	// NumNewerVersions is the condition matching objects with a number of newer versions.
	//
	// If the value is N, this condition is satisfied when there are at least N
	// versions (including the live version) newer than this version of the
	// object.
	NumNewerVersions: int64
}

// BucketLogging holds the bucket's logging configuration, which defines the
// destination bucket and optional name prefix for the current bucket's
// logs.
#BucketLogging: {
	// The destination bucket where the current bucket's logs
	// should be placed.
	LogBucket: string

	// A prefix for log object names.
	LogObjectPrefix: string
}

// BucketWebsite holds the bucket's website configuration, controlling how the
// service behaves when accessing bucket contents as a web site. See
// https://cloud.google.com/storage/docs/static-website for more information.
#BucketWebsite: {
	// If the requested object path is missing, the service will ensure the path has
	// a trailing '/', append this suffix, and attempt to retrieve the resulting
	// object. This allows the creation of index.html objects to represent directory
	// pages.
	MainPageSuffix: string

	// If the requested object path is missing, and any mainPageSuffix object is
	// missing, if applicable, the service will return the named object from this
	// bucket as the content for a 404 Not Found result.
	NotFoundPage: string
}

// CORS is the bucket's Cross-Origin Resource Sharing (CORS) configuration.
#CORS: {
	// MaxAge is the value to return in the Access-Control-Max-Age
	// header used in preflight responses.
	MaxAge: time.#Duration

	// Methods is the list of HTTP methods on which to include CORS response
	// headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list
	// of methods, and means "any method".
	Methods: [...string] @go(,[]string)

	// Origins is the list of Origins eligible to receive CORS response
	// headers. Note: "*" is permitted in the list of origins, and means
	// "any Origin".
	Origins: [...string] @go(,[]string)

	// ResponseHeaders is the list of HTTP headers other than the simple
	// response headers to give permission for the user-agent to share
	// across domains.
	ResponseHeaders: [...string] @go(,[]string)
}

// BucketEncryption is a bucket's encryption configuration.
#BucketEncryption: {
	// A Cloud KMS key name, in the form
	// projects/P/locations/L/keyRings/R/cryptoKeys/K, that will be used to encrypt
	// objects inserted into this bucket, if no encryption method is specified.
	// The key's location must be the same as the bucket's.
	DefaultKMSKeyName: string
}

// BucketAttrsToUpdate define the attributes to update during an Update call.
#BucketAttrsToUpdate: {
	// If set, updates whether the bucket uses versioning.
	VersioningEnabled: optional.#Bool

	// If set, updates whether the bucket is a Requester Pays bucket.
	RequesterPays: optional.#Bool

	// DefaultEventBasedHold is the default value for event-based hold on
	// newly created objects in this bucket.
	DefaultEventBasedHold: optional.#Bool

	// BucketPolicyOnly is an alias for UniformBucketLevelAccess. Use of
	// UniformBucketLevelAccess is recommended above the use of this field.
	// Setting BucketPolicyOnly.Enabled OR UniformBucketLevelAccess.Enabled to
	// true, will enable UniformBucketLevelAccess. If both BucketPolicyOnly and
	// UniformBucketLevelAccess are set, the value of UniformBucketLevelAccess
	// will take precedence.
	BucketPolicyOnly?: null | #BucketPolicyOnly @go(,*BucketPolicyOnly)

	// UniformBucketLevelAccess configures access checks to use only bucket-level IAM
	// policies and ignore any ACL rules for the bucket.
	// See https://cloud.google.com/storage/docs/uniform-bucket-level-access
	// for more information.
	UniformBucketLevelAccess?: null | #UniformBucketLevelAccess @go(,*UniformBucketLevelAccess)

	// PublicAccessPrevention is the setting for the bucket's
	// PublicAccessPrevention policy, which can be used to prevent public access
	// of data in the bucket. See
	// https://cloud.google.com/storage/docs/public-access-prevention for more
	// information.
	PublicAccessPrevention: #PublicAccessPrevention

	// StorageClass is the default storage class of the bucket. This defines
	// how objects in the bucket are stored and determines the SLA
	// and the cost of storage. Typical values are "STANDARD", "NEARLINE",
	// "COLDLINE" and "ARCHIVE". Defaults to "STANDARD".
	// See https://cloud.google.com/storage/docs/storage-classes for all
	// valid values.
	StorageClass: string

	// If set, updates the retention policy of the bucket. Using
	// RetentionPolicy.RetentionPeriod = 0 will delete the existing policy.
	//
	// This feature is in private alpha release. It is not currently available to
	// most customers. It might be changed in backwards-incompatible ways and is not
	// subject to any SLA or deprecation policy.
	RetentionPolicy?: null | #RetentionPolicy @go(,*RetentionPolicy)

	// If set, replaces the CORS configuration with a new configuration.
	// An empty (rather than nil) slice causes all CORS policies to be removed.
	CORS: [...#CORS] @go(,[]CORS)

	// If set, replaces the encryption configuration of the bucket. Using
	// BucketEncryption.DefaultKMSKeyName = "" will delete the existing
	// configuration.
	Encryption?: null | #BucketEncryption @go(,*BucketEncryption)

	// If set, replaces the lifecycle configuration of the bucket.
	Lifecycle?: null | #Lifecycle @go(,*Lifecycle)

	// If set, replaces the logging configuration of the bucket.
	Logging?: null | #BucketLogging @go(,*BucketLogging)

	// If set, replaces the website configuration of the bucket.
	Website?: null | #BucketWebsite @go(,*BucketWebsite)

	// If not empty, applies a predefined set of access controls.
	// See https://cloud.google.com/storage/docs/json_api/v1/buckets/patch.
	PredefinedACL: string

	// If not empty, applies a predefined set of default object access controls.
	// See https://cloud.google.com/storage/docs/json_api/v1/buckets/patch.
	PredefinedDefaultObjectACL: string

	// RPO configures the Recovery Point Objective (RPO) policy of the bucket.
	// Set to RPOAsyncTurbo to turn on Turbo Replication for a bucket.
	// See https://cloud.google.com/storage/docs/managing-turbo-replication for
	// more information.
	RPO: #RPO
}

// BucketConditions constrain bucket methods to act on specific metagenerations.
//
// The zero value is an empty set of constraints.
#BucketConditions: {
	// MetagenerationMatch specifies that the bucket must have the given
	// metageneration for the operation to occur.
	// If MetagenerationMatch is zero, it has no effect.
	MetagenerationMatch: int64

	// MetagenerationNotMatch specifies that the bucket must not have the given
	// metageneration for the operation to occur.
	// If MetagenerationNotMatch is zero, it has no effect.
	MetagenerationNotMatch: int64
}

// A BucketIterator is an iterator over BucketAttrs.
//
// Note: This iterator is not safe for concurrent operations without explicit synchronization.
#BucketIterator: {
	// Prefix restricts the iterator to buckets whose names begin with it.
	Prefix: string
}

// RPO (Recovery Point Objective) configures the turbo replication feature. See
// https://cloud.google.com/storage/docs/managing-turbo-replication for more information.
#RPO: int // #enumRPO

#enumRPO:
	#RPOUnknown |
	#RPODefault |
	#RPOAsyncTurbo

#values_RPO: {
	RPOUnknown:    #RPOUnknown
	RPODefault:    #RPODefault
	RPOAsyncTurbo: #RPOAsyncTurbo
}

// RPOUnknown is a zero value. It may be returned from bucket.Attrs() if RPO
// is not present in the bucket metadata, that is, the bucket is not dual-region.
// This value is also used if the RPO field is not set in a call to GCS.
#RPOUnknown: #RPO & 0

// RPODefault represents default replication. It is used to reset RPO on an
// existing bucket  that has this field set to RPOAsyncTurbo. Otherwise it
// is equivalent to RPOUnknown, and is always ignored. This value is valid
// for dual- or multi-region buckets.
#RPODefault: #RPO & 1

// RPOAsyncTurbo represents turbo replication and is used to enable Turbo
// Replication on a bucket. This value is only valid for dual-region buckets.
#RPOAsyncTurbo:  #RPO & 2
_#rpoUnknown:    ""
_#rpoDefault:    "DEFAULT"
_#rpoAsyncTurbo: "ASYNC_TURBO"
