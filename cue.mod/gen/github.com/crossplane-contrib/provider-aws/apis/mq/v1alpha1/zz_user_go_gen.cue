// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/mq/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// UserParameters defines the desired state of User
#UserParameters: {
	// Region is which region the User will be created.
	// +kubebuilder:validation:Required
	region:         string      @go(Region)
	consoleAccess?: null | bool @go(ConsoleAccess,*bool)
	groups?: [...null | string] @go(Groups,[]*string)

	#CustomUserParameters
}

// UserSpec defines the desired state of User
#UserSpec: {
	xpv1.#ResourceSpec
	forProvider: #UserParameters @go(ForProvider)
}

// UserObservation defines the observed state of User
#UserObservation: {
}

// UserStatus defines the observed state of User.
#UserStatus: {
	xpv1.#ResourceStatus
	atProvider?: #UserObservation @go(AtProvider)
}

// User is the Schema for the Users API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#User: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #UserSpec          @go(Spec)
	status?:   #UserStatus        @go(Status)
}

// UserList contains a list of Users
#UserList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#User] @go(Items,[]User)
}
