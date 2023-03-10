// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// A ProviderConfigSpec defines the desired state of a ProviderConfig.
#ProviderConfigSpec: {
	// Credentials required to authenticate to this provider.
	credentials: #ProviderCredentials @go(Credentials)

	// AssumeRole defines the options for assuming an IAM role
	assumeRole?: null | #AssumeRoleOptions @go(AssumeRole,*AssumeRoleOptions)

	// AssumeRoleWithWebIdentity defines the options for assuming an IAM role with a Web Identity
	assumeRoleWithWebIdentity?: null | #AssumeRoleWithWebIdentityOptions @go(AssumeRoleWithWebIdentity,*AssumeRoleWithWebIdentityOptions)

	// AssumeRoleARN to assume with provider credentials
	// This setting will be deprecated. Use the roleARN field under assumeRole instead.
	// +optional
	assumeRoleARN?: null | string @go(AssumeRoleARN,*string)

	// ExternalID is the external ID used when assuming role.
	// This setting will be deprecated. Use the externalID field under assumeRole instead.
	// +optional
	externalID?: null | string @go(ExternalID,*string)

	// Endpoint is where you can override the default endpoint configuration
	// of AWS calls made by the provider.
	// +optional
	endpoint?: null | #EndpointConfig @go(Endpoint,*EndpointConfig)
}

// ProviderCredentials required to authenticate.
#ProviderCredentials: {
	// Source of the provider credentials.
	// +kubebuilder:validation:Enum=None;Secret;InjectedIdentity;Environment;Filesystem
	source: xpv1.#CredentialsSource @go(Source)

	xpv1.#CommonCredentialSelectors
}

// Tag is session tag that can be used to assume an IAM Role
#Tag: {
	// Name of the tag.
	// Key is a required field
	key?: null | string @go(Key,*string)

	// Value of the tag.
	// Value is a required field
	value?: null | string @go(Value,*string)
}

// AssumeRoleOptions define the options for assuming an IAM Role
// Fields are similar to the STS AssumeRoleOptions in the AWS SDK
#AssumeRoleOptions: {
	// AssumeRoleARN to assume with provider credentials
	roleARN?: null | string @go(RoleARN,*string)

	// ExternalID is the external ID used when assuming role.
	// +optional
	externalID?: null | string @go(ExternalID,*string)

	// Tags is list of session tags that you want to pass. Each session tag consists of a key
	// name and an associated value. For more information about session tags, see
	// Tagging STS Sessions
	// (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html).
	// +optional
	tags?: [...#Tag] @go(Tags,[]Tag)

	// TransitiveTagKeys is a list of keys for session tags that you want to set as transitive. If you set a
	// tag key as transitive, the corresponding key and value passes to subsequent
	// sessions in a role chain. For more information, see Chaining Roles with Session Tags
	// (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining).
	// +optional
	transitiveTagKeys?: [...string] @go(TransitiveTagKeys,[]string)
}

// AssumeRoleWithWebIdentityOptions define the options for assuming an IAM Role
// Fields are similar to the STS WebIdentityRoleOptions in the AWS SDK
#AssumeRoleWithWebIdentityOptions: {
	// AssumeRoleARN to assume with provider credentials
	roleARN?: null | string @go(RoleARN,*string)

	// RoleSessionName is the session name, if you wish to uniquely identify this session.
	// +optional
	roleSessionName?: string @go(RoleSessionName)
}

// EndpointConfig is used to configure the AWS client for a custom endpoint.
#EndpointConfig: {
	// URL lets you configure the endpoint URL to be used in SDK calls.
	url: #URLConfig @go(URL)

	// Specifies if the endpoint's hostname can be modified by the SDK's API
	// client.
	//
	// If the hostname is mutable the SDK API clients may modify any part of
	// the hostname based on the requirements of the API, (e.g. adding, or
	// removing content in the hostname). Such as, Amazon S3 API client
	// prefixing "bucketname" to the hostname, or changing the
	// hostname service name component from "s3." to "s3-accesspoint.dualstack."
	// for the dualstack endpoint of an S3 Accesspoint resource.
	//
	// Care should be taken when providing a custom endpoint for an API. If the
	// endpoint hostname is mutable, and the client cannot modify the endpoint
	// correctly, the operation call will most likely fail, or have undefined
	// behavior.
	//
	// If hostname is immutable, the SDK API clients will not modify the
	// hostname of the URL. This may cause the API client not to function
	// correctly if the API requires the operation specific hostname values
	// to be used by the client.
	//
	// This flag does not modify the API client's behavior if this endpoint
	// will be used instead of Endpoint Discovery, or if the endpoint will be
	// used to perform Endpoint Discovery. That behavior is configured via the
	// API Client's Options.
	// Note that this is effective only for resources that use AWS SDK v2.
	// +optional
	hostnameImmutable?: null | bool @go(HostnameImmutable,*bool)

	// The AWS partition the endpoint belongs to.
	// +optional
	partitionId?: null | string @go(PartitionID,*string)

	// The service name that should be used for signing the requests to the
	// endpoint.
	// +optional
	signingName?: null | string @go(SigningName,*string)

	// The region that should be used for signing the request to the endpoint.
	// For IAM, which doesn't have any region, us-east-1 is used to sign the
	// requests, which is the only signing region of IAM.
	// +optional
	signingRegion?: null | string @go(SigningRegion,*string)

	// The signing method that should be used for signing the requests to the
	// endpoint.
	// +optional
	signingMethod?: null | string @go(SigningMethod,*string)

	// The source of the Endpoint. By default, this will be ServiceMetadata.
	// When providing a custom endpoint, you should set the source as Custom.
	// If source is not provided when providing a custom endpoint, the SDK may not
	// perform required host mutations correctly. Source should be used along with
	// HostnameImmutable property as per the usage requirement.
	// Note that this is effective only for resources that use AWS SDK v2.
	// +optional
	// +kubebuilder:validation:Enum=ServiceMetadata;Custom
	source?: null | string @go(Source,*string)
}

// URLConfig lets users configure the URL of the AWS SDK calls.
#URLConfig: {
	// You can provide a static URL that will be used regardless of the service
	// and region by choosing Static type. Alternatively, you can provide
	// configuration for dynamically resolving the URL with the config you provide
	// once you set the type as Dynamic.
	// +kubebuilder:validation:Enum=Static;Dynamic
	type: string @go(Type)

	// Static is the full URL you'd like the AWS SDK to use.
	// Recommended for using tools like localstack where a single host is exposed
	// for all services and regions.
	// +optional
	static?: null | string @go(Static,*string)

	// Dynamic lets you configure the behavior of endpoint URL resolver.
	// +optional
	dynamic?: null | #DynamicURLConfig @go(Dynamic,*DynamicURLConfig)
}

// DynamicURLConfig lets users configure endpoint resolving functionality.
#DynamicURLConfig: {
	// Protocol is the HTTP protocol that will be used in the URL. Currently,
	// only http and https are supported.
	// +kubebuilder:validation:Enum=http;https
	protocol: string @go(Protocol)

	// Host is the address of the main host that the resolver will use to
	// prepend protocol, service and region configurations.
	// For example, the final URL for EC2 in us-east-1 looks like https://ec2.us-east-1.amazonaws.com
	// You would need to use "amazonaws.com" as Host and "https" as protocol
	// to have the resolver construct it.
	host: string @go(Host)
}

// A ProviderConfigStatus represents the status of a ProviderConfig.
#ProviderConfigStatus: {
	xpv1.#ProviderConfigStatus
}

// A ProviderConfig configures how AWS controllers will connect to AWS API.
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:printcolumn:name="SECRET-NAME",type="string",JSONPath=".spec.credentialsSecretRef.name",priority=1
// +kubebuilder:resource:scope=Cluster,categories={crossplane,provider,aws}
// +kubebuilder:subresource:status
#ProviderConfig: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta    @go(ObjectMeta)
	spec:      #ProviderConfigSpec   @go(Spec)
	status?:   #ProviderConfigStatus @go(Status)
}

// ProviderConfigList contains a list of ProviderConfig
#ProviderConfigList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ProviderConfig] @go(Items,[]ProviderConfig)
}

// A ProviderConfigUsage indicates that a resource is using a ProviderConfig.
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:printcolumn:name="CONFIG-NAME",type="string",JSONPath=".providerConfigRef.name"
// +kubebuilder:printcolumn:name="RESOURCE-KIND",type="string",JSONPath=".resourceRef.kind"
// +kubebuilder:printcolumn:name="RESOURCE-NAME",type="string",JSONPath=".resourceRef.name"
// +kubebuilder:resource:scope=Cluster,categories={crossplane,provider,aws}
#ProviderConfigUsage: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	xpv1.#ProviderConfigUsage
}

// ProviderConfigUsageList contains a list of ProviderConfigUsage
#ProviderConfigUsageList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ProviderConfigUsage] @go(Items,[]ProviderConfigUsage)
}
