// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/s3/v1beta1

package v1beta1

// Tagging is the container for TagSet elements.
#Tagging: {
	// A collection for a set of tags
	// TagSet is a required field
	tagSet: [...#Tag] @go(TagSet,[]Tag)
}

// Tag is a container for a key value name pair.
#Tag: {
	// Name of the tag.
	// Key is a required field
	key: string @go(Key)

	// Value of the tag.
	// Value is a required field
	value: string @go(Value)
}
