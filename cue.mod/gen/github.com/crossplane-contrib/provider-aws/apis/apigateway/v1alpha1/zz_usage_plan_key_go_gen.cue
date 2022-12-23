// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// UsagePlanKeyParameters defines the desired state of UsagePlanKey
#UsagePlanKeyParameters: {
	// Region is which region the UsagePlanKey will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// [Required] The identifier of a UsagePlanKey resource for a plan customer.
	// +kubebuilder:validation:Required
	keyID?: null | string @go(KeyID,*string)

	// [Required] The type of a UsagePlanKey resource for a plan customer.
	// +kubebuilder:validation:Required
	keyType?: null | string @go(KeyType,*string)

	#CustomUsagePlanKeyParameters
}

// UsagePlanKeySpec defines the desired state of UsagePlanKey
#UsagePlanKeySpec: {
	xpv1.#ResourceSpec
	forProvider: #UsagePlanKeyParameters @go(ForProvider)
}

// UsagePlanKeyObservation defines the observed state of UsagePlanKey
#UsagePlanKeyObservation: {
	// The Id of a usage plan key.
	id?: null | string @go(ID,*string)

	// The name of a usage plan key.
	name?: null | string @go(Name,*string)

	// The type of a usage plan key. Currently, the valid key type is API_KEY.
	type_?: null | string @go(Type,*string)

	// The value of a usage plan key.
	value?: null | string @go(Value,*string)
}

// UsagePlanKeyStatus defines the observed state of UsagePlanKey.
#UsagePlanKeyStatus: {
	xpv1.#ResourceStatus
	atProvider?: #UsagePlanKeyObservation @go(AtProvider)
}

// UsagePlanKey is the Schema for the UsagePlanKeys API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#UsagePlanKey: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta  @go(ObjectMeta)
	spec:      #UsagePlanKeySpec   @go(Spec)
	status?:   #UsagePlanKeyStatus @go(Status)
}

// UsagePlanKeyList contains a list of UsagePlanKeys
#UsagePlanKeyList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#UsagePlanKey] @go(Items,[]UsagePlanKey)
}