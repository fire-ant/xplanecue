// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ec2/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// RouteParameters defines the desired state of Route
#RouteParameters: {
	// Region is which region the Route will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The ID of the carrier gateway.
	//
	// You can only use this option when the VPC contains a subnet which is associated
	// with a Wavelength Zone.
	carrierGatewayID?: null | string @go(CarrierGatewayID,*string)

	// The Amazon Resource Name (ARN) of the core network.
	coreNetworkARN?: null | string @go(CoreNetworkARN,*string)

	// The IPv4 CIDR address block used for the destination match. Routing decisions
	// are based on the most specific match. We modify the specified CIDR block
	// to its canonical form; for example, if you specify 100.68.0.18/18, we modify
	// it to 100.68.0.0/18.
	destinationCIDRBlock?: null | string @go(DestinationCIDRBlock,*string)

	// The IPv6 CIDR block used for the destination match. Routing decisions are
	// based on the most specific match.
	destinationIPv6CIDRBlock?: null | string @go(DestinationIPv6CIDRBlock,*string)

	// The ID of a prefix list used for the destination match.
	destinationPrefixListID?: null | string @go(DestinationPrefixListID,*string)

	// [IPv6 traffic only] The ID of an egress-only internet gateway.
	egressOnlyInternetGatewayID?: null | string @go(EgressOnlyInternetGatewayID,*string)

	// The ID of the local gateway.
	localGatewayID?: null | string @go(LocalGatewayID,*string)

	// The ID of a network interface.
	networkInterfaceID?: null | string @go(NetworkInterfaceID,*string)

	// The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints only.
	vpcEndpointID?: null | string @go(VPCEndpointID,*string)

	#CustomRouteParameters
}

// RouteSpec defines the desired state of Route
#RouteSpec: {
	xpv1.#ResourceSpec
	forProvider: #RouteParameters @go(ForProvider)
}

// RouteObservation defines the observed state of Route
#RouteObservation: {
	// Returns true if the request succeeds; otherwise, it returns an error.
	return_?: null | bool @go(Return,*bool)
}

// RouteStatus defines the observed state of Route.
#RouteStatus: {
	xpv1.#ResourceStatus
	atProvider?: #RouteObservation @go(AtProvider)
}

// Route is the Schema for the Routes API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Route: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #RouteSpec         @go(Spec)
	status?:   #RouteStatus       @go(Status)
}

// RouteList contains a list of Routes
#RouteList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Route] @go(Items,[]Route)
}
