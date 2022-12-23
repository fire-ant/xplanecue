// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/cache/v1beta1

package v1beta1

import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
)

// CloudMemorystoreInstanceParameters define the desired state of an Google
// Cloud Memorystore instance. Most fields map directly to an Instance:
// https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance
#CloudMemorystoreInstanceParameters: {
	// Region in which to create this Cloud Memorystore cluster.
	// +immutable
	region: string @go(Region)

	// Tier specifies the replication level of the Redis cluster. BASIC provides
	// a single Redis instance with no high availability. STANDARD_HA provides a
	// cluster of two Redis instances in distinct availability zones.
	// https://cloud.google.com/memorystore/docs/redis/redis-tiers
	// +kubebuilder:validation:Enum=BASIC;STANDARD_HA
	// +immutable
	tier: string @go(Tier)

	// Redis memory size in GiB.
	memorySizeGb: int64 @go(MemorySizeGB)

	// An arbitrary and optional user-provided name for the instance.
	// +optional
	displayName?: null | string @go(DisplayName,*string)

	// Resource labels to represent user provided metadata
	// +optional
	labels?: {[string]: string} @go(Labels,map[string]string)

	// The zone where the instance will be provisioned. If not provided,
	// the service will choose a zone for the instance. For STANDARD_HA tier,
	// instances will be created across two zones for protection against zonal
	// failures. If [alternative_location_id] is also provided, it must be
	// different from [location_id].
	// +optional
	// +immutable
	locationId?: null | string @go(LocationID,*string)

	// Only applicable to STANDARD_HA tier which protects the instance
	// against zonal failures by provisioning it across two zones. If provided, it
	// must be a different zone from the one provided in [location_id].
	// +optional
	// +immutable
	alternativeLocationId?: null | string @go(AlternativeLocationID,*string)

	// The version of Redis software.
	// If not provided, latest supported version will be used. Updating the
	// version will perform an upgrade/downgrade to the new version. Currently,
	// the supported values are:
	//
	//  *   `REDIS_4_0` for Redis 4.0 compatibility (default)
	//  *   `REDIS_3_2` for Redis 3.2 compatibility
	//  *   `REDIS_5_0` for Redis 5.0 compatibility
	//  *   `REDIS_6_X` for Redis 6.x compatibility
	// +optional
	// +immutable
	redisVersion?: null | string @go(RedisVersion,*string)

	// The CIDR range of internal addresses that are reserved for this
	// instance. If not provided, the service will choose an unused /29 block,
	// for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be unique
	// and non-overlapping with existing subnets in an authorized network.
	// +optional
	// +immutable
	reservedIpRange?: null | string @go(ReservedIPRange,*string)

	// Redis configuration parameters, according to
	// http://redis.io/topics/config. Currently, the only supported parameters
	// are:
	//
	//  Redis 3.2 and above:
	//
	//  *   maxmemory-policy
	//  *   notify-keyspace-events
	//
	//  Redis 4.0 and above:
	//
	//  *   activedefrag
	//  *   lfu-log-factor
	//  *   lfu-decay-time
	// +optional
	redisConfigs?: {[string]: string} @go(RedisConfigs,map[string]string)

	// The full name of the Google Compute Engine
	// [network](/compute/docs/networks-and-firewalls#networks) to which the
	// instance is connected. If left unspecified, the `default` network
	// will be used.
	// +optional
	// +immutable
	authorizedNetwork?: null | string @go(AuthorizedNetwork,*string)

	// ConnectMode: Optional. The network connect mode of the Redis
	// instance. If not provided, the connect mode defaults to
	// DIRECT_PEERING.
	//
	// Possible values:
	//   "CONNECT_MODE_UNSPECIFIED" - Not set.
	//   "DIRECT_PEERING" - Connect via direct peering to the Memorystore
	// for Redis hosted service.
	//   "PRIVATE_SERVICE_ACCESS" - Connect your Memorystore for Redis
	// instance using Private Services Access. Private services access
	// provides an IP address range for multiple Google Cloud services,
	// including Memorystore.
	// +kubebuilder:validation:Enum=DIRECT_PEERING;PRIVATE_SERVICE_ACCESS
	// +optional
	// +immutable
	connectMode?: null | string @go(ConnectMode,*string)

	// AuthEnabled: Optional. Indicates whether OSS Redis AUTH is enabled
	// for the instance. If set to "true" AUTH is enabled on the instance.
	// Default value is "false" meaning AUTH is disabled.
	// +optional
	authEnabled?: null | bool @go(AuthEnabled,*bool)
}

// CloudMemorystoreInstanceObservation is used to show the observed state of the
// CloudMemorystore resource on GCP.
#CloudMemorystoreInstanceObservation: {
	// Unique name of the resource in this scope including project and
	// location using the form:
	//     `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
	//
	// Note: Redis instances are managed and addressed at regional level so
	// location_id here refers to a GCP region; however, users may choose which
	// specific zone (or collection of zones for cross-zone instances) an instance
	// should be provisioned in. Refer to [location_id] and
	// [alternative_location_id] fields for more details.
	name?: string @go(Name)

	// Hostname or IP address of the exposed Redis endpoint used by
	// clients to connect to the service.
	host?: string @go(Host)

	// The port number of the exposed Redis endpoint.
	port?: int64 @go(Port)

	// The current zone where the Redis endpoint is placed. For Basic
	// Tier instances, this will always be the same as the [location_id]
	// provided by the user at creation time. For Standard Tier instances,
	// this can be either [location_id] or [alternative_location_id] and can
	// change after a failover event.
	currentLocationId?: string @go(CurrentLocationID)

	// The time the instance was created.
	createTime?: null | metav1.#Time @go(CreateTime,*metav1.Time)

	// State: Output only. The current state of this instance.
	//
	// Possible values:
	//   "STATE_UNSPECIFIED" - Not set.
	//   "CREATING" - Redis instance is being created.
	//   "READY" - Redis instance has been created and is fully usable.
	//   "UPDATING" - Redis instance configuration is being updated. Certain
	// kinds of updates may cause the instance to become unusable while the
	// update is in progress.
	//   "DELETING" - Redis instance is being deleted.
	//   "REPAIRING" - Redis instance is being repaired and may be unusable.
	//   "MAINTENANCE" - Maintenance is being performed on this Redis
	// instance.
	//   "IMPORTING" - Redis instance is importing data (availability may be
	// affected).
	//   "FAILING_OVER" - Redis instance is failing over (availability may
	// be affected).
	state?: string @go(State)

	// Additional information about the current status of this
	// instance, if available.
	statusMessage?: string @go(StatusMessage)

	// Cloud IAM identity used by import / export operations to
	// transfer data to/from Cloud Storage. Format is
	// "serviceAccount:<service_account_email>". The value may change over time
	// for a given instance so should be checked before each import/export
	// operation.
	persistenceIamIdentity?: string @go(PersistenceIAMIdentity)
}

// A CloudMemorystoreInstanceSpec defines the desired state of a
// CloudMemorystoreInstance.
#CloudMemorystoreInstanceSpec: {
	xpv1.#ResourceSpec
	forProvider: #CloudMemorystoreInstanceParameters @go(ForProvider)
}

// A CloudMemorystoreInstanceStatus represents the observed state of a
// CloudMemorystoreInstance.
#CloudMemorystoreInstanceStatus: {
	xpv1.#ResourceStatus
	atProvider?: #CloudMemorystoreInstanceObservation @go(AtProvider)
}

// A CloudMemorystoreInstance is a managed resource that represents a Google
// Cloud Memorystore instance.
// +kubebuilder:subresource:status
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.atProvider.state"
// +kubebuilder:printcolumn:name="VERSION",type="string",JSONPath=".spec.forProvider.redisVersion"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#CloudMemorystoreInstance: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta              @go(ObjectMeta)
	spec:      #CloudMemorystoreInstanceSpec   @go(Spec)
	status?:   #CloudMemorystoreInstanceStatus @go(Status)
}

// CloudMemorystoreInstanceList contains a list of CloudMemorystoreInstance
#CloudMemorystoreInstanceList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#CloudMemorystoreInstance] @go(Items,[]CloudMemorystoreInstance)
}
