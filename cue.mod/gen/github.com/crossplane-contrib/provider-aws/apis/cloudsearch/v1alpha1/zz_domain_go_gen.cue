// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/cloudsearch/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// DomainParameters defines the desired state of Domain
#DomainParameters: {
	// Region is which region the Domain will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A name for the domain you are creating. Allowed characters are a-z (lower-case
	// letters), 0-9, and hyphen (-). Domain names must start with a letter or number
	// and be at least 3 and no more than 28 characters long.
	// +kubebuilder:validation:Required
	domainName?: null | string @go(DomainName,*string)

	#CustomDomainParameters
}

// DomainSpec defines the desired state of Domain
#DomainSpec: {
	xpv1.#ResourceSpec
	forProvider: #DomainParameters @go(ForProvider)
}

// DomainObservation defines the observed state of Domain
#DomainObservation: {
	arn?: null | string @go(ARN,*string)

	// True if the search domain is created. It can take several minutes to initialize
	// a domain when CreateDomain is called. Newly created search domains are returned
	// from DescribeDomains with a false value for Created until domain creation
	// is complete.
	created?: null | bool @go(Created,*bool)

	// True if the search domain has been deleted. The system must clean up resources
	// dedicated to the search domain when DeleteDomain is called. Newly deleted
	// search domains are returned from DescribeDomains with a true value for IsDeleted
	// for several minutes until resource cleanup is complete.
	deleted?: null | bool @go(Deleted,*bool)

	// The service endpoint for updating documents in a search domain.
	docService?: null | #ServiceEndpoint @go(DocService,*ServiceEndpoint)
	domainID?:   null | string           @go(DomainID,*string)
	limits?:     null | #Limits          @go(Limits,*Limits)

	// True if processing is being done to activate the current domain configuration.
	processing?: null | bool @go(Processing,*bool)

	// True if IndexDocuments needs to be called to activate the current domain
	// configuration.
	requiresIndexDocuments?: null | bool @go(RequiresIndexDocuments,*bool)

	// The number of search instances that are available to process search requests.
	searchInstanceCount?: null | int64 @go(SearchInstanceCount,*int64)

	// The instance type that is being used to process search requests.
	searchInstanceType?: null | string @go(SearchInstanceType,*string)

	// The number of partitions across which the search index is spread.
	searchPartitionCount?: null | int64 @go(SearchPartitionCount,*int64)

	// The service endpoint for requesting search results from a search domain.
	searchService?: null | #ServiceEndpoint @go(SearchService,*ServiceEndpoint)
}

// DomainStatus defines the observed state of Domain.
#DomainStatus: {
	xpv1.#ResourceStatus
	atProvider?: #DomainObservation @go(AtProvider)
}

// Domain is the Schema for the Domains API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Domain: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #DomainSpec        @go(Spec)
	status?:   #DomainStatus      @go(Status)
}

// DomainList contains a list of Domains
#DomainList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Domain] @go(Items,[]Domain)
}
