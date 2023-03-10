// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-storage-blob-go/azblob

package azblob

// PageBlobPageBytes indicates the number of bytes in a page (512).
#PageBlobPageBytes: 512

// PageBlobMaxPutPagesBytes indicates the maximum number of bytes that can be sent in a call to PutPage.
#PageBlobMaxUploadPagesBytes: 4194304

#PageBlobAccessConditions: {
	ModifiedAccessConditions:       #ModifiedAccessConditions
	LeaseAccessConditions:          #LeaseAccessConditions
	SequenceNumberAccessConditions: #SequenceNumberAccessConditions
}

// SequenceNumberAccessConditions identifies page blob-specific access conditions which you optionally set.
#SequenceNumberAccessConditions: {
	// IfSequenceNumberLessThan ensures that the page blob operation succeeds
	// only if the blob's sequence number is less than a value.
	// IfSequenceNumberLessThan=0 means no 'IfSequenceNumberLessThan' header specified.
	// IfSequenceNumberLessThan>0 means 'IfSequenceNumberLessThan' header specified with its value
	// IfSequenceNumberLessThan==-1 means 'IfSequenceNumberLessThan' header specified with a value of 0
	IfSequenceNumberLessThan: int64

	// IfSequenceNumberLessThanOrEqual ensures that the page blob operation succeeds
	// only if the blob's sequence number is less than or equal to a value.
	// IfSequenceNumberLessThanOrEqual=0 means no 'IfSequenceNumberLessThanOrEqual' header specified.
	// IfSequenceNumberLessThanOrEqual>0 means 'IfSequenceNumberLessThanOrEqual' header specified with its value
	// IfSequenceNumberLessThanOrEqual=-1 means 'IfSequenceNumberLessThanOrEqual' header specified with a value of 0
	IfSequenceNumberLessThanOrEqual: int64

	// IfSequenceNumberEqual ensures that the page blob operation succeeds
	// only if the blob's sequence number is equal to a value.
	// IfSequenceNumberEqual=0 means no 'IfSequenceNumberEqual' header specified.
	// IfSequenceNumberEqual>0 means 'IfSequenceNumberEqual' header specified with its value
	// IfSequenceNumberEqual=-1 means 'IfSequenceNumberEqual' header specified with a value of 0
	IfSequenceNumberEqual: int64
}
