// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-storage-blob-go/azblob

package azblob

import "time"

// ModifiedAccessConditions identifies standard HTTP access conditions which you optionally set.
#ModifiedAccessConditions: {
	IfModifiedSince:   time.Time
	IfUnmodifiedSince: time.Time
	IfMatch:           #ETag
	IfNoneMatch:       #ETag
}

// ContainerAccessConditions identifies container-specific access conditions which you optionally set.
#ContainerAccessConditions: {
	ModifiedAccessConditions: #ModifiedAccessConditions
	LeaseAccessConditions:    #LeaseAccessConditions
}

// BlobAccessConditions identifies blob-specific access conditions which you optionally set.
#BlobAccessConditions: {
	ModifiedAccessConditions: #ModifiedAccessConditions
	LeaseAccessConditions:    #LeaseAccessConditions
}

// LeaseAccessConditions identifies lease access conditions for a container or blob which you optionally set.
#LeaseAccessConditions: {
	LeaseID: string
}
