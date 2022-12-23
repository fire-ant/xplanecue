// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane/crossplane-runtime/apis/common/v1

package v1

import corev1 "k8s.io/api/core/v1"

// LabelKeyOwnerUID is the UID of the owner resource of a connection secret.
// Kubernetes provides owner/controller references to track ownership of
// resources including secrets, however, this would only work for in cluster
// k8s secrets. We opted to use a label for this purpose to be consistent
// across Secret Store implementations and expect all to support
// setting/getting labels.
#LabelKeyOwnerUID: "secret.crossplane.io/owner-uid"

// PublishConnectionDetailsTo represents configuration of a connection secret.
#PublishConnectionDetailsTo: {
	// Name is the name of the connection secret.
	name: string @go(Name)

	// Metadata is the metadata for connection secret.
	// +optional
	metadata?: null | #ConnectionSecretMetadata @go(Metadata,*ConnectionSecretMetadata)

	// SecretStoreConfigRef specifies which secret store config should be used
	// for this ConnectionSecret.
	// +optional
	// +kubebuilder:default={"name": "default"}
	configRef?: null | #Reference @go(SecretStoreConfigRef,*Reference)
}

// ConnectionSecretMetadata represents metadata of a connection secret.
// Labels are used to track ownership of connection secrets and has to be
// supported for any secret store implementation.
#ConnectionSecretMetadata: {
	// Labels are the labels/tags to be added to connection secret.
	// - For Kubernetes secrets, this will be used as "metadata.labels".
	// - It is up to Secret Store implementation for others store types.
	// +optional
	labels?: {[string]: string} @go(Labels,map[string]string)

	// Annotations are the annotations to be added to connection secret.
	// - For Kubernetes secrets, this will be used as "metadata.annotations".
	// - It is up to Secret Store implementation for others store types.
	// +optional
	annotations?: {[string]: string} @go(Annotations,map[string]string)

	// Type is the SecretType for the connection secret.
	// - Only valid for Kubernetes Secret Stores.
	// +optional
	type?: null | corev1.#SecretType @go(Type,*corev1.SecretType)
}

// SecretStoreType represents a secret store type.
#SecretStoreType: string // #enumSecretStoreType

#enumSecretStoreType:
	#SecretStoreKubernetes |
	#SecretStoreVault

// SecretStoreKubernetes indicates that secret store type is
// Kubernetes. In other words, connection secrets will be stored as K8s
// Secrets.
#SecretStoreKubernetes: #SecretStoreType & "Kubernetes"

// SecretStoreVault indicates that secret store type is Vault.
#SecretStoreVault: #SecretStoreType & "Vault"

// SecretStoreConfig represents configuration of a Secret Store.
#SecretStoreConfig: {
	// Type configures which secret store to be used. Only the configuration
	// block for this store will be used and others will be ignored if provided.
	// Default is Kubernetes.
	// +optional
	// +kubebuilder:default=Kubernetes
	type?: null | #SecretStoreType @go(Type,*SecretStoreType)

	// DefaultScope used for scoping secrets for "cluster-scoped" resources.
	// If store type is "Kubernetes", this would mean the default namespace to
	// store connection secrets for cluster scoped resources.
	// In case of "Vault", this would be used as the default parent path.
	// Typically, should be set as Crossplane installation namespace.
	defaultScope: string @go(DefaultScope)

	// Kubernetes configures a Kubernetes secret store.
	// If the "type" is "Kubernetes" but no config provided, in cluster config
	// will be used.
	// +optional
	kubernetes?: null | #KubernetesSecretStoreConfig @go(Kubernetes,*KubernetesSecretStoreConfig)

	// Vault configures a Vault secret store.
	// +optional
	vault?: null | #VaultSecretStoreConfig @go(Vault,*VaultSecretStoreConfig)
}

// KubernetesAuthConfig required to authenticate to a K8s API. It expects
// a "kubeconfig" file to be provided.
#KubernetesAuthConfig: {
	// Source of the credentials.
	// +kubebuilder:validation:Enum=None;Secret;Environment;Filesystem
	source: #CredentialsSource @go(Source)

	#CommonCredentialSelectors
}

// KubernetesSecretStoreConfig represents the required configuration
// for a Kubernetes secret store.
#KubernetesSecretStoreConfig: {
	// Credentials used to connect to the Kubernetes API.
	auth: #KubernetesAuthConfig @go(Auth)
}

// VaultAuthMethod represent a Vault authentication method.
// https://www.vaultproject.io/docs/auth
#VaultAuthMethod: string // #enumVaultAuthMethod

#enumVaultAuthMethod:
	#VaultAuthToken

// VaultAuthToken indicates that "Token Auth" will be used to
// authenticate to Vault.
// https://www.vaultproject.io/docs/auth/token
#VaultAuthToken: #VaultAuthMethod & "Token"

// VaultAuthTokenConfig represents configuration for Vault Token Auth Method.
// https://www.vaultproject.io/docs/auth/token
#VaultAuthTokenConfig: {
	// Source of the credentials.
	// +kubebuilder:validation:Enum=None;Secret;Environment;Filesystem
	source: #CredentialsSource @go(Source)

	#CommonCredentialSelectors
}

// VaultAuthConfig required to authenticate to a Vault API.
#VaultAuthConfig: {
	// Method configures which auth method will be used.
	method: #VaultAuthMethod @go(Method)

	// Token configures Token Auth for Vault.
	// +optional
	token?: null | #VaultAuthTokenConfig @go(Token,*VaultAuthTokenConfig)
}

// VaultCABundleConfig represents configuration for configuring a CA bundle.
#VaultCABundleConfig: {
	// Source of the credentials.
	// +kubebuilder:validation:Enum=None;Secret;Environment;Filesystem
	source: #CredentialsSource @go(Source)

	#CommonCredentialSelectors
}

// VaultKVVersion represent API version of the Vault KV engine
// https://www.vaultproject.io/docs/secrets/kv
#VaultKVVersion: string // #enumVaultKVVersion

#enumVaultKVVersion:
	#VaultKVVersionV1 |
	#VaultKVVersionV2

// VaultKVVersionV1 indicates that Secret API is KV Secrets Engine Version 1
// https://www.vaultproject.io/docs/secrets/kv/kv-v1
#VaultKVVersionV1: #VaultKVVersion & "v1"

// VaultKVVersionV2 indicates that Secret API is KV Secrets Engine Version 2
// https://www.vaultproject.io/docs/secrets/kv/kv-v2
#VaultKVVersionV2: #VaultKVVersion & "v2"

// VaultSecretStoreConfig represents the required configuration for a Vault
// secret store.
#VaultSecretStoreConfig: {
	// Server is the url of the Vault server, e.g. "https://vault.acme.org"
	server: string @go(Server)

	// MountPath is the mount path of the KV secrets engine.
	mountPath: string @go(MountPath)

	// Version of the KV Secrets engine of Vault.
	// https://www.vaultproject.io/docs/secrets/kv
	// +optional
	// +kubebuilder:default=v2
	version?: null | #VaultKVVersion @go(Version,*VaultKVVersion)

	// CABundle configures CA bundle for Vault Server.
	// +optional
	caBundle?: null | #VaultCABundleConfig @go(CABundle,*VaultCABundleConfig)

	// Auth configures an authentication method for Vault.
	auth: #VaultAuthConfig @go(Auth)
}