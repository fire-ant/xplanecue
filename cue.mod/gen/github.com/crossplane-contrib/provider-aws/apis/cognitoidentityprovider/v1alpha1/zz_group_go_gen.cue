// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cognitoidentityprovider/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// GroupParameters defines the desired state of Group
#GroupParameters: {
	// Region is which region the Group will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A string containing the description of the group.
	description?: null | string @go(Description,*string)

	// A non-negative integer value that specifies the precedence of this group
	// relative to the other groups that a user can belong to in the user pool.
	// Zero is the highest precedence value. Groups with lower Precedence values
	// take precedence over groups with higher ornull Precedence values. If a user
	// belongs to two or more groups, it is the group with the lowest precedence
	// value whose role ARN is given in the user's tokens for the cognito:roles
	// and cognito:preferred_role claims.
	//
	// Two groups can have the same Precedence value. If this happens, neither group
	// takes precedence over the other. If two groups with the same Precedence have
	// the same role ARN, that role is used in the cognito:preferred_role claim
	// in tokens for users in each group. If the two groups have different role
	// ARNs, the cognito:preferred_role claim isn't set in users' tokens.
	//
	// The default Precedence value is null.
	precedence?: null | int64 @go(Precedence,*int64)

	#CustomGroupParameters
}

// GroupSpec defines the desired state of Group
#GroupSpec: {
	xpv1.#ResourceSpec
	forProvider: #GroupParameters @go(ForProvider)
}

// GroupObservation defines the observed state of Group
#GroupObservation: {
	// The date the group was created.
	creationDate?: null | metav1.#Time @go(CreationDate,*metav1.Time)

	// The name of the group.
	groupName?: null | string @go(GroupName,*string)

	// The date the group was last modified.
	lastModifiedDate?: null | metav1.#Time @go(LastModifiedDate,*metav1.Time)

	// The role Amazon Resource Name (ARN) for the group.
	roleARN?: null | string @go(RoleARN,*string)

	// The user pool ID for the user pool.
	userPoolID?: null | string @go(UserPoolID,*string)
}

// GroupStatus defines the observed state of Group.
#GroupStatus: {
	xpv1.#ResourceStatus
	atProvider?: #GroupObservation @go(AtProvider)
}

// Group is the Schema for the Groups API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Group: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #GroupSpec         @go(Spec)
	status?:   #GroupStatus       @go(Status)
}

// GroupList contains a list of Groups
#GroupList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Group] @go(Items,[]Group)
}