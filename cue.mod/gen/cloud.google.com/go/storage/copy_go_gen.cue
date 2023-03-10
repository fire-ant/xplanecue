// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go cloud.google.com/go/storage

package storage

// A Copier copies a source object to a destination.
#Copier: {
	// ObjectAttrs are optional attributes to set on the destination object.
	// Any attributes must be initialized before any calls on the Copier. Nil
	// or zero-valued attributes are ignored.
	ObjectAttrs: #ObjectAttrs

	// RewriteToken can be set before calling Run to resume a copy
	// operation. After Run returns a non-nil error, RewriteToken will
	// have been updated to contain the value needed to resume the copy.
	RewriteToken: string

	// The Cloud KMS key, in the form projects/P/locations/L/keyRings/R/cryptoKeys/K,
	// that will be used to encrypt the object. Overrides the object's KMSKeyName, if
	// any.
	//
	// Providing both a DestinationKMSKeyName and a customer-supplied encryption key
	// (via ObjectHandle.Key) on the destination object will result in an error when
	// Run is called.
	DestinationKMSKeyName: string
}

// A Composer composes source objects into a destination object.
//
// For Requester Pays buckets, the user project of dst is billed.
#Composer: {
	// ObjectAttrs are optional attributes to set on the destination object.
	// Any attributes must be initialized before any calls on the Composer. Nil
	// or zero-valued attributes are ignored.
	ObjectAttrs: #ObjectAttrs

	// SendCRC specifies whether to transmit a CRC32C field. It should be set
	// to true in addition to setting the Composer's CRC32C field, because zero
	// is a valid CRC and normally a zero would not be transmitted.
	// If a CRC32C is sent, and the data in the destination object does not match
	// the checksum, the compose will be rejected.
	SendCRC32C: bool
}
