// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/compute/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// RouterParameters define the desired state of a Google Compute Engine
// Router. Most fields map directly to a Router:
// https://cloud.google.com/compute/docs/reference/rest/v1/routers/
#RouterParameters: {
	// Description: An optional description of this resource. Provide this
	// field when you create the resource.
	// +optional
	// +immutable
	description?: null | string @go(Description,*string)

	// Region: URL of the region where the Subnetwork resides. This field
	// can be set only at resource creation time.
	// +immutable
	region: string @go(Region)

	// Network: URI of the network to which this router belongs.
	// +immutable
	// +optional
	network?: null | string @go(Network,*string)

	// NetworkRef references a Network and retrieves its URI
	// +optional
	// +immutable
	networkRef?: null | xpv1.#Reference @go(NetworkRef,*xpv1.Reference)

	// NetworkSelector selects a reference to a Network
	// +optional
	// +immutable
	networkSelector?: null | xpv1.#Selector @go(NetworkSelector,*xpv1.Selector)

	// Bgp: BGP information specific to this router.
	// +optional
	bgp?: null | #RouterBgp @go(Bgp,*RouterBgp)

	// BgpPeers: BGP information that must be configured into the routing
	// stack to establish BGP peering. This information must specify the
	// peer ASN and either the interface name, IP address, or peer IP
	// address. Please refer to RFC4273.
	// +optional
	bgpPeers?: [...null | #RouterBgpPeer] @go(BgpPeers,[]*RouterBgpPeer)

	// EncryptedInterconnectRouter: Field to indicate if a router is
	// dedicated to use with encrypted Interconnect Attachment
	// (IPsec-encrypted Cloud Interconnect feature).
	// Not currently available in all Interconnect locations.
	// +optional
	encryptedInterconnectRouter?: null | bool @go(EncryptedInterconnectRouter,*bool)

	// Interfaces: Router interfaces. Each interface requires either one
	// linked resource, (for example, linkedVpnTunnel), or IP address and IP
	// address range (for example, ipRange), or both.
	// +optional
	interfaces?: [...null | #RouterInterface] @go(Interfaces,[]*RouterInterface)

	// Nats: A list of NAT services created in this router.
	// +optional
	nats?: [...null | #RouterNat] @go(Nats,[]*RouterNat)
}

// A RouterBgp represents the Bgp information for router.
#RouterBgp: {
	// AdvertiseMode: User-specified flag to indicate which mode to use for
	// advertisement. The options are DEFAULT or CUSTOM.
	//
	// Possible values:
	//   "CUSTOM"
	//   "DEFAULT"
	// +optional
	// +kubebuilder:validation:Enum=CUSTOM;DEFAULT
	advertiseMode?: null | string @go(AdvertiseMode,*string)

	// AdvertisedGroups: User-specified list of prefix groups to advertise
	// in custom mode. This field can only be populated if advertise_mode is
	// CUSTOM and is advertised to all peers of the router. These groups
	// will be advertised in addition to any specified prefixes. Leave this
	// field blank to advertise no custom groups.
	//
	// Possible values:
	//   "ALL_SUBNETS"
	// +optional
	// +kubebuilder:validation:Enum=ALL_SUBNETS
	advertisedGroups?: [...string] @go(AdvertisedGroups,[]string)

	// AdvertisedIpRanges: User-specified list of individual IP ranges to
	// advertise in custom mode. This field can only be populated if
	// advertise_mode is CUSTOM and is advertised to all peers of the
	// router. These IP ranges will be advertised in addition to any
	// specified groups. Leave this field blank to advertise no custom IP
	// ranges.
	// +optional
	advertisedIpRanges?: [...null | #RouterAdvertisedIpRange] @go(AdvertisedIpRanges,[]*RouterAdvertisedIpRange)

	// Asn: Local BGP Autonomous System Number (ASN). Must be an RFC6996
	// private ASN, either 16-bit or 32-bit. The value will be fixed for
	// this router resource. All VPN tunnels that link to this router will
	// have the same local ASN.
	// +optional
	asn?: null | int64 @go(Asn,*int64)
}

// A RouterAdvertisedIpRange represents the IP ranges advertised by router.
#RouterAdvertisedIpRange: {
	// Description: User-specified description for the IP range.
	// +optional
	description?: null | string @go(Description,*string)

	// Range: The IP range to advertise. The value must be a CIDR-formatted
	// string.
	range: string @go(Range)
}

// A RouterBgpPeer represents the BgpPeer configuration for the router.
#RouterBgpPeer: {
	// AdvertiseMode: User-specified flag to indicate which mode to use for
	// advertisement.
	//
	// Possible values:
	//   "CUSTOM"
	//   "DEFAULT"
	// +optional
	// +kubebuilder:validation:Enum=CUSTOM;DEFAULT
	advertiseMode?: null | string @go(AdvertiseMode,*string)

	// AdvertisedGroups: User-specified list of prefix groups to advertise
	// in custom mode, which can take one of the following options:
	// - ALL_SUBNETS: Advertises all available subnets, including peer VPC
	// subnets.
	// - ALL_VPC_SUBNETS: Advertises the router's own VPC subnets. Note that
	// this field can only be populated if advertise_mode is CUSTOM and
	// overrides the list defined for the router (in the "bgp" message).
	// These groups are advertised in addition to any specified prefixes.
	// Leave this field blank to advertise no custom groups.
	//
	// Possible values:
	//   "ALL_SUBNETS"
	// +optional
	// +kubebuilder:validation:Enum=ALL_SUBNETS
	advertisedGroups?: [...string] @go(AdvertisedGroups,[]string)

	// AdvertisedIpRanges: User-specified list of individual IP ranges to
	// advertise in custom mode. This field can only be populated if
	// advertise_mode is CUSTOM and overrides the list defined for the
	// router (in the "bgp" message). These IP ranges are advertised in
	// addition to any specified groups. Leave this field blank to advertise
	// no custom IP ranges.
	// +optional
	advertisedIpRanges?: [...null | #RouterAdvertisedIpRange] @go(AdvertisedIpRanges,[]*RouterAdvertisedIpRange)

	// AdvertisedRoutePriority: The priority of routes advertised to this
	// BGP peer. Where there is more than one matching route of maximum
	// length, the routes with the lowest priority value win.
	// +optional
	advertisedRoutePriority?: null | int64 @go(AdvertisedRoutePriority,*int64)

	// InterfaceName: Name of the interface the BGP peer is associated with.
	// +optional
	interfaceName?: null | string @go(InterfaceName,*string)

	// IpAddress: IP address of the interface inside Google Cloud Platform.
	// Only IPv4 is supported.
	// +optional
	ipAddress?: null | string @go(IpAddress,*string)

	// Name: Name of this BGP peer. The name must be 1-63 characters long,
	// and comply with RFC1035. Specifically, the name must be 1-63
	// characters long and match the regular expression
	// `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be
	// a lowercase letter, and all following characters must be a dash,
	// lowercase letter, or digit, except the last character, which cannot
	// be a dash.
	name: string @go(Name)

	// PeerAsn: Peer BGP Autonomous System Number (ASN). Each BGP interface
	// may use a different value.
	peerAsn: int64 @go(PeerAsn)

	// PeerIpAddress: IP address of the BGP interface outside Google Cloud
	// Platform. Only IPv4 is supported.
	// +optional
	peerIpAddress?: null | string @go(PeerIpAddress,*string)
}

// RouterNat represents the Nat Service for the router.
#RouterNat: {
	// DrainNatIps: A list of URLs of the IP resources to be drained. These
	// IPs must be valid static external IPs that have been assigned to the
	// NAT. These IPs should be used for updating/patching a NAT only.
	// +optional
	drainNatIps?: [...string] @go(DrainNatIps,[]string)

	// +optional
	enableEndpointIndependentMapping?: null | bool @go(EnableEndpointIndependentMapping,*bool)

	// IcmpIdleTimeoutSec: Timeout (in seconds) for ICMP connections.
	// Defaults to 30s if not set.
	// +optional
	icmpIdleTimeoutSec?: null | int64 @go(IcmpIdleTimeoutSec,*int64)

	// LogConfig: Configure logging on this NAT.
	// +optional
	logConfig?: null | #RouterNatLogConfig @go(LogConfig,*RouterNatLogConfig)

	// MinPortsPerVm: Minimum number of ports allocated to a VM from this
	// NAT config. If not set, a default number of ports is allocated to a
	// VM. This is rounded up to the nearest power of 2. For example, if the
	// value of this field is 50, at least 64 ports are allocated to a VM.
	// +optional
	minPortsPerVm?: null | int64 @go(MinPortsPerVm,*int64)

	// Name: Unique name of this Nat service. The name must be 1-63
	// characters long and comply with RFC1035.
	// +optional
	name?: null | string @go(Name,*string)

	// NatIpAllocateOption: Specify the NatIpAllocateOption, which can take
	// one of the following values:
	// - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When
	// there are not enough specified Nat IPs, the Nat service fails for new
	// VMs.
	// - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform;
	// customers can't specify any Nat IPs. When choosing AUTO_ONLY, then
	// nat_ip should be empty.
	//
	// Possible values:
	//   "AUTO_ONLY"
	//   "MANUAL_ONLY"
	// +kubebuilder:validation:Enum=AUTO_ONLY;MANUAL_ONLY
	natIpAllocateOption?: string @go(NatIpAllocateOption)

	// NatIps: A list of URLs of the IP resources used for this Nat service.
	// These IP addresses must be valid static external IP addresses
	// assigned to the project.
	// +optional
	natIps: [...string] @go(NatIps,[]string)

	// SourceSubnetworkIpRangesToNat: Specify the Nat option, which can take
	// one of the following values:
	// - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every
	// Subnetwork are allowed to Nat.
	// - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges
	// in every Subnetwork are allowed to Nat.
	// - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat
	// (specified in the field subnetwork below) The default is
	// SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this
	// field contains ALL_SUBNETWORKS_ALL_IP_RANGES or
	// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
	// other Router.Nat section in any Router for this network in this
	// region.
	//
	// Possible values:
	//   "ALL_SUBNETWORKS_ALL_IP_RANGES"
	//   "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES"
	//   "LIST_OF_SUBNETWORKS"
	// +kubebuilder:validation:Enum=ALL_SUBNETWORKS_ALL_IP_RANGES;ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES;LIST_OF_SUBNETWORKS
	sourceSubnetworkIpRangesToNat: string @go(SourceSubnetworkIpRangesToNat)

	// Subnetworks: A list of Subnetwork resources whose traffic should be
	// translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS
	// is selected for the SubnetworkIpRangeToNatOption above.
	// +optional
	subnetworks?: [...null | #RouterNatSubnetworkToNat] @go(Subnetworks,[]*RouterNatSubnetworkToNat)

	// TcpEstablishedIdleTimeoutSec: Timeout (in seconds) for TCP
	// established connections. Defaults to 1200s if not set.
	// +optional
	tcpEstablishedIdleTimeoutSec?: null | int64 @go(TcpEstablishedIdleTimeoutSec,*int64)

	// TcpTransitoryIdleTimeoutSec: Timeout (in seconds) for TCP transitory
	// connections. Defaults to 30s if not set.
	// +optional
	tcpTransitoryIdleTimeoutSec?: null | int64 @go(TcpTransitoryIdleTimeoutSec,*int64)

	// UdpIdleTimeoutSec: Timeout (in seconds) for UDP connections. Defaults
	// to 30s if not set.
	// +optional
	udpIdleTimeoutSec?: null | int64 @go(UdpIdleTimeoutSec,*int64)
}

// A RouterNatSubnetworkToNat represent the Subnetwork information for Router Nat Service.
#RouterNatSubnetworkToNat: {
	// Name: URL for the subnetwork resource that will use NAT.
	// +optional
	name?: null | string @go(Name,*string)

	// SecondaryIpRangeNames: A list of the secondary ranges of the
	// Subnetwork that are allowed to use NAT. This can be populated only if
	// "LIST_OF_SECONDARY_IP_RANGES" is one of the values in
	// source_ip_ranges_to_nat.
	// +optional
	secondaryIpRangeNames?: [...string] @go(SecondaryIpRangeNames,[]string)

	// SourceIpRangesToNat: Specify the options for NAT ranges in the
	// Subnetwork. All options of a single value are valid except
	// NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple
	// values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"]
	// Default: [ALL_IP_RANGES]
	//
	// Possible values:
	//   "ALL_IP_RANGES"
	//   "LIST_OF_SECONDARY_IP_RANGES"
	//   "PRIMARY_IP_RANGE"
	// +optional
	// +kubebuilder:validation:Enum=ALL_IP_RANGES;LIST_OF_SECONDARY_IP_RANGES;PRIMARY_IP_RANGE
	sourceIpRangesToNat?: [...string] @go(SourceIpRangesToNat,[]string)
}

// A RouterNatLogConfig represent the Log config Router Nat service.
#RouterNatLogConfig: {
	// Enable: Indicates whether or not to export logs. This is false by
	// default.
	// +optional
	enable?: null | bool @go(Enable,*bool)

	// Filter: Specify the desired filtering of logs on this NAT. If
	// unspecified, logs are exported for all connections handled by this
	// NAT. This option can take one of the following values:
	// - ERRORS_ONLY: Export logs only for connection failures.
	// - TRANSLATIONS_ONLY: Export logs only for successful connections.
	// - ALL: Export logs for all connections, successful and unsuccessful.
	//
	// Possible values:
	//   "ALL"
	//   "ERRORS_ONLY"
	//   "TRANSLATIONS_ONLY"
	// +optional
	// +kubebuilder:validation:Enum=ALL;ERRORS_ONLY;TRANSLATIONS_ONLY
	filter?: null | string @go(Filter,*string)
}

// A RouterInterface represent the Interface information for router.
#RouterInterface: {
	// IpRange: IP address and range of the interface. The IP range must be
	// in the RFC3927 link-local IP address space. The value must be a
	// CIDR-formatted string, for example: 169.254.0.1/30. NOTE: Do not
	// truncate the address as it represents the IP address of the
	// interface.
	// +optional
	ipRange?: null | string @go(IpRange,*string)

	// LinkedInterconnectAttachment: URI of the linked Interconnect
	// attachment. It must be in the same region as the router. Each
	// interface can have one linked resource, which can be a VPN tunnel, an
	// Interconnect attachment, or a virtual machine instance.
	// +optional
	linkedInterconnectAttachment?: null | string @go(LinkedInterconnectAttachment,*string)

	// LinkedVpnTunnel: URI of the linked VPN tunnel, which must be in the
	// same region as the router. Each interface can have one linked
	// resource, which can be a VPN tunnel, an Interconnect attachment, or a
	// virtual machine instance.
	// +optional
	linkedVpnTunnel?: null | string @go(LinkedVpnTunnel,*string)

	// Name: Name of this interface entry. The name must be 1-63 characters
	// long, and comply with RFC1035. Specifically, the name must be 1-63
	// characters long and match the regular expression
	// `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be
	// a lowercase letter, and all following characters must be a dash,
	// lowercase letter, or digit, except the last character, which cannot
	// be a dash.
	name: string @go(Name)
}

// A RouterObservation represents the observed state of a Google Compute Engine
// Router.
#RouterObservation: {
	// CreationTimestamp: Creation timestamp in RFC3339 text
	// format.
	creationTimestamp?: string @go(CreationTimestamp)

	// Id: The unique identifier for the resource. This
	// identifier is defined by the server.
	id?: uint64 @go(ID)

	// SelfLink: Server-defined URL for the resource.
	selfLink?: string @go(SelfLink)
}

// A RouterSpec defines the desired state of a Router.
#RouterSpec: {
	xpv1.#ResourceSpec
	forProvider: #RouterParameters @go(ForProvider)
}

// A RouterStatus represents the observed state of a Router.
#RouterStatus: {
	xpv1.#ResourceStatus
	atProvider?: #RouterObservation @go(AtProvider)
}

// A Router is a managed resource that represents a Google Compute Engine Router
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Router: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #RouterSpec        @go(Spec)
	status?:   #RouterStatus      @go(Status)
}

// RouterList contains a list of Routers.
#RouterList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Router] @go(Items,[]Router)
}
