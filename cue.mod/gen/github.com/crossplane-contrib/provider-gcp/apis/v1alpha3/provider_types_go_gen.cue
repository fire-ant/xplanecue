// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/v1alpha3

package v1alpha3

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// A ProviderSpec defines the desired state of a Provider.
#ProviderSpec: {
	// CredentialsSecretRef references a specific secret's key that contains
	// the credentials that are used to connect to the GCP API.
	credentialsSecretRef: xpv1.#SecretKeySelector @go(CredentialsSecretRef)

	// ProjectID is the project name (not numerical ID) of this GCP Provider.
	projectID: string @go(ProjectID)
}

// A Provider configures a GCP 'provider', i.e. a connection to a particular
// GCP project using a particular GCP service account
// +kubebuilder:printcolumn:name="PROJECT-ID",type="string",JSONPath=".spec.projectID"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:printcolumn:name="SECRET-NAME",type="string",JSONPath=".spec.credentialsSecretRef.name",priority=1
// +kubebuilder:resource:scope=Cluster,categories={crossplane,provider,gcp}
#Provider: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #ProviderSpec      @go(Spec)
}

// ProviderList contains a list of Provider
#ProviderList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Provider] @go(Items,[]Provider)
}
