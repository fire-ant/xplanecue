// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cognitoidentityprovider/manualv1alpha1

package manualv1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// ExternalAnnotation defines a virtual external name annotation for importing existing resources.
#ExternalAnnotation: {
	groupname?:  null | string @go(Groupname,*string)
	userPoolId?: null | string @go(UserPoolID,*string)
	username?:   null | string @go(Username,*string)
}

// GroupUserMembershipParameters define the desired state of an AWS GroupUserMembership.
#GroupUserMembershipParameters: {
	// Region is which region the Group will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// UserPoolID is the Amazon Cognito Group Name (Group) of the Cognito User-Pool group you want to
	// add User to.
	// +immutable
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/cognitoidentityprovider/v1alpha1.UserPool
	userPoolId?: string @go(UserPoolID)

	// UserPoolIDRef references to an Group to retrieve its userPoolId
	// +optional
	// +immutable
	userPoolIdRef?: null | xpv1.#Reference @go(UserPoolIDRef,*xpv1.Reference)

	// UserPoolIDSelector selects a reference to an Group to retrieve its userPoolId
	// +optional
	userPoolIdSelector?: null | xpv1.#Selector @go(UserPoolIDSelector,*xpv1.Selector)

	// Groupname is the Amazon Cognito Group Name (Group) of the Cognito User-Pool group you want to
	// add User to.
	// +immutable
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/cognitoidentityprovider/v1alpha1.Group
	groupname?: string @go(Groupname)

	// GroupnameRef references to an Group to retrieve its groupName
	// +optional
	// +immutable
	groupnameRef?: null | xpv1.#Reference @go(GroupnameRef,*xpv1.Reference)

	// GroupnameSelector selects a reference to an Group to retrieve its groupName
	// +optional
	groupnameSelector?: null | xpv1.#Selector @go(GroupnameSelector,*xpv1.Selector)

	// Username presents the name of the User.
	// +immutable
	username?: string @go(Username)
}

// An GroupUserMembershipSpec defines the desired state of an
// GroupUserMembership.
#GroupUserMembershipSpec: {
	xpv1.#ResourceSpec
	forProvider: #GroupUserMembershipParameters @go(ForProvider)
}

// GroupUserMembershipObservation keeps the state for the external resource
#GroupUserMembershipObservation: {
	// Groupname is the name of the attached group. If nil, the group
	// is not yet attached
	groupname?: null | string @go(Groupname,*string)
}

// An GroupUserMembershipStatus represents the observed state of an
// GroupUserMembership.
#GroupUserMembershipStatus: {
	xpv1.#ResourceStatus
	atProvider?: #GroupUserMembershipObservation @go(AtProvider)
}

// An GroupUserMembership is a managed resource that represents an AWS Cognito
// User group membership.
// +kubebuilder:printcolumn:name="USERNAME",type="string",JSONPath=".spec.forProvider.username"
// +kubebuilder:printcolumn:name="GROUPNAME",type="string",JSONPath=".spec.forProvider.groupname"
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#GroupUserMembership: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta         @go(ObjectMeta)
	spec:      #GroupUserMembershipSpec   @go(Spec)
	status?:   #GroupUserMembershipStatus @go(Status)
}

// GroupUserMembershipList contains a list of GroupUserMemberships
#GroupUserMembershipList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#GroupUserMembership] @go(Items,[]GroupUserMembership)
}
