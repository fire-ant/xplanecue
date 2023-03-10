// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/dns/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// ResourceRecordSetParameters define the desired state of a ResourceRecordSet
#ResourceRecordSetParameters: {
	// Managed zone name that this ResourceRecordSet will be created in.
	managedZone: string @go(ManagedZone)

	// The identifier of a supported record type.
	//
	// +immutable
	// +kubebuilder:validation:Enum=A;AAAA;CAA;CNAME;DNSKEY;DS;IPSECKEY;MX;NAPTR;NS;PTR;SPF;SRV;SSHFP;TLSA;TXT
	type: string @go(Type)

	// Number of seconds that this ResourceRecordSet
	// can be cached by resolvers.
	ttl: int64 @go(TTL)

	// List of ResourceRecord datas as defined in
	// RFC 1035 (section 5) and RFC 1034 (section 3.6.1)
	rrdatas: [...string] @go(RRDatas,[]string)

	// List of Signature ResourceRecord datas, as
	// defined in RFC 4034 (section 3.2).
	//
	// +optional
	signatureRrdatas?: [...string] @go(SignatureRRDatas,[]string)
}

// ResourceRecordSetObservation is used to show the observed state of the ResourceRecordSet
#ResourceRecordSetObservation: {
}

// ResourceRecordSetSpec defines the desired state of a ResourceRecordSet.
#ResourceRecordSetSpec: {
	xpv1.#ResourceSpec
	forProvider: #ResourceRecordSetParameters @go(ForProvider)
}

// ResourceRecordSetStatus represents the observed state of a ResourceRecordSet.
#ResourceRecordSetStatus: {
	xpv1.#ResourceStatus
	atProvider?: #ResourceRecordSetObservation @go(AtProvider)
}

// ResourceRecordSet is a managed resource that represents a Resource Record Set in Cloud DNS
// +kubebuilder:subresource:status
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="DNS NAME",type="string",JSONPath=".status.atProvider.name"
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp},shortName=rrs
#ResourceRecordSet: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta       @go(ObjectMeta)
	spec:      #ResourceRecordSetSpec   @go(Spec)
	status?:   #ResourceRecordSetStatus @go(Status)
}

// ResourceRecordSetList contains a list of ResourceRecordSet
#ResourceRecordSetList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ResourceRecordSet] @go(Items,[]ResourceRecordSet)
}
