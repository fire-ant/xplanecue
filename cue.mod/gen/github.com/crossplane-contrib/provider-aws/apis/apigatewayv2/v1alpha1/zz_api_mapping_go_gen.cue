// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// APIMappingParameters defines the desired state of APIMapping
#APIMappingParameters: {
	// Region is which region the APIMapping will be created.
	// +kubebuilder:validation:Required
	region:         string        @go(Region)
	apiMappingKey?: null | string @go(APIMappingKey,*string)

	#CustomAPIMappingParameters
}

// APIMappingSpec defines the desired state of APIMapping
#APIMappingSpec: {
	xpv1.#ResourceSpec
	forProvider: #APIMappingParameters @go(ForProvider)
}

// APIMappingObservation defines the observed state of APIMapping
#APIMappingObservation: {
	apiID?:        null | string @go(APIID,*string)
	apiMappingID?: null | string @go(APIMappingID,*string)
	stage?:        null | string @go(Stage,*string)
}

// APIMappingStatus defines the observed state of APIMapping.
#APIMappingStatus: {
	xpv1.#ResourceStatus
	atProvider?: #APIMappingObservation @go(AtProvider)
}

// APIMapping is the Schema for the APIMappings API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#APIMapping: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #APIMappingSpec    @go(Spec)
	status?:   #APIMappingStatus  @go(Status)
}

// APIMappingList contains a list of APIMappings
#APIMappingList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#APIMapping] @go(Items,[]APIMapping)
}
