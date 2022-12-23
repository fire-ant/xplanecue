// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/aws/smithy-go/document

package document

// Marshaler is an interface for a type that marshals a document to its protocol-specific byte representation and
// returns the resulting bytes. A non-nil error will be returned if an error is encountered during marshaling.
//
// Marshal supports basic scalars (int,uint,float,bool,string), big.Int, and big.Float, maps, slices, and structs.
// Anonymous nested types are flattened based on Go anonymous type visibility.
//
// When defining struct types. the `document` struct tag can be used to control how the value will be
// marshaled into the resulting protocol document.
//
//  // Field is ignored
//  Field int `document:"-"`
//
//  // Field object of key "myName"
//  Field int `document:"myName"`
//
//  // Field object key of key "myName", and
//  // Field is omitted if the field is a zero value for the type.
//  Field int `document:"myName,omitempty"`
//
//  // Field object key of "Field", and
//  // Field is omitted if the field is a zero value for the type.
//  Field int `document:",omitempty"`
//
// All struct fields, including anonymous fields, are marshaled unless the
// any of the following conditions are meet.
//
//  - the field is not exported
//  - document field tag is "-"
//  - document field tag specifies "omitempty", and is a zero value.
//
// Pointer and interface values are encoded as the value pointed to or
// contained in the interface. A nil value encodes as a null
// value unless `omitempty` struct tag is provided.
//
// Channel, complex, and function values are not encoded and will be skipped
// when walking the value to be marshaled.
//
// time.Time is not supported and will cause the Marshaler to return an error. These values should be represented
// by your application as a string or numerical representation.
//
// Errors that occur when marshaling will stop the marshaler, and return the error.
//
// Marshal cannot represent cyclic data structures and will not handle them.
// Passing cyclic structures to Marshal will result in an infinite recursion.
#Marshaler: _

// Unmarshaler is an interface for a type that unmarshals a document from its protocol-specific representation, and
// stores the result into the value pointed by v. If v is nil or not a pointer then InvalidUnmarshalError will be
// returned.
//
// Unmarshaler supports the same encodings produced by a document Marshaler. This includes support for the `document`
// struct field tag for controlling how struct fields are unmarshaled.
//
// Both generic interface{} and concrete types are valid unmarshal destination types. When unmarshaling a document
// into an empty interface the Unmarshaler will store one of these values:
//   bool,                   for boolean values
//   document.Number,        for arbitrary-precision numbers (int64, float64, big.Int, big.Float)
//   string,                 for string values
//   []interface{},          for array values
//   map[string]interface{}, for objects
//   nil,                    for null values
//
// When unmarshaling, any error that occurs will halt the unmarshal and return the error.
#Unmarshaler: _

_#noSerde: _

// NoSerde is a sentinel value to indicate that a given type should not be marshaled or unmarshaled
// into a protocol document.
#NoSerde: {
}

// Number is an arbitrary precision numerical value
#Number: string
