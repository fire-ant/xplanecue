// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go cloud.google.com/go/storage

package storage

import (
	"time"
	"net/url"
	"cloud.google.com/go/internal/optional"
)

// ScopeFullControl grants permissions to manage your
// data and permissions in Google Cloud Storage.
#ScopeFullControl: "https://www.googleapis.com/auth/devstorage.full_control"

// ScopeReadOnly grants permissions to
// view your data in Google Cloud Storage.
#ScopeReadOnly: "https://www.googleapis.com/auth/devstorage.read_only"

// ScopeReadWrite grants permissions to manage your
// data in Google Cloud Storage.
#ScopeReadWrite: "https://www.googleapis.com/auth/devstorage.read_write"

// aes256Algorithm is the AES256 encryption algorithm used with the
// Customer-Supplied Encryption Keys feature.
_#aes256Algorithm: "AES256"

// defaultGen indicates the latest object generation by default,
// using a negative value.
_#defaultGen: int64 & -1

// SigningScheme determines the API version to use when signing URLs.
#SigningScheme: int // #enumSigningScheme

#enumSigningScheme:
	#SigningSchemeDefault |
	#SigningSchemeV2 |
	#SigningSchemeV4

#values_SigningScheme: {
	SigningSchemeDefault: #SigningSchemeDefault
	SigningSchemeV2:      #SigningSchemeV2
	SigningSchemeV4:      #SigningSchemeV4
}

// SigningSchemeDefault is presently V2 and will change to V4 in the future.
#SigningSchemeDefault: #SigningScheme & 0

// SigningSchemeV2 uses the V2 scheme to sign URLs.
#SigningSchemeV2: #SigningScheme & 1

// SigningSchemeV4 uses the V4 scheme to sign URLs.
#SigningSchemeV4: #SigningScheme & 2

// URLStyle determines the style to use for the signed URL. pathStyle is the
// default. All non-default options work with V4 scheme only. See
// https://cloud.google.com/storage/docs/request-endpoints for details.
#URLStyle: _

_#pathStyle: {
}

_#virtualHostedStyle: {
}

// SignedURLOptions allows you to restrict the access to the signed URL.
#SignedURLOptions: {
	// GoogleAccessID represents the authorizer of the signed URL generation.
	// It is typically the Google service account client email address from
	// the Google Developers Console in the form of "xxx@developer.gserviceaccount.com".
	// Required.
	GoogleAccessID: string

	// PrivateKey is the Google service account private key. It is obtainable
	// from the Google Developers Console.
	// At https://console.developers.google.com/project/<your-project-id>/apiui/credential,
	// create a service account client ID or reuse one of your existing service account
	// credentials. Click on the "Generate new P12 key" to generate and download
	// a new private key. Once you download the P12 file, use the following command
	// to convert it into a PEM file.
	//
	//    $ openssl pkcs12 -in key.p12 -passin pass:notasecret -out key.pem -nodes
	//
	// Provide the contents of the PEM file as a byte slice.
	// Exactly one of PrivateKey or SignBytes must be non-nil.
	PrivateKey: bytes @go(,[]byte)

	// Method is the HTTP method to be used with the signed URL.
	// Signed URLs can be used with GET, HEAD, PUT, and DELETE requests.
	// Required.
	Method: string

	// Expires is the expiration time on the signed URL. It must be
	// a datetime in the future. For SigningSchemeV4, the expiration may be no
	// more than seven days in the future.
	// Required.
	Expires: time.Time

	// ContentType is the content type header the client must provide
	// to use the generated signed URL.
	// Optional.
	ContentType: string

	// Headers is a list of extension headers the client must provide
	// in order to use the generated signed URL. Each must be a string of the
	// form "key:values", with multiple values separated by a semicolon.
	// Optional.
	Headers: [...string] @go(,[]string)

	// QueryParameters is a map of additional query parameters. When
	// SigningScheme is V4, this is used in computing the signature, and the
	// client must use the same query parameters when using the generated signed
	// URL.
	// Optional.
	QueryParameters: url.#Values

	// MD5 is the base64 encoded MD5 checksum of the file.
	// If provided, the client should provide the exact value on the request
	// header in order to use the signed URL.
	// Optional.
	MD5: string

	// Style provides options for the type of URL to use. Options are
	// PathStyle (default), BucketBoundHostname, and VirtualHostedStyle. See
	// https://cloud.google.com/storage/docs/request-endpoints for details.
	// Only supported for V4 signing.
	// Optional.
	Style: #URLStyle

	// Insecure determines whether the signed URL should use HTTPS (default) or
	// HTTP.
	// Only supported for V4 signing.
	// Optional.
	Insecure: bool

	// Scheme determines the version of URL signing to use. Default is
	// SigningSchemeV2.
	Scheme: #SigningScheme
}

_#iso8601:      "20060102T150405Z"
_#yearMonthDay: "20060102"

// ObjectAttrsToUpdate is used to update the attributes of an object.
// Only fields set to non-nil values will be updated.
// For all fields except CustomTime, set the field to its zero value to delete
// it. CustomTime cannot be deleted or changed to an earlier time once set.
//
// For example, to change ContentType and delete ContentEncoding and
// Metadata, use
//    ObjectAttrsToUpdate{
//        ContentType: "text/html",
//        ContentEncoding: "",
//        Metadata: map[string]string{},
//    }
#ObjectAttrsToUpdate: {
	EventBasedHold:     optional.#Bool
	TemporaryHold:      optional.#Bool
	ContentType:        optional.#String
	ContentLanguage:    optional.#String
	ContentEncoding:    optional.#String
	ContentDisposition: optional.#String
	CacheControl:       optional.#String
	CustomTime:         time.Time
	Metadata: {[string]: string} @go(,map[string]string)
	ACL: [...#ACLRule] @go(,[]ACLRule)

	// If not empty, applies a predefined set of access controls. ACL must be nil.
	// See https://cloud.google.com/storage/docs/json_api/v1/objects/patch.
	PredefinedACL: string
}

// ObjectAttrs represents the metadata for a Google Cloud Storage (GCS) object.
#ObjectAttrs: {
	// Bucket is the name of the bucket containing this GCS object.
	// This field is read-only.
	Bucket: string

	// Name is the name of the object within the bucket.
	// This field is read-only.
	Name: string

	// ContentType is the MIME type of the object's content.
	ContentType: string

	// ContentLanguage is the content language of the object's content.
	ContentLanguage: string

	// CacheControl is the Cache-Control header to be sent in the response
	// headers when serving the object data.
	CacheControl: string

	// EventBasedHold specifies whether an object is under event-based hold. New
	// objects created in a bucket whose DefaultEventBasedHold is set will
	// default to that value.
	EventBasedHold: bool

	// TemporaryHold specifies whether an object is under temporary hold. While
	// this flag is set to true, the object is protected against deletion and
	// overwrites.
	TemporaryHold: bool

	// RetentionExpirationTime is a server-determined value that specifies the
	// earliest time that the object's retention period expires.
	// This is a read-only field.
	RetentionExpirationTime: time.Time

	// ACL is the list of access control rules for the object.
	ACL: [...#ACLRule] @go(,[]ACLRule)

	// If not empty, applies a predefined set of access controls. It should be set
	// only when writing, copying or composing an object. When copying or composing,
	// it acts as the destinationPredefinedAcl parameter.
	// PredefinedACL is always empty for ObjectAttrs returned from the service.
	// See https://cloud.google.com/storage/docs/json_api/v1/objects/insert
	// for valid values.
	PredefinedACL: string

	// Owner is the owner of the object. This field is read-only.
	//
	// If non-zero, it is in the form of "user-<userId>".
	Owner: string

	// Size is the length of the object's content. This field is read-only.
	Size: int64

	// ContentEncoding is the encoding of the object's content.
	ContentEncoding: string

	// ContentDisposition is the optional Content-Disposition header of the object
	// sent in the response headers.
	ContentDisposition: string

	// MD5 is the MD5 hash of the object's content. This field is read-only,
	// except when used from a Writer. If set on a Writer, the uploaded
	// data is rejected if its MD5 hash does not match this field.
	MD5: bytes @go(,[]byte)

	// CRC32C is the CRC32 checksum of the object's content using the Castagnoli93
	// polynomial. This field is read-only, except when used from a Writer or
	// Composer. In those cases, if the SendCRC32C field in the Writer or Composer
	// is set to is true, the uploaded data is rejected if its CRC32C hash does
	// not match this field.
	//
	// Note: For a Writer, SendCRC32C must be set to true BEFORE the first call to
	// Writer.Write() in order to send the checksum.
	CRC32C: uint32

	// MediaLink is an URL to the object's content. This field is read-only.
	MediaLink: string

	// Metadata represents user-provided metadata, in key/value pairs.
	// It can be nil if no metadata is provided.
	//
	// For object downloads using Reader, metadata keys are sent as headers.
	// Therefore, avoid setting metadata keys using characters that are not valid
	// for headers. See https://www.rfc-editor.org/rfc/rfc7230#section-3.2.6.
	Metadata: {[string]: string} @go(,map[string]string)

	// Generation is the generation number of the object's content.
	// This field is read-only.
	Generation: int64

	// Metageneration is the version of the metadata for this
	// object at this generation. This field is used for preconditions
	// and for detecting changes in metadata. A metageneration number
	// is only meaningful in the context of a particular generation
	// of a particular object. This field is read-only.
	Metageneration: int64

	// StorageClass is the storage class of the object. This defines
	// how objects are stored and determines the SLA and the cost of storage.
	// Typical values are "STANDARD", "NEARLINE", "COLDLINE" and "ARCHIVE".
	// Defaults to "STANDARD".
	// See https://cloud.google.com/storage/docs/storage-classes for all
	// valid values.
	StorageClass: string

	// Created is the time the object was created. This field is read-only.
	Created: time.Time

	// Deleted is the time the object was deleted.
	// If not deleted, it is the zero value. This field is read-only.
	Deleted: time.Time

	// Updated is the creation or modification time of the object.
	// For buckets with versioning enabled, changing an object's
	// metadata does not change this property. This field is read-only.
	Updated: time.Time

	// CustomerKeySHA256 is the base64-encoded SHA-256 hash of the
	// customer-supplied encryption key for the object. It is empty if there is
	// no customer-supplied encryption key.
	// See // https://cloud.google.com/storage/docs/encryption for more about
	// encryption in Google Cloud Storage.
	CustomerKeySHA256: string

	// Cloud KMS key name, in the form
	// projects/P/locations/L/keyRings/R/cryptoKeys/K, used to encrypt this object,
	// if the object is encrypted by such a key.
	//
	// Providing both a KMSKeyName and a customer-supplied encryption key (via
	// ObjectHandle.Key) will result in an error when writing an object.
	KMSKeyName: string

	// Prefix is set only for ObjectAttrs which represent synthetic "directory
	// entries" when iterating over buckets using Query.Delimiter. See
	// ObjectIterator.Next. When set, no other fields in ObjectAttrs will be
	// populated.
	Prefix: string

	// Etag is the HTTP/1.1 Entity tag for the object.
	// This field is read-only.
	Etag: string

	// A user-specified timestamp which can be applied to an object. This is
	// typically set in order to use the CustomTimeBefore and DaysSinceCustomTime
	// LifecycleConditions to manage object lifecycles.
	//
	// CustomTime cannot be removed once set on an object. It can be updated to a
	// later value but not to an earlier one. For more information see
	// https://cloud.google.com/storage/docs/metadata#custom-time .
	CustomTime: time.Time
}

// Projection is enumerated type for Query.Projection.
#Projection: int // #enumProjection

#enumProjection:
	#ProjectionDefault |
	#ProjectionFull |
	#ProjectionNoACL

#values_Projection: {
	ProjectionDefault: #ProjectionDefault
	ProjectionFull:    #ProjectionFull
	ProjectionNoACL:   #ProjectionNoACL
}

// ProjectionDefault returns all fields of objects.
#ProjectionDefault: #Projection & 0

// ProjectionFull returns all fields of objects.
#ProjectionFull: #Projection & 1

// ProjectionNoACL returns all fields of objects except for Owner and ACL.
#ProjectionNoACL: #Projection & 2

// Query represents a query to filter objects from a bucket.
#Query: {
	// Delimiter returns results in a directory-like fashion.
	// Results will contain only objects whose names, aside from the
	// prefix, do not contain delimiter. Objects whose names,
	// aside from the prefix, contain delimiter will have their name,
	// truncated after the delimiter, returned in prefixes.
	// Duplicate prefixes are omitted.
	// Optional.
	Delimiter: string

	// Prefix is the prefix filter to query objects
	// whose names begin with this prefix.
	// Optional.
	Prefix: string

	// Versions indicates whether multiple versions of the same
	// object will be included in the results.
	Versions: bool

	// StartOffset is used to filter results to objects whose names are
	// lexicographically equal to or after startOffset. If endOffset is also set,
	// the objects listed will have names between startOffset (inclusive) and
	// endOffset (exclusive).
	StartOffset: string

	// EndOffset is used to filter results to objects whose names are
	// lexicographically before endOffset. If startOffset is also set, the objects
	// listed will have names between startOffset (inclusive) and endOffset (exclusive).
	EndOffset: string

	// Projection defines the set of properties to return. It will default to ProjectionFull,
	// which returns all properties. Passing ProjectionNoACL will omit Owner and ACL,
	// which may improve performance when listing many objects.
	Projection: #Projection

	// IncludeTrailingDelimiter controls how objects which end in a single
	// instance of Delimiter (for example, if Query.Delimiter = "/" and the
	// object name is "foo/bar/") are included in the results. By default, these
	// objects only show up as prefixes. If IncludeTrailingDelimiter is set to
	// true, they will also be included as objects and their metadata will be
	// populated in the returned ObjectAttrs.
	IncludeTrailingDelimiter: bool
}

// Conditions constrain methods to act on specific generations of
// objects.
//
// The zero value is an empty set of constraints. Not all conditions or
// combinations of conditions are applicable to all methods.
// See https://cloud.google.com/storage/docs/generations-preconditions
// for details on how these operate.
#Conditions: {
	// GenerationMatch specifies that the object must have the given generation
	// for the operation to occur.
	// If GenerationMatch is zero, it has no effect.
	// Use DoesNotExist to specify that the object does not exist in the bucket.
	GenerationMatch: int64

	// GenerationNotMatch specifies that the object must not have the given
	// generation for the operation to occur.
	// If GenerationNotMatch is zero, it has no effect.
	GenerationNotMatch: int64

	// DoesNotExist specifies that the object must not exist in the bucket for
	// the operation to occur.
	// If DoesNotExist is false, it has no effect.
	DoesNotExist: bool

	// MetagenerationMatch specifies that the object must have the given
	// metageneration for the operation to occur.
	// If MetagenerationMatch is zero, it has no effect.
	MetagenerationMatch: int64

	// MetagenerationNotMatch specifies that the object must not have the given
	// metageneration for the operation to occur.
	// If MetagenerationNotMatch is zero, it has no effect.
	MetagenerationNotMatch: int64
}

// RetryOption allows users to configure non-default retry behavior for API
// calls made to GCS.
#RetryOption: _

// RetryPolicy describes the available policies for which operations should be
// retried. The default is `RetryIdempotent`.
#RetryPolicy: int // #enumRetryPolicy

#enumRetryPolicy:
	#RetryIdempotent |
	#RetryAlways |
	#RetryNever

#values_RetryPolicy: {
	RetryIdempotent: #RetryIdempotent
	RetryAlways:     #RetryAlways
	RetryNever:      #RetryNever
}

// RetryIdempotent causes only idempotent operations to be retried when the
// service returns a transient error. Using this policy, fully idempotent
// operations (such as `ObjectHandle.Attrs()`) will always be retried.
// Conditionally idempotent operations (for example `ObjectHandle.Update()`)
// will be retried only if the necessary conditions have been supplied (in
// the case of `ObjectHandle.Update()` this would mean supplying a
// `Conditions.MetagenerationMatch` condition is required).
#RetryIdempotent: #RetryPolicy & 0

// RetryAlways causes all operations to be retried when the service returns a
// transient error, regardless of idempotency considerations.
#RetryAlways: #RetryPolicy & 1

// RetryNever causes the client to not perform retries on failed operations.
#RetryNever: #RetryPolicy & 2
