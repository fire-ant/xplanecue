// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go cloud.google.com/go/storage

package storage

import "time"

// Maximum amount of content that can be sent per WriteObjectRequest message.
// A buffer reaching this amount will precipitate a flush of the buffer.
//
// This is only used for the gRPC-based Writer.
_#maxPerMessageWriteSize: int & 2097152

// A Writer writes a Cloud Storage object.
#Writer: {
	// ObjectAttrs are optional attributes to set on the object. Any attributes
	// must be initialized before the first Write call. Nil or zero-valued
	// attributes are ignored.
	ObjectAttrs: #ObjectAttrs

	// SendCRC32C specifies whether to transmit a CRC32C field. It should be set
	// to true in addition to setting the Writer's CRC32C field, because zero
	// is a valid CRC and normally a zero would not be transmitted.
	// If a CRC32C is sent, and the data written does not match the checksum,
	// the write will be rejected.
	//
	// Note: SendCRC32C must be set to true BEFORE the first call to
	// Writer.Write() in order to send the checksum. If it is set after that
	// point, the checksum will be ignored.
	SendCRC32C: bool

	// ChunkSize controls the maximum number of bytes of the object that the
	// Writer will attempt to send to the server in a single request. Objects
	// smaller than the size will be sent in a single request, while larger
	// objects will be split over multiple requests. The value will be rounded up
	// to the nearest multiple of 256K. The default ChunkSize is 16MiB.
	//
	// Each Writer will internally allocate a buffer of size ChunkSize. This is
	// used to buffer input data and allow for the input to be sent again if a
	// request must be retried.
	//
	// If you upload small objects (< 16MiB), you should set ChunkSize
	// to a value slightly larger than the objects' sizes to avoid memory bloat.
	// This is especially important if you are uploading many small objects
	// concurrently. See
	// https://cloud.google.com/storage/docs/json_api/v1/how-tos/upload#size
	// for more information about performance trade-offs related to ChunkSize.
	//
	// If ChunkSize is set to zero, chunking will be disabled and the object will
	// be uploaded in a single request without the use of a buffer. This will
	// further reduce memory used during uploads, but will also prevent the writer
	// from retrying in case of a transient error from the server or resuming an
	// upload that fails midway through, since the buffer is required in order to
	// retry the failed request.
	//
	// ChunkSize must be set before the first Write call.
	ChunkSize: int

	// ChunkRetryDeadline sets a per-chunk retry deadline for multi-chunk
	// resumable uploads.
	//
	// For uploads of larger files, the Writer will attempt to retry if the
	// request to upload a particular chunk fails with a transient error.
	// If a single chunk has been attempting to upload for longer than this
	// deadline and the request fails, it will no longer be retried, and the error
	// will be returned to the caller. This is only applicable for files which are
	// large enough to require a multi-chunk resumable upload. The default value
	// is 32s. Users may want to pick a longer deadline if they are using larger
	// values for ChunkSize or if they expect to have a slow or unreliable
	// internet connection.
	//
	// To set a deadline on the entire upload, use context timeout or
	// cancellation.
	ChunkRetryDeadline: time.#Duration
}