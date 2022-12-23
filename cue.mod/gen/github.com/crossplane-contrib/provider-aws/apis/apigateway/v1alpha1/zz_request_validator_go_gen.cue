// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// RequestValidatorParameters defines the desired state of RequestValidator
#RequestValidatorParameters: {
	// Region is which region the RequestValidator will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The name of the to-be-created RequestValidator.
	name?: null | string @go(Name,*string)

	// A Boolean flag to indicate whether to validate request body according to
	// the configured model schema for the method (true) or not (false).
	validateRequestBody?: null | bool @go(ValidateRequestBody,*bool)

	// A Boolean flag to indicate whether to validate request parameters, true,
	// or not false.
	validateRequestParameters?: null | bool @go(ValidateRequestParameters,*bool)

	#CustomRequestValidatorParameters
}

// RequestValidatorSpec defines the desired state of RequestValidator
#RequestValidatorSpec: {
	xpv1.#ResourceSpec
	forProvider: #RequestValidatorParameters @go(ForProvider)
}

// RequestValidatorObservation defines the observed state of RequestValidator
#RequestValidatorObservation: {
	// The identifier of this RequestValidator.
	id?: null | string @go(ID,*string)
}

// RequestValidatorStatus defines the observed state of RequestValidator.
#RequestValidatorStatus: {
	xpv1.#ResourceStatus
	atProvider?: #RequestValidatorObservation @go(AtProvider)
}

// RequestValidator is the Schema for the RequestValidators API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#RequestValidator: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta      @go(ObjectMeta)
	spec:      #RequestValidatorSpec   @go(Spec)
	status?:   #RequestValidatorStatus @go(Status)
}

// RequestValidatorList contains a list of RequestValidators
#RequestValidatorList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#RequestValidator] @go(Items,[]RequestValidator)
}