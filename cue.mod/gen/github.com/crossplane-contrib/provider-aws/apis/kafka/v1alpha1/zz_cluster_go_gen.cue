// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/kafka/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// ClusterParameters defines the desired state of Cluster
#ClusterParameters: {
	// Region is which region the Cluster will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Includes all client authentication related information.
	clientAuthentication?: null | #ClientAuthentication @go(ClientAuthentication,*ClientAuthentication)

	// Includes all encryption-related information.
	encryptionInfo?: null | #EncryptionInfo @go(EncryptionInfo,*EncryptionInfo)

	// Specifies the level of monitoring for the MSK cluster. The possible values
	// are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.
	enhancedMonitoring?: null | string @go(EnhancedMonitoring,*string)

	// The version of Apache Kafka.
	// +kubebuilder:validation:Required
	kafkaVersion?: null | string @go(KafkaVersion,*string)

	// LoggingInfo details.
	loggingInfo?: null | #LoggingInfo @go(LoggingInfo,*LoggingInfo)

	// The number of Apache Kafka broker nodes in the Amazon MSK cluster.
	// +kubebuilder:validation:Required
	numberOfBrokerNodes?: null | int64 @go(NumberOfBrokerNodes,*int64)

	// The settings for open monitoring.
	openMonitoring?: null | #OpenMonitoringInfo @go(OpenMonitoring,*OpenMonitoringInfo)

	// Create tags when creating the cluster.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	#CustomClusterParameters
}

// ClusterSpec defines the desired state of Cluster
#ClusterSpec: {
	xpv1.#ResourceSpec
	forProvider: #ClusterParameters @go(ForProvider)
}

// ClusterObservation defines the observed state of Cluster
#ClusterObservation: {
	// The Amazon Resource Name (ARN) of the cluster.
	clusterARN?: null | string @go(ClusterARN,*string)

	// The name of the MSK cluster.
	clusterName?: null | string @go(ClusterName,*string)

	// The state of the cluster. The possible states are ACTIVE, CREATING, DELETING,
	// FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.
	state?: null | string @go(State,*string)
}

// ClusterStatus defines the observed state of Cluster.
#ClusterStatus: {
	xpv1.#ResourceStatus
	atProvider?: #ClusterObservation @go(AtProvider)
}

// Cluster is the Schema for the Clusters API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Cluster: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #ClusterSpec       @go(Spec)
	status?:   #ClusterStatus     @go(Status)
}

// ClusterList contains a list of Clusters
#ClusterList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Cluster] @go(Items,[]Cluster)
}
