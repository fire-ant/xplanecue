// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go mime/multipart

package multipart

import "net/textproto"

// Form is a parsed multipart form.
// Its File parts are stored either in memory or on disk,
// and are accessible via the *FileHeader's Open method.
// Its Value parts are stored as strings.
// Both are keyed by field name.
#Form: {
	Value: {[string]: [...string]} @go(,map[string][]string)
	File: {[string]: [...null | #FileHeader]} @go(,map[string][]*FileHeader)
}

// A FileHeader describes a file part of a multipart request.
#FileHeader: {
	Filename: string
	Header:   textproto.#MIMEHeader
	Size:     int64
}

// File is an interface to access the file part of a multipart message.
// Its contents may be either stored in memory or on disk.
// If stored on disk, the File's underlying concrete type will be an *os.File.
#File: _
