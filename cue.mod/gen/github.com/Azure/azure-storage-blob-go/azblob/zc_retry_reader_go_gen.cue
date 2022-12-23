// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/azure-storage-blob-go/azblob

package azblob

#CountToEnd: 0

// HTTPGetterInfo is passed to an HTTPGetter function passing it parameters
// that should be used to make an HTTP GET request.
#HTTPGetterInfo: {
	// Offset specifies the start offset that should be used when
	// creating the HTTP GET request's Range header
	Offset: int64

	// Count specifies the count of bytes that should be used to calculate
	// the end offset when creating the HTTP GET request's Range header
	Count: int64

	// ETag specifies the resource's etag that should be used when creating
	// the HTTP GET request's If-Match header
	ETag: #ETag
}

// RetryReaderOptions contains properties which can help to decide when to do retry.
#RetryReaderOptions: {
	// MaxRetryRequests specifies the maximum number of HTTP GET requests that will be made
	// while reading from a RetryReader. A value of zero means that no additional HTTP
	// GET requests will be made.
	MaxRetryRequests: int

	// TreatEarlyCloseAsError can be set to true to prevent retries after "read on closed response body". By default,
	// retryReader has the following special behaviour: closing the response body before it is all read is treated as a
	// retryable error. This is to allow callers to force a retry by closing the body from another goroutine (e.g. if the =
	// read is too slow, caller may want to force a retry in the hope that the retry will be quicker).  If
	// TreatEarlyCloseAsError is true, then retryReader's special behaviour is suppressed, and "read on closed body" is instead
	// treated as a fatal (non-retryable) error.
	// Note that setting TreatEarlyCloseAsError only guarantees that Closing will produce a fatal error if the Close happens
	// from the same "thread" (goroutine) as Read.  Concurrent Close calls from other goroutines may instead produce network errors
	// which will be retried.
	TreatEarlyCloseAsError: bool
}

#ReadOnClosedBodyMessage: "read on closed response body"