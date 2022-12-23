// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/Azure/go-autorest/autorest

package autorest

import "net/http"

// UndefinedStatusCode is used when HTTP status code is not available for an error.
#UndefinedStatusCode: 0

// DetailedError encloses a error with details of the package, method, and associated HTTP
// status code (if any).
#DetailedError: {
	Original: _ @go(,error)

	// PackageType is the package type of the object emitting the error. For types, the value
	// matches that produced the the '%T' format specifier of the fmt package. For other elements,
	// such as functions, it is just the package name (e.g., "autorest").
	PackageType: string

	// Method is the name of the method raising the error.
	Method: string

	// StatusCode is the HTTP Response StatusCode (if non-zero) that led to the error.
	StatusCode: _ @go(,interface{})

	// Message is the error message.
	Message: string

	// Service Error is the response body of failed API in bytes
	ServiceError: bytes @go(,[]byte)

	// Response is the response object that was returned during failure if applicable.
	Response?: null | http.#Response @go(,*http.Response)
}