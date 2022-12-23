// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// APIKeyParameters defines the desired state of APIKey
#APIKeyParameters: {
	// Region is which region the APIKey will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// An AWS Marketplace customer identifier , when integrating with the AWS SaaS
	// Marketplace.
	customerID?: null | string @go(CustomerID,*string)

	// The description of the ApiKey.
	description?: null | string @go(Description,*string)

	// Specifies whether the ApiKey can be used by callers.
	enabled?: null | bool @go(Enabled,*bool)

	// Specifies whether (true) or not (false) the key identifier is distinct from
	// the created API key value. This parameter is deprecated and should not be
	// used.
	generateDistinctID?: null | bool @go(GenerateDistinctID,*bool)

	// The name of the ApiKey.
	name?: null | string @go(Name,*string)

	// The key-value map of strings. The valid character set is [a-zA-Z+-=._:/].
	// The tag key can be up to 128 characters and must not start with aws:. The
	// tag value can be up to 256 characters.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies a value of the API key.
	value?: null | string @go(Value,*string)

	#CustomAPIKeyParameters
}

// APIKeySpec defines the desired state of APIKey
#APIKeySpec: {
	xpv1.#ResourceSpec
	forProvider: #APIKeyParameters @go(ForProvider)
}

// APIKeyObservation defines the observed state of APIKey
#APIKeyObservation: {
	// The timestamp when the API Key was created.
	createdDate?: null | metav1.#Time @go(CreatedDate,*metav1.Time)

	// The identifier of the API Key.
	id?: null | string @go(ID,*string)

	// The timestamp when the API Key was last updated.
	lastUpdatedDate?: null | metav1.#Time @go(LastUpdatedDate,*metav1.Time)

	// A list of Stage resources that are associated with the ApiKey resource.
	stageKeys?: [...null | string] @go(StageKeys,[]*string)
}

// APIKeyStatus defines the observed state of APIKey.
#APIKeyStatus: {
	xpv1.#ResourceStatus
	atProvider?: #APIKeyObservation @go(AtProvider)
}

// APIKey is the Schema for the APIKeys API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#APIKey: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #APIKeySpec        @go(Spec)
	status?:   #APIKeyStatus      @go(Status)
}

// APIKeyList contains a list of APIKeys
#APIKeyList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#APIKey] @go(Items,[]APIKey)
}
