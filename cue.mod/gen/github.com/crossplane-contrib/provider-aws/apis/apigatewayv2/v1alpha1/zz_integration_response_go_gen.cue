// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// IntegrationResponseParameters defines the desired state of IntegrationResponse
#IntegrationResponseParameters: {
	// Region is which region the IntegrationResponse will be created.
	// +kubebuilder:validation:Required
	region:                   string        @go(Region)
	contentHandlingStrategy?: null | string @go(ContentHandlingStrategy,*string)

	// +kubebuilder:validation:Required
	integrationResponseKey?: null | string @go(IntegrationResponseKey,*string)
	responseParameters?: {[string]: null | string} @go(ResponseParameters,map[string]*string)
	responseTemplates?: {[string]: null | string} @go(ResponseTemplates,map[string]*string)
	templateSelectionExpression?: null | string @go(TemplateSelectionExpression,*string)

	#CustomIntegrationResponseParameters
}

// IntegrationResponseSpec defines the desired state of IntegrationResponse
#IntegrationResponseSpec: {
	xpv1.#ResourceSpec
	forProvider: #IntegrationResponseParameters @go(ForProvider)
}

// IntegrationResponseObservation defines the observed state of IntegrationResponse
#IntegrationResponseObservation: {
	integrationResponseID?: null | string @go(IntegrationResponseID,*string)
}

// IntegrationResponseStatus defines the observed state of IntegrationResponse.
#IntegrationResponseStatus: {
	xpv1.#ResourceStatus
	atProvider?: #IntegrationResponseObservation @go(AtProvider)
}

// IntegrationResponse is the Schema for the IntegrationResponses API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#IntegrationResponse: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta         @go(ObjectMeta)
	spec:      #IntegrationResponseSpec   @go(Spec)
	status?:   #IntegrationResponseStatus @go(Status)
}

// IntegrationResponseList contains a list of IntegrationResponses
#IntegrationResponseList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#IntegrationResponse] @go(Items,[]IntegrationResponse)
}