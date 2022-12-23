// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// DocumentationVersionParameters defines the desired state of DocumentationVersion
#DocumentationVersionParameters: {
	// Region is which region the DocumentationVersion will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A description about the new documentation snapshot.
	description?: null | string @go(Description,*string)

	// [Required] The version identifier of the new snapshot.
	// +kubebuilder:validation:Required
	documentationVersion?: null | string @go(DocumentationVersion,*string)

	// The stage name to be associated with the new documentation snapshot.
	stageName?: null | string @go(StageName,*string)

	#CustomDocumentationVersionParameters
}

// DocumentationVersionSpec defines the desired state of DocumentationVersion
#DocumentationVersionSpec: {
	xpv1.#ResourceSpec
	forProvider: #DocumentationVersionParameters @go(ForProvider)
}

// DocumentationVersionObservation defines the observed state of DocumentationVersion
#DocumentationVersionObservation: {
	// The date when the API documentation snapshot is created.
	createdDate?: null | metav1.#Time @go(CreatedDate,*metav1.Time)

	// The version identifier of the API documentation snapshot.
	version?: null | string @go(Version,*string)
}

// DocumentationVersionStatus defines the observed state of DocumentationVersion.
#DocumentationVersionStatus: {
	xpv1.#ResourceStatus
	atProvider?: #DocumentationVersionObservation @go(AtProvider)
}

// DocumentationVersion is the Schema for the DocumentationVersions API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#DocumentationVersion: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta          @go(ObjectMeta)
	spec:      #DocumentationVersionSpec   @go(Spec)
	status?:   #DocumentationVersionStatus @go(Status)
}

// DocumentationVersionList contains a list of DocumentationVersions
#DocumentationVersionList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#DocumentationVersion] @go(Items,[]DocumentationVersion)
}