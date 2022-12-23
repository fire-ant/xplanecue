// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-storage-blob-go/azblob

package azblob

// The AccessPolicyPermission type simplifies creating the permissions string for a container's access policy.
// Initialize an instance of this type and then call its String method to set AccessPolicy's Permission field.
#AccessPolicyPermission: {
	Read:   bool
	Add:    bool
	Create: bool
	Write:  bool
	Delete: bool
	List:   bool
}

// ListBlobsSegmentOptions defines options available when calling ListBlobs.
#ListBlobsSegmentOptions: {
	Details: #BlobListingDetails
	Prefix:  string

	// SetMaxResults sets the maximum desired results you want the service to return. Note, the
	// service may return fewer results than requested.
	// MaxResults=0 means no 'MaxResults' header specified.
	MaxResults: int32
}

// BlobListingDetails indicates what additional information the service should return with each blob.
#BlobListingDetails: {
	Copy:             bool
	Metadata:         bool
	Snapshots:        bool
	UncommittedBlobs: bool
	Deleted:          bool
}
