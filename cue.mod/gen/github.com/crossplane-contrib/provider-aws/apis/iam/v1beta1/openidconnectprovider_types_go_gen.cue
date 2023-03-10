// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1

package v1beta1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// OpenIDConnectProviderParameters defines the desired state of OpenIDConnectProvider
#OpenIDConnectProviderParameters: {
	// A list of client IDs (also known as audiences). When a mobile or web app
	// registers with an OpenID Connect provider, they establish a value that identifies
	// the application. (This is the value that's sent as the client_id parameter
	// on OAuth requests.)
	//
	// You can register multiple client IDs with the same provider. For example,
	// you might have multiple applications that use the same OIDC provider. You
	// cannot register more than 100 client IDs with a single IAM OIDC provider.
	//
	// There is no defined format for a client ID. The CreateOpenIDConnectProviderRequest
	// operation accepts client IDs up to 255 characters long.
	// +kubebuilder:validation:MaxItems:=100
	// +optional
	clientIDList?: [...string] @go(ClientIDList,[]string)

	// Tags. For more information about
	// tagging, see Tagging OpenID Connect (OIDC) identity providers (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags_idps_oidc.html)
	// in the IAM User Guide.
	// +optional
	tags?: [...#Tag] @go(Tags,[]Tag)

	// A list of server certificate thumbprints for the OpenID Connect (OIDC) identity
	// provider's server certificates. Typically this list includes only one entry.
	// However, IAM lets you have up to five thumbprints for an OIDC provider. This
	// lets you maintain multiple thumbprints if the identity provider is rotating
	// certificates.
	//
	// The server certificate thumbprint is the hex-encoded SHA-1 hash value of
	// the X.509 certificate used by the domain where the OpenID Connect provider
	// makes its keys available. It is always a 40-character string.
	//
	// You must provide at least one thumbprint when creating an IAM OIDC provider.
	// For example, assume that the OIDC provider is server.example.com and the
	// provider stores its keys at https://keys.server.example.com/openid-connect.
	// In that case, the thumbprint string would be the hex-encoded SHA-1 hash value
	// of the certificate used by https://keys.server.example.com.
	//
	// For more information about obtaining the OIDC provider's thumbprint, see
	// Obtaining the Thumbprint for an OpenID Connect Provider (https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html)
	// in the IAM User Guide.
	// +kubebuilder:validation:MinItems:=1
	// +kubebuilder:validation:MaxItems:=5
	thumbprintList: [...string] @go(ThumbprintList,[]string)

	// The URL of the identity provider. The URL must begin with https:// and should
	// correspond to the iss claim in the provider's OpenID Connect ID tokens. Per
	// the OIDC standard, path components are allowed but query parameters are not.
	// Typically the URL consists of only a hostname, like https://server.example.org
	// or https://example.com.
	//
	// You cannot register the same provider multiple times in a single AWS account.
	// If you try to submit a URL that has already been used for an OpenID Connect
	// provider in the AWS account, you will get an error.
	url: string @go(URL)
}

// OpenIDConnectProviderSpec defines the desired state of OpenIDConnectProvider
#OpenIDConnectProviderSpec: {
	xpv1.#ResourceSpec
	forProvider: #OpenIDConnectProviderParameters @go(ForProvider)
}

// OpenIDConnectProviderObservation defines the observed state of OpenIDConnectProvider
#OpenIDConnectProviderObservation: {
	// The date and time when the IAM OIDC provider resource object was created
	// in the AWS account.
	createDate?: null | metav1.#Time @go(CreateDate,*metav1.Time)
}

// OpenIDConnectProviderStatus defines the observed state of OpenIDConnectProvider.
#OpenIDConnectProviderStatus: {
	xpv1.#ResourceStatus
	atProvider?: #OpenIDConnectProviderObservation @go(AtProvider)
}

// OpenIDConnectProvider is the Schema for the OpenIDConnectProviders API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="URL",type="string",JSONPath=".spec.forProvider.url"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws},shortName="oidcprovider"
#OpenIDConnectProvider: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta           @go(ObjectMeta)
	spec:      #OpenIDConnectProviderSpec   @go(Spec)
	status?:   #OpenIDConnectProviderStatus @go(Status)
}

// OpenIDConnectProviderList contains a list of OpenIDConnectProviders
#OpenIDConnectProviderList: {
	metav1.#TypeMeta
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#OpenIDConnectProvider] @go(Items,[]OpenIDConnectProvider)
}
