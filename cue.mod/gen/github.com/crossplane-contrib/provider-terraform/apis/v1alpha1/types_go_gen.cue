// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-terraform/apis/v1alpha1

package v1alpha1

import (
	xpv1 "github.com/crossplane/crossplane-runtime/apis/common/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// A ProviderConfigSpec defines the desired state of a ProviderConfig.
#ProviderConfigSpec: {
	// Credentials required to authenticate to this provider.
	credentials: [...#ProviderCredentials] @go(Credentials,[]ProviderCredentials)

	// Configuration that should be injected into all workspaces that use
	// this provider config, expressed as inline HCL. This can be used to
	// automatically inject Terraform provider configuration blocks.
	// +optional
	configuration?: null | string @go(Configuration,*string)

	// PluginCache enables terraform provider plugin caching mechanism
	// https://developer.hashicorp.com/terraform/cli/config/config-file#provider-plugin-cache
	// +optional
	// +kubebuilder:default=true
	pluginCache?: null | bool @go(PluginCache,*bool)
}

// ProviderCredentials required to authenticate.
#ProviderCredentials: {
	// Filename (relative to main.tf) to which these provider credentials
	// should be written.
	filename: string @go(Filename)

	// Source of the provider credentials.
	// +kubebuilder:validation:Enum=None;Secret;Environment;Filesystem
	source: xpv1.#CredentialsSource @go(Source)

	xpv1.#CommonCredentialSelectors
}

// A ProviderConfigStatus reflects the observed state of a ProviderConfig.
#ProviderConfigStatus: {
	xpv1.#ProviderConfigStatus
}

// A ProviderConfig configures a Terraform provider.
// +kubebuilder:subresource:status
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:printcolumn:name="SECRET-NAME",type="string",JSONPath=".spec.credentials.secretRef.name",priority=1
// +kubebuilder:resource:scope=Cluster,categories={crossplane,provider,terraform}
#ProviderConfig: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta    @go(ObjectMeta)
	spec:      #ProviderConfigSpec   @go(Spec)
	status?:   #ProviderConfigStatus @go(Status)
}

// ProviderConfigList contains a list of ProviderConfig.
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
// +kubebuilder:resource:scope=Cluster,categories={crossplane,provider,terraform}
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
