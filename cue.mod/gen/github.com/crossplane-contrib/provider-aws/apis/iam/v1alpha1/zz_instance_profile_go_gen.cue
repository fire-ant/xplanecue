// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/iam/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// InstanceProfileParameters defines the desired state of InstanceProfile
#InstanceProfileParameters: {
	// The path to the instance profile. For more information about paths, see IAM
	// Identifiers (https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
	// in the IAM User Guide.
	//
	// This parameter is optional. If it is not included, it defaults to a slash
	// (/).
	//
	// This parameter allows (through its regex pattern (http://wikipedia.org/wiki/regex))
	// a string of characters consisting of either a forward slash (/) by itself
	// or a string that must begin and end with forward slashes. In addition, it
	// can contain any ASCII character from the ! (\u0021) through the DEL character
	// (\u007F), including most punctuation characters, digits, and upper and lowercased
	// letters.
	path?: null | string @go(Path,*string)

	// A list of tags that you want to attach to the newly created IAM instance
	// profile. Each tag consists of a key name and an associated value. For more
	// information about tagging, see Tagging IAM resources (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
	// in the IAM User Guide.
	//
	// If any one of the tags is invalid or if you exceed the allowed maximum number
	// of tags, then the entire request fails and the resource is not created.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomInstanceProfileParameters
}

// InstanceProfileSpec defines the desired state of InstanceProfile
#InstanceProfileSpec: {
	xpv1.#ResourceSpec
	forProvider: #InstanceProfileParameters @go(ForProvider)
}

// InstanceProfileObservation defines the observed state of InstanceProfile
#InstanceProfileObservation: {
	// The Amazon Resource Name (ARN) specifying the instance profile. For more
	// information about ARNs and how to use them in policies, see IAM identifiers
	// (https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
	// in the IAM User Guide.
	arn?: null | string @go(ARN,*string)

	// The date when the instance profile was created.
	createDate?: null | metav1.#Time @go(CreateDate,*metav1.Time)

	// The stable and unique string identifying the instance profile. For more information
	// about IDs, see IAM identifiers (https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
	// in the IAM User Guide.
	instanceProfileID?: null | string @go(InstanceProfileID,*string)

	// The name identifying the instance profile.
	instanceProfileName?: null | string @go(InstanceProfileName,*string)

	// The role associated with the instance profile.
	roles?: [...null | #Role] @go(Roles,[]*Role)
}

// InstanceProfileStatus defines the observed state of InstanceProfile.
#InstanceProfileStatus: {
	xpv1.#ResourceStatus
	atProvider?: #InstanceProfileObservation @go(AtProvider)
}

// InstanceProfile is the Schema for the InstanceProfiles API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#InstanceProfile: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta     @go(ObjectMeta)
	spec:      #InstanceProfileSpec   @go(Spec)
	status?:   #InstanceProfileStatus @go(Status)
}

// InstanceProfileList contains a list of InstanceProfiles
#InstanceProfileList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#InstanceProfile] @go(Items,[]InstanceProfile)
}
