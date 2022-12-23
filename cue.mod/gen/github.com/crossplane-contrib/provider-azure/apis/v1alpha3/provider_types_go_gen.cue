// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-azure/apis/v1alpha3

package v1alpha3

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// A ProvisioningState of a resource group.
#ProvisioningState: string // #enumProvisioningState

#enumProvisioningState:
	#ProvisioningStateSucceeded |
	#ProvisioningStateDeleting

#ProvisioningStateSucceeded: #ProvisioningState & "Succeeded"
#ProvisioningStateDeleting:  #ProvisioningState & "Deleting"

// A ProviderSpec defines the desired state of a Provider.
#ProviderSpec: {
	// CredentialsSecretRef references a specific secret's key that contains
	// the credentials that are used to connect to the Azure API.
	credentialsSecretRef: xpv1.#SecretKeySelector @go(CredentialsSecretRef)
}

// A Provider configures an Azure 'provider', i.e. a connection to a particular
// Azure account using a particular Azure Service Principal.
// +kubebuilder:printcolumn:name="SECRET-NAME",type="string",JSONPath=".spec.credentialsSecretRef.name",priority=1
// +kubebuilder:resource:scope=Cluster,categories={crossplane,provider,azure}
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

// A ResourceGroupSpec defines the desired state of a ResourceGroup.
#ResourceGroupSpec: {
	xpv1.#ResourceSpec

	// Location of the resource group. See the  official list of valid regions -
	// https://azure.microsoft.com/en-us/global-infrastructure/regions/
	location: string @go(Location)
}

// A ResourceGroupStatus represents the observed status of a ResourceGroup.
#ResourceGroupStatus: {
	xpv1.#ResourceStatus

	// ProvisioningState - The provisioning state of the resource group.
	provisioningState?: #ProvisioningState @go(ProvisioningState)
}

// A ResourceGroup is a managed resource that represents an Azure Resource
// Group.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:object:root=true
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ResourceGroup: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta   @go(ObjectMeta)
	spec:      #ResourceGroupSpec   @go(Spec)
	status?:   #ResourceGroupStatus @go(Status)
}

// ResourceGroupList contains a list of Resource Groups
#ResourceGroupList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ResourceGroup] @go(Items,[]ResourceGroup)
}

// AsyncOperation is used to save Azure Async operation details.
#AsyncOperation: {
	// Method is HTTP method that the initial request is made with.
	method?: string @go(Method)

	// PollingURL is used to fetch the status of the given operation.
	pollingUrl?: string @go(PollingURL)

	// Status represents the status of the operation.
	status?: string @go(Status)

	// ErrorMessage represents the error that occurred during the operation.
	errorMessage?: string @go(ErrorMessage)
}