// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/compute/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// AddressParameters define the desired state of a Google Compute Engine
// Address. Most fields map directly to an Address:
// https://cloud.google.com/compute/docs/reference/rest/v1/addresses
#AddressParameters: {
	// Address: The static IP address represented by this resource.
	// +optional
	// +immutable
	address?: null | string @go(Address,*string)

	// AddressType: The type of address to reserve, either INTERNAL or
	// EXTERNAL. If unspecified, defaults to EXTERNAL.
	//
	// Possible values:
	//   "EXTERNAL"
	//   "INTERNAL"
	//   "UNSPECIFIED_TYPE"
	// +optional
	// +immutable
	// +kubebuilder:validation:Enum=EXTERNAL;INTERNAL;UNSPECIFIED_TYPE
	addressType?: null | string @go(AddressType,*string)

	// Description: An optional description of this resource.
	// +optional
	// +immutable
	description?: null | string @go(Description,*string)

	// IPVersion: The IP version that will be used by this address. Valid
	// options are IPV4 or IPV6.
	//
	// Possible values:
	//   "IPV4"
	//   "IPV6"
	//   "UNSPECIFIED_VERSION"
	// +optional
	// +immutable
	// +kubebuilder:validation:Enum=IPV6;IPV4;UNSPECIFIED_VERSION
	ipVersion?: null | string @go(IPVersion,*string)

	// Region: An optional region in which to create the address.
	// +immutable
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Network: The URL of the network in which to reserve the address. This
	// field can only be used with INTERNAL type with the VPC_PEERING
	// purpose.
	// +optional
	// +immutable
	network?: null | string @go(Network,*string)

	// NetworkRef references a Network to retrieve its URI
	// +optional
	// +immutable
	networkRef?: null | xpv1.#Reference @go(NetworkRef,*xpv1.Reference)

	// NetworkSelector selects a reference to a Network
	// +optional
	// +immutable
	networkSelector?: null | xpv1.#Selector @go(NetworkSelector,*xpv1.Selector)

	// PrefixLength: The prefix length if the resource represents an IP
	// range.
	// +optional
	// +immutable
	prefixLength?: null | int64 @go(PrefixLength,*int64)

	// Purpose: The purpose of this resource, which can be one of the
	// following values:
	// - `GCE_ENDPOINT` for addresses that are used by VM instances, alias
	// IP ranges, load balancers, and similar resources.
	// - `DNS_RESOLVER` for a DNS resolver address in a subnetwork for a
	// Cloud DNS inbound forwarder IP addresses (regional internal IP address
	// in a subnet of a VPC network)
	// - `VPC_PEERING` for global internal IP addresses used for private
	// services access allocated ranges.
	// - `NAT_AUTO` for the regional external IP addresses used by Cloud NAT
	// when allocating addresses using automatic NAT IP address allocation.
	// - `IPSEC_INTERCONNECT` for addresses created from a private IP range that
	// are reserved for a VLAN attachment in an IPsec-encrypted Cloud Interconnect
	// configuration. These addresses are regional resources. Not currently
	// available publicly.
	// - `SHARED_LOADBALANCER_VIP` for an internal IP address that is assigned
	// to multiple internal forwarding rules.
	// - `PRIVATE_SERVICE_CONNECT` for a private network address that is used to
	// configure Private Service Connect. Only global internal addresses can use
	// this purpose.
	// Possible values:
	//   "DNS_RESOLVER"
	//   "GCE_ENDPOINT"
	//   "NAT_AUTO"
	//   "VPC_PEERING"
	//   "IPSEC_INTERCONNECT"
	//   "SHARED_LOADBALANCER_VIP"
	//   "PRIVATE_SERVICE_CONNECT"
	// +optional
	// +immutable
	// +kubebuilder:validation:Enum=DNS_RESOLVER;GCE_ENDPOINT;NAT_AUTO;VPC_PEERING
	purpose?: null | string @go(Purpose,*string)

	// Subnetwork: The URL of the subnetwork in which to reserve the
	// address. If an IP address is specified, it must be within the
	// subnetwork's IP range. This field can only be used with INTERNAL type
	// with a GCE_ENDPOINT or DNS_RESOLVER purpose.
	// +optional
	// +immutable
	subnetwork?: null | string @go(Subnetwork,*string)

	// SubnetworkRef references a Subnetwork to retrieve its URI
	// +optional
	// +immutable
	subnetworkRef?: null | xpv1.#Reference @go(SubnetworkRef,*xpv1.Reference)

	// SubnetworkSelector selects a reference to a Subnetwork
	// +optional
	// +immutable
	subnetworkSelector?: null | xpv1.#Selector @go(SubnetworkSelector,*xpv1.Selector)
}

// A AddressObservation reflects the observed state of an Address on GCP.
#AddressObservation: {
	// CreationTimestamp in RFC3339 text format.
	creationTimestamp?: string @go(CreationTimestamp)

	// ID for the resource. This identifier is defined by the server.
	id?: uint64 @go(ID)

	// SelfLink: Server-defined URL for the resource.
	selfLink?: string @go(SelfLink)

	// Status of the address, which can be one of RESERVING, RESERVED, or
	// IN_USE. An address that is RESERVING is currently in the process of being
	// reserved. A RESERVED address is currently reserved and available to use.
	// An IN_USE address is currently being used by another resource and is not
	// available.
	//
	// Possible values:
	//   "IN_USE"
	//   "RESERVED"
	//   "RESERVING"
	status?: string @go(Status)

	// Users that are using this address.
	users?: [...string] @go(Users,[]string)
}

// A AddressSpec defines the desired state of anAddress.
#AddressSpec: {
	xpv1.#ResourceSpec
	forProvider: #AddressParameters @go(ForProvider)
}

// A AddressStatus represents the observed state of an Address.
#AddressStatus: {
	xpv1.#ResourceStatus
	atProvider?: #AddressObservation @go(AtProvider)
}

// An Address is a managed resource that represents a Google Compute Engine Address.
// +kubebuilder:printcolumn:name="IP",type="string",JSONPath=".spec.forProvider.address"
// +kubebuilder:printcolumn:name="REGION",type="string",JSONPath=".spec.forProvider.region"
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:object:root=true
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Address: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #AddressSpec       @go(Spec)
	status?:   #AddressStatus     @go(Status)
}

// AddressList contains a list of Address.
#AddressList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Address] @go(Items,[]Address)
}