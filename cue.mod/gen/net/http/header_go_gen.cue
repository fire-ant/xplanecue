// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go net/http

package http

// A Header represents the key-value pairs in an HTTP header.
//
// The keys should be in canonical form, as returned by
// CanonicalHeaderKey.
#Header: {[string]: [...string]}
