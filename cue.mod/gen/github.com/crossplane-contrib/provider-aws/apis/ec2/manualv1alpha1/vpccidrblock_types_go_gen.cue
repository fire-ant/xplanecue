// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ec2/manualv1alpha1

package manualv1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// VPCCIDRBlockParameters define the desired state of an VPC CIDR Block
#VPCCIDRBlockParameters: {
	// Region is the region you'd like your VPC CIDR to be created in.
	region: string @go(Region)

	// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for
	// the VPC. You cannot specify the range of IPv6 addresses, or the size of the
	// CIDR block.
	// +immutable
	// +optional
	amazonProvidedIpv6CidrBlock?: null | bool @go(AmazonProvidedIPv6CIDRBlock,*bool)

	// An IPv4 CIDR block to associate with the VPC.
	// +immutable
	// +optional
	cidrBlock?: null | string @go(CIDRBlock,*string)

	// An IPv6 CIDR block from the IPv6 address pool. You must also specify Ipv6Pool
	// in the request.
	//
	// To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
	// +immutable
	// +optional
	ipv6CdirBlock?: null | string @go(IPv6CIDRBlock,*string)

	// The name of the location from which we advertise the IPV6 CIDR block. Use
	// this parameter to limit the CiDR block to this location.
	//
	// You must set AmazonProvidedIpv6CIDRBlock to true to use this parameter.
	//
	// You can have one IPv6 CIDR block association per network border group.
	// +immutable
	// +optional
	ipv6CidrBlockNetworkBorderGroup?: null | string @go(IPv6CIDRBlockNetworkBorderGroup,*string)

	// The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
	// +immutable
	// +optional
	ipv6Pool?: null | string @go(IPv6Pool,*string)

	// VPCID is the ID of the VPC.
	// +optional
	vpcId?: null | string @go(VPCID,*string)

	// VPCIDRef references a VPC to and retrieves its vpcId
	// +optional
	vpcIdRef?: null | xpv1.#Reference @go(VPCIDRef,*xpv1.Reference)

	// VPCIDSelector selects a reference to a VPC to and retrieves its vpcId
	// +optional
	vpcIdSelector?: null | xpv1.#Selector @go(VPCIDSelector,*xpv1.Selector)
}

// A VPCCIDRBlockSpec defines the desired state of a VPCCIDRBlock.
#VPCCIDRBlockSpec: {
	xpv1.#ResourceSpec
	forProvider: #VPCCIDRBlockParameters @go(ForProvider)
}

// VPCCIDRBlockObservation keeps the state for the external resource
#VPCCIDRBlockObservation: {
	// The association ID for the CIDR block.
	associationId?: null | string @go(AssociationID,*string)

	// The IPv4 CIDR block.
	cidrBlock?: null | string @go(CIDRBlock,*string)

	// The IPv6 CIDR block.
	ipv6CidrBlock?: null | string @go(IPv6CIDRBlock,*string)

	// Information about the state of the CIDR block.
	ipv6CidrrBlockState?: null | #VPCCIDRBlockState @go(IPv6CIDRBlockState,*VPCCIDRBlockState)

	// The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.
	ipv6Pool?: null | string @go(IPv6Pool,*string)

	// The name of the location from which we advertise the IPV6 CIDR block.
	networkBorderGroup?: null | string @go(NetworkBorderGroup,*string)

	// Information about the state of the CIDR block.
	cidrBlockState?: null | #VPCCIDRBlockState @go(CIDRBlockState,*VPCCIDRBlockState)
}

// VPCCIDRBlockState represents the state of a CIDR Block
#VPCCIDRBlockState: {
	// The state of the CIDR block.
	state?: null | string @go(State,*string)

	// A message about the status of the CIDR block, if applicable.
	statusMessage?: null | string @go(StatusMessage,*string)
}

// A VPCCIDRBlockStatus represents the observed state of a ElasticIP.
#VPCCIDRBlockStatus: {
	xpv1.#ResourceStatus
	atProvider?: #VPCCIDRBlockObservation @go(AtProvider)
}

// A VPCCIDRBlock is a managed resource that represents an secondary CIDR block for a VPC
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="ID",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="CIDR",type="string",JSONPath=".status.atProvider.cidrBlock"
// +kubebuilder:printcolumn:name="IPv6CIDR",type="string",JSONPath=".status.atProvider.ipv6CIDRBlock"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource that has identical schema."
// Deprecated: Please use v1beta1 version of this resource.
#VPCCIDRBlock: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta  @go(ObjectMeta)
	spec:      #VPCCIDRBlockSpec   @go(Spec)
	status?:   #VPCCIDRBlockStatus @go(Status)
}

// VPCCIDRBlockList contains a list of VPCCIDRBlocks
// +kubebuilder:deprecatedversion:warning="Please use v1beta1 version of this resource that has identical schema."
// Deprecated: Please use v1beta1 version of this resource.
#VPCCIDRBlockList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#VPCCIDRBlock] @go(Items,[]VPCCIDRBlock)
}
