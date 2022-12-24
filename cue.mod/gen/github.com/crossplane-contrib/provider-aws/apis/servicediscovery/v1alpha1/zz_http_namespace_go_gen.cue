// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/servicediscovery/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// HTTPNamespaceParameters defines the desired state of HTTPNamespace
#HTTPNamespaceParameters: {
	// Region is which region the HTTPNamespace will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A description for the namespace.
	description?: null | string @go(Description,*string)

	// The name that you want to assign to this namespace.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The tags to add to the namespace. Each tag consists of a key and an optional
	// value that you define. Tags keys can be up to 128 characters in length, and
	// tag values can be up to 256 characters in length.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	#CustomHTTPNamespaceParameters
}

// HTTPNamespaceSpec defines the desired state of HTTPNamespace
#HTTPNamespaceSpec: {
	xpv1.#ResourceSpec
	forProvider: #HTTPNamespaceParameters @go(ForProvider)
}

// HTTPNamespaceObservation defines the observed state of HTTPNamespace
#HTTPNamespaceObservation: {
	// A value that you can use to determine whether the request completed successfully.
	// To get the status of the operation, see GetOperation (https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html).
	operationID?: null | string @go(OperationID,*string)
}

// HTTPNamespaceStatus defines the observed state of HTTPNamespace.
#HTTPNamespaceStatus: {
	xpv1.#ResourceStatus
	atProvider?: #HTTPNamespaceObservation @go(AtProvider)
}

// HTTPNamespace is the Schema for the HTTPNamespaces API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#HTTPNamespace: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta   @go(ObjectMeta)
	spec:      #HTTPNamespaceSpec   @go(Spec)
	status?:   #HTTPNamespaceStatus @go(Status)
}

// HTTPNamespaceList contains a list of HTTPNamespaces
#HTTPNamespaceList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#HTTPNamespace] @go(Items,[]HTTPNamespace)
}
