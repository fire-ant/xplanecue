// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-azure/apis/cache/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// SupportedRedisVersion is the only minor version of Redis currently
// supported by Azure Cache for Redis. The version cannot be specified at
// creation time.
#SupportedRedisVersion: "3.2"

// An SKU represents the performance and cost oriented properties of a
// Redis.
#SKU: {
	// Name specifies what type of Redis cache to deploy. Valid values: (Basic,
	// Standard, Premium). Possible values include: 'Basic', 'Standard',
	// 'Premium'
	// +kubebuilder:validation:Enum=Basic;Standard;Premium
	name: string @go(Name)

	// Family specifies which family to use. Valid values: (C, P). Possible
	// values include: 'C', 'P'
	// +kubebuilder:validation:Enum=C;P
	family: string @go(Family)

	// Capacity specifies the size of Redis cache to deploy. Valid values: for C
	// family (0, 1, 2, 3, 4, 5, 6), for P family (1, 2, 3, 4).
	// +kubebuilder:validation:Minimum=0
	// +kubebuilder:validation:Maximum=6
	capacity: int @go(Capacity)
}

// RedisParameters define the desired state of an Azure Redis cluster.
// https://docs.microsoft.com/en-us/rest/api/redis/redis/create#redisresource
#RedisParameters: {
	// ResourceGroupName in which to create this resource.
	// +immutable
	resourceGroupName?: string @go(ResourceGroupName)

	// ResourceGroupNameRef to fetch resource group name.
	// +immutable
	resourceGroupNameRef?: null | xpv1.#Reference @go(ResourceGroupNameRef,*xpv1.Reference)

	// ResourceGroupNameSelector to select a reference to a resource group.
	// +immutable
	resourceGroupNameSelector?: null | xpv1.#Selector @go(ResourceGroupNameSelector,*xpv1.Selector)

	// Sku - The SKU of the Redis cache to deploy.
	sku: #SKU @go(SKU)

	// Location in which to create this resource.
	// +immutable
	location: string @go(Location)

	// SubnetID specifies the full resource ID of a subnet in a virtual network
	// to deploy the Redis cache in. Example format:
	// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
	// +immutable
	// +optional
	subnetId?: null | string @go(SubnetID,*string)

	// StaticIP address. Required when deploying a Redis cache inside an
	// existing Azure Virtual Network.
	// +immutable
	// +optional
	staticIp?: null | string @go(StaticIP,*string)

	// RedisConfiguration - All Redis Settings. Few possible keys:
	// rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency
	// maxmemory-delta,maxmemory-policy,notify-keyspace-events,maxmemory-samples,
	// slowlog-log-slower-than,slowlog-max-len,list-max-ziplist-entries,
	// list-max-ziplist-value,hash-max-ziplist-entries,hash-max-ziplist-value,
	// set-max-intset-entries,zset-max-ziplist-entries,zset-max-ziplist-value etc.
	// +optional
	redisConfiguration?: {[string]: string} @go(RedisConfiguration,map[string]string)

	// EnableNonSSLPort specifies whether the non-ssl Redis server port (6379)
	// is enabled.
	// +optional
	enableNonSslPort?: null | bool @go(EnableNonSSLPort,*bool)

	// TenantSettings - A dictionary of tenant settings
	// +optional
	tenantSettings?: {[string]: string} @go(TenantSettings,map[string]string)

	// ShardCount specifies the number of shards to be created on a Premium
	// Cluster Cache.
	// +optional
	shardCount?: null | int @go(ShardCount,*int)

	// MinimumTLSVersion - Optional: requires clients to use a specified TLS
	// version (or higher) to connect (e,g, '1.0', '1.1', '1.2'). Possible
	// values include: 'OneFullStopZero', 'OneFullStopOne', 'OneFullStopTwo'
	// +optional
	minimumTlsVersion?: null | string @go(MinimumTLSVersion,*string)

	// Zones - A list of availability zones denoting where the resource needs to come from.
	// +immutable
	// +optional
	zones?: [...string] @go(Zones,[]string)

	// Tags - Resource tags.
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)
}

// A RedisSpec defines the desired state of a Redis.
#RedisSpec: {
	xpv1.#ResourceSpec
	forProvider: #RedisParameters @go(ForProvider)
}

// RedisObservation represents the observed state of the Redis object in Azure.
#RedisObservation: {
	// RedisVersion - Redis version.
	redisVersion?: string @go(RedisVersion)

	// ProvisioningState - Redis instance provisioning status. Possible values
	// include: 'Creating', 'Deleting', 'Disabled', 'Failed', 'Linking',
	// 'Provisioning', 'RecoveringScaleFailure', 'Scaling', 'Succeeded',
	// 'Unlinking', 'Unprovisioning', 'Updating'
	provisioningState?: string @go(ProvisioningState)

	// HostName - Redis host name.
	hostName?: string @go(HostName)

	// Port - Redis non-SSL port.
	port?: int @go(Port)

	// SSLPort - Redis SSL port.
	sslPort?: int @go(SSLPort)

	// LinkedServers - List of the linked servers associated with the cache
	linkedServers?: [...string] @go(LinkedServers,[]string)

	// ID - Resource ID.
	id?: string @go(ID)

	// Name - Resource name.
	name?: string @go(Name)
}

// A RedisStatus represents the observed state of a Redis.
#RedisStatus: {
	xpv1.#ResourceStatus
	atProvider?: #RedisObservation @go(AtProvider)
}

// A Redis is a managed resource that represents an Azure Redis cluster.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.atProvider.provisioningState"
// +kubebuilder:printcolumn:name="VERSION",type="string",JSONPath=".status.atProvider.redisVersion"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Redis: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #RedisSpec         @go(Spec)
	status?:   #RedisStatus       @go(Status)
}

// RedisList contains a list of Redis.
#RedisList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Redis] @go(Items,[]Redis)
}
