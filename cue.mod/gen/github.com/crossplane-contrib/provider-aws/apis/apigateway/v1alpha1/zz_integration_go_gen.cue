// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// IntegrationParameters defines the desired state of Integration
#IntegrationParameters: {
	// Region is which region the Integration will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A list of request parameters whose values API Gateway caches. To be valid
	// values for cacheKeyParameters, these parameters must also be specified for
	// Method requestParameters.
	cacheKeyParameters?: [...null | string] @go(CacheKeyParameters,[]*string)

	// Specifies a group of related cached parameters. By default, API Gateway uses
	// the resource ID as the cacheNamespace. You can specify the same cacheNamespace
	// across resources to return the same cached data for requests to different
	// resources.
	cacheNamespace?: null | string @go(CacheNamespace,*string)

	// The (id (https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id))
	// of the VpcLink used for the integration when connectionType=VPC_LINK and
	// undefined, otherwise.
	connectionID?: null | string @go(ConnectionID,*string)

	// The type of the network connection to the integration endpoint. The valid
	// value is INTERNET for connections through the public routable internet or
	// VPC_LINK for private connections between API Gateway and a network load balancer
	// in a VPC. The default value is INTERNET.
	connectionType?: null | string @go(ConnectionType,*string)

	// Specifies how to handle request payload content type conversions. Supported
	// values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:
	//
	//    * CONVERT_TO_BINARY: Converts a request payload from a Base64-encoded
	//    string to the corresponding binary blob.
	//
	//    * CONVERT_TO_TEXT: Converts a request payload from a binary blob to a
	//    Base64-encoded string.
	//
	// If this property is not defined, the request payload will be passed through
	// from the method request to integration request without modification, provided
	// that the passthroughBehavior is configured to support payload pass-through.
	contentHandling?: null | string @go(ContentHandling,*string)

	// Specifies whether credentials are required for a put integration.
	credentials?: null | string @go(Credentials,*string)

	// [Required] Specifies a put integration request's HTTP method.
	// +kubebuilder:validation:Required
	httpMethod?: null | string @go(HTTPMethod,*string)

	// Specifies a put integration HTTP method. When the integration type is HTTP
	// or AWS, this field is required.
	integrationHTTPMethod?: null | string @go(IntegrationHTTPMethod,*string)

	// Specifies the pass-through behavior for incoming requests based on the Content-Type
	// header in the request, and the available mapping templates specified as the
	// requestTemplates property on the Integration resource. There are three valid
	// values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER.
	//
	//    * WHEN_NO_MATCH passes the request body for unmapped content types through
	//    to the integration back end without transformation.
	//
	//    * NEVER rejects unmapped content types with an HTTP 415 'Unsupported Media
	//    Type' response.
	//
	//    * WHEN_NO_TEMPLATES allows pass-through when the integration has NO content
	//    types mapped to templates. However if there is at least one content type
	//    defined, unmapped content types will be rejected with the same 415 response.
	passthroughBehavior?: null | string @go(PassthroughBehavior,*string)

	// A key-value map specifying request parameters that are passed from the method
	// request to the back end. The key is an integration request parameter name
	// and the associated value is a method request parameter value or static value
	// that must be enclosed within single quotes and pre-encoded as required by
	// the back end. The method request parameter value must match the pattern of
	// method.request.{location}.{name}, where location is querystring, path, or
	// header and name must be a valid and unique method request parameter name.
	requestParameters?: {[string]: null | string} @go(RequestParameters,map[string]*string)

	// Represents a map of Velocity templates that are applied on the request payload
	// based on the value of the Content-Type header sent by the client. The content
	// type value is the key in this map, and the template (as a String) is the
	// value.
	requestTemplates?: {[string]: null | string} @go(RequestTemplates,map[string]*string)

	// Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000
	// milliseconds or 29 seconds.
	timeoutInMillis?: null | int64      @go(TimeoutInMillis,*int64)
	tlsConfig?:       null | #TLSConfig @go(TLSConfig,*TLSConfig)

	// [Required] Specifies a put integration input's type.
	// +kubebuilder:validation:Required
	type_?: null | string @go(Type,*string)

	// Specifies Uniform Resource Identifier (URI) of the integration endpoint.
	//
	//    * For HTTP or HTTP_PROXY integrations, the URI must be a fully formed,
	//    encoded HTTP(S) URL according to the RFC-3986 specification (https://en.wikipedia.org/wiki/Uniform_Resource_Identifier),
	//    for either standard integration, where connectionType is not VPC_LINK,
	//    or private integration, where connectionType is VPC_LINK. For a private
	//    HTTP integration, the URI is not used for routing.
	//
	//    * For AWS or AWS_PROXY integrations, the URI is of the form arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}.
	//    Here, {Region} is the API Gateway region (e.g., us-east-1); {service}
	//    is the name of the integrated AWS service (e.g., s3); and {subdomain}
	//    is a designated subdomain supported by certain AWS service for fast host-name
	//    lookup. action can be used for an AWS service action-based API, using
	//    an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service_api}
	//    refers to a supported action {name} plus any required input parameters.
	//    Alternatively, path can be used for an AWS service path-based API. The
	//    ensuing service_api refers to the path to an AWS service resource, including
	//    the region of the integrated AWS service, if applicable. For example,
	//    for integration with the S3 API of GetObject (https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectGET.html),
	//    the uri can be either arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}
	//    or arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}
	uri?: null | string @go(URI,*string)

	#CustomIntegrationParameters
}

// IntegrationSpec defines the desired state of Integration
#IntegrationSpec: {
	xpv1.#ResourceSpec
	forProvider: #IntegrationParameters @go(ForProvider)
}

// IntegrationObservation defines the observed state of Integration
#IntegrationObservation: {
}

// IntegrationStatus defines the observed state of Integration.
#IntegrationStatus: {
	xpv1.#ResourceStatus
	atProvider?: #IntegrationObservation @go(AtProvider)
}

// Integration is the Schema for the Integrations API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Integration: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	spec:      #IntegrationSpec   @go(Spec)
	status?:   #IntegrationStatus @go(Status)
}

// IntegrationList contains a list of Integrations
#IntegrationList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#Integration] @go(Items,[]Integration)
}