// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// MethodParameters defines the desired state of Method
#MethodParameters: {
	// Region is which region the Method will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Specifies whether the method required a valid ApiKey.
	apiKeyRequired?: null | bool @go(APIKeyRequired,*bool)

	// A list of authorization scopes configured on the method. The scopes are used
	// with a COGNITO_USER_POOLS authorizer to authorize the method invocation.
	// The authorization works by matching the method scopes against the scopes
	// parsed from the access token in the incoming request. The method invocation
	// is authorized if any method scopes matches a claimed scope in the access
	// token. Otherwise, the invocation is not authorized. When the method scope
	// is configured, the client must provide an access token instead of an identity
	// token for authorization purposes.
	authorizationScopes?: [...null | string] @go(AuthorizationScopes,[]*string)

	// [Required] The method's authorization type. Valid values are NONE for open
	// access, AWS_IAM for using AWS IAM permissions, CUSTOM for using a custom
	// authorizer, or COGNITO_USER_POOLS for using a Cognito user pool.
	// +kubebuilder:validation:Required
	authorizationType?: null | string @go(AuthorizationType,*string)

	// Specifies the identifier of an Authorizer to use on this Method, if the type
	// is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is generated by
	// API Gateway when you created the authorizer.
	authorizerID?: null | string @go(AuthorizerID,*string)

	// [Required] Specifies the method request's HTTP method type.
	// +kubebuilder:validation:Required
	httpMethod?: null | string @go(HTTPMethod,*string)

	// A human-friendly operation identifier for the method. For example, you can
	// assign the operationName of ListPets for the GET /pets method in the PetStore
	// example.
	operationName?: null | string @go(OperationName,*string)

	// Specifies the Model resources used for the request's content type. Request
	// models are represented as a key/value map, with a content type as the key
	// and a Model name as the value.
	requestModels?: {[string]: null | string} @go(RequestModels,map[string]*string)

	// A key-value map defining required or optional method request parameters that
	// can be accepted by API Gateway. A key defines a method request parameter
	// name matching the pattern of method.request.{location}.{name}, where location
	// is querystring, path, or header and name is a valid and unique parameter
	// name. The value associated with the key is a Boolean flag indicating whether
	// the parameter is required (true) or optional (false). The method request
	// parameter names defined here are available in Integration to be mapped to
	// integration request parameters or body-mapping templates.
	requestParameters?: {[string]: null | bool} @go(RequestParameters,map[string]*bool)

	// The identifier of a RequestValidator for validating the method request.
	requestValidatorID?: null | string @go(RequestValidatorID,*string)

	#CustomMethodParameters
}

// MethodSpec defines the desired state of Method
#MethodSpec: {
	xpv1.#ResourceSpec
	forProvider: #MethodParameters @go(ForProvider)
}

// MethodObservation defines the observed state of Method
#MethodObservation: {
}

// MethodStatus defines the observed state of Method.
#MethodStatus: {
	xpv1.#ResourceStatus
	atProvider?: #MethodObservation @go(AtProvider)
}

// Method is the Schema for the Methods API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Method: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #MethodSpec        @go(Spec)
	status?:   #MethodStatus      @go(Status)
}

// MethodList contains a list of Methods
#MethodList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Method] @go(Items,[]Method)
}
