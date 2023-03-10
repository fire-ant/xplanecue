// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/ec2/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// VPCEndpointParameters defines the desired state of VPCEndpoint
#VPCEndpointParameters: {
	// Region is which region the VPCEndpoint will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// (Interface and gateway endpoints) A policy to attach to the endpoint that
	// controls access to the service. The policy must be in valid JSON format.
	// If this parameter is not specified, we attach a default policy that allows
	// full access to the service.
	policyDocument?: null | string @go(PolicyDocument,*string)

	// (Interface endpoint) Indicates whether to associate a private hosted zone
	// with the specified VPC. The private hosted zone contains a record set for
	// the default public DNS name for the service for the Region (for example,
	// kinesis.us-east-1.amazonaws.com), which resolves to the private IP addresses
	// of the endpoint network interfaces in the VPC. This enables you to make requests
	// to the default public DNS name for the service instead of the public DNS
	// names that are automatically generated by the VPC endpoint service.
	//
	// To use a private hosted zone, you must set the following VPC attributes to
	// true: enableDnsHostnames and enableDnsSupport. Use ModifyVpcAttribute to
	// set the VPC attributes.
	//
	// Default: true
	privateDNSEnabled?: null | bool @go(PrivateDNSEnabled,*bool)

	// The service name. To get a list of available services, use the DescribeVpcEndpointServices
	// request, or get the name from the service provider.
	// +kubebuilder:validation:Required
	serviceName?: null | string @go(ServiceName,*string)

	// The tags to associate with the endpoint.
	tagSpecifications?: [...null | #TagSpecification] @go(TagSpecifications,[]*TagSpecification)

	// The type of endpoint.
	//
	// Default: Gateway
	vpcEndpointType?: null | string @go(VPCEndpointType,*string)

	#CustomVPCEndpointParameters
}

// VPCEndpointSpec defines the desired state of VPCEndpoint
#VPCEndpointSpec: {
	xpv1.#ResourceSpec
	forProvider: #VPCEndpointParameters @go(ForProvider)
}

// VPCEndpointObservation defines the observed state of VPCEndpoint
#VPCEndpointObservation: {
	// The date and time that the VPC endpoint was created.
	creationTimestamp?: null | metav1.#Time @go(CreationTimestamp,*metav1.Time)

	// (Interface endpoint) The DNS entries for the endpoint.
	dnsEntries?: [...null | #DNSEntry] @go(DNSEntries,[]*DNSEntry)

	// (Interface endpoint) Information about the security groups that are associated
	// with the network interface.
	groups?: [...null | #SecurityGroupIdentifier] @go(Groups,[]*SecurityGroupIdentifier)

	// The last error that occurred for VPC endpoint.
	lastError?: null | #LastError @go(LastError,*LastError)

	// (Interface endpoint) One or more network interfaces for the endpoint.
	networkInterfaceIDs?: [...null | string] @go(NetworkInterfaceIDs,[]*string)

	// The ID of the Amazon Web Services account that owns the VPC endpoint.
	ownerID?: null | string @go(OwnerID,*string)

	// Indicates whether the VPC endpoint is being managed by its service.
	requesterManaged?: null | bool @go(RequesterManaged,*bool)

	// (Gateway endpoint) One or more route tables associated with the endpoint.
	routeTableIDs?: [...null | string] @go(RouteTableIDs,[]*string)

	// The state of the VPC endpoint.
	state?: null | string @go(State,*string)

	// (Interface endpoint) One or more subnets in which the endpoint is located.
	subnetIDs?: [...null | string] @go(SubnetIDs,[]*string)

	// Any tags assigned to the VPC endpoint.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	// The ID of the VPC endpoint.
	vpcEndpointID?: null | string @go(VPCEndpointID,*string)

	// The ID of the VPC to which the endpoint is associated.
	vpcID?: null | string @go(VPCID,*string)
}

// VPCEndpointStatus defines the observed state of VPCEndpoint.
#VPCEndpointStatus: {
	xpv1.#ResourceStatus
	atProvider?: #VPCEndpointObservation @go(AtProvider)
}

// VPCEndpoint is the Schema for the VPCEndpoints API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VPCEndpoint: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #VPCEndpointSpec   @go(Spec)
	status?:   #VPCEndpointStatus @go(Status)
}

// VPCEndpointList contains a list of VPCEndpoints
#VPCEndpointList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#VPCEndpoint] @go(Items,[]VPCEndpoint)
}
