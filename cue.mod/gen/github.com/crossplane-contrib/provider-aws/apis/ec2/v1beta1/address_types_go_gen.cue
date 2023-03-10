// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// AddressParameters define the desired state of an AWS Elastic IP
#AddressParameters: {
	// Region is the region you'd like your Address to be created in.
	region: string @go(Region)

	// [EC2-VPC] The Elastic IP address to recover or an IPv4 address from an address
	// pool.
	// +optional
	// +immutable
	address?: null | string @go(Address,*string)

	// The ID of a customer-owned address pool. Use this parameter to let Amazon
	// EC2 select an address from the address pool. Alternatively, specify a specific
	// address from the address pool
	// +optional
	// +immutable
	customerOwnedIPv4Pool?: null | string @go(CustomerOwnedIPv4Pool,*string)

	// Set to vpc to allocate the address for use with instances in a VPC.
	// Default: The address is for use with instances in EC2-Classic.
	// +optional
	// +immutable
	// +kubebuilder:validation:Enum=vpc;standard
	domain?: null | string @go(Domain,*string)

	// The location from which the IP address is advertised. Use this parameter
	// to limit the address to this location.
	//
	// A network border group is a unique set of Availability Zones or Local Zones
	// from where AWS advertises IP addresses and limits the addresses to the group.
	// IP addresses cannot move between network border groups.
	//
	// Use DescribeAvailabilityZones (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html)
	// to view the network border groups.
	//
	// You cannot use a network border group with EC2 Classic. If you attempt this
	// operation on EC2 classic, you will receive an InvalidParameterCombination
	// error. For more information, see Error Codes (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).
	// +optional
	// +immutable
	networkBorderGroup?: null | string @go(NetworkBorderGroup,*string)

	// The ID of an address pool that you own. Use this parameter to let Amazon
	// EC2 select an address from the address pool. To specify a specific address
	// from the address pool, use the Address parameter instead.
	// +optional
	// +immutable
	publicIpv4Pool?: null | string @go(PublicIPv4Pool,*string)

	// Tags represents to current ec2 tags.
	// +optional
	tags?: [...#Tag] @go(Tags,[]Tag)
}

// An AddressSpec defines the desired state of an Address.
#AddressSpec: {
	xpv1.#ResourceSpec
	forProvider: #AddressParameters @go(ForProvider)
}

// AddressObservation keeps the state for the external resource
#AddressObservation: {
	// The ID representing the allocation of the address for use with EC2-VPC.
	allocationId?: string @go(AllocationID)

	// The ID representing the association of the address with an instance in a
	// VPC.
	associationId?: string @go(AssociationID)

	// The customer-owned IP address.
	customerOwnedIp?: string @go(CustomerOwnedIP)

	// The ID of the customer-owned address pool.
	customerOwnedIpv4Pool?: string @go(CustomerOwnedIPv4Pool)

	// Indicates whether this Elastic IP address is for use with instances in EC2-Classic
	// (standard) or instances in a VPC (vpc).
	domain: string @go(Domain)

	// The ID of the instance that the address is associated with (if any).
	instanceId?: string @go(InstanceID)

	// The name of the location from which the IP address is advertised.
	networkBorderGroup?: string @go(NetworkBorderGroup)

	// The ID of the network interface.
	networkInterfaceId: string @go(NetworkInterfaceID)

	// The ID of the AWS account that owns the network interface.
	networkInterfaceOwnerId?: string @go(NetworkInterfaceOwnerID)

	// The private IP address associated with the Elastic IP address.
	privateIpAddress: string @go(PrivateIPAddress)

	// The Elastic IP address.
	publicIp: string @go(PublicIP)

	// The ID of an address pool.
	publicIpv4Pool?: string @go(PublicIPv4Pool)
}

// An AddressStatus represents the observed state of an Address.
#AddressStatus: {
	xpv1.#ResourceStatus
	atProvider?: #AddressObservation @go(AtProvider)
}

// An Address is a managed resource that represents an AWS Elastic IP Address.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="ID",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="IP",type="string",JSONPath=".status.atProvider.publicIp"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
// +kubebuilder:storageversion
#Address: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #AddressSpec       @go(Spec)
	status?:   #AddressStatus     @go(Status)
}

// AddressList contains a list of Addresss
#AddressList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Address] @go(Items,[]Address)
}
