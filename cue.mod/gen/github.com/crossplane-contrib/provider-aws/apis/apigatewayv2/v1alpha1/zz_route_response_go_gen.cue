// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// RouteResponseParameters defines the desired state of RouteResponse
#RouteResponseParameters: {
	// Region is which region the RouteResponse will be created.
	// +kubebuilder:validation:Required
	region:                    string        @go(Region)
	modelSelectionExpression?: null | string @go(ModelSelectionExpression,*string)
	responseModels?: {[string]: null | string} @go(ResponseModels,map[string]*string)
	responseParameters?: {[string]: null | #ParameterConstraints} @go(ResponseParameters,map[string]*ParameterConstraints)

	// +kubebuilder:validation:Required
	routeResponseKey?: null | string @go(RouteResponseKey,*string)

	#CustomRouteResponseParameters
}

// RouteResponseSpec defines the desired state of RouteResponse
#RouteResponseSpec: {
	xpv1.#ResourceSpec
	forProvider: #RouteResponseParameters @go(ForProvider)
}

// RouteResponseObservation defines the observed state of RouteResponse
#RouteResponseObservation: {
	routeResponseID?: null | string @go(RouteResponseID,*string)
}

// RouteResponseStatus defines the observed state of RouteResponse.
#RouteResponseStatus: {
	xpv1.#ResourceStatus
	atProvider?: #RouteResponseObservation @go(AtProvider)
}

// RouteResponse is the Schema for the RouteResponses API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RouteResponse: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta   @go(ObjectMeta)
	spec:      #RouteResponseSpec   @go(Spec)
	status?:   #RouteResponseStatus @go(Status)
}

// RouteResponseList contains a list of RouteResponses
#RouteResponseList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#RouteResponse] @go(Items,[]RouteResponse)
}
